.class public interface abstract Lcom/smedialink/ui/wallet/common/WalletRootView;
.super Ljava/lang/Object;
.source "WalletRootView.kt"

# interfaces
.implements Lcom/smedialink/ui/base/mvp/base/BaseView;


# annotations
.annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
.end annotation


# virtual methods
.method public abstract onTabSelected(I)V
.end method

.method public abstract setupNavigationTabsEnabled(Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showNotificationItem(Z)V
.end method

.method public abstract showWalletConnectItem(Z)V
.end method
