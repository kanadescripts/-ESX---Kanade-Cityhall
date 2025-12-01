# Kanade Cityhall Script

A lightweight and customizable City Hall system for FiveM, designed for smooth integration, high performance, and easy configuration.

---

## 📥 Download & Installation

Follow these steps to install the script on your FiveM server.

### **1. Download the Script**

You can download the latest version of the Kanade Cityhall script here:

**[Download Kanade Cityhall]([https://your-download-link.com](https://github.com/kanadescripts/-ESX---Kanade-Cityhall)**


---

## 📦 Installation Guide

### **2. Extract the Files**

* Extract the downloaded `.zip` file.
* Move the folder `kanade-cityhall` into your server's `resources` directory.

### **3. Check Resource Name**

Make sure the folder name is exactly:

```
kanade_cityhall
```

### **4. Add to server.cfg**

Add the following line to your `server.cfg`:

```
ensure kanade_cityhall
```

---

### **5. Add to your data/items.lua**

Add the following on bottom of your `items.lua`:

-- Kanade Cityhall

['idcard'] = {
    label = 'ID Card',
    stack = false,
	close = true,
    weight = 10,
    client = { image = 'id_card.png' },
    description = "Your personal ID"
},

['driverslicense'] = {
    label = 'Drivers License',
    stack = false,
	close = true,
    weight = 10,
    client = { image = 'drivers_license.png' },
    description = "Your driving license"
},

}

---


### **6. Add to your images folder**

Go to the folder images in the script and drag and drop the two files into ox_inventory/web/images

## 🔧 Configuration

The script is fully customizable.

### **config.lua**

Inside the resource, open the `cl_config.lua` file to adjust settings:

* NPC Setting
* Notifications
* Item Labels
* Item Names

Example:

```lua
Config = {}

npcConfig = {
    npcModel = "cs_andreas",
    npcCoords = vector4(-266.5197, -960.9290, 31.2231, 202.6111),
    npcTitle = "Cityhall",
    npcText = "Press [E] to talk to a Cityhall employee!",
    npcTextOnOpen = "You are now talking to a Cityhall employee!",
    noMoney = "You dont have enough money"
}

cityhallmenuConfig = {
    title = "Cityhall",
    option1name = "Request an ID Card",
    option1price = "100$",
    option2name = "Request a Drivers License",
    option2price = "100$",
    option1label = "ID Card",
    option2label = "Drivers License",
    job1label = "Bus Driver",
    job1description = "Apply to become a Bus Driver!"


}

jobsConfig = {
    weazelnews = "News employee",
    weazelwage = "500$"
}

blipConfig = {
    coords = vector4(-263.4149, -966.7695, 31.2243, 201.1363),
    blipName = "Cityhall",
    blipSprite = 133,
    blipScale = 0.8,
    blipColour = 2,
    blipShortRange = false
}
```

After that, open the file `sv_config.lua` and adjust settings:

* Item Names
* Item Labels
* Prices

Example:

```lua

Config = {}

genConfig = {
    moneyitemname = "money",
    idcardprice = 100,
    idcarditemname = "idcard",  -- item Name in the items.lua
    idcardlabel = "ID Card",
    npcname = "Cityhall",
    dlitemname = "driverslicense",
    dllabel = "Drivers License",
    dlprice = 100,
    

}

```

---

## 🧩 Dependencies

* ESX Framework
* OX Inventory
* OX Lib

---

## ▶️ Features

* Issue ID Cards
* Issue Driver License
* Job Center (default ESX Jobs)
* Easy-to-edit config

---

## 🛠️ Support

If you need support, open a ticket in our Discord:
**[Kanade Scripts Discord](https://discord.gg/rQ7X742NdX)**

---

## 💬 Credits

Developed by **Kanade Scripts**.

Thank you for using Kanade Cityhall! If you enjoy it, consider supporting us by joining our discord server!

