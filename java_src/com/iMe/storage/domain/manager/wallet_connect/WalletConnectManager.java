package com.iMe.storage.domain.manager.wallet_connect;

import com.trustwallet.walletconnect.WCSessionStoreItem;
import com.trustwallet.walletconnect.models.ethereum.WCEthereumSignMessage;
/* compiled from: WalletConnectManager.kt */
/* loaded from: classes4.dex */
public interface WalletConnectManager {
    void approveNewSession(WCSessionStoreItem wCSessionStoreItem);

    <T> void approveRequest(String str, long j, T t);

    void approveSign(String str, long j, WCEthereumSignMessage wCEthereumSignMessage);

    void clear();

    void connect(String str);

    void connectToStoredSessions();

    void disconnect(String str);

    void disconnectAll();

    void onDestroy();

    void rejectNewSession(WCSessionStoreItem wCSessionStoreItem);

    void rejectRequest(String str, long j);

    void setEventsDelegate(WalletConnectEventsDelegate walletConnectEventsDelegate);
}
