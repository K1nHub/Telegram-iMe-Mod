package com.smedialink.p031ui.wallet.staking.programmes;

import com.smedialink.storage.domain.model.staking.StakingTabType;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.parameter.ParametersHolderKt;
import org.koin.p047mp.KoinPlatformTools;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: StakingProgrammesFragment.kt */
/* renamed from: com.smedialink.ui.wallet.staking.programmes.StakingProgrammesFragment$presenter$2 */
/* loaded from: classes3.dex */
public final class StakingProgrammesFragment$presenter$2 extends Lambda implements Function0<StakingProgrammesPresenter> {
    final /* synthetic */ StakingTabType $stakingTabType;
    final /* synthetic */ StakingProgrammesFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StakingProgrammesFragment$presenter$2(StakingProgrammesFragment stakingProgrammesFragment, StakingTabType stakingTabType) {
        super(0);
        this.this$0 = stakingProgrammesFragment;
        this.$stakingTabType = stakingTabType;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: StakingProgrammesFragment.kt */
    /* renamed from: com.smedialink.ui.wallet.staking.programmes.StakingProgrammesFragment$presenter$2$1 */
    /* loaded from: classes3.dex */
    public static final class C21251 extends Lambda implements Function0<ParametersHolder> {
        final /* synthetic */ StakingTabType $stakingTabType;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C21251(StakingTabType stakingTabType) {
            super(0);
            this.$stakingTabType = stakingTabType;
        }

        @Override // kotlin.jvm.functions.Function0
        public final ParametersHolder invoke() {
            return ParametersHolderKt.parametersOf(this.$stakingTabType);
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final StakingProgrammesPresenter invoke() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new C2124x7bd24720(this.this$0, null, new C21251(this.$stakingTabType)));
        return (StakingProgrammesPresenter) lazy.getValue();
    }
}
