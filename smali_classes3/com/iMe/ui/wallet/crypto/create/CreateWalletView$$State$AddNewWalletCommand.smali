.class public Lcom/iMe/ui/wallet/crypto/create/CreateWalletView$$State$AddNewWalletCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "CreateWalletView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/crypto/create/CreateWalletView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AddNewWalletCommand"
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

    .line 409
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "addNewWallet"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 411
    iput-object p2, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletView$$State$AddNewWalletCommand;->wallet:Lcom/iMe/storage/domain/model/crypto/Wallet;

    .line 412
    iput-object p3, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletView$$State$AddNewWalletCommand;->password:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/crypto/create/CreateWalletView;)V
    .locals 2

    .line 417
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletView$$State$AddNewWalletCommand;->wallet:Lcom/iMe/storage/domain/model/crypto/Wallet;

    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletView$$State$AddNewWalletCommand;->password:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletView;->addNewWallet(Lcom/iMe/storage/domain/model/crypto/Wallet;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 403
    check-cast p1, Lcom/iMe/ui/wallet/crypto/create/CreateWalletView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletView$$State$AddNewWalletCommand;->apply(Lcom/iMe/ui/wallet/crypto/create/CreateWalletView;)V

    return-void
.end method
