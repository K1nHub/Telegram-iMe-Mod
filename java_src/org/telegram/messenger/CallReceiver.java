package org.telegram.messenger;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.telephony.TelephonyManager;
import org.telegram.PhoneFormat.C3204PhoneFormat;
/* loaded from: classes4.dex */
public class CallReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent.getAction().equals("android.intent.action.PHONE_STATE") && TelephonyManager.EXTRA_STATE_RINGING.equals(intent.getStringExtra("state"))) {
            NotificationCenter.getGlobalInstance().postNotificationName(NotificationCenter.didReceiveCall, C3204PhoneFormat.stripExceptNumbers(intent.getStringExtra("incoming_number")));
        }
    }
}
