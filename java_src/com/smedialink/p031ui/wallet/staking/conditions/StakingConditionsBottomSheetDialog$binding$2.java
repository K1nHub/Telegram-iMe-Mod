package com.smedialink.p031ui.wallet.staking.conditions;

import android.view.LayoutInflater;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.databinding.ForkContentStakingConditionsBinding;
import org.telegram.p048ui.ActionBar.BaseFragment;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: StakingConditionsBottomSheetDialog.kt */
/* renamed from: com.smedialink.ui.wallet.staking.conditions.StakingConditionsBottomSheetDialog$binding$2 */
/* loaded from: classes3.dex */
public final class StakingConditionsBottomSheetDialog$binding$2 extends Lambda implements Function0<ForkContentStakingConditionsBinding> {
    final /* synthetic */ StakingConditionsBottomSheetDialog this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StakingConditionsBottomSheetDialog$binding$2(StakingConditionsBottomSheetDialog stakingConditionsBottomSheetDialog) {
        super(0);
        this.this$0 = stakingConditionsBottomSheetDialog;
    }

    @Override // kotlin.jvm.functions.Function0
    public final ForkContentStakingConditionsBinding invoke() {
        BaseFragment baseFragment;
        baseFragment = this.this$0.fragment;
        return ForkContentStakingConditionsBinding.inflate(LayoutInflater.from(baseFragment.getParentActivity()));
    }
}
