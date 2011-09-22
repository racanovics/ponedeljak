package com.ensicaen.wificar;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;

import com.ensicaen.wificar.R;


import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.util.Log;
import android.view.View;
import android.widget.TextView;

public class TextActivity extends Activity {
	private SensorManager mSensorManager;
	private TextView mTxtViewY;
	private TextView mTxtViewZ;
	static byte[] commande = new byte[5];
	
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.text);
        mSensorManager = (SensorManager)getSystemService(Context.SENSOR_SERVICE); 
        mSensorManager.registerListener(mSensorListener, mSensorManager.getDefaultSensor(Sensor.TYPE_ACCELEROMETER), 
        SensorManager.SENSOR_DELAY_NORMAL); 
        //mTxtView = new TextView(this);
        mTxtViewY = (TextView) findViewById(R.id.textY);
        mTxtViewZ = (TextView) findViewById(R.id.textZ);
    	commande[0] = 0x0;
        commande[1] = 0x0;
        commande[2] = 0x0;
        commande[3] = 0x0;
        commande[4] = 0x0;
    }
    public void Position( float iY, float iZ)
    { 
    	mTxtViewZ.setText(" "+(byte)iZ); 
    	mTxtViewY.setText(" "+(byte)iY);
    	
    }
    
    private final SensorEventListener mSensorListener = new SensorEventListener() { 
        
        public void onSensorChanged(SensorEvent se)
        { 
            float y = se.values[1]; 
            float z = se.values[2];
            if(z>0)
            	commande[1] = 0x1;
            else
            {
            	commande[1] = 0x0;
            	z=-z;
            }
            commande[2] = (byte)z;
            if(y > 0)
            	commande[3] = 0x1;
            else
            {
            	commande[3] = 0x0;
            	y = -y;
            }
            commande[4] = (byte)y;
            Position(y,z);
            if(commande[0] != 0x0)
            {
	            int server_port = 9762;
	        	String server_ip = "192.168.1.1";
	        	try {
					sendUDPMessage(new String(commande),server_ip,server_port);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
            }
            
        } 
        
        public void onAccuracyChanged(Sensor sensor, int accuracy) {} 
   }; 
    
   @Override 
   protected void onResume() 
   { 
        super.onResume(); 
        mSensorManager.registerListener(mSensorListener, mSensorManager.getDefaultSensor(Sensor.TYPE_ACCELEROMETER), SensorManager.SENSOR_DELAY_NORMAL); 
   } 
    
   @Override 
   protected void onStop() 
   { 
        mSensorManager.unregisterListener(mSensorListener); 
        super.onStop(); 
   } 
   
   public void OnclickHandler(View view) throws Exception {
	   switch (view.getId()) {
	   		case R.id.buttonGo: 
	   			commande[0]=0x1;
	   			break;
	   		case R.id.buttonStop:
	   			commande[0]=0x0;
	   			int server_port = 9762;
	        	String server_ip = "192.168.1.1";
	        	try {
					sendUDPMessage(new String(commande),server_ip,server_port);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
	   			break;
	   }
   }
   
   public void sendUDPMessage(String messageStr,String server_ip,int server_port) throws Exception {
   	try {
		     DatagramSocket s = new DatagramSocket();
		     InetAddress local = InetAddress.getByName(server_ip);
		     int msg_length=messageStr.length();
		     byte[] message = messageStr.getBytes();
		     DatagramPacket p = new DatagramPacket(message, msg_length,local,server_port);
		     s.send(p);
		     s.close();
		     Log.d("UDP", "***Packet sent from server");
		}
		catch (Exception e)
		{
			Log.d("UDP", "***Fail");
		}
   }
}