package com.smedialink.p031ui.wallet.staking;

import com.smedialink.utils.extentions.common.BaseFragmentExtKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.databinding.ForkFragmentStakingBinding;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: StakingFragment.kt */
/* renamed from: com.smedialink.ui.wallet.staking.StakingFragment$binding$2 */
/* loaded from: classes3.dex */
public final class StakingFragment$binding$2 extends Lambda implements Function0<ForkFragmentStakingBinding> {
    final /* synthetic */ StakingFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StakingFragment$binding$2(StakingFragment stakingFragment) {
        super(0);
        this.this$0 = stakingFragment;
    }

    @Override // kotlin.jvm.functions.Function0
    public final ForkFragmentStakingBinding invoke() {
        return ForkFragmentStakingBinding.inflate(BaseFragmentExtKt.getLayoutInflater(this.this$0));
    }
}
