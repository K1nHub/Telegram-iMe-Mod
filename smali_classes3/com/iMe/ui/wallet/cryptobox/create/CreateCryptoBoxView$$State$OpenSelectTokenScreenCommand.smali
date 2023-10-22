.class public Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State$OpenSelectTokenScreenCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "CreateCryptoBoxView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OpenSelectTokenScreenCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;",
        ">;"
    }
.end annotation


# instance fields
.field public final networkId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State;Ljava/lang/String;)V
    .locals 1

    .line 459
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "openSelectTokenScreen"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 461
    iput-object p2, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State$OpenSelectTokenScreenCommand;->networkId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;)V
    .locals 1

    .line 466
    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State$OpenSelectTokenScreenCommand;->networkId:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;->openSelectTokenScreen(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 455
    check-cast p1, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State$OpenSelectTokenScreenCommand;->apply(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;)V

    return-void
.end method
