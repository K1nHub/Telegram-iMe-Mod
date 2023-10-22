.class public Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertView$$State$ShowErrorDialogCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletAttachAlertView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowErrorDialogCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertView;",
        ">;"
    }
.end annotation


# instance fields
.field public final animatedIcon:I

.field public final buttonText:Ljava/lang/String;

.field public final description:Ljava/lang/String;

.field public final recipientId:Ljava/lang/Long;

.field public final title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertView$$State;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 1

    .line 520
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string/jumbo v0, "showErrorDialog"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 522
    iput p2, p0, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertView$$State$ShowErrorDialogCommand;->animatedIcon:I

    .line 523
    iput-object p3, p0, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertView$$State$ShowErrorDialogCommand;->title:Ljava/lang/String;

    .line 524
    iput-object p4, p0, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertView$$State$ShowErrorDialogCommand;->description:Ljava/lang/String;

    .line 525
    iput-object p5, p0, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertView$$State$ShowErrorDialogCommand;->buttonText:Ljava/lang/String;

    .line 526
    iput-object p6, p0, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertView$$State$ShowErrorDialogCommand;->recipientId:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertView;)V
    .locals 6

    .line 531
    iget v1, p0, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertView$$State$ShowErrorDialogCommand;->animatedIcon:I

    iget-object v2, p0, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertView$$State$ShowErrorDialogCommand;->title:Ljava/lang/String;

    iget-object v3, p0, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertView$$State$ShowErrorDialogCommand;->description:Ljava/lang/String;

    iget-object v4, p0, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertView$$State$ShowErrorDialogCommand;->buttonText:Ljava/lang/String;

    iget-object v5, p0, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertView$$State$ShowErrorDialogCommand;->recipientId:Ljava/lang/Long;

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/iMe/manager/crypto/recipient/CryptoRecipientView;->showErrorDialog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 507
    check-cast p1, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertView$$State$ShowErrorDialogCommand;->apply(Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertView;)V

    return-void
.end method
