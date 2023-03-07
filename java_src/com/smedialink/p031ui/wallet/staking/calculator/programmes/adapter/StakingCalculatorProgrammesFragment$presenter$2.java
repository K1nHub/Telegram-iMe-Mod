package com.smedialink.p031ui.wallet.staking.calculator.programmes.adapter;

import com.smedialink.p031ui.wallet.staking.calculator.programmes.StakingCalculatorProgrammesPresenter;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.koin.p047mp.KoinPlatformTools;
/* compiled from: StakingCalculatorProgrammesFragment.kt */
/* renamed from: com.smedialink.ui.wallet.staking.calculator.programmes.adapter.StakingCalculatorProgrammesFragment$presenter$2 */
/* loaded from: classes3.dex */
final class StakingCalculatorProgrammesFragment$presenter$2 extends Lambda implements Function0<StakingCalculatorProgrammesPresenter> {
    final /* synthetic */ StakingCalculatorProgrammesFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StakingCalculatorProgrammesFragment$presenter$2(StakingCalculatorProgrammesFragment stakingCalculatorProgrammesFragment) {
        super(0);
        this.this$0 = stakingCalculatorProgrammesFragment;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final StakingCalculatorProgrammesPresenter invoke() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new C2118xaf318c7e(this.this$0, null, null));
        return (StakingCalculatorProgrammesPresenter) lazy.getValue();
    }
}
