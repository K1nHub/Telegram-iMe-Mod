.class public interface abstract Lorg/fork/utils/TabbedViewPagerDelegate;
.super Ljava/lang/Object;
.source "TabbedViewPagerDelegate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/fork/utils/AbstractTabbedViewPage;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract bind(Lorg/fork/utils/AbstractTabbedViewPage;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation
.end method

.method public abstract getPages()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract getScrollableHeaderView()Landroid/view/View;
.end method

.method public abstract getSwipeRefreshLayout()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
.end method

.method public abstract onPageChanged(Lorg/fork/utils/AbstractTabbedViewPage;Lorg/fork/utils/AbstractTabbedViewPage;II)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;II)V"
        }
    .end annotation
.end method
