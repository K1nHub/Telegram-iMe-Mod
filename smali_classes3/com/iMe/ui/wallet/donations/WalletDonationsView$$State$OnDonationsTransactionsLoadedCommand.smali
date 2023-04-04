.class public Lcom/iMe/ui/wallet/donations/WalletDonationsView$$State$OnDonationsTransactionsLoadedCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletDonationsView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/donations/WalletDonationsView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnDonationsTransactionsLoadedCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/donations/WalletDonationsView;",
        ">;"
    }
.end annotation


# instance fields
.field public final transactions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/transaction/TransactionItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/donations/WalletDonationsView$$State;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/transaction/TransactionItem;",
            ">;)V"
        }
    .end annotation

    .line 164
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string v0, "onDonationsTransactionsLoaded"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 166
    iput-object p2, p0, Lcom/iMe/ui/wallet/donations/WalletDonationsView$$State$OnDonationsTransactionsLoadedCommand;->transactions:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/donations/WalletDonationsView;)V
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/iMe/ui/wallet/donations/WalletDonationsView$$State$OnDonationsTransactionsLoadedCommand;->transactions:Ljava/util/List;

    invoke-interface {p1, v0}, Lcom/iMe/ui/wallet/donations/WalletDonationsView;->onDonationsTransactionsLoaded(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 160
    check-cast p1, Lcom/iMe/ui/wallet/donations/WalletDonationsView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/donations/WalletDonationsView$$State$OnDonationsTransactionsLoadedCommand;->apply(Lcom/iMe/ui/wallet/donations/WalletDonationsView;)V

    return-void
.end method
