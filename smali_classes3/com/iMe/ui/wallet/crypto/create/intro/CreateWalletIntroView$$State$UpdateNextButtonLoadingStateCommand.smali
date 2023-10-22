.class public Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroView$$State$UpdateNextButtonLoadingStateCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "CreateWalletIntroView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UpdateNextButtonLoadingStateCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroView;",
        ">;"
    }
.end annotation


# instance fields
.field public final isLoading:Z


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroView$$State;Z)V
    .locals 1

    .line 253
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string v0, "updateNextButtonLoadingState"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 255
    iput-boolean p2, p0, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroView$$State$UpdateNextButtonLoadingStateCommand;->isLoading:Z

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroView;)V
    .locals 1

    .line 260
    iget-boolean v0, p0, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroView$$State$UpdateNextButtonLoadingStateCommand;->isLoading:Z

    invoke-interface {p1, v0}, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroView;->updateNextButtonLoadingState(Z)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 249
    check-cast p1, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroView$$State$UpdateNextButtonLoadingStateCommand;->apply(Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroView;)V

    return-void
.end method
