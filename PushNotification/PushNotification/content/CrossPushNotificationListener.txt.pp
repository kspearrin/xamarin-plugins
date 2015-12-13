﻿using PushNotification.Plugin.Abstractions;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using PushNotification.Plugin;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;

namespace $rootnamespace$.Helpers
{
    //Class to handle push notifications listens to events such as registration, unregistration, message arrival and errors.
    public class  CrossPushNotificationListener : IPushNotificationListener
    {

        void OnMessage(JObject values, DeviceType deviceType)
        {
            Debug.WriteLine("Message Arrived");
        }

        void OnRegistered(string token, DeviceType deviceType)
        {
            Debug.WriteLine(string.Format("Push Notification - Device Registered - Token : {0}", Token));
        }

        void OnUnregistered(DeviceType deviceType)
        {
            Debug.WriteLine("Push Notification - Device Unnregistered");
       
        }

        void OnError(string message, DeviceType deviceType)
        {
            Debug.WriteLine(string.Format("Push notification error - {0}",message));
        }

        bool ShouldShowNotification()
        {
            return true;
        }
    }
}
