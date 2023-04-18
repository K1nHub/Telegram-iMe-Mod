package com.iMe.p031ui.wallet.staking.calculator.programmes.adapter;

import com.iMe.utils.extentions.common.BaseFragmentExtKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.databinding.ForkFragmentStakingCalculatorProgrammesBinding;
/* compiled from: StakingCalculatorProgrammesFragment.kt */
/* renamed from: com.iMe.ui.wallet.staking.calculator.programmes.adapter.StakingCalculatorProgrammesFragment$binding$2 */
/* loaded from: classes4.dex */
final class StakingCalculatorProgrammesFragment$binding$2 extends Lambda implements Function0<ForkFragmentStakingCalculatorProgrammesBinding> {
    final /* synthetic */ StakingCalculatorProgrammesFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StakingCalculatorProgrammesFragment$binding$2(StakingCalculatorProgrammesFragment stakingCalculatorProgrammesFragment) {
        super(0);
        this.this$0 = stakingCalculatorProgrammesFragment;
    }

    @Override // kotlin.jvm.functions.Function0
    public final ForkFragmentStakingCalculatorProgrammesBinding invoke() {
        return ForkFragmentStakingCalculatorProgrammesBinding.inflate(BaseFragmentExtKt.getLayoutInflater(this.this$0));
    }
}
