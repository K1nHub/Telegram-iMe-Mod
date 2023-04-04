.class public interface abstract Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryView;
.super Ljava/lang/Object;
.source "WalletBinancePayHistoryView.kt"

# interfaces
.implements Lcom/iMe/ui/base/mvp/base/BaseView;
.implements Lcom/iMe/ui/custom/state/GlobalStateView;
.implements Lcom/iMe/ui/base/mvp/LoadMoreView;
.implements Lcom/iMe/ui/base/mvp/SwipeRefreshView;
.implements Lcom/iMe/manager/crypto/pay/BinancePayProcessView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/iMe/ui/base/mvp/base/BaseView;",
        "Lcom/iMe/ui/custom/state/GlobalStateView;",
        "Lcom/iMe/ui/base/mvp/LoadMoreView<",
        "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
        ">;",
        "Lcom/iMe/ui/base/mvp/SwipeRefreshView;",
        "Lcom/iMe/manager/crypto/pay/BinancePayProcessView;"
    }
.end annotation

.annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
.end annotation


# virtual methods
.method public abstract onLoadedTransactions(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;)V"
        }
    .end annotation
.end method
