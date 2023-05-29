package com.iMe.p031ui.adapter.provider;

import com.chad.library.adapter.base.provider.BaseNodeProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.iMe.common.IdFabric$ViewTypes;
import com.iMe.model.wallet.home.AccountItem;
import com.iMe.storage.domain.model.wallet.token.TokenBalance;
import com.iMe.storage.domain.model.wallet.token.TokenInfo;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import com.iMe.storage.domain.utils.extentions.model.TokenInfoExtKt;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.common.BaseQuickAdapterExtKt;
import com.iMe.utils.extentions.model.wallet.PriceRateExtKt;
import com.iMe.utils.extentions.model.wallet.TokenBalanceExtKt;
import com.iMe.utils.formatter.MaskFormatter;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3295R;
import org.telegram.p044ui.ActionBar.Theme;
/* compiled from: TokenBalanceProvider.kt */
/* renamed from: com.iMe.ui.adapter.provider.TokenBalanceProvider */
/* loaded from: classes.dex */
public final class TokenBalanceProvider extends BaseNodeProvider<AccountItem.Token> {
    private final CryptoPreferenceHelper cryptoPreferenceHelper;
    private final int itemViewType;
    private final int layoutId;
    private final ResourceManager resourceManager;

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public /* bridge */ /* synthetic */ void convert(BaseViewHolder baseViewHolder, Object obj, List list) {
        convert(baseViewHolder, (AccountItem.Token) obj, (List<? extends Object>) list);
    }

    public TokenBalanceProvider(ResourceManager resourceManager, CryptoPreferenceHelper cryptoPreferenceHelper) {
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
    public void convert(BaseViewHolder helper, AccountItem.Token item) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        int i = C3295R.C3298id.card_account_balance;
        BaseViewHolder themedCardBackground = BaseQuickAdapterExtKt.setThemedCardBackground(BaseQuickAdapterExtKt.setRippleForeground(helper, i, false), i, Theme.key_windowBackgroundWhite);
        int i2 = C3295R.C3298id.constraint_trade_info;
        BaseViewHolder themedRoundedBackground = BaseQuickAdapterExtKt.setThemedRoundedBackground(themedCardBackground, i2, Theme.key_chats_pinnedOverlay, 4.0f);
        int i3 = C3295R.C3298id.text_account_title;
        BaseViewHolder themedTextColor = BaseQuickAdapterExtKt.setThemedTextColor(themedRoundedBackground, i3, Theme.key_chats_actionBackground);
        int i4 = C3295R.C3298id.text_trade_pair;
        int i5 = Theme.key_windowBackgroundWhiteGrayText2;
        BaseViewHolder themedTextColor2 = BaseQuickAdapterExtKt.setThemedTextColor(themedTextColor, i4, i5);
        int i6 = C3295R.C3298id.text_trade_price;
        BaseViewHolder themedTextColor3 = BaseQuickAdapterExtKt.setThemedTextColor(themedTextColor2, i6, i5);
        int i7 = C3295R.C3298id.text_account_balance_in_dollars;
        BaseViewHolder themedTextColor4 = BaseQuickAdapterExtKt.setThemedTextColor(themedTextColor3, i7, i5);
        int i8 = C3295R.C3298id.text_trade_percent;
        BaseViewHolder themedTextColor5 = BaseQuickAdapterExtKt.setThemedTextColor(themedTextColor4, i8, PriceRateExtKt.getPriceDirection(item.getBalance().getPriceRate()).getColorKey());
        int i9 = C3295R.C3298id.text_account_balance;
        BaseViewHolder imageResource = BaseQuickAdapterExtKt.setMediumTypeface(BaseQuickAdapterExtKt.setThemedTextColor(themedTextColor5, i9, Theme.key_chat_messagePanelText), i9, i4, i8, i6, i7).setImageResource(C3295R.C3298id.image_coin_icon, TokenInfoExtKt.getLogo(item.getBalance().getInfo(), this.cryptoPreferenceHelper.getNetworkType()));
        int i10 = C3295R.C3298id.image_price_direction;
        BaseViewHolder themedImageColor = BaseQuickAdapterExtKt.setThemedImageColor(BaseQuickAdapterExtKt.setThemedImageColor(imageResource.setImageResource(i10, PriceRateExtKt.getPriceDirection(item.getBalance().getPriceRate()).getIcon()), i10, PriceRateExtKt.getPriceDirection(item.getBalance().getPriceRate()).getColorKey()), C3295R.C3298id.image_trade, i5);
        MaskFormatter maskFormatter = MaskFormatter.INSTANCE;
        BaseViewHolder text = themedImageColor.setText(i9, maskFormatter.textOrMask(this.cryptoPreferenceHelper.getCryptoHiddenBalance(), TokenBalanceExtKt.getTotalBalance(item.getBalance()))).setText(i3, this.resourceManager.getString(item.getBalance().getInfo().getFullName()));
        BaseQuickAdapterExtKt.applyForView(BaseQuickAdapterExtKt.setVisibleElseGone(text.setText(i4, this.resourceManager.getString(item.getBalance().getInfo().getShortName()) + " / " + this.resourceManager.getString(TokenInfo.Fiat.USD.INSTANCE.getFullName())).setText(i6, TokenBalanceExtKt.getDollarsRateText(item.getBalance(), this.resourceManager)).setText(i8, this.resourceManager.getString(C3295R.string.wallet_dashboard_balance_24h_rate, Float.valueOf(item.getBalance().getPriceRate().getRatePercentageChange24h()))).setText(i7, maskFormatter.textOrMask(this.cryptoPreferenceHelper.getCryptoHiddenBalance(), TokenBalanceExtKt.getDollarsBalanceText(item.getBalance(), this.resourceManager))), i2, item.isQuotationVisible()), C3295R.C3298id.text_coin_ticker, new TokenBalanceProvider$convert$1(item, this));
    }

