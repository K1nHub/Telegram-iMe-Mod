package com.iMe.p032ui.wallet.crypto.wallet_connect.adapter;

import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.iMe.model.wallet.crypto.wallet_connect.WalletConnectSessionItem;
import com.iMe.utils.extentions.common.BaseQuickAdapterExtKt;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3316R;
/* compiled from: WalletConnectSessionsRecycleAdapter.kt */
/* renamed from: com.iMe.ui.wallet.crypto.wallet_connect.adapter.WalletConnectSessionsRecycleAdapter */
/* loaded from: classes3.dex */
public final class WalletConnectSessionsRecycleAdapter extends BaseQuickAdapter<WalletConnectSessionItem, BaseViewHolder> {
    public WalletConnectSessionsRecycleAdapter() {
        super(C3316R.layout.fork_recycle_item_wallet_connect_session, null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void convert(BaseViewHolder holder, WalletConnectSessionItem item) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(item, "item");
        BaseViewHolder rippleForeground = BaseQuickAdapterExtKt.setRippleForeground(holder, C3316R.C3319id.constraint_root, false);
        int i = C3316R.C3319id.text_peer_name;
        int i2 = C3316R.C3319id.text_peer_url;
        BaseQuickAdapterExtKt.loadImage(BaseQuickAdapterExtKt.setMediumTypeface(BaseQuickAdapterExtKt.setThemedTextColor(rippleForeground, "windowBackgroundWhiteBlackText", i, i2), i).setText(i, item.getPeerName()).setText(i2, item.getPeerUrl()), C3316R.C3319id.image_peer_icon, item.getPeerIconUrl(), Integer.valueOf(C3316R.C3318drawable.fork_ic_internal_logo), true);
    }
}
