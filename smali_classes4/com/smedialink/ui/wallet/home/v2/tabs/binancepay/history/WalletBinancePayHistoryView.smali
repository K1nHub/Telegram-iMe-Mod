.class public interface abstract Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryView;
.super Ljava/lang/Object;
.source "WalletBinancePayHistoryView.kt"

# interfaces
.implements Lcom/smedialink/ui/base/mvp/base/BaseView;
.implements Lcom/smedialink/ui/custom/state/GlobalStateView;
.implements Lcom/smedialink/ui/base/mvp/LoadMoreView;
.implements Lcom/smedialink/ui/base/mvp/SwipeRefreshView;
.implements Lcom/smedialink/manager/crypto/pay/BinancePayProcessView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/smedialink/ui/base/mvp/base/BaseView;",
        "Lcom/smedialink/ui/custom/state/GlobalStateView;",
        "Lcom/smedialink/ui/base/mvp/LoadMoreView<",
        "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
        ">;",
        "Lcom/smedialink/ui/base/mvp/SwipeRefreshView;",
        "Lcom/smedialink/manager/crypto/pay/BinancePayProcessView;"
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
