.class public Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroView$$State$OpenAddWalletScreenCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "CreateWalletIntroView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OpenAddWalletScreenCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroView;",
        ">;"
    }
.end annotation


# instance fields
.field public final password:Ljava/lang/String;

.field public final wallet:Lcom/iMe/storage/domain/model/crypto/Wallet;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroView$$State;Lcom/iMe/storage/domain/model/crypto/Wallet;Ljava/lang/String;)V
    .locals 1

    .line 336
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "openAddWalletScreen"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 338
    iput-object p2, p0, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroView$$State$OpenAddWalletScreenCommand;->wallet:Lcom/iMe/storage/domain/model/crypto/Wallet;

    .line 339
    iput-object p3, p0, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroView$$State$OpenAddWalletScreenCommand;->password:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroView;)V
    .locals 2

    .line 344
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroView$$State$OpenAddWalletScreenCommand;->wallet:Lcom/iMe/storage/domain/model/crypto/Wallet;

    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroView$$State$OpenAddWalletScreenCommand;->password:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroView;->openAddWalletScreen(Lcom/iMe/storage/domain/model/crypto/Wallet;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 330
    check-cast p1, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroView$$State$OpenAddWalletScreenCommand;->apply(Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroView;)V

    return-void
.end method
