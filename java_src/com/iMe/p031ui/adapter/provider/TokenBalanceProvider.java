package com.iMe.p031ui.adapter.provider;

import com.chad.library.adapter.base.provider.BaseNodeProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.iMe.common.IdFabric$ViewTypes;
import com.iMe.model.wallet.home.AccountItem;
import com.iMe.storage.domain.model.wallet.token.TokenBalance;
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.common.BaseQuickAdapterExtKt;
import com.iMe.utils.extentions.model.wallet.TokenBalanceExtKt;
import com.iMe.utils.formatter.MaskFormatter;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3419R;
import org.telegram.p043ui.ActionBar.Theme;
/* compiled from: TokenBalanceProvider.kt */
/* renamed from: com.iMe.ui.adapter.provider.TokenBalanceProvider */
/* loaded from: classes.dex */
public final class TokenBalanceProvider extends BaseNodeProvider<AccountItem.Token> {
    private final int itemViewType;
    private final int layoutId;
    private final ResourceManager resourceManager;

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public /* bridge */ /* synthetic */ void convert(BaseViewHolder baseViewHolder, Object obj, List list) {
        convert(baseViewHolder, (AccountItem.Token) obj, (List<? extends Object>) list);
    }

    public TokenBalanceProvider(ResourceManager resourceManager) {
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        this.resourceManager = resourceManager;
        this.itemViewType = IdFabric$ViewTypes.TOKEN_BALANCE;
        this.layoutId = C3419R.layout.fork_recycle_item_wallet_dashboard_account_balance;
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
    public void convert(BaseViewHolder helper, AccountItem.Token item) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        TokenBalance balance = item.getBalance();
        int i = C3419R.C3422id.card_account_balance;
        BaseViewHolder themedCardBackground = BaseQuickAdapterExtKt.setThemedCardBackground(BaseQuickAdapterExtKt.setRippleForeground(helper, i, false), i, Theme.key_windowBackgroundWhite);
        int i2 = C3419R.C3422id.constraint_trade_info;
        BaseViewHolder themedRoundedBackground = BaseQuickAdapterExtKt.setThemedRoundedBackground(themedCardBackground, i2, Theme.key_chats_pinnedOverlay, 4.0f);
        int i3 = C3419R.C3422id.text_account_title;
        BaseViewHolder themedTextColor = BaseQuickAdapterExtKt.setThemedTextColor(themedRoundedBackground, i3, Theme.key_chats_actionBackground);
        int i4 = Theme.key_windowBackgroundWhiteGrayText2;
        int i5 = C3419R.C3422id.text_trade_pair;
        int i6 = C3419R.C3422id.text_trade_price;
        int i7 = C3419R.C3422id.text_account_balance_in_dollars;
        BaseViewHolder themedTextColor2 = BaseQuickAdapterExtKt.setThemedTextColor(themedTextColor, i4, i5, i6, i7);
        int i8 = C3419R.C3422id.text_trade_percent;
        BaseViewHolder themedTextColor3 = BaseQuickAdapterExtKt.setThemedTextColor(themedTextColor2, i8, TokenBalanceExtKt.getPriceDirection(balance).getColorKey());
        int i9 = C3419R.C3422id.text_account_balance;
        BaseViewHolder loadImage$default = BaseQuickAdapterExtKt.loadImage$default(BaseQuickAdapterExtKt.setMediumTypeface(BaseQuickAdapterExtKt.setThemedTextColor(themedTextColor3, i9, Theme.key_chat_messagePanelText), i9, i5, i8, i6, i7), C3419R.C3422id.image_coin_icon, balance.getToken().getAvatarUrl(), null, false, 12, null);
        int i10 = C3419R.C3422id.image_price_direction;
        BaseViewHolder themedImageColor = BaseQuickAdapterExtKt.setThemedImageColor(BaseQuickAdapterExtKt.setThemedImageColor(loadImage$default.setImageResource(i10, TokenBalanceExtKt.getPriceDirection(balance).getIcon()), i10, TokenBalanceExtKt.getPriceDirection(balance).getColorKey()), C3419R.C3422id.image_trade, i4);
        MaskFormatter maskFormatter = MaskFormatter.INSTANCE;
        BaseViewHolder text = themedImageColor.setText(i9, maskFormatter.textOrMask(item.isBalanceHidden(), TokenBalanceExtKt.getTotalBalance(balance))).setText(i3, balance.getToken().getName());
        BaseQuickAdapterExtKt.setVisibleElseGone(text.setText(i5, balance.getToken().getTicker() + " / " + TokenDetailed.Companion.getUSD().getName()).setText(i6, TokenBalanceExtKt.getDollarsRateText(balance)).setText(i8, this.resourceManager.getString(C3419R.string.wallet_dashboard_balance_24h_rate, Double.valueOf(balance.getRatePercentageChange24h()))).setText(i7, maskFormatter.textOrMask(item.isBalanceHidden(), TokenBalanceExtKt.getDollarsBalanceText(balance))).setText(C3419R.C3422id.text_coin_ticker, balance.getToken().getTicker()), i2, item.isQuotationVisible());
    }

    public void convert(BaseViewHolder helper, AccountItem.Token item, List<? extends Object> payloads) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        Intrinsics.checkNotNullParameter(payloads, "payloads");
        TokenBalance balance = item.getBalance();
        int i = C3419R.C3422id.text_account_balance;
        MaskFormatter maskFormatter = MaskFormatter.INSTANCE;
        BaseViewHolder text = helper.setText(i, maskFormatter.textOrMask(item.isBalanceHidden(), TokenBalanceExtKt.getTotalBalance(balance))).setText(C3419R.C3422id.text_account_balance_in_dollars, maskFormatter.textOrMask(item.isBalanceHidden(), TokenBalanceExtKt.getDollarsBalanceText(balance)));
        int i2 = C3419R.C3422id.image_price_direction;
        BaseViewHolder loadImage$default = BaseQuickAdapterExtKt.loadImage$default(BaseQuickAdapterExtKt.setThemedImageColor(text.setImageResource(i2, TokenBalanceExtKt.getPriceDirection(balance).getIcon()), i2, TokenBalanceExtKt.getPriceDirection(balance).getColorKey()), C3419R.C3422id.image_coin_icon, balance.getToken().getAvatarUrl(), null, false, 12, null);
        int i3 = C3419R.C3422id.text_trade_percent;
        BaseQuickAdapterExtKt.setThemedTextColor(loadImage$default, i3, TokenBalanceExtKt.getPriceDirection(balance).getColorKey()).setText(C3419R.C3422id.text_trade_price, TokenBalanceExtKt.getDollarsRateText(balance)).setText(i3, this.resourceManager.getString(C3419R.string.wallet_dashboard_balance_24h_rate, Double.valueOf(balance.getRatePercentageChange24h())));
    }
}
