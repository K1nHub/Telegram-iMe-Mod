package com.iMe.p032ui.wallet.staking.programmes;

import com.iMe.model.staking.StakingDetailsItem;
import com.iMe.storage.data.network.model.error.ErrorModel;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.level.AccountLevel;
import com.iMe.storage.domain.utils.system.ResourceManager;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.ui.wallet.staking.programmes.StakingProgrammesPresenter$loadAccountLevelAndOpenStaking$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes4.dex */
public final class C2323x98688320 extends Lambda implements Function1<Result<? extends AccountLevel>, Unit> {
    final /* synthetic */ StakingDetailsItem $stakingDetails$inlined;
    final /* synthetic */ StakingProgrammesPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2323x98688320(StakingProgrammesPresenter stakingProgrammesPresenter, StakingDetailsItem stakingDetailsItem) {
        super(1);
        this.this$0 = stakingProgrammesPresenter;
        this.$stakingDetails$inlined = stakingDetailsItem;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends AccountLevel> result) {
        m1504invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1504invoke(Result<? extends AccountLevel> it) {
        ResourceManager resourceManager;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends AccountLevel> result = it;
        if (result instanceof Result.Success) {
            this.this$0.openStakingCheckingAccountLevel(this.$stakingDetails$inlined, (AccountLevel) ((Result.Success) result).getData());
        } else if (result instanceof Result.Error) {
            ErrorModel error = ((Result.Error) result).getError();
            resourceManager = this.this$0.resourceManager;
            ((StakingProgrammesView) this.this$0.getViewState()).showToast(error.getMessage(resourceManager));
        }
    }
}
