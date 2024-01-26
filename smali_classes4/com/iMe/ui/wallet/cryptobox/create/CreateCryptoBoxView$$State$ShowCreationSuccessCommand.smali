.class public Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State$ShowCreationSuccessCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "CreateCryptoBoxView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowCreationSuccessCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State;)V
    .locals 1

    .line 398
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string/jumbo v0, "showCreationSuccess"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;)V
    .locals 0

    .line 403
    invoke-interface {p1}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;->showCreationSuccess()V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 396
    check-cast p1, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State$ShowCreationSuccessCommand;->apply(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;)V

    return-void
.end method
