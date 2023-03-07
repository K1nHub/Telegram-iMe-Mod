package com.smedialink.storage.domain.manager.wallet_connect;

import com.smedialink.storage.domain.model.crypto.NetworkType;
import com.smedialink.storage.domain.model.crypto.wallet_connect.WalletConnectProcessedTransaction;
import com.trustwallet.walletconnect.WCSessionStoreItem;
import com.trustwallet.walletconnect.models.ethereum.WCEthereumSignMessage;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: WalletConnectEventsDelegate.kt */
/* loaded from: classes3.dex */
public interface WalletConnectEventsDelegate {

    /* compiled from: WalletConnectEventsDelegate.kt */
    /* loaded from: classes3.dex */
    public static final class DefaultImpls {
        public static void onEthSign(WalletConnectEventsDelegate walletConnectEventsDelegate, long j, WCSessionStoreItem sessionStoreItem, WCEthereumSignMessage message) {
            Intrinsics.checkNotNullParameter(walletConnectEventsDelegate, "this");
            Intrinsics.checkNotNullParameter(sessionStoreItem, "sessionStoreItem");
            Intrinsics.checkNotNullParameter(message, "message");
        }

        public static void onFailure(WalletConnectEventsDelegate walletConnectEventsDelegate, Throwable throwable) {
            Intrinsics.checkNotNullParameter(walletConnectEventsDelegate, "this");
            Intrinsics.checkNotNullParameter(throwable, "throwable");
        }

        public static void onSessionRequest(WalletConnectEventsDelegate walletConnectEventsDelegate, WCSessionStoreItem sessionItem) {
            Intrinsics.checkNotNullParameter(walletConnectEventsDelegate, "this");
            Intrinsics.checkNotNullParameter(sessionItem, "sessionItem");
        }

        public static void onSuccess(WalletConnectEventsDelegate walletConnectEventsDelegate, int i) {
            Intrinsics.checkNotNullParameter(walletConnectEventsDelegate, "this");
        }

        public static void onTransactionProcessing(WalletConnectEventsDelegate walletConnectEventsDelegate, long j, WCSessionStoreItem sessionStoreItem, WalletConnectProcessedTransaction transaction, boolean z) {
            Intrinsics.checkNotNullParameter(walletConnectEventsDelegate, "this");
            Intrinsics.checkNotNullParameter(sessionStoreItem, "sessionStoreItem");
            Intrinsics.checkNotNullParameter(transaction, "transaction");
        }

        public static void onWalletChangeNetwork(WalletConnectEventsDelegate walletConnectEventsDelegate, long j, WCSessionStoreItem sessionStoreItem, NetworkType networkType) {
            Intrinsics.checkNotNullParameter(walletConnectEventsDelegate, "this");
            Intrinsics.checkNotNullParameter(sessionStoreItem, "sessionStoreItem");
            Intrinsics.checkNotNullParameter(networkType, "networkType");
        }

        public static void onWalletChangeUnsupportedNetwork(WalletConnectEventsDelegate walletConnectEventsDelegate) {
            Intrinsics.checkNotNullParameter(walletConnectEventsDelegate, "this");
        }
    }

    void onEthSign(long j, WCSessionStoreItem wCSessionStoreItem, WCEthereumSignMessage wCEthereumSignMessage);

    void onFailure(Throwable th);

    void onSessionRequest(WCSessionStoreItem wCSessionStoreItem);

    void onSuccess(int i);

    void onTransactionProcessing(long j, WCSessionStoreItem wCSessionStoreItem, WalletConnectProcessedTransaction walletConnectProcessedTransaction, boolean z);

    void onWalletChangeNetwork(long j, WCSessionStoreItem wCSessionStoreItem, NetworkType networkType);

    void onWalletChangeUnsupportedNetwork();
}
