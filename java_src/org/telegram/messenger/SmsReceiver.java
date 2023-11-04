package org.telegram.messenger;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.google.android.gms.auth.api.phone.SmsRetriever;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes4.dex */
public class SmsReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String str;
        if (intent == null) {
            return;
        }
        try {
            SharedPreferences sharedPreferences = ApplicationLoader.applicationContext.getSharedPreferences("mainconfig", 0);
            String string = sharedPreferences.getString("sms_hash", null);
            if (!SmsRetriever.SMS_RETRIEVED_ACTION.equals(intent.getAction())) {
                str = "";
            } else if (!AndroidUtilities.isWaitingForSms()) {
                return;
            } else {
                str = (String) intent.getExtras().get(SmsRetriever.EXTRA_SMS_MESSAGE);
            }
            if (TextUtils.isEmpty(str)) {
                return;
            }
            Matcher matcher = Pattern.compile("[0-9\\-]+").matcher(str);
            if (matcher.find()) {
                final String replace = matcher.group(0).replace("-", "");
                if (replace.length() >= 3) {
                    if (string != null) {
                        SharedPreferences.Editor edit = sharedPreferences.edit();
                        edit.putString("sms_hash_code", string + "|" + replace).commit();
                    }
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SmsReceiver$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            SmsReceiver.lambda$onReceive$0(replace);
                        }
                    });
                }
            }
        } catch (Throwable th) {
            FileLog.m99e(th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$onReceive$0(String str) {
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.didReceiveSmsCode, str);
    }
}
