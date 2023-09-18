.class public interface abstract Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenView;
.super Ljava/lang/Object;
.source "WalletSelectTokenView.kt"

# interfaces
.implements Lcom/iMe/ui/base/mvp/base/BaseView;
.implements Lcom/iMe/ui/custom/state/GlobalStateView;
.implements Lcom/iMe/ui/base/mvp/LoadMoreView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/iMe/ui/base/mvp/base/BaseView;",
        "Lcom/iMe/ui/custom/state/GlobalStateView;",
        "Lcom/iMe/ui/base/mvp/LoadMoreView<",
        "Lcom/iMe/model/wallet/select/SelectableTokenItem;",
        ">;"
    }
.end annotation

.annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
.end annotation


# virtual methods
.method public abstract onTokenSelected(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/wallet/token/FiatValue;)V
    .annotation runtime Lmoxy/viewstate/strategy/alias/OneExecution;
    .end annotation
.end method

.method public abstract renderItems(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/select/SelectableTokenItem;",
            ">;)V"
        }
    .end annotation
.end method
