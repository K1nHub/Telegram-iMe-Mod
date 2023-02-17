.class public interface abstract Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenView;
.super Ljava/lang/Object;
.source "WalletSelectTokenView.kt"

# interfaces
.implements Lcom/smedialink/ui/base/mvp/base/BaseView;
.implements Lcom/smedialink/ui/custom/state/GlobalStateView;


# annotations
.annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
.end annotation


# virtual methods
.method public abstract onTokensLoaded(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/smedialink/model/wallet/select/SelectableTokenItem;",
            ">;)V"
        }
    .end annotation
.end method
