.class public interface abstract Lcom/smedialink/ui/base/mvp/LoadMoreView;
.super Ljava/lang/Object;
.source "LoadMoreView.kt"

# interfaces
.implements Lcom/smedialink/ui/base/mvp/base/BaseView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/smedialink/ui/base/mvp/base/BaseView;"
    }
.end annotation

.annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
.end annotation


# virtual methods
.method public abstract onLoadMoreComplete()V
.end method

.method public abstract onLoadMoreError()V
.end method

.method public abstract onLoadMoreItems(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method public abstract resetLoadMore()V
.end method
