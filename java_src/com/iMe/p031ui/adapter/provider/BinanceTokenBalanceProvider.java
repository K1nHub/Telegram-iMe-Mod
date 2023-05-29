package com.iMe.p031ui.adapter.provider;

import com.chad.library.adapter.base.provider.BaseNodeProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.iMe.common.IdFabric$ViewTypes;
import com.iMe.model.wallet.home.pay.BinanceBalanceItem;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.common.BaseQuickAdapterExtKt;
import com.iMe.utils.extentions.model.wallet.BinanceTokenBalanceExtKt;
import com.iMe.utils.formatter.MaskFormatter;
import com.iMe.utils.helper.binancepay.BinancePayHelper;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3295R;
import org.telegram.p044ui.ActionBar.Theme;
/* compiled from: BinanceTokenBalanceProvider.kt */
/* renamed from: com.iMe.ui.adapter.provider.BinanceTokenBalanceProvider */
/* loaded from: classes.dex */
public final class BinanceTokenBalanceProvider extends BaseNodeProvider<BinanceBalanceItem> {
    private final CryptoPreferenceHelper cryptoPreferenceHelper;
    private final int itemViewType;
    private final int layoutId;
    private final ResourceManager resourceManager;

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public /* bridge */ /* synthetic */ void convert(BaseViewHolder baseViewHolder, Object obj, List list) {
        convert(baseViewHolder, (BinanceBalanceItem) obj, (List<? extends Object>) list);
    }

    public BinanceTokenBalanceProvider(ResourceManager resourceManager, CryptoPreferenceHelper cryptoPreferenceHelper) {
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        Intrinsics.checkNotNullParameter(cryptoPreferenceHelper, "cryptoPreferenceHelper");
        this.resourceManager = resourceManager;
        this.cryptoPreferenceHelper = cryptoPreferenceHelper;
        this.itemViewType = IdFabric$ViewTypes.TOKEN_BALANCE;
        this.layoutId = C3295R.layout.fork_recycle_item_wallet_dashboard_account_balance;
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
    public void convert(BaseViewHolder helper, BinanceBalanceItem item) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        int i = C3295R.C3298id.card_account_balance;
        BaseViewHolder themedCardBackground = BaseQuickAdapterExtKt.setThemedCardBackground(BaseQuickAdapterExtKt.setRippleForeground(helper, i, false), i, Theme.key_windowBackgroundWhite);
        int i2 = C3295R.C3298id.text_account_title;
        BaseViewHolder themedTextColor = BaseQuickAdapterExtKt.setThemedTextColor(themedCardBackground, i2, Theme.key_chats_actionBackground);
        int i3 = C3295R.C3298id.text_trade_pair;
        int i4 = Theme.key_windowBackgroundWhiteGrayText2;
        BaseViewHolder themedTextColor2 = BaseQuickAdapterExtKt.setThemedTextColor(themedTextColor, i3, i4);
        int i5 = C3295R.C3298id.text_trade_price;
        BaseViewHolder themedTextColor3 = BaseQuickAdapterExtKt.setThemedTextColor(themedTextColor2, i5, i4);
        int i6 = C3295R.C3298id.text_account_balance_in_dollars;
        BaseViewHolder themedTextColor4 = BaseQuickAdapterExtKt.setThemedTextColor(themedTextColor3, i6, i4);
        int i7 = C3295R.C3298id.text_account_balance;
        BaseViewHolder text = BaseQuickAdapterExtKt.setMediumTypeface(BaseQuickAdapterExtKt.setThemedTextColor(themedTextColor4, i7, Theme.key_chat_messagePanelText), i7, i3, C3295R.C3298id.text_trade_percent, i5, i6).setText(i2, item.getBalanceInfo().getAssetName());
        MaskFormatter maskFormatter = MaskFormatter.INSTANCE;
        BaseQuickAdapterExtKt.applyForView(BaseQuickAdapterExtKt.loadImage(text.setText(i7, maskFormatter.textOrMask(this.cryptoPreferenceHelper.getCryptoHiddenBalance(), BinanceTokenBalanceExtKt.getTotalBalanceText(item.getBalanceInfo()))).setText(i6, maskFormatter.textOrMask(this.cryptoPreferenceHelper.getCryptoHiddenBalance(), BinanceTokenBalanceExtKt.getDollarsBalanceText(item.getBalanceInfo(), this.resourceManager))).setGone(C3295R.C3298id.constraint_trade_info, true), C3295R.C3298id.image_coin_icon, item.getBalanceInfo().getLogoUrl(), BinancePayHelper.INSTANCE.getRefererHeader()), C3295R.C3298id.text_coin_ticker, new BinanceTokenBalanceProvider$convert$1(item));
    }

    public void convert(BaseViewHolder helper, BinanceBalanceItem item, List<? extends Object> payloads) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        Intrinsics.checkNotNullParameter(payloads, "payloads");
        BaseViewHolder text = helper.setText(C3295R.C3298id.text_account_title, item.getBalanceInfo().getAssetName());
        int i = C3295R.C3298id.text_account_balance;
        MaskFormatter maskFormatter = MaskFormatter.INSTANCE;
        BaseQuickAdapterExtKt.applyForView(BaseQuickAdapterExtKt.loadImage(text.setText(i, maskFormatter.textOrMask(this.cryptoPreferenceHelper.getCryptoHiddenBalance(), BinanceTokenBalanceExtKt.getTotalBalanceText(item.getBalanceInfo()))).setText(C3295R.C3298id.text_account_balance_in_dollars, maskFormatter.textOrMask(this.cryptoPreferenceHelper.getCryptoHiddenBalance(), BinanceTokenBalanceExtKt.getDollarsBalanceText(item.getBalanceInfo(), this.resourceManager))).setGone(C3295R.C3298id.constraint_trade_info, true), C3295R.C3298id.image_coin_icon, item.getBalanceInfo().getLogoUrl(), BinancePayHelper.INSTANCE.getRefererHeader()), C3295R.C3298id.text_coin_ticker, new BinanceTokenBalanceProvider$convert$2(item));
    }
}
