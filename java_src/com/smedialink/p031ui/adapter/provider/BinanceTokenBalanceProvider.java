package com.smedialink.p031ui.adapter.provider;

import com.chad.library.adapter.base.provider.BaseNodeProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.smedialink.common.IdFabric$ViewTypes;
import com.smedialink.model.wallet.home.pay.BinanceBalanceItem;
import com.smedialink.storage.domain.storage.CryptoPreferenceHelper;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import com.smedialink.utils.extentions.common.BaseQuickAdapterExtKt;
import com.smedialink.utils.extentions.model.wallet.BinanceTokenBalanceExtKt;
import com.smedialink.utils.formatter.MaskFormatter;
import com.smedialink.utils.helper.binancepay.BinancePayHelper;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3301R;
/* compiled from: BinanceTokenBalanceProvider.kt */
/* renamed from: com.smedialink.ui.adapter.provider.BinanceTokenBalanceProvider */
/* loaded from: classes3.dex */
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
        this.layoutId = C3301R.layout.fork_recycle_item_wallet_dashboard_account_balance;
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
        int i = C3301R.C3304id.card_account_balance;
        BaseViewHolder themedCardBackground = BaseQuickAdapterExtKt.setThemedCardBackground(BaseQuickAdapterExtKt.setRippleForeground(helper, i, false), i, "windowBackgroundWhite");
        int i2 = C3301R.C3304id.text_account_title;
        BaseViewHolder themedTextColor = BaseQuickAdapterExtKt.setThemedTextColor(themedCardBackground, i2, "chats_actionBackground");
        int i3 = C3301R.C3304id.text_trade_pair;
        int i4 = C3301R.C3304id.text_trade_price;
        int i5 = C3301R.C3304id.text_account_balance_in_dollars;
        BaseViewHolder themedTextColor2 = BaseQuickAdapterExtKt.setThemedTextColor(themedTextColor, "windowBackgroundWhiteGrayText2", i3, i4, i5);
        int i6 = C3301R.C3304id.text_account_balance;
        BaseViewHolder text = BaseQuickAdapterExtKt.setMediumTypeface(BaseQuickAdapterExtKt.setThemedTextColor(themedTextColor2, i6, "chat_messagePanelText"), i6, i3, C3301R.C3304id.text_trade_percent, i4, i5).setText(i2, item.getBalanceInfo().getAssetName());
        MaskFormatter maskFormatter = MaskFormatter.INSTANCE;
        BaseQuickAdapterExtKt.applyForView(BaseQuickAdapterExtKt.loadImage(text.setText(i6, maskFormatter.textOrMask(this.cryptoPreferenceHelper.getCryptoHiddenBalance(), BinanceTokenBalanceExtKt.getTotalBalanceText(item.getBalanceInfo()))).setText(i5, maskFormatter.textOrMask(this.cryptoPreferenceHelper.getCryptoHiddenBalance(), BinanceTokenBalanceExtKt.getDollarsBalanceText(item.getBalanceInfo(), this.resourceManager))).setGone(C3301R.C3304id.constraint_trade_info, true), C3301R.C3304id.image_coin_icon, item.getBalanceInfo().getLogoUrl(), BinancePayHelper.INSTANCE.getRefererHeader()), C3301R.C3304id.text_coin_ticker, new BinanceTokenBalanceProvider$convert$1(item));
    }

    public void convert(BaseViewHolder helper, BinanceBalanceItem item, List<? extends Object> payloads) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        Intrinsics.checkNotNullParameter(payloads, "payloads");
        BaseViewHolder text = helper.setText(C3301R.C3304id.text_account_title, item.getBalanceInfo().getAssetName());
        int i = C3301R.C3304id.text_account_balance;
        MaskFormatter maskFormatter = MaskFormatter.INSTANCE;
        BaseQuickAdapterExtKt.applyForView(BaseQuickAdapterExtKt.loadImage(text.setText(i, maskFormatter.textOrMask(this.cryptoPreferenceHelper.getCryptoHiddenBalance(), BinanceTokenBalanceExtKt.getTotalBalanceText(item.getBalanceInfo()))).setText(C3301R.C3304id.text_account_balance_in_dollars, maskFormatter.textOrMask(this.cryptoPreferenceHelper.getCryptoHiddenBalance(), BinanceTokenBalanceExtKt.getDollarsBalanceText(item.getBalanceInfo(), this.resourceManager))).setGone(C3301R.C3304id.constraint_trade_info, true), C3301R.C3304id.image_coin_icon, item.getBalanceInfo().getLogoUrl(), BinancePayHelper.INSTANCE.getRefererHeader()), C3301R.C3304id.text_coin_ticker, new BinanceTokenBalanceProvider$convert$2(item));
    }
}
