.class final Lcom/iMe/ui/wallet/send/WalletSendPresenter$subscribeToAmountSubject$2;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletSendPresenter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/send/WalletSendPresenter;->subscribeToAmountSubject()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/String;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/send/WalletSendPresenter;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/send/WalletSendPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter$subscribeToAmountSubject$2;->this$0:Lcom/iMe/ui/wallet/send/WalletSendPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 957
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/send/WalletSendPresenter$subscribeToAmountSubject$2;->invoke(Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;)V
    .locals 9

    .line 958
    iget-object v0, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter$subscribeToAmountSubject$2;->this$0:Lcom/iMe/ui/wallet/send/WalletSendPresenter;

    invoke-static {v0}, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->access$getSelectedAmount$p(Lcom/iMe/ui/wallet/send/WalletSendPresenter;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "it"

    if-nez v0, :cond_1

    .line 959
    iget-object v0, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter$subscribeToAmountSubject$2;->this$0:Lcom/iMe/ui/wallet/send/WalletSendPresenter;

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->access$setSelectedAmount$p(Lcom/iMe/ui/wallet/send/WalletSendPresenter;Ljava/lang/String;)V

    .line 960
    iget-object v0, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter$subscribeToAmountSubject$2;->this$0:Lcom/iMe/ui/wallet/send/WalletSendPresenter;

    invoke-static {v0}, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->access$getSelectedTokenBalance$p(Lcom/iMe/ui/wallet/send/WalletSendPresenter;)Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getTotal()D

    move-result-wide v4

    iget-object v0, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter$subscribeToAmountSubject$2;->this$0:Lcom/iMe/ui/wallet/send/WalletSendPresenter;

    .line 961
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    cmpl-double v4, v6, v4

    if-lez v4, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    invoke-static {v0, v4}, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->access$showAmountError(Lcom/iMe/ui/wallet/send/WalletSendPresenter;Z)V

    .line 964
    :cond_1
    iget-object v0, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter$subscribeToAmountSubject$2;->this$0:Lcom/iMe/ui/wallet/send/WalletSendPresenter;

    invoke-static {v0}, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->access$getSelectedTokenBalance$p(Lcom/iMe/ui/wallet/send/WalletSendPresenter;)Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v4, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter$subscribeToAmountSubject$2;->this$0:Lcom/iMe/ui/wallet/send/WalletSendPresenter;

    .line 965
    invoke-virtual {v4}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v5

    check-cast v5, Lcom/iMe/ui/wallet/send/WalletSendView;

    .line 966
    invoke-static {v4}, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->access$getResourceManager$p(Lcom/iMe/ui/wallet/send/WalletSendPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v4

    .line 967
    sget v6, Lorg/telegram/messenger/R$string;->wallet_amount_send_send_amount_in_fiat:I

    new-array v2, v2, [Ljava/lang/Object;

    .line 968
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    invoke-static {v0, v7, v8}, Lcom/iMe/utils/extentions/model/wallet/TokenBalanceExtKt;->getInsertedTokenAmountInDollars(Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;D)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    .line 966
    invoke-interface {v4, v6, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 965
    invoke-interface {v5, p1}, Lcom/iMe/ui/wallet/send/WalletSendView;->renderInsertedAmountInFiat(Ljava/lang/String;)V

    .line 972
    :cond_2
    iget-object p1, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter$subscribeToAmountSubject$2;->this$0:Lcom/iMe/ui/wallet/send/WalletSendPresenter;

    invoke-static {p1}, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->access$checkEnteredData(Lcom/iMe/ui/wallet/send/WalletSendPresenter;)V

    return-void
.end method
