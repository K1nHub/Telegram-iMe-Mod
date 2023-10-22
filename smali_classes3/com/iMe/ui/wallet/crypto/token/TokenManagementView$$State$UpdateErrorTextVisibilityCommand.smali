.class public Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State$UpdateErrorTextVisibilityCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "TokenManagementView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UpdateErrorTextVisibilityCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/crypto/token/TokenManagementView;",
        ">;"
    }
.end annotation


# instance fields
.field public final isVisible:Z


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State;Z)V
    .locals 1

    .line 406
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string v0, "updateErrorTextVisibility"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 408
    iput-boolean p2, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State$UpdateErrorTextVisibilityCommand;->isVisible:Z

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/crypto/token/TokenManagementView;)V
    .locals 1

    .line 413
    iget-boolean v0, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State$UpdateErrorTextVisibilityCommand;->isVisible:Z

    invoke-interface {p1, v0}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView;->updateErrorTextVisibility(Z)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 402
    check-cast p1, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State$UpdateErrorTextVisibilityCommand;->apply(Lcom/iMe/ui/wallet/crypto/token/TokenManagementView;)V

    return-void
.end method
