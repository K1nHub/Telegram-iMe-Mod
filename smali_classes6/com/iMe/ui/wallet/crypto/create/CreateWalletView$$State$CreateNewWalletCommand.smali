.class public Lcom/iMe/ui/wallet/crypto/create/CreateWalletView$$State$CreateNewWalletCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "CreateWalletView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/crypto/create/CreateWalletView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CreateNewWalletCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/crypto/create/CreateWalletView;",
        ">;"
    }
.end annotation


# instance fields
.field public final password:Ljava/lang/String;

.field public final wallet:Lcom/iMe/storage/domain/model/crypto/Wallet;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/crypto/create/CreateWalletView$$State;Lcom/iMe/storage/domain/model/crypto/Wallet;Ljava/lang/String;)V
    .locals 1

    .line 375
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "createNewWallet"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 377
    iput-object p2, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletView$$State$CreateNewWalletCommand;->wallet:Lcom/iMe/storage/domain/model/crypto/Wallet;

    .line 378
    iput-object p3, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletView$$State$CreateNewWalletCommand;->password:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/crypto/create/CreateWalletView;)V
    .locals 2

    .line 383
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletView$$State$CreateNewWalletCommand;->wallet:Lcom/iMe/storage/domain/model/crypto/Wallet;

    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletView$$State$CreateNewWalletCommand;->password:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletView;->createNewWallet(Lcom/iMe/storage/domain/model/crypto/Wallet;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 369
    check-cast p1, Lcom/iMe/ui/wallet/crypto/create/CreateWalletView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletView$$State$CreateNewWalletCommand;->apply(Lcom/iMe/ui/wallet/crypto/create/CreateWalletView;)V

    return-void
.end method
