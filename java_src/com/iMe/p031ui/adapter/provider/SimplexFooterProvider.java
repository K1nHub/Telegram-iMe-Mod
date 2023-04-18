package com.iMe.p031ui.adapter.provider;

import com.chad.library.adapter.base.provider.BaseNodeProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.iMe.common.IdFabric$ViewTypes;
import com.iMe.model.wallet.crypto.buy.CryptoBuyFooterItem;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.common.BaseQuickAdapterExtKt;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3242R;
/* compiled from: SimplexFooterProvider.kt */
/* renamed from: com.iMe.ui.adapter.provider.SimplexFooterProvider */
/* loaded from: classes3.dex */
public final class SimplexFooterProvider extends BaseNodeProvider<CryptoBuyFooterItem> {
    private final int itemViewType;
    private final int layoutId;
    private final ResourceManager resourceManager;

    public SimplexFooterProvider(ResourceManager resourceManager) {
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        this.resourceManager = resourceManager;
        this.itemViewType = IdFabric$ViewTypes.FOOTER;
        this.layoutId = C3242R.layout.fork_recycle_item_crypto_buy_footer;
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
    public void convert(BaseViewHolder helper, CryptoBuyFooterItem item) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        int i = C3242R.C3245id.text_title;
        BaseViewHolder themedTextColor = BaseQuickAdapterExtKt.setThemedTextColor(helper, i, "chats_date");
        int i2 = C3242R.C3245id.text_powered_by;
        BaseQuickAdapterExtKt.setThemedCompoundDrawablesColor(BaseQuickAdapterExtKt.setThemedTextColor(themedTextColor, i2, "chats_attachMessage"), i, "windowBackgroundWhiteGrayText2").setText(i, this.resourceManager.getString(item.getTitle())).setText(i2, item.getDescription());
    }
}
