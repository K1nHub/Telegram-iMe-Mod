.class public Lcom/iMe/ui/wallet/home/old/WalletAttachAlertView$$State$OnRecipientSelectedCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletAttachAlertView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/home/old/WalletAttachAlertView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnRecipientSelectedCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/home/old/WalletAttachAlertView;",
        ">;"
    }
.end annotation


# instance fields
.field public final address:Ljava/lang/String;

.field public final contactSelected:Z

.field public final id:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/home/old/WalletAttachAlertView$$State;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 412
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "onRecipientSelected"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 414
    iput-object p2, p0, Lcom/iMe/ui/wallet/home/old/WalletAttachAlertView$$State$OnRecipientSelectedCommand;->id:Ljava/lang/String;

    .line 415
    iput-object p3, p0, Lcom/iMe/ui/wallet/home/old/WalletAttachAlertView$$State$OnRecipientSelectedCommand;->address:Ljava/lang/String;

    .line 416
    iput-boolean p4, p0, Lcom/iMe/ui/wallet/home/old/WalletAttachAlertView$$State$OnRecipientSelectedCommand;->contactSelected:Z

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/home/old/WalletAttachAlertView;)V
    .locals 3

    .line 421
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/old/WalletAttachAlertView$$State$OnRecipientSelectedCommand;->id:Ljava/lang/String;

    iget-object v1, p0, Lcom/iMe/ui/wallet/home/old/WalletAttachAlertView$$State$OnRecipientSelectedCommand;->address:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/iMe/ui/wallet/home/old/WalletAttachAlertView$$State$OnRecipientSelectedCommand;->contactSelected:Z

    invoke-interface {p1, v0, v1, v2}, Lcom/iMe/manager/crypto/recipient/CryptoRecipientView;->onRecipientSelected(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 404
    check-cast p1, Lcom/iMe/ui/wallet/home/old/WalletAttachAlertView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/home/old/WalletAttachAlertView$$State$OnRecipientSelectedCommand;->apply(Lcom/iMe/ui/wallet/home/old/WalletAttachAlertView;)V

    return-void
.end method
