package com.smedialink.p031ui.wallet.home.p032v2.details;

import com.smedialink.mapper.staking.StakingDetailedMetadataUiMappingKt;
import com.smedialink.model.wallet.details.TokenDetailsArgs;
import com.smedialink.storage.data.network.model.error.ErrorModel;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.staking.StakingDetailedMetadata;
import com.smedialink.storage.domain.utils.p030rx.RxEventBus;
import com.smedialink.storage.domain.utils.p030rx.event.DomainRxEvents;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.smedialink.ui.wallet.home.v2.details.WalletTokenDetailsPresenter$loadStakingDetailedMetadata$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C2171xdf270a35 extends Lambda implements Function1<Result<? extends StakingDetailedMetadata>, Unit> {
    final /* synthetic */ WalletTokenDetailsPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2171xdf270a35(WalletTokenDetailsPresenter walletTokenDetailsPresenter) {
        super(1);
        this.this$0 = walletTokenDetailsPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends StakingDetailedMetadata> result) {
        m1361invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1361invoke(Result<? extends StakingDetailedMetadata> it) {
        ResourceManager resourceManager;
        RxEventBus rxEventBus;
        TokenDetailsArgs tokenDetailsArgs;
        TokenDetailsArgs tokenDetailsArgs2;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends StakingDetailedMetadata> result = it;
        if (result instanceof Result.Success) {
            rxEventBus = this.this$0.rxEventBus;
            rxEventBus.publish(DomainRxEvents.RefreshTransactions.INSTANCE);
            ((WalletTokenDetailsView) this.this$0.getViewState()).showRefreshing(false);
            Result.Success success = (Result.Success) result;
            this.this$0.stakingMetadata = (StakingDetailedMetadata) success.getData();
            tokenDetailsArgs = this.this$0.args;
            ((TokenDetailsArgs.Staking) tokenDetailsArgs).setStakingDetails(StakingDetailedMetadataUiMappingKt.mapToUi((StakingDetailedMetadata) success.getData()));
            WalletTokenDetailsPresenter walletTokenDetailsPresenter = this.this$0;
            tokenDetailsArgs2 = walletTokenDetailsPresenter.args;
            walletTokenDetailsPresenter.setupStakingDetailsScreen(((TokenDetailsArgs.Staking) tokenDetailsArgs2).getStakingDetails());
            this.this$0.setupHorizontalActionButtons();
        } else if (result instanceof Result.Loading) {
            ((WalletTokenDetailsView) this.this$0.getViewState()).showRefreshing(true);
        } else if (result instanceof Result.Error) {
            ((WalletTokenDetailsView) this.this$0.getViewState()).showRefreshing(false);
            ErrorModel error = ((Result.Error) result).getError();
            resourceManager = this.this$0.resourceManager;
            ((WalletTokenDetailsView) this.this$0.getViewState()).showToast(error.getMessage(resourceManager));
        }
    }
}
