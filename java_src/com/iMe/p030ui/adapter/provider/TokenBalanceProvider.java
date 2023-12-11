package com.iMe.p030ui.adapter.provider;

import android.content.res.ColorStateList;
import androidx.appcompat.widget.AppCompatImageView;
import com.chad.library.adapter.base.provider.BaseNodeProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.iMe.common.IdFabric$ViewTypes;
import com.iMe.model.wallet.home.AccountItem;
import com.iMe.storage.data.utils.crypto.NetworksHelper;
import com.iMe.storage.domain.model.wallet.token.TokenBalance;
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.common.BaseQuickAdapterExtKt;
import com.iMe.utils.extentions.common.ImageViewExtKt;
import com.iMe.utils.extentions.common.ViewExtKt;
import com.iMe.utils.extentions.model.wallet.TokenBalanceExtKt;
import com.iMe.utils.formatter.MaskFormatter;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3632R;
import org.telegram.p043ui.ActionBar.Theme;
/* compiled from: TokenBalanceProvider.kt */
/* renamed from: com.iMe.ui.adapter.provider.TokenBalanceProvider */
/* loaded from: classes3.dex */
public final class TokenBalanceProvider extends BaseNodeProvider<AccountItem.Token> {
    private final int itemViewType;
    private final int layoutId;
    private final Lazy networkIconCornerSize$delegate;
    private final ResourceManager resourceManager;

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public /* bridge */ /* synthetic */ void convert(BaseViewHolder baseViewHolder, Object obj, List list) {
        convert(baseViewHolder, (AccountItem.Token) obj, (List<? extends Object>) list);
    }

