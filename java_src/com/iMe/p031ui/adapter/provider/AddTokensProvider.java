package com.iMe.p031ui.adapter.provider;

import com.chad.library.adapter.base.provider.BaseNodeProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.iMe.common.IdFabric$ViewTypes;
import com.iMe.model.wallet.home.CryptoAddTokensItem;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.common.BaseQuickAdapterExtKt;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3417R;
import org.telegram.p043ui.ActionBar.Theme;
/* compiled from: AddTokensProvider.kt */
/* renamed from: com.iMe.ui.adapter.provider.AddTokensProvider */
/* loaded from: classes.dex */
public final class AddTokensProvider extends BaseNodeProvider<CryptoAddTokensItem> {
    private final int itemViewType;
    private final int layoutId;
    private final ResourceManager resourceManager;

    public AddTokensProvider(ResourceManager resourceManager) {
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        this.resourceManager = resourceManager;
        this.itemViewType = IdFabric$ViewTypes.ADD_TOKENS;
        this.layoutId = C3417R.layout.fork_recycle_item_wallet_crypto_add_tokens;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int getItemViewType() {
        return this.itemViewType;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int getLayoutId() {
        return this.layoutId;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public void convert(BaseViewHolder helper, CryptoAddTokensItem item) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        BaseViewHolder rippleBackground = BaseQuickAdapterExtKt.setRippleBackground(helper, C3417R.C3420id.frame_container, false);
        int i = C3417R.C3420id.text_add_tokens;
        BaseQuickAdapterExtKt.applyForView(BaseQuickAdapterExtKt.setThemedTextColor(rippleBackground, i, Theme.key_chats_actionBackground).setText(i, this.resourceManager.getString(C3417R.string.wallet_home_crypto_add_tokens)), i, AddTokensProvider$convert$1.INSTANCE);
    }
}
