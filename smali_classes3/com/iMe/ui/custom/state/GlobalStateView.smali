.class public interface abstract Lcom/iMe/ui/custom/state/GlobalStateView;
.super Ljava/lang/Object;
.source "GlobalStateView.kt"

# interfaces
.implements Lmoxy/MvpView;


# annotations
.annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
.end annotation


# virtual methods
.method public abstract onEmptyState()V
.end method

.method public abstract onLoadingState()V
.end method

.method public abstract onNoInternetErrorState()V
.end method

.method public abstract onUnexpectedErrorState()V
.end method