    public TokenBalanceProvider(ResourceManager resourceManager) {
        Lazy lazy;
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        this.resourceManager = resourceManager;
        this.itemViewType = IdFabric$ViewTypes.TOKEN_BALANCE;
        this.layoutId = C3632R.layout.fork_recycle_item_wallet_dashboard_account_balance;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<Float>() { // from class: com.iMe.ui.adapter.provider.TokenBalanceProvider$networkIconCornerSize$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Float invoke() {
                ResourceManager resourceManager2;
                resourceManager2 = TokenBalanceProvider.this.resourceManager;
                return Float.valueOf(resourceManager2.getDimens(C3632R.dimen.icon_size_default) / 2);
            }
        });
        this.networkIconCornerSize$delegate = lazy;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int getItemViewType() {
        return this.itemViewType;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int getLayoutId() {
        return this.layoutId;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final float getNetworkIconCornerSize() {
        return ((Number) this.networkIconCornerSize$delegate.getValue()).floatValue();
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public void convert(BaseViewHolder helper, final AccountItem.Token item) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        final TokenBalance balance = item.getBalance();
        int i = C3632R.C3635id.card_account_balance;
        BaseViewHolder themedCardBackground = BaseQuickAdapterExtKt.setThemedCardBackground(BaseQuickAdapterExtKt.setRippleForeground(helper, i, false), i, Theme.key_windowBackgroundWhite);
        int i2 = C3632R.C3635id.constraint_trade_info;
        BaseViewHolder themedRoundedBackground = BaseQuickAdapterExtKt.setThemedRoundedBackground(themedCardBackground, i2, Theme.key_chats_pinnedOverlay, 4.0f);
        int i3 = C3632R.C3635id.text_title;
        BaseViewHolder themedTextColor = BaseQuickAdapterExtKt.setThemedTextColor(themedRoundedBackground, i3, Theme.key_chats_actionBackground);
        int i4 = Theme.key_windowBackgroundWhiteGrayText2;
        int i5 = C3632R.C3635id.text_trade_pair;
        int i6 = C3632R.C3635id.text_trade_price;
        int i7 = C3632R.C3635id.text_account_balance_in_dollars;
        BaseViewHolder themedTextColor2 = BaseQuickAdapterExtKt.setThemedTextColor(themedTextColor, i4, i5, i6, i7);
        int i8 = C3632R.C3635id.text_trade_percent;
        BaseViewHolder themedTextColor3 = BaseQuickAdapterExtKt.setThemedTextColor(themedTextColor2, i8, TokenBalanceExtKt.getPriceDirection(balance).getColorKey());
        int i9 = C3632R.C3635id.text_subtitle;
        BaseViewHolder loadImage$default = BaseQuickAdapterExtKt.loadImage$default(BaseQuickAdapterExtKt.setMediumTypeface(BaseQuickAdapterExtKt.setThemedTextColor(themedTextColor3, i9, Theme.key_chat_messagePanelText), i9, i5, i8, i6, i7), C3632R.C3635id.image_logo, balance.getToken().getAvatarUrl(), null, false, 12, null);
        int i10 = C3632R.C3635id.image_price_direction;
        BaseViewHolder themedImageColor = BaseQuickAdapterExtKt.setThemedImageColor(BaseQuickAdapterExtKt.setThemedImageColor(loadImage$default.setImageResource(i10, TokenBalanceExtKt.getPriceDirection(balance).getIcon()), i10, TokenBalanceExtKt.getPriceDirection(balance).getColorKey()), C3632R.C3635id.image_trade, i4);
        MaskFormatter maskFormatter = MaskFormatter.INSTANCE;
        BaseViewHolder text = themedImageColor.setText(i9, maskFormatter.textOrMask(item.isBalanceHidden(), TokenBalanceExtKt.getTotalBalance(balance))).setText(i3, balance.getToken().getName());
        BaseQuickAdapterExtKt.applyForView(BaseQuickAdapterExtKt.setVisibleElseGone(text.setText(i5, balance.getToken().getTicker() + " / " + TokenDetailed.Companion.getUSD().getName()).setText(i6, TokenBalanceExtKt.getDollarsRateText(balance)).setText(i8, this.resourceManager.getString(C3632R.string.wallet_dashboard_balance_24h_rate, Double.valueOf(balance.getRatePercentageChange24h()))).setText(i7, maskFormatter.textOrMask(item.isBalanceHidden(), TokenBalanceExtKt.getDollarsBalanceText(balance))).setText(C3632R.C3635id.text_coin_ticker, balance.getToken().getTicker()), i2, item.isQuotationVisible()), C3632R.C3635id.image_network_icon, new Function1<AppCompatImageView, Unit>() { // from class: com.iMe.ui.adapter.provider.TokenBalanceProvider$convert$1$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(AppCompatImageView appCompatImageView) {
                invoke2(appCompatImageView);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(AppCompatImageView applyForView) {
                float networkIconCornerSize;
                Intrinsics.checkNotNullParameter(applyForView, "$this$applyForView");
                if (AccountItem.Token.this.isNetworkLogoVisible()) {
                    ViewExtKt.visible$default(applyForView, false, 1, null);
                    ImageViewExtKt.loadFrom$default(applyForView, NetworksHelper.getNetworkById(balance.getToken().getNetworkId()).getLogoUrl(), null, false, 6, null);
                    MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable();
                    TokenBalanceProvider tokenBalanceProvider = this;
                    materialShapeDrawable.setFillColor(ColorStateList.valueOf(Theme.getColor(Theme.key_windowBackgroundWhite)));
                    networkIconCornerSize = tokenBalanceProvider.getNetworkIconCornerSize();
                    materialShapeDrawable.setCornerSize(networkIconCornerSize);
                    applyForView.setBackground(materialShapeDrawable);
                    return;
                }
                ViewExtKt.gone$default(applyForView, false, 1, null);
            }
        });
    }

    public void convert(BaseViewHolder helper, final AccountItem.Token item, List<? extends Object> payloads) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        Intrinsics.checkNotNullParameter(payloads, "payloads");
        final TokenBalance balance = item.getBalance();
        int i = C3632R.C3635id.text_subtitle;
        MaskFormatter maskFormatter = MaskFormatter.INSTANCE;
        BaseViewHolder text = helper.setText(i, maskFormatter.textOrMask(item.isBalanceHidden(), TokenBalanceExtKt.getTotalBalance(balance))).setText(C3632R.C3635id.text_account_balance_in_dollars, maskFormatter.textOrMask(item.isBalanceHidden(), TokenBalanceExtKt.getDollarsBalanceText(balance)));
        int i2 = C3632R.C3635id.image_price_direction;
        BaseViewHolder loadImage$default = BaseQuickAdapterExtKt.loadImage$default(BaseQuickAdapterExtKt.setThemedImageColor(text.setImageResource(i2, TokenBalanceExtKt.getPriceDirection(balance).getIcon()), i2, TokenBalanceExtKt.getPriceDirection(balance).getColorKey()), C3632R.C3635id.image_logo, balance.getToken().getAvatarUrl(), null, false, 12, null);
        int i3 = C3632R.C3635id.text_trade_percent;
        BaseQuickAdapterExtKt.applyForView(BaseQuickAdapterExtKt.setThemedTextColor(loadImage$default, i3, TokenBalanceExtKt.getPriceDirection(balance).getColorKey()).setText(C3632R.C3635id.text_trade_price, TokenBalanceExtKt.getDollarsRateText(balance)).setText(i3, this.resourceManager.getString(C3632R.string.wallet_dashboard_balance_24h_rate, Double.valueOf(balance.getRatePercentageChange24h()))), C3632R.C3635id.image_network_icon, new Function1<AppCompatImageView, Unit>() { // from class: com.iMe.ui.adapter.provider.TokenBalanceProvider$convert$2$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(AppCompatImageView appCompatImageView) {
                invoke2(appCompatImageView);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(AppCompatImageView applyForView) {
                float networkIconCornerSize;
                Intrinsics.checkNotNullParameter(applyForView, "$this$applyForView");
                if (AccountItem.Token.this.isNetworkLogoVisible()) {
                    ViewExtKt.visible$default(applyForView, false, 1, null);
                    ImageViewExtKt.loadFrom$default(applyForView, NetworksHelper.getNetworkById(balance.getToken().getNetworkId()).getLogoUrl(), null, false, 6, null);
                    MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable();
                    TokenBalanceProvider tokenBalanceProvider = this;
                    materialShapeDrawable.setFillColor(ColorStateList.valueOf(Theme.getColor(Theme.key_windowBackgroundWhite)));
                    networkIconCornerSize = tokenBalanceProvider.getNetworkIconCornerSize();
                    materialShapeDrawable.setCornerSize(networkIconCornerSize);
                    applyForView.setBackground(materialShapeDrawable);
                    return;
                }
                ViewExtKt.gone$default(applyForView, false, 1, null);
            }
        });
    }
}
