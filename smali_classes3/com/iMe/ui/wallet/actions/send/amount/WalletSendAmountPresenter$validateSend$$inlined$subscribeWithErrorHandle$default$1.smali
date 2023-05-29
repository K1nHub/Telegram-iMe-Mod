.class public final Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$validateSend$$inlined$subscribeWithErrorHandle$default$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RxExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->validateSend(Ljava/lang/String;)V
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
        "Ljava/lang/Boolean;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 WalletSendAmountPresenter.kt\ncom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter\n*L\n1#1,111:1\n170#2,14:112\n*E\n"
.end annotation


# instance fields
.field final synthetic $amount$inlined:Ljava/lang/String;

.field final synthetic this$0:Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;


# direct methods
.method public constructor <init>(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$validateSend$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;

    iput-object p2, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$validateSend$$inlined$subscribeWithErrorHandle$default$1;->$amount$inlined:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$validateSend$$inlined$subscribeWithErrorHandle$default$1;->invoke(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/Result<",
            "+",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    .line 45
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/iMe/storage/domain/model/Result;

    .line 113
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Success;

    if-eqz v0, :cond_b

    .line 114
    iget-object v0, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$validateSend$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;

    invoke-static {v0}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->access$isWalletTransfer(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$validateSend$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;

    invoke-static {v0}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->access$isBinanceReplenish(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$validateSend$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;

    invoke-virtual {v0}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->getSelectedAddress()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-nez v0, :cond_a

    check-cast p1, Lcom/iMe/storage/domain/model/Result$Success;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_3

    .line 115
    :cond_2
    iget-object p1, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$validateSend$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;

    invoke-static {p1}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->access$isDonationsTransfer(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$validateSend$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;

    invoke-static {p1}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->access$getArgs$p(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;)Lcom/iMe/model/wallet/transfer/TransferScreenArgs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/model/wallet/transfer/TransferScreenArgs;->getChatId()Ljava/lang/Long;

    move-result-object p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$validateSend$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView;

    iget-object v0, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$validateSend$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;

    invoke-static {v0}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->access$getResourceManager$p(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->wallet_amount_send_invalid_chat_id:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/iMe/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 116
    :cond_3
    iget-object p1, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$validateSend$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;

    invoke-virtual {p1}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->getSelectedTokenCode()Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->isUnknown()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$validateSend$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView;

    iget-object v0, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$validateSend$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;

    invoke-static {v0}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->access$getResourceManager$p(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->wallet_amount_send_invalid_eth_address:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/iMe/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 117
    :cond_4
    iget-object p1, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$validateSend$$inlined$subscribeWithErrorHandle$default$1;->$amount$inlined:Ljava/lang/String;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_5

    move p1, v1

    goto :goto_1

    :cond_5
    move p1, v2

    :goto_1
    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$validateSend$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView;

    iget-object v0, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$validateSend$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;

    invoke-static {v0}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->access$getResourceManager$p(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->wallet_amount_enter_valid_amount_title:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/iMe/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 118
    :cond_6
    iget-object p1, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$validateSend$$inlined$subscribeWithErrorHandle$default$1;->$amount$inlined:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpg-double p1, v3, v5

    if-nez p1, :cond_7

    goto :goto_2

    :cond_7
    move v1, v2

    :goto_2
    if-eqz v1, :cond_8

    iget-object p1, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$validateSend$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView;

    iget-object v0, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$validateSend$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;

    invoke-static {v0}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->access$getResourceManager$p(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->wallet_amount_validation_zero_amount_error:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/iMe/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    goto :goto_4

    .line 119
    :cond_8
    iget-object p1, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$validateSend$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;

    iget-object v0, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$validateSend$$inlined$subscribeWithErrorHandle$default$1;->$amount$inlined:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->access$isAvailableBalanceLessThanAmount(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$validateSend$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;

    invoke-static {p1}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->access$runNoEnoughMoneyFlow(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;)V

    goto :goto_4

    .line 120
    :cond_9
    iget-object p1, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$validateSend$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;

    iget-object v0, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$validateSend$$inlined$subscribeWithErrorHandle$default$1;->$amount$inlined:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->access$resolveAction(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;Ljava/lang/String;)V

    goto :goto_4

    .line 114
    :cond_a
    :goto_3
    iget-object p1, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$validateSend$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView;

    iget-object v0, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$validateSend$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;

    invoke-static {v0}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->access$getResourceManager$p(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->wallet_amount_send_invalid_eth_address:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/iMe/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    goto :goto_4

    .line 122
    :cond_b
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Error;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$validateSend$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView;

    check-cast p1, Lcom/iMe/storage/domain/model/Result$Error;

    iget-object v1, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$validateSend$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;

    invoke-static {v1}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->access$getResourceManager$p(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/iMe/ui/base/mvp/base/BaseView;->showErrorToast(Lcom/iMe/storage/domain/model/Result$Error;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V

    :cond_c
    :goto_4
    return-void
.end method
