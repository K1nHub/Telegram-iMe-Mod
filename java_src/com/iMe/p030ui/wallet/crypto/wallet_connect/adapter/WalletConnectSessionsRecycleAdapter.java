package com.iMe.p030ui.wallet.crypto.wallet_connect.adapter;

import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.iMe.model.wallet.crypto.wallet_connect.WalletConnectSessionItem;
import com.iMe.utils.extentions.common.BaseQuickAdapterExtKt;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3630R;
import org.telegram.p042ui.ActionBar.Theme;
/* compiled from: WalletConnectSessionsRecycleAdapter.kt */
/* renamed from: com.iMe.ui.wallet.crypto.wallet_connect.adapter.WalletConnectSessionsRecycleAdapter */
/* loaded from: classes3.dex */
public final class WalletConnectSessionsRecycleAdapter extends BaseQuickAdapter<WalletConnectSessionItem, BaseViewHolder> {
    public WalletConnectSessionsRecycleAdapter() {
        super(C3630R.layout.fork_recycle_item_wallet_connect_session, null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void convert(BaseViewHolder holder, WalletConnectSessionItem item) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(item, "item");
        BaseViewHolder rippleForeground = BaseQuickAdapterExtKt.setRippleForeground(holder, C3630R.C3633id.constraint_root, false);
        int i = Theme.key_windowBackgroundWhiteBlackText;
        int i2 = C3630R.C3633id.text_peer_name;
        int i3 = C3630R.C3633id.text_peer_url;
        BaseQuickAdapterExtKt.loadImage$default(BaseQuickAdapterExtKt.setMediumTypeface(BaseQuickAdapterExtKt.setThemedTextColor(rippleForeground, i, i2, i3), i2).setText(i2, item.getPeerName()).setText(i3, item.getPeerUrl()), C3630R.C3633id.image_peer_icon, item.getPeerIconUrl(), Integer.valueOf(C3630R.C3632drawable.fork_ic_internal_logo), false, 8, null);
    }
}
