//
//  AppDelegate.swift
//  Quotes
//
//  Created by Art Karma on 5/17/19.
//  Copyright © 2019 Art Karma. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {


    let statusItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.squareLength)

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        if let button = statusItem.button {
            button.image = NSImage(named: NSImage.Name("StatusBarButtonImage"))
            button.action = #selector(printQuote(_:))
        }
        
        constructMenu()

    }

    func applicationWillTerminate(_ aNotification: Notification) {

    }

    @objc func printQuote(_ sender: Any?) {
        let quoteText = "Never put off until tomorrow what you can do the day after tommorow."
        let quoteAuthor = "Mark Twain"
        
        print("\(quoteText) - \(quoteAuthor)")
    }
    
    func constructMenu() {
        let menu = NSMenu()
        
        menu.addItem(NSMenuItem(title: "Print Quote", action: #selector(printQuote(_:)), keyEquivalent: "P"))
        menu.addItem(NSMenuItem.separator())
        menu.addItem(withTitle: "Quit Quotes", action: #selector(NSApplication.terminate(_:)), keyEquivalent: "q")
        
        statusItem.menu = menu
    }

}

