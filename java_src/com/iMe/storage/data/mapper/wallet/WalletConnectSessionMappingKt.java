package com.iMe.storage.data.mapper.wallet;

import com.iMe.storage.data.locale.p027db.model.wallet.WalletConnectSessionDb;
import com.trustwallet.walletconnect.WCSessionStoreItem;
import com.trustwallet.walletconnect.models.WCPeerMeta;
import com.trustwallet.walletconnect.models.session.WCSession;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: WalletConnectSessionMapping.kt */
/* loaded from: classes4.dex */
public final class WalletConnectSessionMappingKt {
    public static final WCSessionStoreItem mapToDomain(WalletConnectSessionDb walletConnectSessionDb) {
        Intrinsics.checkNotNullParameter(walletConnectSessionDb, "<this>");
        return new WCSessionStoreItem(new WCSession(walletConnectSessionDb.getSessionTopic(), walletConnectSessionDb.getSessionVersion(), walletConnectSessionDb.getSessionBridge(), walletConnectSessionDb.getSessionKey()), walletConnectSessionDb.getChainId(), walletConnectSessionDb.getPeerId(), walletConnectSessionDb.getRemotePeerId(), new WCPeerMeta(walletConnectSessionDb.getRemotePeerMetaName(), walletConnectSessionDb.getRemotePeerMetaUrl(), walletConnectSessionDb.getRemotePeerMetaDescription(), walletConnectSessionDb.getRemotePeerMetaIcons()), false, null, 96, null);
    }

    public static final WalletConnectSessionDb mapToDb(WCSessionStoreItem wCSessionStoreItem, long j) {
        Intrinsics.checkNotNullParameter(wCSessionStoreItem, "<this>");
        return new WalletConnectSessionDb(j, wCSessionStoreItem.getSession().getTopic(), wCSessionStoreItem.getSession().getVersion(), wCSessionStoreItem.getSession().getBridge(), wCSessionStoreItem.getSession().getKey(), wCSessionStoreItem.getChainId(), wCSessionStoreItem.getPeerId(), wCSessionStoreItem.getRemotePeerId(), wCSessionStoreItem.getRemotePeerMeta().getName(), wCSessionStoreItem.getRemotePeerMeta().getUrl(), wCSessionStoreItem.getRemotePeerMeta().getDescription(), wCSessionStoreItem.getRemotePeerMeta().getIcons(), wCSessionStoreItem.isAutoSign(), wCSessionStoreItem.getDate());
    }
}
