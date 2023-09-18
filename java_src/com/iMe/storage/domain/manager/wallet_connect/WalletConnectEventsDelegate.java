package com.iMe.storage.domain.manager.wallet_connect;

import com.iMe.storage.domain.model.crypto.wallet_connect.WalletConnectProcessedTransaction;
import com.trustwallet.walletconnect.WCSessionStoreItem;
import com.trustwallet.walletconnect.models.ethereum.WCEthereumSignMessage;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: WalletConnectEventsDelegate.kt */
/* loaded from: classes4.dex */
public interface WalletConnectEventsDelegate {

    /* compiled from: WalletConnectEventsDelegate.kt */
    /* renamed from: com.iMe.storage.domain.manager.wallet_connect.WalletConnectEventsDelegate$-CC  reason: invalid class name */
    /* loaded from: classes4.dex */
    public final /* synthetic */ class CC {
        public static void $default$onEthSign(WalletConnectEventsDelegate walletConnectEventsDelegate, long j, WCSessionStoreItem sessionStoreItem, WCEthereumSignMessage message) {
            Intrinsics.checkNotNullParameter(sessionStoreItem, "sessionStoreItem");
            Intrinsics.checkNotNullParameter(message, "message");
        }

        public static void $default$onSuccess(WalletConnectEventsDelegate walletConnectEventsDelegate, int i) {
        }

        public static void $default$onTransactionProcessing(WalletConnectEventsDelegate walletConnectEventsDelegate, long j, WCSessionStoreItem sessionStoreItem, WalletConnectProcessedTransaction transaction, boolean z) {
            Intrinsics.checkNotNullParameter(sessionStoreItem, "sessionStoreItem");
            Intrinsics.checkNotNullParameter(transaction, "transaction");
        }

        public static void $default$onWalletChangeNetwork(WalletConnectEventsDelegate walletConnectEventsDelegate, long j, WCSessionStoreItem sessionStoreItem, String networkId) {
            Intrinsics.checkNotNullParameter(sessionStoreItem, "sessionStoreItem");
            Intrinsics.checkNotNullParameter(networkId, "networkId");
        }

        public static void $default$onWalletChangeUnsupportedNetwork(WalletConnectEventsDelegate walletConnectEventsDelegate) {
        }
    }

    void onEthSign(long j, WCSessionStoreItem wCSessionStoreItem, WCEthereumSignMessage wCEthereumSignMessage);

    void onFailure(Throwable th);

    void onSessionRequest(WCSessionStoreItem wCSessionStoreItem);

    void onSuccess(int i);

    void onTransactionProcessing(long j, WCSessionStoreItem wCSessionStoreItem, WalletConnectProcessedTransaction walletConnectProcessedTransaction, boolean z);

    void onWalletChangeNetwork(long j, WCSessionStoreItem wCSessionStoreItem, String str);

    void onWalletChangeUnsupportedNetwork();
}
