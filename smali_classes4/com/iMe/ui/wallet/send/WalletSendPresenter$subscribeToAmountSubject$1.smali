.class final Lcom/iMe/ui/wallet/send/WalletSendPresenter$subscribeToAmountSubject$1;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/send/WalletSendPresenter;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/send/WalletSendPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter$subscribeToAmountSubject$1;->this$0:Lcom/iMe/ui/wallet/send/WalletSendPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 8

    const-string v0, "amountText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 953
    invoke-static {p1}, Lkotlin/text/StringsKt;->toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    invoke-static {p1}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->orZero(Ljava/lang/Double;)D

    move-result-wide v0

    .line 955
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {p1}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->isZero(Ljava/lang/Number;)Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 956
    iget-object p1, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter$subscribeToAmountSubject$1;->this$0:Lcom/iMe/ui/wallet/send/WalletSendPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/send/WalletSendView;

    sget-object v2, Lcom/iMe/ui/wallet/send/WalletSendPresenter$SendScreenState;->PREPARE:Lcom/iMe/ui/wallet/send/WalletSendPresenter$SendScreenState;

    invoke-interface {p1, v2}, Lcom/iMe/ui/wallet/send/WalletSendView;->updateStateButtonSend(Lcom/iMe/ui/wallet/send/WalletSendPresenter$SendScreenState;)V

    .line 957
    iget-object p1, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter$subscribeToAmountSubject$1;->this$0:Lcom/iMe/ui/wallet/send/WalletSendPresenter;

    invoke-static {p1, v1}, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->access$showAmountError(Lcom/iMe/ui/wallet/send/WalletSendPresenter;Z)V

    .line 958
    iget-object p1, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter$subscribeToAmountSubject$1;->this$0:Lcom/iMe/ui/wallet/send/WalletSendPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/send/WalletSendView;

    .line 959
    iget-object v2, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter$subscribeToAmountSubject$1;->this$0:Lcom/iMe/ui/wallet/send/WalletSendPresenter;

    invoke-static {v2}, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->access$getResourceManager$p(Lcom/iMe/ui/wallet/send/WalletSendPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    .line 960
    sget v3, Lorg/telegram/messenger/R$string;->wallet_amount_send_send_amount_in_fiat:I

    new-array v0, v0, [Ljava/lang/Object;

    .line 961
    sget-object v4, Lcom/iMe/utils/formatter/BalanceFormatter;->INSTANCE:Lcom/iMe/utils/formatter/BalanceFormatter;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static {v4, v5, v7, v6, v7}, Lcom/iMe/utils/formatter/BalanceFormatter;->formatFiatBalance$default(Lcom/iMe/utils/formatter/BalanceFormatter;Ljava/lang/Number;Ljava/lang/Integer;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    .line 959
    invoke-interface {v2, v3, v0}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 958
    invoke-interface {p1, v0}, Lcom/iMe/ui/wallet/send/WalletSendView;->renderInsertedAmountInFiat(Ljava/lang/String;)V

    move v0, v1

    .line 967
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 952
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/send/WalletSendPresenter$subscribeToAmountSubject$1;->invoke(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
