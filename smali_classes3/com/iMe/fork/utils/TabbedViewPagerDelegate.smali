.class public interface abstract Lcom/iMe/fork/utils/TabbedViewPagerDelegate;
.super Ljava/lang/Object;
.source "TabbedViewPagerDelegate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/iMe/fork/utils/AbstractTabbedViewPage;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract bind(Lcom/iMe/fork/utils/AbstractTabbedViewPage;I)V
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

.method public abstract onPageChanged(Lcom/iMe/fork/utils/AbstractTabbedViewPage;Lcom/iMe/fork/utils/AbstractTabbedViewPage;II)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;II)V"
        }
    .end annotation
.end method
