package com.iMe.mapper.wallet.wallet_connect;

import com.iMe.model.wallet.crypto.wallet_connect.WalletConnectSessionItem;
import com.iMe.storage.domain.model.crypto.NetworkType;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.formatter.DateFormatter;
import com.trustwallet.walletconnect.WCSessionStoreItem;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: WCSessionStoreUiMapping.kt */
/* loaded from: classes3.dex */
public final class WCSessionStoreUiMappingKt {
    public static final WalletConnectSessionItem mapToUi(WCSessionStoreItem wCSessionStoreItem, ResourceManager resourceManager) {
        Intrinsics.checkNotNullParameter(wCSessionStoreItem, "<this>");
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        String key = wCSessionStoreItem.getSession().getKey();
        String name = wCSessionStoreItem.getRemotePeerMeta().getName();
        String url = wCSessionStoreItem.getRemotePeerMeta().getUrl();
        String str = (String) CollectionsKt.lastOrNull(wCSessionStoreItem.getRemotePeerMeta().getIcons());
        if (str == null) {
            str = "";
        }
        return new WalletConnectSessionItem(key, name, url, str, DateFormatter.format$default(DateFormatter.DateType.DATE_AND_TIME, wCSessionStoreItem.getDate(), null, 4, null), resourceManager.getString(NetworkType.Companion.fromChainId(wCSessionStoreItem.getChainId()).getTitleResId()));
    }
}
