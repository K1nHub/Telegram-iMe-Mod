package com.smedialink.p031ui.wallet.staking;

import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.koin.p047mp.KoinPlatformTools;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: StakingFragment.kt */
/* renamed from: com.smedialink.ui.wallet.staking.StakingFragment$presenter$2 */
/* loaded from: classes3.dex */
public final class StakingFragment$presenter$2 extends Lambda implements Function0<StakingPresenter> {
    final /* synthetic */ StakingFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StakingFragment$presenter$2(StakingFragment stakingFragment) {
        super(0);
        this.this$0 = stakingFragment;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final StakingPresenter invoke() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new StakingFragment$presenter$2$invoke$$inlined$inject$default$1(this.this$0, null, null));
        return (StakingPresenter) lazy.getValue();
    }
}
