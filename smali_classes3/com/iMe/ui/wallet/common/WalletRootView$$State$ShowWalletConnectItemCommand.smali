.class public Lcom/iMe/ui/wallet/common/WalletRootView$$State$ShowWalletConnectItemCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletRootView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/common/WalletRootView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowWalletConnectItemCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/common/WalletRootView;",
        ">;"
    }
.end annotation


# instance fields
.field public final show:Z


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/common/WalletRootView$$State;Z)V
    .locals 1

    .line 229
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string v0, "showWalletConnectItem"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 231
    iput-boolean p2, p0, Lcom/iMe/ui/wallet/common/WalletRootView$$State$ShowWalletConnectItemCommand;->show:Z

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/common/WalletRootView;)V
    .locals 1

    .line 236
    iget-boolean v0, p0, Lcom/iMe/ui/wallet/common/WalletRootView$$State$ShowWalletConnectItemCommand;->show:Z

    invoke-interface {p1, v0}, Lcom/iMe/ui/wallet/common/WalletRootView;->showWalletConnectItem(Z)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 225
    check-cast p1, Lcom/iMe/ui/wallet/common/WalletRootView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/common/WalletRootView$$State$ShowWalletConnectItemCommand;->apply(Lcom/iMe/ui/wallet/common/WalletRootView;)V

    return-void
.end method