    public void convert(BaseViewHolder helper, AccountItem.Token item, List<? extends Object> payloads) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        Intrinsics.checkNotNullParameter(payloads, "payloads");
        TokenBalance balance = item.getBalance();
        int i = C3295R.C3298id.text_account_balance;
        MaskFormatter maskFormatter = MaskFormatter.INSTANCE;
        BaseViewHolder text = helper.setText(i, maskFormatter.textOrMask(this.cryptoPreferenceHelper.getCryptoHiddenBalance(), TokenBalanceExtKt.getTotalBalance(balance))).setText(C3295R.C3298id.text_account_balance_in_dollars, maskFormatter.textOrMask(this.cryptoPreferenceHelper.getCryptoHiddenBalance(), TokenBalanceExtKt.getDollarsBalanceText(balance, this.resourceManager)));
        int i2 = C3295R.C3298id.image_price_direction;
        BaseViewHolder imageResource = BaseQuickAdapterExtKt.setThemedImageColor(text.setImageResource(i2, PriceRateExtKt.getPriceDirection(balance.getPriceRate()).getIcon()), i2, PriceRateExtKt.getPriceDirection(balance.getPriceRate()).getColorKey()).setImageResource(C3295R.C3298id.image_coin_icon, TokenInfoExtKt.getLogo(balance.getInfo(), this.cryptoPreferenceHelper.getNetworkType()));
        int i3 = C3295R.C3298id.text_trade_percent;
        BaseQuickAdapterExtKt.setThemedTextColor(imageResource, i3, PriceRateExtKt.getPriceDirection(balance.getPriceRate()).getColorKey()).setText(C3295R.C3298id.text_trade_price, TokenBalanceExtKt.getDollarsRateText(balance, this.resourceManager)).setText(i3, this.resourceManager.getString(C3295R.string.wallet_dashboard_balance_24h_rate, Float.valueOf(balance.getPriceRate().getRatePercentageChange24h())));
    }
}
