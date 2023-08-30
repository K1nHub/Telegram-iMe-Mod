package com.iMe.p031ui.adapter.provider;

import android.content.res.ColorStateList;
import androidx.appcompat.widget.AppCompatImageView;
import com.chad.library.adapter.base.provider.BaseNodeProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.iMe.common.IdFabric$ViewTypes;
import com.iMe.model.staking.StakingAnnualPercentageMode;
import com.iMe.model.staking.StakingProgrammeItem;
import com.iMe.storage.data.utils.crypto.NetworksHelper;
import com.iMe.storage.data.utils.extentions.NumberExtKt;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.common.BaseQuickAdapterExtKt;
import com.iMe.utils.extentions.common.ImageViewExtKt;
import com.iMe.utils.extentions.model.wallet.TokenBalanceExtKt;
import com.iMe.utils.formatter.BalanceFormatter;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3558R;
import org.telegram.p043ui.ActionBar.Theme;
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
        this.layoutId = C3558R.layout.fork_recycle_item_wallet_dashboard_account_balance;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<Float>() { // from class: com.iMe.ui.adapter.provider.StakingProgrammeProvider$networkIconCornerSize$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Float invoke() {
                ResourceManager resourceManager2;
                resourceManager2 = StakingProgrammeProvider.this.resourceManager;
                return Float.valueOf(resourceManager2.getDimens(C3558R.dimen.icon_size_default) / 2);
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
    public void convert(BaseViewHolder helper, final StakingProgrammeItem item) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        int i = C3558R.C3561id.card_account_balance;
        BaseViewHolder themedCardBackground = BaseQuickAdapterExtKt.setThemedCardBackground(BaseQuickAdapterExtKt.setRippleForeground(helper, i, false), i, Theme.key_windowBackgroundWhite);
        int i2 = C3558R.C3561id.staking_info;
        BaseViewHolder themedRoundedBackground = BaseQuickAdapterExtKt.setThemedRoundedBackground(themedCardBackground, i2, Theme.key_chats_pinnedOverlay, 4.0f);
        int i3 = C3558R.C3561id.text_title;
        BaseViewHolder themedTextColor = BaseQuickAdapterExtKt.setThemedTextColor(themedRoundedBackground, i3, Theme.key_chats_actionBackground);
        int i4 = Theme.key_windowBackgroundWhiteBlackText;
        int i5 = C3558R.C3561id.text_subtitle;
        int i6 = C3558R.C3561id.text_staking_end_value;
        BaseViewHolder themedTextColor2 = BaseQuickAdapterExtKt.setThemedTextColor(themedTextColor, i4, i5, i6);
        int i7 = C3558R.C3561id.text_apr_value;
        BaseViewHolder themedTextColor3 = BaseQuickAdapterExtKt.setThemedTextColor(themedTextColor2, i7, item.getPercentageTextColor(StakingAnnualPercentageMode.APR));
        int i8 = C3558R.C3561id.text_apy_value;
        BaseViewHolder themedTextColor4 = BaseQuickAdapterExtKt.setThemedTextColor(themedTextColor3, i8, item.getPercentageTextColor(StakingAnnualPercentageMode.APY));
        int i9 = C3558R.C3561id.text_account_balance_in_dollars;
        BaseViewHolder themedTextColor5 = BaseQuickAdapterExtKt.setThemedTextColor(themedTextColor4, i9, Theme.key_windowBackgroundWhiteGrayText2);
        int i10 = Theme.key_windowBackgroundWhiteGrayText;
        int i11 = C3558R.C3561id.text_apy_title;
        int i12 = C3558R.C3561id.text_apr_title;
        int i13 = C3558R.C3561id.text_staking_end_title;
        BaseViewHolder text = BaseQuickAdapterExtKt.loadImage$default(BaseQuickAdapterExtKt.setMediumTypeface(BaseQuickAdapterExtKt.setThemedTextColor(themedTextColor5, i10, i11, i12, i13), i5, i9, i11, i12, i13, i8, i7, i6), C3558R.C3561id.image_logo, item.getTokenBalance().getToken().getAvatarUrl(), null, false, 12, null).setText(i11, this.resourceManager.getString(C3558R.string.staking_programme_apy));
        BaseViewHolder text2 = text.setText(i8, item.getApy() + '%').setText(i12, this.resourceManager.getString(C3558R.string.staking_programme_apr));
        BaseViewHolder text3 = text2.setText(i7, item.getApr() + '%').setText(i13, this.resourceManager.getString(C3558R.string.staking_programme_expires)).setText(i6, item.getEndsAt()).setText(i3, item.getName()).setText(i5, TokenBalanceExtKt.getTotalBalance(item.getTokenBalance())).setText(i9, TokenBalanceExtKt.getDollarsBalanceText(item.getTokenBalance())).setText(C3558R.C3561id.text_coin_ticker, item.getTokenBalance().getToken().getTicker());
        int i14 = C3558R.C3561id.image_network_icon;
        BaseViewHolder gone = BaseQuickAdapterExtKt.setGone(text3.setVisible(i14, true).setVisible(i2, true), item.isParticipated() ^ true, i5, i9);
        BalanceFormatter balanceFormatter = BalanceFormatter.INSTANCE;
        BaseQuickAdapterExtKt.applyForView(BaseQuickAdapterExtKt.setGone(BaseQuickAdapterExtKt.setGone(gone, NumberExtKt.isZero(balanceFormatter.parseFormattedString(item.getApy())), i11, i8), NumberExtKt.isZero(balanceFormatter.parseFormattedString(item.getApr())), i12, i7), i14, new Function1<AppCompatImageView, Unit>() { // from class: com.iMe.ui.adapter.provider.StakingProgrammeProvider$convert$1$1
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
                ImageViewExtKt.loadFrom$default(applyForView, NetworksHelper.getNetworkById(StakingProgrammeItem.this.getTokenBalance().getToken().getNetworkId()).getLogoUrl(), null, false, 6, null);
                MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable();
                StakingProgrammeProvider stakingProgrammeProvider = this;
                materialShapeDrawable.setFillColor(ColorStateList.valueOf(Theme.getColor(Theme.key_windowBackgroundWhite)));
                networkIconCornerSize = stakingProgrammeProvider.getNetworkIconCornerSize();
                materialShapeDrawable.setCornerSize(networkIconCornerSize);
                applyForView.setBackground(materialShapeDrawable);
            }
        });
    }

    public void convert(BaseViewHolder helper, StakingProgrammeItem item, List<? extends Object> payloads) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        Intrinsics.checkNotNullParameter(payloads, "payloads");
        BaseQuickAdapterExtKt.loadImage$default(BaseQuickAdapterExtKt.setThemedTextColor(BaseQuickAdapterExtKt.setThemedTextColor(BaseQuickAdapterExtKt.loadImage$default(helper.setText(C3558R.C3561id.text_subtitle, TokenBalanceExtKt.getTotalBalance(item.getTokenBalance())).setText(C3558R.C3561id.text_account_balance_in_dollars, TokenBalanceExtKt.getDollarsBalanceText(item.getTokenBalance())), C3558R.C3561id.image_logo, item.getTokenBalance().getToken().getAvatarUrl(), null, false, 12, null), C3558R.C3561id.text_apr_value, item.getPercentageTextColor(StakingAnnualPercentageMode.APR)), C3558R.C3561id.text_apy_value, item.getPercentageTextColor(StakingAnnualPercentageMode.APY)), C3558R.C3561id.image_network_icon, NetworksHelper.getNetworkById(item.getTokenBalance().getToken().getNetworkId()).getLogoUrl(), null, false, 12, null);
    }
}
