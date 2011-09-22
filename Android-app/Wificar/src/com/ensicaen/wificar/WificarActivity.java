package com.ensicaen.wificar;

import android.app.TabActivity;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.widget.TabHost;


public class WificarActivity extends TabActivity  {
    /** Called when the activity is first created. */
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.main);
        Resources res = getResources(); // Resource object to get Drawables
        TabHost tabHost = getTabHost();  // The activity TabHost
        TabHost.TabSpec spec;  // Resusable TabSpec for each tab
        Intent intent;  // Reusable Intent for each tab

        // Create an Intent to launch an Activity for the tab (to be reused)
        intent = new Intent().setClass(this, TextActivity.class);

        // Initialize a TabSpec for each tab and add it to the TabHost
        spec = tabHost.newTabSpec("text").setIndicator("Controle",
                          res.getDrawable(R.drawable.ic_tab_artists))
                      .setContent(intent);
        tabHost.addTab(spec);

        // Do the same for the other tabs
        intent = new Intent().setClass(this, CMUcamActivity.class);
        spec = tabHost.newTabSpec("video").setIndicator("Video",
                          res.getDrawable(R.drawable.ic_tab_artists))
                      .setContent(intent);
        tabHost.addTab(spec);

        intent = new Intent().setClass(this, ConfigActivity.class);
        spec = tabHost.newTabSpec("config").setIndicator("Config",
                          res.getDrawable(R.drawable.ic_tab_artists))
                      .setContent(intent);
        tabHost.addTab(spec);
        
        intent = new Intent().setClass(this, OldActivity.class);
        spec = tabHost.newTabSpec("old").setIndicator("Old",
                          res.getDrawable(R.drawable.ic_tab_artists))
                      .setContent(intent);
        tabHost.addTab(spec);

        tabHost.setCurrentTab(3);

    }
}