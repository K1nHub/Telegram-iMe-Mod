.class public Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroView$$State$OpenImportWalletScreenCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "CreateWalletIntroView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OpenImportWalletScreenCommand"
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

.field public final walletAddress:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroView$$State;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 300
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "openImportWalletScreen"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 302
    iput-object p2, p0, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroView$$State$OpenImportWalletScreenCommand;->password:Ljava/lang/String;

    .line 303
    iput-object p3, p0, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroView$$State$OpenImportWalletScreenCommand;->walletAddress:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroView;)V
    .locals 2

    .line 308
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroView$$State$OpenImportWalletScreenCommand;->password:Ljava/lang/String;

    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroView$$State$OpenImportWalletScreenCommand;->walletAddress:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroView;->openImportWalletScreen(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 294
    check-cast p1, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroView$$State$OpenImportWalletScreenCommand;->apply(Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroView;)V

    return-void
.end method
