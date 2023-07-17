.class public Lcom/iMe/ui/wallet/home/tabs/binancepay/history/WalletBinancePayHistoryView$$State$OnLoadedTransactionsCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletBinancePayHistoryView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/home/tabs/binancepay/history/WalletBinancePayHistoryView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnLoadedTransactionsCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/home/tabs/binancepay/history/WalletBinancePayHistoryView;",
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
.method constructor <init>(Lcom/iMe/ui/wallet/home/tabs/binancepay/history/WalletBinancePayHistoryView$$State;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;)V"
        }
    .end annotation

    .line 327
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string v0, "onLoadedTransactions"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 329
    iput-object p2, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/history/WalletBinancePayHistoryView$$State$OnLoadedTransactionsCommand;->transactions:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/home/tabs/binancepay/history/WalletBinancePayHistoryView;)V
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/history/WalletBinancePayHistoryView$$State$OnLoadedTransactionsCommand;->transactions:Ljava/util/List;

    invoke-interface {p1, v0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/history/WalletBinancePayHistoryView;->onLoadedTransactions(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 323
    check-cast p1, Lcom/iMe/ui/wallet/home/tabs/binancepay/history/WalletBinancePayHistoryView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/home/tabs/binancepay/history/WalletBinancePayHistoryView$$State$OnLoadedTransactionsCommand;->apply(Lcom/iMe/ui/wallet/home/tabs/binancepay/history/WalletBinancePayHistoryView;)V

    return-void
.end method
