.class public Lcom/iMe/ui/wallet/send/WalletSendView$$State$SetupCommentVisibilityCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletSendView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/send/WalletSendView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SetupCommentVisibilityCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/send/WalletSendView;",
        ">;"
    }
.end annotation


# instance fields
.field public final isVisible:Z


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/send/WalletSendView$$State;Z)V
    .locals 1

    .line 865
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string/jumbo v0, "setupCommentVisibility"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 867
    iput-boolean p2, p0, Lcom/iMe/ui/wallet/send/WalletSendView$$State$SetupCommentVisibilityCommand;->isVisible:Z

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/send/WalletSendView;)V
    .locals 1

    .line 872
    iget-boolean v0, p0, Lcom/iMe/ui/wallet/send/WalletSendView$$State$SetupCommentVisibilityCommand;->isVisible:Z

    invoke-interface {p1, v0}, Lcom/iMe/ui/wallet/send/WalletSendView;->setupCommentVisibility(Z)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 861
    check-cast p1, Lcom/iMe/ui/wallet/send/WalletSendView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/send/WalletSendView$$State$SetupCommentVisibilityCommand;->apply(Lcom/iMe/ui/wallet/send/WalletSendView;)V

    return-void
.end method
