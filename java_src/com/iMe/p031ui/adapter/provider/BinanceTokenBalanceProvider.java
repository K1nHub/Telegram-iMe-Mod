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
import org.telegram.messenger.C3242R;
/* compiled from: BinanceTokenBalanceProvider.kt */
/* renamed from: com.iMe.ui.adapter.provider.BinanceTokenBalanceProvider */
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
        this.layoutId = C3242R.layout.fork_recycle_item_wallet_dashboard_account_balance;
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
        int i = C3242R.C3245id.card_account_balance;
        BaseViewHolder themedCardBackground = BaseQuickAdapterExtKt.setThemedCardBackground(BaseQuickAdapterExtKt.setRippleForeground(helper, i, false), i, "windowBackgroundWhite");
        int i2 = C3242R.C3245id.text_account_title;
        BaseViewHolder themedTextColor = BaseQuickAdapterExtKt.setThemedTextColor(themedCardBackground, i2, "chats_actionBackground");
        int i3 = C3242R.C3245id.text_trade_pair;
        int i4 = C3242R.C3245id.text_trade_price;
        int i5 = C3242R.C3245id.text_account_balance_in_dollars;
        BaseViewHolder themedTextColor2 = BaseQuickAdapterExtKt.setThemedTextColor(themedTextColor, "windowBackgroundWhiteGrayText2", i3, i4, i5);
        int i6 = C3242R.C3245id.text_account_balance;
        BaseViewHolder text = BaseQuickAdapterExtKt.setMediumTypeface(BaseQuickAdapterExtKt.setThemedTextColor(themedTextColor2, i6, "chat_messagePanelText"), i6, i3, C3242R.C3245id.text_trade_percent, i4, i5).setText(i2, item.getBalanceInfo().getAssetName());
        MaskFormatter maskFormatter = MaskFormatter.INSTANCE;
        BaseQuickAdapterExtKt.applyForView(BaseQuickAdapterExtKt.loadImage(text.setText(i6, maskFormatter.textOrMask(this.cryptoPreferenceHelper.getCryptoHiddenBalance(), BinanceTokenBalanceExtKt.getTotalBalanceText(item.getBalanceInfo()))).setText(i5, maskFormatter.textOrMask(this.cryptoPreferenceHelper.getCryptoHiddenBalance(), BinanceTokenBalanceExtKt.getDollarsBalanceText(item.getBalanceInfo(), this.resourceManager))).setGone(C3242R.C3245id.constraint_trade_info, true), C3242R.C3245id.image_coin_icon, item.getBalanceInfo().getLogoUrl(), BinancePayHelper.INSTANCE.getRefererHeader()), C3242R.C3245id.text_coin_ticker, new BinanceTokenBalanceProvider$convert$1(item));
    }

    public void convert(BaseViewHolder helper, BinanceBalanceItem item, List<? extends Object> payloads) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        Intrinsics.checkNotNullParameter(payloads, "payloads");
        BaseViewHolder text = helper.setText(C3242R.C3245id.text_account_title, item.getBalanceInfo().getAssetName());
        int i = C3242R.C3245id.text_account_balance;
        MaskFormatter maskFormatter = MaskFormatter.INSTANCE;
        BaseQuickAdapterExtKt.applyForView(BaseQuickAdapterExtKt.loadImage(text.setText(i, maskFormatter.textOrMask(this.cryptoPreferenceHelper.getCryptoHiddenBalance(), BinanceTokenBalanceExtKt.getTotalBalanceText(item.getBalanceInfo()))).setText(C3242R.C3245id.text_account_balance_in_dollars, maskFormatter.textOrMask(this.cryptoPreferenceHelper.getCryptoHiddenBalance(), BinanceTokenBalanceExtKt.getDollarsBalanceText(item.getBalanceInfo(), this.resourceManager))).setGone(C3242R.C3245id.constraint_trade_info, true), C3242R.C3245id.image_coin_icon, item.getBalanceInfo().getLogoUrl(), BinancePayHelper.INSTANCE.getRefererHeader()), C3242R.C3245id.text_coin_ticker, new BinanceTokenBalanceProvider$convert$2(item));
    }
}