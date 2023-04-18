package com.iMe.p031ui.wallet.staking.operations;

import com.iMe.utils.extentions.common.BaseFragmentExtKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.databinding.ForkFragmentStakingOperationsBinding;
/* compiled from: StakingOperationsFragment.kt */
/* renamed from: com.iMe.ui.wallet.staking.operations.StakingOperationsFragment$binding$2 */
/* loaded from: classes4.dex */
final class StakingOperationsFragment$binding$2 extends Lambda implements Function0<ForkFragmentStakingOperationsBinding> {
    final /* synthetic */ StakingOperationsFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StakingOperationsFragment$binding$2(StakingOperationsFragment stakingOperationsFragment) {
        super(0);
        this.this$0 = stakingOperationsFragment;
    }

    @Override // kotlin.jvm.functions.Function0
    public final ForkFragmentStakingOperationsBinding invoke() {
        return ForkFragmentStakingOperationsBinding.inflate(BaseFragmentExtKt.getLayoutInflater(this.this$0));
    }
}
