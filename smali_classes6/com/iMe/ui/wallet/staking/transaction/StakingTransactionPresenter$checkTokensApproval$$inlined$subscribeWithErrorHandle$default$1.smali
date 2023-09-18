.class public final Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$checkTokensApproval$$inlined$subscribeWithErrorHandle$default$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RxExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->checkTokensApproval(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/iMe/storage/domain/model/Result<",
        "+",
        "Lcom/iMe/storage/domain/model/staking/StakingApprovalInfo;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 StakingTransactionPresenter.kt\ncom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter\n*L\n1#1,132:1\n214#2,36:133\n*E\n"
.end annotation


# instance fields
.field final synthetic $isInitialLoad$inlined:Z

.field final synthetic this$0:Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;


# direct methods
.method public constructor <init>(ZLcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;)V
    .locals 0

    iput-boolean p1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$checkTokensApproval$$inlined$subscribeWithErrorHandle$default$1;->$isInitialLoad$inlined:Z

    iput-object p2, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$checkTokensApproval$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 68
    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$checkTokensApproval$$inlined$subscribeWithErrorHandle$default$1;->invoke(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/Result<",
            "+",
            "Lcom/iMe/storage/domain/model/staking/StakingApprovalInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    .line 69
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/iMe/storage/domain/model/Result;

    .line 134
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Success;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/iMe/storage/domain/model/Result$Success;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/storage/domain/model/staking/StakingApprovalInfo;

    .line 136
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/staking/StakingApprovalInfo;->getToken()Lcom/iMe/storage/domain/model/staking/StakingTokenApprovalStatus;

    move-result-object v0

    sget-object v1, Lcom/iMe/storage/domain/model/staking/StakingTokenApprovalStatus;->NONE:Lcom/iMe/storage/domain/model/staking/StakingTokenApprovalStatus;

    if-ne v0, v1, :cond_0

    iget-object p1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$checkTokensApproval$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;

    .line 137
    sget-object v0, Lcom/iMe/storage/domain/model/staking/StakingApprovalTokenType;->STAKING:Lcom/iMe/storage/domain/model/staking/StakingApprovalTokenType;

    .line 136
    invoke-static {p1, v0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->access$prepareTokenApproval(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;Lcom/iMe/storage/domain/model/staking/StakingApprovalTokenType;)V

    goto/16 :goto_0

    .line 140
    :cond_0
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/staking/StakingApprovalInfo;->getFeeToken()Lcom/iMe/storage/domain/model/staking/StakingTokenApprovalStatus;

    move-result-object v0

    if-ne v0, v1, :cond_1

    iget-object p1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$checkTokensApproval$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;

    .line 141
    sget-object v0, Lcom/iMe/storage/domain/model/staking/StakingApprovalTokenType;->FEE:Lcom/iMe/storage/domain/model/staking/StakingApprovalTokenType;

    .line 140
    invoke-static {p1, v0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->access$prepareTokenApproval(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;Lcom/iMe/storage/domain/model/staking/StakingApprovalTokenType;)V

    goto :goto_0

    .line 144
    :cond_1
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/staking/StakingApprovalInfo;->getToken()Lcom/iMe/storage/domain/model/staking/StakingTokenApprovalStatus;

    move-result-object v0

    sget-object v1, Lcom/iMe/storage/domain/model/staking/StakingTokenApprovalStatus;->CONFIRMED:Lcom/iMe/storage/domain/model/staking/StakingTokenApprovalStatus;

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/staking/StakingApprovalInfo;->getFeeToken()Lcom/iMe/storage/domain/model/staking/StakingTokenApprovalStatus;

    move-result-object p1

    if-ne p1, v1, :cond_2

    .line 145
    iget-object p1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$checkTokensApproval$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;

    invoke-static {p1}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->access$getTokensApprovalStatusUpdateDisposable$p(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 146
    iget-object p1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$checkTokensApproval$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;

    sget-object v0, Lcom/iMe/model/staking/TransactionStep$Prepare;->INSTANCE:Lcom/iMe/model/staking/TransactionStep$Prepare;

    invoke-static {p1, v0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->access$setCurrentStep$p(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;Lcom/iMe/model/staking/TransactionStep;)V

    .line 147
    iget-object p1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$checkTokensApproval$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView;

    invoke-interface {p1}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView;->updateStakingStep()V

    goto :goto_0

    .line 151
    :cond_2
    iget-object p1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$checkTokensApproval$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;

    sget-object v0, Lcom/iMe/model/staking/TransactionStep$ApprovalProcessing;->INSTANCE:Lcom/iMe/model/staking/TransactionStep$ApprovalProcessing;

    invoke-static {p1, v0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->access$setCurrentStep$p(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;Lcom/iMe/model/staking/TransactionStep;)V

    .line 152
    iget-object p1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$checkTokensApproval$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView;

    invoke-interface {p1}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView;->updateStakingStep()V

    .line 153
    iget-object p1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$checkTokensApproval$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->checkTokensApproval$default(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;ZILjava/lang/Object;)V

    goto :goto_0

    .line 158
    :cond_3
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Error;

    if-eqz v0, :cond_5

    .line 159
    iget-boolean v0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$checkTokensApproval$$inlined$subscribeWithErrorHandle$default$1;->$isInitialLoad$inlined:Z

    if-eqz v0, :cond_4

    .line 160
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$checkTokensApproval$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;

    sget-object v1, Lcom/iMe/model/staking/TransactionStep$RetryLoading;->INSTANCE:Lcom/iMe/model/staking/TransactionStep$RetryLoading;

    invoke-static {v0, v1}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->access$setCurrentStep$p(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;Lcom/iMe/model/staking/TransactionStep;)V

    .line 161
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$checkTokensApproval$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView;

    invoke-interface {v0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView;->updateStakingStep()V

    .line 163
    :cond_4
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$checkTokensApproval$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView;

    check-cast p1, Lcom/iMe/storage/domain/model/Result$Error;

    iget-object v1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$checkTokensApproval$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;

    invoke-static {v1}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->access$getResourceManager$p(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/iMe/ui/base/mvp/base/BaseView;->showErrorToast(Lcom/iMe/storage/domain/model/Result$Error;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V

    :cond_5
    :goto_0
    return-void
.end method
