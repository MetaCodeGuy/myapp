/*
* SPDX License-Identifier : GPL-3.0-or-later
* SPDX-FileCopyrightText: 2024 Nithish <nithish876876@gmail.com>
*/

public class MyApp : Gtk.Application{
    public MyApp(){
        Object(
            application_id: "",
            flags:ApplicationFlags.FLAGS_NONE
        );
    }
    
    protected override void activate(){
        var label = new Gtk.Label("Hello Again world!");
        var main_window = new Gtk.ApplicationWindow(this){
            child = label,
            default_height = 600,
            default_width = 800,
            title= "Hello World"
        };
        main_window.present();
    }
    public static int main(string[] args){
        return new MyApp ().run (args);
    }
    
    
}
