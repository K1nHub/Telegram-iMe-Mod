package com.smedialink.p031ui.adapter.provider;

import com.chad.library.adapter.base.provider.BaseNodeProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.smedialink.common.IdFabric$ViewTypes;
import com.smedialink.model.staking.StakingAnnualPercentageMode;
import com.smedialink.model.staking.StakingProgrammeItem;
import com.smedialink.storage.data.utils.extentions.NumberExtKt;
import com.smedialink.storage.domain.utils.extentions.model.TokenInfoExtKt;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import com.smedialink.utils.extentions.common.BaseQuickAdapterExtKt;
import com.smedialink.utils.extentions.model.wallet.TokenBalanceExtKt;
import com.smedialink.utils.formatter.BalanceFormatter;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3286R;
/* compiled from: StakingProgrammeProvider.kt */
/* renamed from: com.smedialink.ui.adapter.provider.StakingProgrammeProvider */
/* loaded from: classes3.dex */
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
        this.layoutId = C3286R.layout.fork_recycle_item_wallet_dashboard_account_balance;
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
        int i = C3286R.C3289id.card_account_balance;
        BaseViewHolder themedCardBackground = BaseQuickAdapterExtKt.setThemedCardBackground(BaseQuickAdapterExtKt.setRippleForeground(helper, i, false), i, "windowBackgroundWhite");
        int i2 = C3286R.C3289id.staking_info;
        BaseViewHolder themedRoundedBackground = BaseQuickAdapterExtKt.setThemedRoundedBackground(themedCardBackground, i2, "chats_pinnedOverlay", 4.0f);
        int i3 = C3286R.C3289id.text_account_title;
        BaseViewHolder themedTextColor = BaseQuickAdapterExtKt.setThemedTextColor(themedRoundedBackground, i3, "chats_actionBackground");
        int i4 = C3286R.C3289id.text_account_balance;
        int i5 = C3286R.C3289id.text_staking_end_value;
        BaseViewHolder themedTextColor2 = BaseQuickAdapterExtKt.setThemedTextColor(themedTextColor, "windowBackgroundWhiteBlackText", i4, i5);
        int i6 = C3286R.C3289id.text_apr_value;
        BaseViewHolder themedTextColor3 = BaseQuickAdapterExtKt.setThemedTextColor(themedTextColor2, i6, item.getPercentageTextColor(StakingAnnualPercentageMode.APR));
        int i7 = C3286R.C3289id.text_apy_value;
        BaseViewHolder themedTextColor4 = BaseQuickAdapterExtKt.setThemedTextColor(themedTextColor3, i7, item.getPercentageTextColor(StakingAnnualPercentageMode.APY));
        int i8 = C3286R.C3289id.text_account_balance_in_dollars;
        BaseViewHolder themedTextColor5 = BaseQuickAdapterExtKt.setThemedTextColor(themedTextColor4, "windowBackgroundWhiteGrayText2", i8);
        int i9 = C3286R.C3289id.text_apy_title;
        int i10 = C3286R.C3289id.text_apr_title;
        int i11 = C3286R.C3289id.text_staking_end_title;
        BaseViewHolder imageResource = BaseQuickAdapterExtKt.setMediumTypeface(BaseQuickAdapterExtKt.setThemedTextColor(themedTextColor5, "windowBackgroundWhiteGrayText", i9, i10, i11), i4, i8, i9, i10, i11, i7, i6, i5).setImageResource(C3286R.C3289id.image_coin_icon, TokenInfoExtKt.getLogo(item.getTokenBalance().getInfo(), item.getTokenBalance().getNetworkType()));
        int i12 = C3286R.C3289id.image_network_icon;
        BaseViewHolder text = imageResource.setImageResource(i12, item.getTokenBalance().getNetworkType().getLogo()).setText(i9, this.resourceManager.getString(C3286R.string.staking_programme_apy));
        BaseViewHolder text2 = text.setText(i7, item.getApy() + '%').setText(i10, this.resourceManager.getString(C3286R.string.staking_programme_apr));
        BaseViewHolder gone = BaseQuickAdapterExtKt.setGone(text2.setText(i6, item.getApr() + '%').setText(i11, this.resourceManager.getString(C3286R.string.staking_programme_expires)).setText(i5, item.getEndsAt()).setText(i3, item.getName()).setText(i4, TokenBalanceExtKt.getTotalBalance(item.getTokenBalance())).setText(i8, TokenBalanceExtKt.getDollarsBalanceText(item.getTokenBalance(), this.resourceManager)).setVisible(i12, true).setVisible(i2, true), !item.isParticipated(), i4, i8);
        BalanceFormatter balanceFormatter = BalanceFormatter.INSTANCE;
        BaseQuickAdapterExtKt.applyForView(BaseQuickAdapterExtKt.applyForView(BaseQuickAdapterExtKt.setGone(BaseQuickAdapterExtKt.setGone(gone, NumberExtKt.isZero(balanceFormatter.parseFormattedString(item.getApy())), i9, i7), NumberExtKt.isZero(balanceFormatter.parseFormattedString(item.getApr())), i10, i6), C3286R.C3289id.text_coin_ticker, new StakingProgrammeProvider$convert$1$1(item, this)), i12, new StakingProgrammeProvider$convert$1$2(this));
    }

    public void convert(BaseViewHolder helper, StakingProgrammeItem item, List<? extends Object> payloads) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        Intrinsics.checkNotNullParameter(payloads, "payloads");
        BaseQuickAdapterExtKt.setThemedTextColor(BaseQuickAdapterExtKt.setThemedTextColor(helper.setText(C3286R.C3289id.text_account_balance, TokenBalanceExtKt.getTotalBalance(item.getTokenBalance())).setText(C3286R.C3289id.text_account_balance_in_dollars, TokenBalanceExtKt.getDollarsBalanceText(item.getTokenBalance(), this.resourceManager)).setImageResource(C3286R.C3289id.image_coin_icon, TokenInfoExtKt.getLogo(item.getTokenBalance().getInfo(), item.getTokenBalance().getNetworkType())), C3286R.C3289id.text_apr_value, item.getPercentageTextColor(StakingAnnualPercentageMode.APR)), C3286R.C3289id.text_apy_value, item.getPercentageTextColor(StakingAnnualPercentageMode.APY));
    }
}
