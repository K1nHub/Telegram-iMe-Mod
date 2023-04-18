package com.iMe.p031ui.adapter.provider;

import com.chad.library.adapter.base.provider.BaseNodeProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.iMe.common.IdFabric$ViewTypes;
import com.iMe.model.wallet.home.CryptoSelectTokensItem;
import com.iMe.utils.extentions.common.BaseQuickAdapterExtKt;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3242R;
/* compiled from: SelectTokenProvider.kt */
/* renamed from: com.iMe.ui.adapter.provider.SelectTokenProvider */
/* loaded from: classes3.dex */
public final class SelectTokenProvider extends BaseNodeProvider<CryptoSelectTokensItem> {
    private final int itemViewType = IdFabric$ViewTypes.SELECT_TOKENS;
    private final int layoutId = C3242R.layout.fork_recycle_item_wallet_crypto_select_tokens;

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int getItemViewType() {
        return this.itemViewType;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int getLayoutId() {
        return this.layoutId;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public void convert(BaseViewHolder helper, CryptoSelectTokensItem item) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        int i = C3242R.C3245id.select_tokens_text;
        BaseQuickAdapterExtKt.setThemedTextColor(BaseQuickAdapterExtKt.setRippleBackground(helper, i, false), i, "chats_actionBackground");
    }
}