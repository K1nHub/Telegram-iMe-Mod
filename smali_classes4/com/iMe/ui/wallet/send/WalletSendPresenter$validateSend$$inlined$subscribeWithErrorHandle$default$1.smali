.class public final Lcom/iMe/ui/wallet/send/WalletSendPresenter$validateSend$$inlined$subscribeWithErrorHandle$default$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RxExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/send/WalletSendPresenter;->validateSend()V
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
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 WalletSendPresenter.kt\ncom/iMe/ui/wallet/send/WalletSendPresenter\n*L\n1#1,132:1\n382#2,24:133\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/send/WalletSendPresenter;


# direct methods
.method public constructor <init>(Lcom/iMe/ui/wallet/send/WalletSendPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter$validateSend$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/send/WalletSendPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 68
    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/send/WalletSendPresenter$validateSend$$inlined$subscribeWithErrorHandle$default$1;->invoke(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 2
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

    .line 69
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/iMe/storage/domain/model/Result;

    .line 134
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Success;

    if-eqz v0, :cond_3

    .line 135
    iget-object v0, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter$validateSend$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/send/WalletSendPresenter;

    invoke-static {v0}, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->access$isWalletTransfer$p(Lcom/iMe/ui/wallet/send/WalletSendPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter$validateSend$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/send/WalletSendPresenter;

    invoke-static {v0}, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->access$isBinanceReplenish$p(Lcom/iMe/ui/wallet/send/WalletSendPresenter;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    check-cast p1, Lcom/iMe/storage/domain/model/Result$Success;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    .line 136
    iget-object p1, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter$validateSend$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/send/WalletSendPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/send/WalletSendView;

    .line 137
    iget-object v0, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter$validateSend$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/send/WalletSendPresenter;

    invoke-static {v0}, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->access$getResourceManager$p(Lcom/iMe/ui/wallet/send/WalletSendPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->wallet_amount_send_invalid_eth_address:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 136
    invoke-interface {p1, v0}, Lcom/iMe/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 141
    :cond_1
    iget-object p1, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter$validateSend$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/send/WalletSendPresenter;

    invoke-static {p1}, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->access$isDonationsTransfer$p(Lcom/iMe/ui/wallet/send/WalletSendPresenter;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter$validateSend$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/send/WalletSendPresenter;

    invoke-static {p1}, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->access$getArgs$p(Lcom/iMe/ui/wallet/send/WalletSendPresenter;)Lcom/iMe/model/wallet/transfer/TransferScreenArgs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/model/wallet/transfer/TransferScreenArgs;->getChatId()Ljava/lang/Long;

    move-result-object p1

    if-nez p1, :cond_2

    .line 142
    iget-object p1, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter$validateSend$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/send/WalletSendPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/send/WalletSendView;

    .line 143
    iget-object v0, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter$validateSend$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/send/WalletSendPresenter;

    invoke-static {v0}, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->access$getResourceManager$p(Lcom/iMe/ui/wallet/send/WalletSendPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->wallet_amount_send_invalid_chat_id:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 142
    invoke-interface {p1, v0}, Lcom/iMe/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 148
    :cond_2
    iget-object p1, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter$validateSend$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/send/WalletSendPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/send/WalletSendView;

    sget-object v0, Lcom/iMe/ui/wallet/send/WalletSendPresenter$SendScreenState;->SEND:Lcom/iMe/ui/wallet/send/WalletSendPresenter$SendScreenState;

    invoke-interface {p1, v0}, Lcom/iMe/ui/wallet/send/WalletSendView;->updateStateButtonSend(Lcom/iMe/ui/wallet/send/WalletSendPresenter$SendScreenState;)V

    .line 149
    iget-object p1, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter$validateSend$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/send/WalletSendPresenter;

    invoke-static {p1}, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->access$updateFee(Lcom/iMe/ui/wallet/send/WalletSendPresenter;)V

    goto :goto_0

    .line 153
    :cond_3
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Error;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter$validateSend$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/send/WalletSendPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/send/WalletSendView;

    check-cast p1, Lcom/iMe/storage/domain/model/Result$Error;

    iget-object v1, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter$validateSend$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/send/WalletSendPresenter;

    invoke-static {v1}, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->access$getResourceManager$p(Lcom/iMe/ui/wallet/send/WalletSendPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/iMe/ui/base/mvp/base/BaseView;->showErrorToast(Lcom/iMe/storage/domain/model/Result$Error;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V

    :cond_4
    :goto_0
    return-void
.end method
