.class public final Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter$prepareTokenApproval$$inlined$subscribeWithErrorHandle$default$1;
.super Ljava/lang/Object;
.source "RxExt.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->prepareTokenApproval(Lcom/smedialink/storage/domain/model/staking/StakingApprovalTokenType;)V
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
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/smedialink/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 StakingTransactionPresenter.kt\ncom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter\n*L\n1#1,111:1\n244#2,14:112\n*E\n"
.end annotation


# instance fields
.field final synthetic $data$inlined:Lcom/smedialink/model/staking/StakingDetailsItem;

.field final synthetic $tokenType$inlined:Lcom/smedialink/storage/domain/model/staking/StakingApprovalTokenType;

.field final synthetic this$0:Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;


# direct methods
.method public constructor <init>(Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;Lcom/smedialink/storage/domain/model/staking/StakingApprovalTokenType;Lcom/smedialink/model/staking/StakingDetailsItem;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter$prepareTokenApproval$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;

    iput-object p2, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter$prepareTokenApproval$$inlined$subscribeWithErrorHandle$default$1;->$tokenType$inlined:Lcom/smedialink/storage/domain/model/staking/StakingApprovalTokenType;

    iput-object p3, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter$prepareTokenApproval$$inlined$subscribeWithErrorHandle$default$1;->$data$inlined:Lcom/smedialink/model/staking/StakingDetailsItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 5
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

    if-eqz v0, :cond_2

    check-cast p1, Lcom/smedialink/storage/domain/model/Result$Success;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Pair;

    .line 114
    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter$prepareTokenApproval$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;

    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smedialink/storage/domain/model/staking/StakingTransactionAction;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    .line 115
    :cond_0
    iget-object v2, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter$prepareTokenApproval$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;

    .line 116
    iget-object v3, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter$prepareTokenApproval$$inlined$subscribeWithErrorHandle$default$1;->$tokenType$inlined:Lcom/smedialink/storage/domain/model/staking/StakingApprovalTokenType;

    sget-object v4, Lcom/smedialink/storage/domain/model/staking/StakingApprovalTokenType;->STAKING:Lcom/smedialink/storage/domain/model/staking/StakingApprovalTokenType;

    if-ne v3, v4, :cond_1

    new-instance v3, Lcom/smedialink/model/staking/StakingTransactionStep$ApprovalNeeded;

    iget-object v4, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter$prepareTokenApproval$$inlined$subscribeWithErrorHandle$default$1;->$data$inlined:Lcom/smedialink/model/staking/StakingDetailsItem;

    invoke-virtual {v4}, Lcom/smedialink/model/staking/StakingDetailsItem;->getTokenTicker()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/smedialink/model/staking/StakingTransactionStep$ApprovalNeeded;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 117
    :cond_1
    new-instance v3, Lcom/smedialink/model/staking/StakingTransactionStep$ApprovalNeeded;

    iget-object v4, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter$prepareTokenApproval$$inlined$subscribeWithErrorHandle$default$1;->$data$inlined:Lcom/smedialink/model/staking/StakingDetailsItem;

    invoke-virtual {v4}, Lcom/smedialink/model/staking/StakingDetailsItem;->getFeeTokenTicker()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/smedialink/model/staking/StakingTransactionStep$ApprovalNeeded;-><init>(Ljava/lang/String;)V

    .line 118
    :goto_0
    iget-object v4, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter$prepareTokenApproval$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;

    invoke-static {v4}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->access$getFeeDialogModel(Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;)Lcom/smedialink/model/dialog/DialogModel;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/smedialink/mapper/staking/StakingTransactionActionToFeeUiMappingKt;->mapToUi(Lcom/smedialink/storage/domain/model/staking/StakingTransactionAction;Lcom/smedialink/model/dialog/DialogModel;)Lcom/smedialink/ui/custom/FeeView$ChooseFeeType;

    move-result-object v4

    .line 119
    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 115
    invoke-static {v2, v3, v4, p1}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->access$onActionSuccess(Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;Lcom/smedialink/model/staking/StakingTransactionStep;Lcom/smedialink/ui/custom/FeeView$ChooseFeeType;Ljava/lang/String;)V

    .line 121
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 114
    :goto_1
    invoke-static {v0, v1}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->access$setStakingTransactionAction$p(Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;Lcom/smedialink/storage/domain/model/staking/StakingTransactionAction;)V

    goto :goto_2

    .line 123
    :cond_2
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/Result$Error;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter$prepareTokenApproval$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;

    check-cast p1, Lcom/smedialink/storage/domain/model/Result$Error;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Error;->getError()Lcom/smedialink/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->access$showCommonErrorToast(Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;Lcom/smedialink/storage/data/network/model/error/ErrorModel;)V

    :cond_3
    :goto_2
    return-void
.end method
