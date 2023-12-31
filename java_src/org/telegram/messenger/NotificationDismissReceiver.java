package org.telegram.messenger;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
/* loaded from: classes4.dex */
public class NotificationDismissReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent == null) {
            return;
        }
        int intExtra = intent.getIntExtra("currentAccount", UserConfig.selectedAccount);
        if (UserConfig.isValidAccount(intExtra)) {
            long longExtra = intent.getLongExtra("dialogId", 0L);
            int intExtra2 = intent.getIntExtra("messageDate", 0);
            if (intent.hasExtra("story") && intent.getBooleanExtra("story", false)) {
                NotificationsController.getInstance(intExtra).processIgnoreStories();
            } else if (longExtra == 0) {
                MessagesController.getNotificationsSettings(intExtra).edit().putInt("dismissDate", intExtra2).commit();
            } else {
                SharedPreferences.Editor edit = MessagesController.getNotificationsSettings(intExtra).edit();
                edit.putInt("dismissDate" + longExtra, intExtra2).commit();
            }
        }
    }
}
