.class public Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsView$$State$ShowSelectOptionsDialogCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "CryptoBoxConditionsView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowSelectOptionsDialogCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsView;",
        ">;"
    }
.end annotation


# instance fields
.field public final items:[Ljava/lang/String;

.field public final listener:Landroid/content/DialogInterface$OnClickListener;

.field public final title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsView$$State;Ljava/lang/String;[Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    .line 520
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "showSelectOptionsDialog"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 522
    iput-object p2, p0, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsView$$State$ShowSelectOptionsDialogCommand;->title:Ljava/lang/String;

    .line 523
    iput-object p3, p0, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsView$$State$ShowSelectOptionsDialogCommand;->items:[Ljava/lang/String;

    .line 524
    iput-object p4, p0, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsView$$State$ShowSelectOptionsDialogCommand;->listener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsView;)V
    .locals 3

    .line 529
    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsView$$State$ShowSelectOptionsDialogCommand;->title:Ljava/lang/String;

    iget-object v1, p0, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsView$$State$ShowSelectOptionsDialogCommand;->items:[Ljava/lang/String;

    iget-object v2, p0, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsView$$State$ShowSelectOptionsDialogCommand;->listener:Landroid/content/DialogInterface$OnClickListener;

    invoke-interface {p1, v0, v1, v2}, Lcom/iMe/manager/wallet/create/WalletCreateManagerView;->showSelectOptionsDialog(Ljava/lang/String;[Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 511
    check-cast p1, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsView$$State$ShowSelectOptionsDialogCommand;->apply(Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsView;)V

    return-void
.end method
