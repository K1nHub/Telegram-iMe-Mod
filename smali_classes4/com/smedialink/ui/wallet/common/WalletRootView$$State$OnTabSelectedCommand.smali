.class public Lcom/smedialink/ui/wallet/common/WalletRootView$$State$OnTabSelectedCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletRootView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/wallet/common/WalletRootView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnTabSelectedCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/smedialink/ui/wallet/common/WalletRootView;",
        ">;"
    }
.end annotation


# instance fields
.field public final id:I


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/common/WalletRootView$$State;I)V
    .locals 1

    .line 150
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string v0, "onTabSelected"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 152
    iput p2, p0, Lcom/smedialink/ui/wallet/common/WalletRootView$$State$OnTabSelectedCommand;->id:I

    return-void
.end method


# virtual methods
.method public apply(Lcom/smedialink/ui/wallet/common/WalletRootView;)V
    .locals 1

    .line 157
    iget v0, p0, Lcom/smedialink/ui/wallet/common/WalletRootView$$State$OnTabSelectedCommand;->id:I

    invoke-interface {p1, v0}, Lcom/smedialink/ui/wallet/common/WalletRootView;->onTabSelected(I)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 146
    check-cast p1, Lcom/smedialink/ui/wallet/common/WalletRootView;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/common/WalletRootView$$State$OnTabSelectedCommand;->apply(Lcom/smedialink/ui/wallet/common/WalletRootView;)V

    return-void
.end method
