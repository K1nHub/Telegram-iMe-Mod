.class public Lcom/iMe/ui/wallet/transaction/WalletTransactionsView$$State$RenderInitialItemsCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletTransactionsView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/transaction/WalletTransactionsView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RenderInitialItemsCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/transaction/WalletTransactionsView;",
        ">;"
    }
.end annotation


# instance fields
.field public final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/transaction/WalletTransactionsView$$State;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;)V"
        }
    .end annotation

    .line 363
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string/jumbo v0, "renderInitialItems"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 365
    iput-object p2, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsView$$State$RenderInitialItemsCommand;->items:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/transaction/WalletTransactionsView;)V
    .locals 1

    .line 370
    iget-object v0, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsView$$State$RenderInitialItemsCommand;->items:Ljava/util/List;

    invoke-interface {p1, v0}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsView;->renderInitialItems(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 359
    check-cast p1, Lcom/iMe/ui/wallet/transaction/WalletTransactionsView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsView$$State$RenderInitialItemsCommand;->apply(Lcom/iMe/ui/wallet/transaction/WalletTransactionsView;)V

    return-void
.end method
