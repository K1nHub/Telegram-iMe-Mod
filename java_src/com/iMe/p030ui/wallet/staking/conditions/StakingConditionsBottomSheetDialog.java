package com.iMe.p030ui.wallet.staking.conditions;

import android.os.Bundle;
import android.view.View;
import androidx.core.widget.NestedScrollView;
import com.iMe.model.staking.StakingDetailsItem;
import com.iMe.p030ui.base.mvp.MvpBottomSheet;
import com.iMe.p030ui.custom.BigActionButton;
import com.iMe.p030ui.custom.DetailsIconCellView;
import com.iMe.p030ui.custom.ImageHeaderView;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.common.ViewExtKt;
import com.iMe.utils.extentions.delegate.ResettableLazy;
import kotlin.Lazy;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3634R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.databinding.ForkContentStakingConditionsBinding;
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.ActionBar.Theme;
/* compiled from: StakingConditionsBottomSheetDialog.kt */
/* renamed from: com.iMe.ui.wallet.staking.conditions.StakingConditionsBottomSheetDialog */
/* loaded from: classes4.dex */
public final class StakingConditionsBottomSheetDialog extends MvpBottomSheet implements StakingConditionsView {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(StakingConditionsBottomSheetDialog.class, "presenter", "getPresenter()Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsPresenter;", 0)), Reflection.property1(new PropertyReference1Impl(StakingConditionsBottomSheetDialog.class, "binding", "getBinding()Lorg/telegram/messenger/databinding/ForkContentStakingConditionsBinding;", 0))};
    public static final Companion Companion = new Companion(null);
    private final ResettableLazy binding$delegate;
    private final BaseFragment fragment;
    private final Lazy resourceManager$delegate;

    public static final StakingConditionsBottomSheetDialog newInstance(StakingDetailsItem stakingDetailsItem, BaseFragment baseFragment) {
        return Companion.newInstance(stakingDetailsItem, baseFragment);
    }

    @Override // org.telegram.p043ui.ActionBar.BottomSheet
    protected boolean canDismissWithSwipe() {
        return false;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public StakingConditionsBottomSheetDialog(final com.iMe.model.staking.StakingDetailsItem r5, org.telegram.p043ui.ActionBar.BaseFragment r6) {
        /*
            r4 = this;
            java.lang.String r0 = "stakingDetails"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r0)
            java.lang.String r0 = "fragment"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r0)
            android.app.Activity r0 = r6.getParentActivity()
            java.lang.String r1 = "fragment.parentActivity"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            r1 = 1
            r4.<init>(r0, r1)
            r4.fragment = r6
            com.iMe.ui.wallet.staking.conditions.StakingConditionsBottomSheetDialog$presenter$2 r6 = new com.iMe.ui.wallet.staking.conditions.StakingConditionsBottomSheetDialog$presenter$2
            r6.<init>()
            moxy.ktx.MoxyKtxDelegate r5 = new moxy.ktx.MoxyKtxDelegate
            moxy.MvpDelegate r0 = r4.getMvpDelegate()
            java.lang.String r2 = "mvpDelegate"
            kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r0, r2)
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.Class<com.iMe.ui.wallet.staking.conditions.StakingConditionsPresenter> r3 = com.iMe.p030ui.wallet.staking.conditions.StakingConditionsPresenter.class
            java.lang.String r3 = r3.getName()
            r2.append(r3)
            java.lang.String r3 = "."
            r2.append(r3)
            java.lang.String r3 = "presenter"
            r2.append(r3)
            java.lang.String r2 = r2.toString()
            r5.<init>(r0, r2, r6)
            org.koin.mp.KoinPlatformTools r5 = org.koin.p041mp.KoinPlatformTools.INSTANCE
            kotlin.LazyThreadSafetyMode r5 = r5.defaultLazyMode()
            com.iMe.ui.wallet.staking.conditions.StakingConditionsBottomSheetDialog$special$$inlined$inject$default$1 r6 = new com.iMe.ui.wallet.staking.conditions.StakingConditionsBottomSheetDialog$special$$inlined$inject$default$1
            r0 = 0
            r6.<init>()
            kotlin.Lazy r5 = kotlin.LazyKt.lazy(r5, r6)
            r4.resourceManager$delegate = r5
            com.iMe.ui.wallet.staking.conditions.StakingConditionsBottomSheetDialog$binding$2 r5 = new com.iMe.ui.wallet.staking.conditions.StakingConditionsBottomSheetDialog$binding$2
            r5.<init>()
            com.iMe.utils.extentions.delegate.ResettableLazy r5 = com.iMe.utils.extentions.delegate.ResettableLazyDelegateKt.resettableLazy$default(r4, r0, r5, r1, r0)
            r4.binding$delegate = r5
            r5 = 0
            r4.setApplyBottomPadding(r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.iMe.p030ui.wallet.staking.conditions.StakingConditionsBottomSheetDialog.<init>(com.iMe.model.staking.StakingDetailsItem, org.telegram.ui.ActionBar.BaseFragment):void");
    }

    private final ResourceManager getResourceManager() {
        return (ResourceManager) this.resourceManager$delegate.getValue();
    }

    private final ForkContentStakingConditionsBinding getBinding() {
        return (ForkContentStakingConditionsBinding) this.binding$delegate.getValue(this, $$delegatedProperties[1]);
    }

    @Override // com.iMe.p030ui.base.mvp.MvpBottomSheet
    public View onCreateView(Bundle bundle) {
        setupColors();
        setupListeners();
        setupTexts();
        NestedScrollView root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "binding.root");
        return root;
    }

    @Override // com.iMe.p030ui.wallet.staking.conditions.StakingConditionsView
    public void setupScreenWithData(String iconUrl, String networkIconUrl, String name, String author, String annualPercentage, String startDate, String completionDate, String compoundThreshold, String plannedWithdrawalFeeText, String immediateWithdrawalFeeText, String finishedFeeText) {
        Intrinsics.checkNotNullParameter(iconUrl, "iconUrl");
        Intrinsics.checkNotNullParameter(networkIconUrl, "networkIconUrl");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(author, "author");
        Intrinsics.checkNotNullParameter(annualPercentage, "annualPercentage");
        Intrinsics.checkNotNullParameter(startDate, "startDate");
        Intrinsics.checkNotNullParameter(completionDate, "completionDate");
        Intrinsics.checkNotNullParameter(compoundThreshold, "compoundThreshold");
        Intrinsics.checkNotNullParameter(plannedWithdrawalFeeText, "plannedWithdrawalFeeText");
        Intrinsics.checkNotNullParameter(immediateWithdrawalFeeText, "immediateWithdrawalFeeText");
        Intrinsics.checkNotNullParameter(finishedFeeText, "finishedFeeText");
        ForkContentStakingConditionsBinding binding = getBinding();
        binding.viewHeader.setupViewData(new ImageHeaderView.IconData.RemoteImage(iconUrl), networkIconUrl, name, author);
        binding.viewAnnualPercentageCell.setupViewData(getResourceManager().getString(C3634R.string.staking_details_apy_apr), annualPercentage, C3634R.C3636drawable.fork_ic_percent, true);
        binding.viewStartDateCell.setupViewData(getResourceManager().getString(C3634R.string.staking_conditions_start), startDate, C3634R.C3636drawable.fork_ic_start, true);
        binding.viewCompletionDateCell.setupViewData(getResourceManager().getString(C3634R.string.staking_conditions_completion), completionDate, C3634R.C3636drawable.fork_ic_done_24, true);
        binding.viewThresholdCell.setupViewData(getResourceManager().getString(C3634R.string.staking_conditions_compound_threshold), compoundThreshold, C3634R.C3636drawable.fork_ic_donations_24, true);
        binding.viewPlannedWithdrawalFeeCell.setupViewData(getResourceManager().getString(C3634R.string.staking_conditions_planned_withdrawal), plannedWithdrawalFeeText, C3634R.C3636drawable.fork_ic_transactions_24, true);
        binding.viewImmediateWithdrawalFeeCell.setupViewData(getResourceManager().getString(C3634R.string.staking_conditions_immediate_withdrawal), immediateWithdrawalFeeText, C3634R.C3636drawable.fork_ic_ask_transfer_24, true);
        DetailsIconCellView viewFinishedFeeCell = binding.viewFinishedFeeCell;
        Intrinsics.checkNotNullExpressionValue(viewFinishedFeeCell, "viewFinishedFeeCell");
        DetailsIconCellView.setupViewData$default(viewFinishedFeeCell, getResourceManager().getString(C3634R.string.staking_conditions_end_output), finishedFeeText, C3634R.C3636drawable.fork_ic_end_24, false, 8, null);
    }

    private final void setupColors() {
        ForkContentStakingConditionsBinding binding = getBinding();
        binding.viewHeader.setupColors();
        binding.viewAnnualPercentageCell.setupColors();
        binding.viewStartDateCell.setupColors();
        binding.viewCompletionDateCell.setupColors();
        binding.viewThresholdCell.setupColors();
        binding.buttonOk.setBackground(Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.m104dp(4), Theme.getColor(Theme.key_featuredStickers_addButton), ViewExtKt.withAlpha(Theme.getColor(Theme.key_windowBackgroundWhite), 120)));
    }

    private final void setupTexts() {
        getBinding().buttonOk.setText(LocaleController.getString("OK", C3634R.string.OK));
    }

    private final void setupListeners() {
        BigActionButton bigActionButton = getBinding().buttonOk;
        Intrinsics.checkNotNullExpressionValue(bigActionButton, "binding.buttonOk");
        ViewExtKt.safeThrottledClick$default(bigActionButton, 0L, new Function1<View, Unit>() { // from class: com.iMe.ui.wallet.staking.conditions.StakingConditionsBottomSheetDialog$setupListeners$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(View view) {
                invoke2(view);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(View it) {
                Intrinsics.checkNotNullParameter(it, "it");
                StakingConditionsBottomSheetDialog.this.dismiss();
            }
        }, 1, null);
    }

    /* compiled from: StakingConditionsBottomSheetDialog.kt */
    /* renamed from: com.iMe.ui.wallet.staking.conditions.StakingConditionsBottomSheetDialog$Companion */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final StakingConditionsBottomSheetDialog newInstance(StakingDetailsItem stakingDetails, BaseFragment fragment) {
            Intrinsics.checkNotNullParameter(stakingDetails, "stakingDetails");
            Intrinsics.checkNotNullParameter(fragment, "fragment");
            return new StakingConditionsBottomSheetDialog(stakingDetails, fragment);
        }
    }
}
