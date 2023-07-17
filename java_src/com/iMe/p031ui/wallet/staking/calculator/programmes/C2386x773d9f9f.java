package com.iMe.p031ui.wallet.staking.calculator.programmes;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.mapper.staking.StakingMetadataUiMappingKt;
import com.iMe.model.state.GlobalState;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.staking.StakingMetadata;
import com.iMe.storage.domain.model.staking.StakingProgrammes;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.ui.wallet.staking.calculator.programmes.StakingCalculatorProgrammesPresenter$loadStakingProgrammes$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes4.dex */
public final class C2386x773d9f9f extends Lambda implements Function1<Result<? extends StakingProgrammes>, Unit> {
    final /* synthetic */ boolean $isInitialLoad$inlined;
    final /* synthetic */ boolean $isLoadMore$inlined;
    final /* synthetic */ StakingCalculatorProgrammesPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2386x773d9f9f(StakingCalculatorProgrammesPresenter stakingCalculatorProgrammesPresenter, boolean z, boolean z2) {
        super(1);
        this.this$0 = stakingCalculatorProgrammesPresenter;
        this.$isLoadMore$inlined = z;
        this.$isInitialLoad$inlined = z2;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends StakingProgrammes> result) {
        m1526invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1526invoke(Result<? extends StakingProgrammes> it) {
        List list;
        List list2;
        List<BaseNode> list3;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends StakingProgrammes> result = it;
        if (result instanceof Result.Success) {
            List<StakingMetadata> programmes = ((StakingProgrammes) ((Result.Success) result).getData()).getProgrammes();
            StakingCalculatorProgrammesPresenter stakingCalculatorProgrammesPresenter = this.this$0;
            StakingMetadata stakingMetadata = (StakingMetadata) CollectionsKt.lastOrNull((List<? extends Object>) programmes);
            stakingCalculatorProgrammesPresenter.lastItemId = stakingMetadata != null ? Long.valueOf(stakingMetadata.getId()) : null;
            if (!programmes.isEmpty()) {
                list = this.this$0.stakingProgrammes;
                list.addAll(programmes);
                list2 = this.this$0.items;
                list2.addAll(StakingMetadataUiMappingKt.mapToUi(programmes));
                list3 = this.this$0.items;
                ((StakingCalculatorProgrammesView) this.this$0.getViewState()).renderItems(list3);
                return;
            }
            if (!this.$isLoadMore$inlined) {
                this.this$0.renderGlobalStateItemsList(GlobalState.Empty.Staking.INSTANCE);
            }
            ((StakingCalculatorProgrammesView) this.this$0.getViewState()).onLoadMoreComplete();
        } else if (result instanceof Result.Loading) {
            if (this.$isInitialLoad$inlined) {
                this.this$0.renderGlobalStateItemsList(GlobalState.Progress.INSTANCE);
            }
        } else if (result instanceof Result.Error) {
            if (this.$isLoadMore$inlined) {
                ((StakingCalculatorProgrammesView) this.this$0.getViewState()).onLoadMoreError();
            } else if (((Result.Error) result).getError().isNoConnectionStatus()) {
                this.this$0.renderGlobalStateItemsList(GlobalState.NoInternet.INSTANCE);
            } else {
                this.this$0.renderGlobalStateItemsList(GlobalState.Unexpected.INSTANCE);
            }
        }
    }
}
