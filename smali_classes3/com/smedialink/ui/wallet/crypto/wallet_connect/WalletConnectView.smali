.class public interface abstract Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectView;
.super Ljava/lang/Object;
.source "WalletConnectView.kt"

# interfaces
.implements Lcom/smedialink/ui/base/mvp/base/BaseView;
.implements Lcom/smedialink/ui/base/mvp/SwitchNetworkView;


# annotations
.annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
.end annotation


# virtual methods
.method public abstract setupSessionsItems(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/smedialink/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showChangeNetworkHint()V
    .annotation runtime Lmoxy/viewstate/strategy/alias/OneExecution;
    .end annotation
.end method
