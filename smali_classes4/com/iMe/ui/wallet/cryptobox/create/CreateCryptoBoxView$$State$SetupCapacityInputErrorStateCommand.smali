.class public Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State$SetupCapacityInputErrorStateCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "CreateCryptoBoxView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SetupCapacityInputErrorStateCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;",
        ">;"
    }
.end annotation


# instance fields
.field public final errorText:Ljava/lang/String;

.field public final isError:Z


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State;ZLjava/lang/String;)V
    .locals 1

    .line 632
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string/jumbo v0, "setupCapacityInputErrorState"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 634
    iput-boolean p2, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State$SetupCapacityInputErrorStateCommand;->isError:Z

    .line 635
    iput-object p3, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State$SetupCapacityInputErrorStateCommand;->errorText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;)V
    .locals 2

    .line 640
    iget-boolean v0, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State$SetupCapacityInputErrorStateCommand;->isError:Z

    iget-object v1, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State$SetupCapacityInputErrorStateCommand;->errorText:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;->setupCapacityInputErrorState(ZLjava/lang/String;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 626
    check-cast p1, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State$SetupCapacityInputErrorStateCommand;->apply(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;)V

    return-void
.end method
