package com.iMe.utils.helper.wallet;

import android.content.Intent;
import com.iMe.storage.domain.manager.wallet_connect.WalletConnectManager;
import com.trustwallet.walletconnect.models.session.WCSession;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: WalletConnectHelper.kt */
/* loaded from: classes4.dex */
public final class WalletConnectHelper {
    static {
        new WalletConnectHelper();
    }

    private WalletConnectHelper() {
    }

    public static final boolean isWalletConnectIntent(Intent intent) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        WCSession.Companion companion = WCSession.Companion;
        String dataString = intent.getDataString();
        if (dataString == null) {
            dataString = "";
        }
        return companion.from(dataString) != null;
    }

    public static final void handleIntent(Intent intent, WalletConnectManager walletConnectManager) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        Intrinsics.checkNotNullParameter(walletConnectManager, "walletConnectManager");
        String dataString = intent.getDataString();
        if (dataString == null) {
            dataString = "";
        }
        walletConnectManager.connect(dataString);
    }
}
