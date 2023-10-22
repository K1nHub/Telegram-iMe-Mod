.class public Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State$SetupActionButtonStateCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "TokenManagementView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SetupActionButtonStateCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/crypto/token/TokenManagementView;",
        ">;"
    }
.end annotation


# instance fields
.field public final isButtonEnabled:Z

.field public final isCustomToken:Z


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State;ZZ)V
    .locals 1

    .line 434
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string v0, "setupActionButtonState"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 436
    iput-boolean p2, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State$SetupActionButtonStateCommand;->isCustomToken:Z

    .line 437
    iput-boolean p3, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State$SetupActionButtonStateCommand;->isButtonEnabled:Z

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/crypto/token/TokenManagementView;)V
    .locals 2

    .line 442
    iget-boolean v0, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State$SetupActionButtonStateCommand;->isCustomToken:Z

    iget-boolean v1, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State$SetupActionButtonStateCommand;->isButtonEnabled:Z

    invoke-interface {p1, v0, v1}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView;->setupActionButtonState(ZZ)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 428
    check-cast p1, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State$SetupActionButtonStateCommand;->apply(Lcom/iMe/ui/wallet/crypto/token/TokenManagementView;)V

    return-void
.end method
