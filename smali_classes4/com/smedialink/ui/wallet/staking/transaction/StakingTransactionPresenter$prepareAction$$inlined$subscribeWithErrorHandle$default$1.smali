.class public final Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter$prepareAction$$inlined$subscribeWithErrorHandle$default$1;
.super Ljava/lang/Object;
.source "RxExt.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->prepareAction()V
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
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/smedialink/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 StakingTransactionPresenter.kt\ncom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter\n*L\n1#1,111:1\n306#2,29:112\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;


# direct methods
.method public constructor <init>(Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter$prepareAction$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;

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

    if-eqz v0, :cond_1

    check-cast p1, Lcom/smedialink/storage/domain/model/Result$Success;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Pair;

    .line 114
    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter$prepareAction$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;

    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smedialink/storage/domain/model/staking/StakingTransactionAction;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 115
    :cond_0
    iget-object v2, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter$prepareAction$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;

    .line 116
    new-instance v3, Lcom/smedialink/model/staking/StakingTransactionStep$Execute;

    invoke-static {v2}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->access$getScreenType$p(Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;)I

    move-result v4

    invoke-direct {v3, v4}, Lcom/smedialink/model/staking/StakingTransactionStep$Execute;-><init>(I)V

    .line 117
    iget-object v4, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter$prepareAction$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;

    invoke-static {v4}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->access$getFeeDialogModel(Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;)Lcom/smedialink/model/dialog/DialogModel;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/smedialink/mapper/staking/StakingTransactionActionToFeeUiMappingKt;->mapToUi(Lcom/smedialink/storage/domain/model/staking/StakingTransactionAction;Lcom/smedialink/model/dialog/DialogModel;)Lcom/smedialink/ui/custom/FeeView$ChooseFeeType;

    move-result-object v4

    .line 118
    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 115
    invoke-static {v2, v3, v4, p1}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->access$onActionSuccess(Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;Lcom/smedialink/model/staking/StakingTransactionStep;Lcom/smedialink/ui/custom/FeeView$ChooseFeeType;Ljava/lang/String;)V

    .line 120
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 114
    :goto_0
    invoke-static {v0, v1}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->access$setStakingTransactionAction$p(Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;Lcom/smedialink/storage/domain/model/staking/StakingTransactionAction;)V

    goto/16 :goto_1

    .line 122
    :cond_1
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/Result$Error;

    if-eqz v0, :cond_6

    check-cast p1, Lcom/smedialink/storage/domain/model/Result$Error;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Error;->getError()Lcom/smedialink/storage/data/network/model/error/ErrorModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/data/network/model/error/ErrorModel;->getStatus()Lcom/smedialink/storage/data/network/model/error/IErrorStatus;

    move-result-object v0

    .line 123
    sget-object v1, Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$ErrorStatus;->NO_ENOUGH_MONEY:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$ErrorStatus;

    if-ne v0, v1, :cond_2

    .line 124
    iget-object p1, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter$prepareAction$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;

    invoke-static {p1}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->access$runNoEnoughMoneyFlow(Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;)V

    goto/16 :goto_1

    .line 125
    :cond_2
    sget-object v1, Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$StakingErrorStatus;->ERR_STAKING_FINISHED:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$StakingErrorStatus;

    if-ne v0, v1, :cond_3

    .line 126
    iget-object p1, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter$prepareAction$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView;

    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter$prepareAction$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;

    invoke-static {v0}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->access$getResourceManager$p(Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;)Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->staking_replenishment_already_finished:I

    invoke-interface {v0, v1}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/smedialink/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    goto :goto_1

    .line 127
    :cond_3
    sget-object v1, Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$StakingErrorStatus;->ERR_STAKING_CLAIM_OVERLAP:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$StakingErrorStatus;

    if-ne v0, v1, :cond_4

    .line 128
    iget-object p1, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter$prepareAction$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView;

    .line 129
    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter$prepareAction$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;

    invoke-static {v0}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->access$getResourceManager$p(Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;)Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->staking_profit_error_title:I

    invoke-interface {v0, v1}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 130
    iget-object v1, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter$prepareAction$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;

    invoke-static {v1}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->access$getResourceManager$p(Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;)Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->staking_profit_overlap_error_description:I

    invoke-interface {v1, v2}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 128
    invoke-interface {p1, v0, v1}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView;->showActionError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 132
    :cond_4
    sget-object v1, Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$StakingErrorStatus;->ERR_STAKING_WITHDRAWAL_OVER_LIMIT:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$StakingErrorStatus;

    if-ne v0, v1, :cond_5

    .line 133
    iget-object p1, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter$prepareAction$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView;

    .line 134
    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter$prepareAction$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;

    invoke-static {v0}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->access$getResourceManager$p(Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;)Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->staking_withdraw_error_title:I

    invoke-interface {v0, v1}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 135
    iget-object v1, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter$prepareAction$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;

    invoke-static {v1}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->access$getResourceManager$p(Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;)Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->staking_withdraw_over_limit_error_description:I

    invoke-interface {v1, v2}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 133
    invoke-interface {p1, v0, v1}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView;->showActionError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 137
    :cond_5
    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter$prepareAction$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Error;->getError()Lcom/smedialink/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->access$showCommonErrorToast(Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;Lcom/smedialink/storage/data/network/model/error/ErrorModel;)V

    :cond_6
    :goto_1
    return-void
.end method
