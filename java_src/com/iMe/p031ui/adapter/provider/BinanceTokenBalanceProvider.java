package com.iMe.p031ui.adapter.provider;

import com.chad.library.adapter.base.provider.BaseNodeProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.iMe.common.IdFabric$ViewTypes;
import com.iMe.model.wallet.home.pay.BinanceBalanceItem;
import com.iMe.storage.domain.model.binancepay.BinanceTokenBalanceInfo;
import com.iMe.utils.extentions.common.BaseQuickAdapterExtKt;
import com.iMe.utils.extentions.model.wallet.BinanceTokenBalanceExtKt;
import com.iMe.utils.formatter.MaskFormatter;
import com.iMe.utils.helper.binancepay.BinancePayHelper;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3473R;
import org.telegram.p043ui.ActionBar.Theme;
/* compiled from: BinanceTokenBalanceProvider.kt */
/* renamed from: com.iMe.ui.adapter.provider.BinanceTokenBalanceProvider */
/* loaded from: classes.dex */
public final class BinanceTokenBalanceProvider extends BaseNodeProvider<BinanceBalanceItem> {
    private final int itemViewType = IdFabric$ViewTypes.TOKEN_BALANCE;
    private final int layoutId = C3473R.layout.fork_recycle_item_wallet_dashboard_account_balance;

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public /* bridge */ /* synthetic */ void convert(BaseViewHolder baseViewHolder, Object obj, List list) {
        convert(baseViewHolder, (BinanceBalanceItem) obj, (List<? extends Object>) list);
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
        BinanceTokenBalanceInfo balanceInfo = item.getBalanceInfo();
        int i = C3473R.C3476id.card_account_balance;
        BaseViewHolder themedCardBackground = BaseQuickAdapterExtKt.setThemedCardBackground(BaseQuickAdapterExtKt.setRippleForeground(helper, i, false), i, Theme.key_windowBackgroundWhite);
        int i2 = C3473R.C3476id.text_title;
        BaseViewHolder themedTextColor = BaseQuickAdapterExtKt.setThemedTextColor(themedCardBackground, i2, Theme.key_chats_actionBackground);
        int i3 = C3473R.C3476id.text_trade_pair;
        int i4 = Theme.key_windowBackgroundWhiteGrayText2;
        BaseViewHolder themedTextColor2 = BaseQuickAdapterExtKt.setThemedTextColor(themedTextColor, i3, i4);
        int i5 = C3473R.C3476id.text_trade_price;
        BaseViewHolder themedTextColor3 = BaseQuickAdapterExtKt.setThemedTextColor(themedTextColor2, i5, i4);
        int i6 = C3473R.C3476id.text_account_balance_in_dollars;
        BaseViewHolder themedTextColor4 = BaseQuickAdapterExtKt.setThemedTextColor(themedTextColor3, i6, i4);
        int i7 = C3473R.C3476id.text_subtitle;
        BaseViewHolder text = BaseQuickAdapterExtKt.setMediumTypeface(BaseQuickAdapterExtKt.setThemedTextColor(themedTextColor4, i7, Theme.key_chat_messagePanelText), i7, i3, C3473R.C3476id.text_trade_percent, i5, i6).setText(i2, balanceInfo.getAssetName());
        MaskFormatter maskFormatter = MaskFormatter.INSTANCE;
        BaseQuickAdapterExtKt.loadImageWithHeaders(text.setText(i7, maskFormatter.textOrMask(item.isBalanceHidden(), BinanceTokenBalanceExtKt.getTotalBalanceText(balanceInfo))).setText(i6, maskFormatter.textOrMask(item.isBalanceHidden(), BinanceTokenBalanceExtKt.getDollarsBalanceText(balanceInfo))).setText(C3473R.C3476id.text_coin_ticker, balanceInfo.getAssetShortName()).setGone(C3473R.C3476id.constraint_trade_info, true), C3473R.C3476id.image_logo, balanceInfo.getLogoUrl(), BinancePayHelper.INSTANCE.getRefererHeader());
    }

    public void convert(BaseViewHolder helper, BinanceBalanceItem item, List<? extends Object> payloads) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        Intrinsics.checkNotNullParameter(payloads, "payloads");
        BinanceTokenBalanceInfo balanceInfo = item.getBalanceInfo();
        BaseViewHolder text = helper.setText(C3473R.C3476id.text_title, balanceInfo.getAssetName());
        int i = C3473R.C3476id.text_subtitle;
        MaskFormatter maskFormatter = MaskFormatter.INSTANCE;
        BaseQuickAdapterExtKt.loadImageWithHeaders(text.setText(i, maskFormatter.textOrMask(item.isBalanceHidden(), BinanceTokenBalanceExtKt.getTotalBalanceText(balanceInfo))).setText(C3473R.C3476id.text_account_balance_in_dollars, maskFormatter.textOrMask(item.isBalanceHidden(), BinanceTokenBalanceExtKt.getDollarsBalanceText(balanceInfo))).setText(C3473R.C3476id.text_coin_ticker, balanceInfo.getAssetShortName()).setGone(C3473R.C3476id.constraint_trade_info, true), C3473R.C3476id.image_logo, balanceInfo.getLogoUrl(), BinancePayHelper.INSTANCE.getRefererHeader());
    }
}
