package com.iMe.p031ui.adapter.provider;

import com.chad.library.adapter.base.provider.BaseNodeProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.iMe.common.IdFabric$ViewTypes;
import com.iMe.model.staking.StakingAnnualPercentageMode;
import com.iMe.model.staking.StakingProgrammeItem;
import com.iMe.storage.data.utils.extentions.NumberExtKt;
import com.iMe.storage.domain.utils.extentions.model.TokenInfoExtKt;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.common.BaseQuickAdapterExtKt;
import com.iMe.utils.extentions.model.wallet.TokenBalanceExtKt;
import com.iMe.utils.formatter.BalanceFormatter;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3290R;
import org.telegram.p044ui.ActionBar.Theme;
/* compiled from: StakingProgrammeProvider.kt */
/* renamed from: com.iMe.ui.adapter.provider.StakingProgrammeProvider */
/* loaded from: classes.dex */
public final class StakingProgrammeProvider extends BaseNodeProvider<StakingProgrammeItem> {
    private final int itemViewType;
    private final int layoutId;
    private final Lazy networkIconCornerSize$delegate;
    private final ResourceManager resourceManager;

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public /* bridge */ /* synthetic */ void convert(BaseViewHolder baseViewHolder, Object obj, List list) {
        convert(baseViewHolder, (StakingProgrammeItem) obj, (List<? extends Object>) list);
    }

    public StakingProgrammeProvider(ResourceManager resourceManager) {
        Lazy lazy;
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        this.resourceManager = resourceManager;
        this.itemViewType = IdFabric$ViewTypes.STAKING_PROGRAMME;
        this.layoutId = C3290R.layout.fork_recycle_item_wallet_dashboard_account_balance;
        lazy = LazyKt__LazyJVMKt.lazy(new StakingProgrammeProvider$networkIconCornerSize$2(this));
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
    public void convert(BaseViewHolder helper, StakingProgrammeItem item) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        int i = C3290R.C3293id.card_account_balance;
        BaseViewHolder themedCardBackground = BaseQuickAdapterExtKt.setThemedCardBackground(BaseQuickAdapterExtKt.setRippleForeground(helper, i, false), i, Theme.key_windowBackgroundWhite);
        int i2 = C3290R.C3293id.staking_info;
        BaseViewHolder themedRoundedBackground = BaseQuickAdapterExtKt.setThemedRoundedBackground(themedCardBackground, i2, Theme.key_chats_pinnedOverlay, 4.0f);
        int i3 = C3290R.C3293id.text_account_title;
        BaseViewHolder themedTextColor = BaseQuickAdapterExtKt.setThemedTextColor(themedRoundedBackground, i3, Theme.key_chats_actionBackground);
        int i4 = C3290R.C3293id.text_account_balance;
        int i5 = Theme.key_windowBackgroundWhiteBlackText;
        BaseViewHolder themedTextColor2 = BaseQuickAdapterExtKt.setThemedTextColor(themedTextColor, i4, i5);
        int i6 = C3290R.C3293id.text_staking_end_value;
        BaseViewHolder themedTextColor3 = BaseQuickAdapterExtKt.setThemedTextColor(themedTextColor2, i6, i5);
        int i7 = C3290R.C3293id.text_apr_value;
        BaseViewHolder themedTextColor4 = BaseQuickAdapterExtKt.setThemedTextColor(themedTextColor3, i7, item.getPercentageTextColor(StakingAnnualPercentageMode.APR));
        int i8 = C3290R.C3293id.text_apy_value;
        BaseViewHolder themedTextColor5 = BaseQuickAdapterExtKt.setThemedTextColor(themedTextColor4, i8, item.getPercentageTextColor(StakingAnnualPercentageMode.APY));
        int i9 = C3290R.C3293id.text_account_balance_in_dollars;
        BaseViewHolder themedTextColor6 = BaseQuickAdapterExtKt.setThemedTextColor(themedTextColor5, i9, Theme.key_windowBackgroundWhiteGrayText2);
        int i10 = C3290R.C3293id.text_apy_title;
        int i11 = Theme.key_windowBackgroundWhiteGrayText;
        BaseViewHolder themedTextColor7 = BaseQuickAdapterExtKt.setThemedTextColor(themedTextColor6, i10, i11);
        int i12 = C3290R.C3293id.text_apr_title;
        BaseViewHolder themedTextColor8 = BaseQuickAdapterExtKt.setThemedTextColor(themedTextColor7, i12, i11);
        int i13 = C3290R.C3293id.text_staking_end_title;
        BaseViewHolder imageResource = BaseQuickAdapterExtKt.setMediumTypeface(BaseQuickAdapterExtKt.setThemedTextColor(themedTextColor8, i13, i11), i4, i9, i10, i12, i13, i8, i7, i6).setImageResource(C3290R.C3293id.image_coin_icon, TokenInfoExtKt.getLogo(item.getTokenBalance().getInfo(), item.getTokenBalance().getNetworkType()));
        int i14 = C3290R.C3293id.image_network_icon;
        BaseViewHolder text = imageResource.setImageResource(i14, item.getTokenBalance().getNetworkType().getLogo()).setText(i10, this.resourceManager.getString(C3290R.string.staking_programme_apy));
        BaseViewHolder text2 = text.setText(i8, item.getApy() + '%').setText(i12, this.resourceManager.getString(C3290R.string.staking_programme_apr));
        BaseViewHolder gone = BaseQuickAdapterExtKt.setGone(text2.setText(i7, item.getApr() + '%').setText(i13, this.resourceManager.getString(C3290R.string.staking_programme_expires)).setText(i6, item.getEndsAt()).setText(i3, item.getName()).setText(i4, TokenBalanceExtKt.getTotalBalance(item.getTokenBalance())).setText(i9, TokenBalanceExtKt.getDollarsBalanceText(item.getTokenBalance(), this.resourceManager)).setVisible(i14, true).setVisible(i2, true), !item.isParticipated(), i4, i9);
        BalanceFormatter balanceFormatter = BalanceFormatter.INSTANCE;
        BaseQuickAdapterExtKt.applyForView(BaseQuickAdapterExtKt.applyForView(BaseQuickAdapterExtKt.setGone(BaseQuickAdapterExtKt.setGone(gone, NumberExtKt.isZero(balanceFormatter.parseFormattedString(item.getApy())), i10, i8), NumberExtKt.isZero(balanceFormatter.parseFormattedString(item.getApr())), i12, i7), C3290R.C3293id.text_coin_ticker, new StakingProgrammeProvider$convert$1$1(item, this)), i14, new StakingProgrammeProvider$convert$1$2(this));
    }

    public void convert(BaseViewHolder helper, StakingProgrammeItem item, List<? extends Object> payloads) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        Intrinsics.checkNotNullParameter(payloads, "payloads");
        BaseQuickAdapterExtKt.setThemedTextColor(BaseQuickAdapterExtKt.setThemedTextColor(helper.setText(C3290R.C3293id.text_account_balance, TokenBalanceExtKt.getTotalBalance(item.getTokenBalance())).setText(C3290R.C3293id.text_account_balance_in_dollars, TokenBalanceExtKt.getDollarsBalanceText(item.getTokenBalance(), this.resourceManager)).setImageResource(C3290R.C3293id.image_coin_icon, TokenInfoExtKt.getLogo(item.getTokenBalance().getInfo(), item.getTokenBalance().getNetworkType())), C3290R.C3293id.text_apr_value, item.getPercentageTextColor(StakingAnnualPercentageMode.APR)), C3290R.C3293id.text_apy_value, item.getPercentageTextColor(StakingAnnualPercentageMode.APY));
    }
}
