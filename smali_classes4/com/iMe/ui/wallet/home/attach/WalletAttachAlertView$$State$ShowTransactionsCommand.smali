.class public Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertView$$State$ShowTransactionsCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletAttachAlertView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowTransactionsCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertView;",
        ">;"
    }
.end annotation


# instance fields
.field public final transactions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertView$$State;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;)V"
        }
    .end annotation

    .line 333
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string/jumbo v0, "showTransactions"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 335
    iput-object p2, p0, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertView$$State$ShowTransactionsCommand;->transactions:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertView;)V
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertView$$State$ShowTransactionsCommand;->transactions:Ljava/util/List;

    invoke-interface {p1, v0}, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertView;->showTransactions(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 329
    check-cast p1, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertView$$State$ShowTransactionsCommand;->apply(Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertView;)V

    return-void
.end method
