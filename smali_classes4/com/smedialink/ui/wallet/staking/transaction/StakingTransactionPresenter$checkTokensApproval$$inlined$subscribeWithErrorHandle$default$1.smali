.class public final Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter$checkTokensApproval$$inlined$subscribeWithErrorHandle$default$1;
.super Ljava/lang/Object;
.source "RxExt.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->checkTokensApproval(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/smedialink/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 StakingTransactionPresenter.kt\ncom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter\n*L\n1#1,111:1\n206#2,26:112\n*E\n"
.end annotation


# instance fields
.field final synthetic $isInitialLoad$inlined:Z

.field final synthetic this$0:Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;


# direct methods
.method public constructor <init>(ZLcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;)V
    .locals 0

    iput-boolean p1, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter$checkTokensApproval$$inlined$subscribeWithErrorHandle$default$1;->$isInitialLoad$inlined:Z

    iput-object p2, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter$checkTokensApproval$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "it"

    .line 45
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/smedialink/storage/domain/model/Result;

    .line 113
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/Result$Success;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/smedialink/storage/domain/model/Result$Success;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/smedialink/storage/domain/model/staking/StakingApprovalInfo;

    .line 115
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/staking/StakingApprovalInfo;->getToken()Lcom/smedialink/storage/domain/model/staking/StakingTokenApprovalStatus;

    move-result-object v0

    sget-object v1, Lcom/smedialink/storage/domain/model/staking/StakingTokenApprovalStatus;->NONE:Lcom/smedialink/storage/domain/model/staking/StakingTokenApprovalStatus;

    if-ne v0, v1, :cond_0

    iget-object p1, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter$checkTokensApproval$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;

    sget-object v0, Lcom/smedialink/storage/domain/model/staking/StakingApprovalTokenType;->STAKING:Lcom/smedialink/storage/domain/model/staking/StakingApprovalTokenType;

    invoke-static {p1, v0}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->access$prepareTokenApproval(Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;Lcom/smedialink/storage/domain/model/staking/StakingApprovalTokenType;)V

    goto/16 :goto_0

    .line 116
    :cond_0
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/staking/StakingApprovalInfo;->getFeeToken()Lcom/smedialink/storage/domain/model/staking/StakingTokenApprovalStatus;

    move-result-object v0

    if-ne v0, v1, :cond_1

    iget-object p1, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter$checkTokensApproval$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;

    sget-object v0, Lcom/smedialink/storage/domain/model/staking/StakingApprovalTokenType;->FEE:Lcom/smedialink/storage/domain/model/staking/StakingApprovalTokenType;

    invoke-static {p1, v0}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->access$prepareTokenApproval(Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;Lcom/smedialink/storage/domain/model/staking/StakingApprovalTokenType;)V

    goto :goto_0

    .line 117
    :cond_1
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/staking/StakingApprovalInfo;->getToken()Lcom/smedialink/storage/domain/model/staking/StakingTokenApprovalStatus;

    move-result-object v0

    sget-object v1, Lcom/smedialink/storage/domain/model/staking/StakingTokenApprovalStatus;->CONFIRMED:Lcom/smedialink/storage/domain/model/staking/StakingTokenApprovalStatus;

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/staking/StakingApprovalInfo;->getFeeToken()Lcom/smedialink/storage/domain/model/staking/StakingTokenApprovalStatus;

    move-result-object p1

    if-ne p1, v1, :cond_2

    .line 118
    iget-object p1, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter$checkTokensApproval$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;

    invoke-static {p1}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->access$getTokensApprovalStatusUpdateDisposable$p(Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 119
    iget-object p1, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter$checkTokensApproval$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;

    sget-object v0, Lcom/smedialink/model/staking/StakingTransactionStep$Prepare;->INSTANCE:Lcom/smedialink/model/staking/StakingTransactionStep$Prepare;

    invoke-static {p1, v0}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->access$setCurrentStep$p(Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;Lcom/smedialink/model/staking/StakingTransactionStep;)V

    .line 120
    iget-object p1, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter$checkTokensApproval$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView;

    invoke-interface {p1}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView;->updateStakingStep()V

    goto :goto_0

    .line 123
    :cond_2
    iget-object p1, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter$checkTokensApproval$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;

    sget-object v0, Lcom/smedialink/model/staking/StakingTransactionStep$ApprovalProcessing;->INSTANCE:Lcom/smedialink/model/staking/StakingTransactionStep$ApprovalProcessing;

    invoke-static {p1, v0}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->access$setCurrentStep$p(Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;Lcom/smedialink/model/staking/StakingTransactionStep;)V

    .line 124
    iget-object p1, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter$checkTokensApproval$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView;

    invoke-interface {p1}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView;->updateStakingStep()V

    .line 125
    iget-object p1, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter$checkTokensApproval$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->checkTokensApproval$default(Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;ZILjava/lang/Object;)V

    goto :goto_0

    .line 129
    :cond_3
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/Result$Error;

    if-eqz v0, :cond_5

    .line 130
    iget-boolean v0, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter$checkTokensApproval$$inlined$subscribeWithErrorHandle$default$1;->$isInitialLoad$inlined:Z

    if-eqz v0, :cond_4

    .line 131
    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter$checkTokensApproval$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;

    sget-object v1, Lcom/smedialink/model/staking/StakingTransactionStep$RetryLoading;->INSTANCE:Lcom/smedialink/model/staking/StakingTransactionStep$RetryLoading;

    invoke-static {v0, v1}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->access$setCurrentStep$p(Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;Lcom/smedialink/model/staking/StakingTransactionStep;)V

    .line 132
    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter$checkTokensApproval$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView;

    invoke-interface {v0}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView;->updateStakingStep()V

    .line 134
    :cond_4
    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter$checkTokensApproval$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;

    check-cast p1, Lcom/smedialink/storage/domain/model/Result$Error;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Error;->getError()Lcom/smedialink/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->access$showCommonErrorToast(Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;Lcom/smedialink/storage/data/network/model/error/ErrorModel;)V

    :cond_5
    :goto_0
    return-void
.end method
