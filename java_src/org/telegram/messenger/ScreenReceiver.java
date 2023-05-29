package org.telegram.messenger;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.iMe.storage.domain.manager.crypto.CryptoAccessManager;
import kotlin.Lazy;
import org.koin.java.KoinJavaComponent;
import org.telegram.tgnet.ConnectionsManager;
/* loaded from: classes4.dex */
public class ScreenReceiver extends BroadcastReceiver {
    private Lazy<CryptoAccessManager> accessManager = KoinJavaComponent.inject(CryptoAccessManager.class);

    private void resetWalletSession() {
        this.accessManager.getValue().logoutAllWallets();
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent.getAction().equals("android.intent.action.SCREEN_OFF")) {
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m52d("screen off");
            }
            ConnectionsManager.getInstance(UserConfig.selectedAccount).setAppPaused(true, true);
            ApplicationLoader.isScreenOn = false;
            resetWalletSession();
        } else if (intent.getAction().equals("android.intent.action.SCREEN_ON")) {
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m52d("screen on");
            }
            ConnectionsManager.getInstance(UserConfig.selectedAccount).setAppPaused(false, true);
            ApplicationLoader.isScreenOn = true;
        }
        NotificationCenter.getGlobalInstance().postNotificationName(NotificationCenter.screenStateChanged, new Object[0]);
    }
}
