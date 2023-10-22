.class public Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionView$$State$ShowTransactionSuccessCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "CryptoBoxSuspensionView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowTransactionSuccessCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionView;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionView$$State;)V
    .locals 1

    .line 180
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "showTransactionSuccess"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionView;)V
    .locals 0

    .line 185
    invoke-interface {p1}, Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionView;->showTransactionSuccess()V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 178
    check-cast p1, Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionView$$State$ShowTransactionSuccessCommand;->apply(Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionView;)V

    return-void
.end method
