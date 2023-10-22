.class public Lcom/iMe/ui/wallet/send/WalletSendView$$State$OpenChooseContactCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletSendView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/send/WalletSendView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OpenChooseContactCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/send/WalletSendView;",
        ">;"
    }
.end annotation


# instance fields
.field public final args:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/send/WalletSendView$$State;Landroid/os/Bundle;)V
    .locals 1

    .line 610
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string/jumbo v0, "openChooseContact"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 612
    iput-object p2, p0, Lcom/iMe/ui/wallet/send/WalletSendView$$State$OpenChooseContactCommand;->args:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/send/WalletSendView;)V
    .locals 1

    .line 617
    iget-object v0, p0, Lcom/iMe/ui/wallet/send/WalletSendView$$State$OpenChooseContactCommand;->args:Landroid/os/Bundle;

    invoke-interface {p1, v0}, Lcom/iMe/ui/wallet/send/WalletSendView;->openChooseContact(Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 606
    check-cast p1, Lcom/iMe/ui/wallet/send/WalletSendView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/send/WalletSendView$$State$OpenChooseContactCommand;->apply(Lcom/iMe/ui/wallet/send/WalletSendView;)V

    return-void
.end method
