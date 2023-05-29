package com.iMe.p031ui.wallet.crypto.wallet_connect.adapter;

import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.iMe.model.wallet.crypto.wallet_connect.WalletConnectSessionItem;
import com.iMe.utils.extentions.common.BaseQuickAdapterExtKt;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3295R;
import org.telegram.p044ui.ActionBar.Theme;
/* compiled from: WalletConnectSessionsRecycleAdapter.kt */
/* renamed from: com.iMe.ui.wallet.crypto.wallet_connect.adapter.WalletConnectSessionsRecycleAdapter */
/* loaded from: classes4.dex */
public final class WalletConnectSessionsRecycleAdapter extends BaseQuickAdapter<WalletConnectSessionItem, BaseViewHolder> {
    public WalletConnectSessionsRecycleAdapter() {
        super(C3295R.layout.fork_recycle_item_wallet_connect_session, null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void convert(BaseViewHolder holder, WalletConnectSessionItem item) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(item, "item");
        BaseViewHolder rippleForeground = BaseQuickAdapterExtKt.setRippleForeground(holder, C3295R.C3298id.constraint_root, false);
        int i = C3295R.C3298id.text_peer_name;
        int i2 = Theme.key_windowBackgroundWhiteBlackText;
        BaseViewHolder themedTextColor = BaseQuickAdapterExtKt.setThemedTextColor(rippleForeground, i, i2);
        int i3 = C3295R.C3298id.text_peer_url;
        BaseQuickAdapterExtKt.loadImage(BaseQuickAdapterExtKt.setMediumTypeface(BaseQuickAdapterExtKt.setThemedTextColor(themedTextColor, i3, i2), i).setText(i, item.getPeerName()).setText(i3, item.getPeerUrl()), C3295R.C3298id.image_peer_icon, item.getPeerIconUrl(), Integer.valueOf(C3295R.C3297drawable.fork_ic_internal_logo), true);
    }
}
