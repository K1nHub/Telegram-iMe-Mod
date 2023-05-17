package com.iMe.p031ui.adapter.provider;

import com.chad.library.adapter.base.provider.BaseNodeProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.iMe.common.IdFabric$ViewTypes;
import com.iMe.model.wallet.crypto.buy.CryptoBuyItem;
import com.iMe.p031ui.custom.CircleTokenView;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.common.BaseQuickAdapterExtKt;
import com.iMe.utils.extentions.model.wallet.CryptoProductExtKt;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3290R;
import org.telegram.p044ui.ActionBar.Theme;
/* compiled from: SimplexProductProvider.kt */
/* renamed from: com.iMe.ui.adapter.provider.SimplexProductProvider */
/* loaded from: classes.dex */
public final class SimplexProductProvider extends BaseNodeProvider<CryptoBuyItem> {
    private final int itemViewType;
    private final int layoutId;
    private final ResourceManager resourceManager;

    public SimplexProductProvider(ResourceManager resourceManager) {
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        this.resourceManager = resourceManager;
        this.itemViewType = IdFabric$ViewTypes.PRODUCT_FOR_BUY;
        this.layoutId = C3290R.layout.fork_recycle_item_wallet_buy_token;
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
    public void convert(BaseViewHolder helper, CryptoBuyItem item) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        int i = C3290R.C3293id.card_buy_token_wrapper;
        BaseViewHolder themedCardBackground = BaseQuickAdapterExtKt.setThemedCardBackground(BaseQuickAdapterExtKt.setRippleForeground(helper, i, false), i, Theme.key_windowBackgroundWhite);
        int i2 = C3290R.C3293id.text_discount;
        BaseViewHolder themedTextColor = BaseQuickAdapterExtKt.setThemedTextColor(themedCardBackground, i2, Theme.key_chats_name);
        int i3 = C3290R.C3293id.text_coin_value;
        BaseViewHolder themedTextColor2 = BaseQuickAdapterExtKt.setThemedTextColor(themedTextColor, i3, Theme.key_chats_attachMessage);
        int i4 = C3290R.C3293id.text_price_value;
        int i5 = Theme.key_chats_date;
        BaseViewHolder themedTextColor3 = BaseQuickAdapterExtKt.setThemedTextColor(themedTextColor2, i4, i5);
        int i6 = C3290R.C3293id.text_price_title;
        ((CircleTokenView) BaseQuickAdapterExtKt.setMediumTypeface(BaseQuickAdapterExtKt.setMediumTypeface(BaseQuickAdapterExtKt.setThemedTextColor(themedTextColor3, i6, i5), i2), i4).setText(i2, this.resourceManager.getString(C3290R.string.wallet_crypto_buy_amount_title)).setText(i3, item.getAmount(this.resourceManager)).setText(i4, item.getPrice(this.resourceManager)).setText(i6, this.resourceManager.getString(C3290R.string.wallet_buy_tokens_purchase_slide_price_title)).getView(C3290R.C3293id.image_coin_icon)).setIconAndColor(item.getTokenInfo().getSmallWhiteIcon(), this.resourceManager.getColor(CryptoProductExtKt.getBackgroundColor(item.getProduct())));
    }
}
