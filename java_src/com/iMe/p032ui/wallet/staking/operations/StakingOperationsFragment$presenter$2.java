package com.iMe.p032ui.wallet.staking.operations;

import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.koin.p047mp.KoinPlatformTools;
/* compiled from: StakingOperationsFragment.kt */
/* renamed from: com.iMe.ui.wallet.staking.operations.StakingOperationsFragment$presenter$2 */
/* loaded from: classes4.dex */
final class StakingOperationsFragment$presenter$2 extends Lambda implements Function0<StakingOperationsPresenter> {
    final /* synthetic */ StakingOperationsFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StakingOperationsFragment$presenter$2(StakingOperationsFragment stakingOperationsFragment) {
        super(0);
        this.this$0 = stakingOperationsFragment;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final StakingOperationsPresenter invoke() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new C2318x92f0fb2b(this.this$0, null, null));
        return (StakingOperationsPresenter) lazy.getValue();
    }
}
