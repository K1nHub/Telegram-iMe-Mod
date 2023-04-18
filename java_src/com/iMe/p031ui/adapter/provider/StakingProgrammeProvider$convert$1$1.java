package com.iMe.p031ui.adapter.provider;

import com.iMe.model.staking.StakingProgrammeItem;
import com.iMe.p031ui.custom.CoinTickerView;
import com.iMe.storage.domain.model.wallet.token.TokenInfo;
import com.iMe.storage.domain.utils.system.ResourceManager;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: StakingProgrammeProvider.kt */
/* renamed from: com.iMe.ui.adapter.provider.StakingProgrammeProvider$convert$1$1 */
/* loaded from: classes3.dex */
public final class StakingProgrammeProvider$convert$1$1 extends Lambda implements Function1<CoinTickerView, Unit> {
    final /* synthetic */ StakingProgrammeItem $this_with;
    final /* synthetic */ StakingProgrammeProvider this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StakingProgrammeProvider$convert$1$1(StakingProgrammeItem stakingProgrammeItem, StakingProgrammeProvider stakingProgrammeProvider) {
        super(1);
        this.$this_with = stakingProgrammeItem;
        this.this$0 = stakingProgrammeProvider;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(CoinTickerView coinTickerView) {
        invoke2(coinTickerView);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(CoinTickerView applyForView) {
        ResourceManager resourceManager;
        Intrinsics.checkNotNullParameter(applyForView, "$this$applyForView");
        TokenInfo info = this.$this_with.getTokenBalance().getInfo();
        resourceManager = this.this$0.resourceManager;
        applyForView.setTicker(info, resourceManager);
    }
}
