.class public Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State$SetupAmountInputErrorStateCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "CreateCryptoBoxView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SetupAmountInputErrorStateCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;",
        ">;"
    }
.end annotation


# instance fields
.field public final clickableText:Ljava/lang/String;

.field public final errorText:Ljava/lang/String;

.field public final isError:Z


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 613
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string v0, "setupAmountInputErrorState"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 615
    iput-boolean p2, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State$SetupAmountInputErrorStateCommand;->isError:Z

    .line 616
    iput-object p3, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State$SetupAmountInputErrorStateCommand;->errorText:Ljava/lang/String;

    .line 617
    iput-object p4, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State$SetupAmountInputErrorStateCommand;->clickableText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;)V
    .locals 3

    .line 622
    iget-boolean v0, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State$SetupAmountInputErrorStateCommand;->isError:Z

    iget-object v1, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State$SetupAmountInputErrorStateCommand;->errorText:Ljava/lang/String;

    iget-object v2, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State$SetupAmountInputErrorStateCommand;->clickableText:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;->setupAmountInputErrorState(ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 605
    check-cast p1, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State$SetupAmountInputErrorStateCommand;->apply(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;)V

    return-void
.end method
