package com.iMe.p032ui.wallet.staking.programmes;

import com.iMe.utils.extentions.common.BaseFragmentExtKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.databinding.ForkFragmentStakingProgrammesBinding;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: StakingProgrammesFragment.kt */
/* renamed from: com.iMe.ui.wallet.staking.programmes.StakingProgrammesFragment$binding$2 */
/* loaded from: classes4.dex */
public final class StakingProgrammesFragment$binding$2 extends Lambda implements Function0<ForkFragmentStakingProgrammesBinding> {
    final /* synthetic */ StakingProgrammesFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StakingProgrammesFragment$binding$2(StakingProgrammesFragment stakingProgrammesFragment) {
        super(0);
        this.this$0 = stakingProgrammesFragment;
    }

    @Override // kotlin.jvm.functions.Function0
    public final ForkFragmentStakingProgrammesBinding invoke() {
        return ForkFragmentStakingProgrammesBinding.inflate(BaseFragmentExtKt.getLayoutInflater(this.this$0));
    }
}
