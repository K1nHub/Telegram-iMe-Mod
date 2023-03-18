.class public Lcom/smedialink/ui/twitter/search/TwitterSearchView$$State$OnLoadMoreCompleteCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "TwitterSearchView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/twitter/search/TwitterSearchView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnLoadMoreCompleteCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/smedialink/ui/twitter/search/TwitterSearchView;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/smedialink/ui/twitter/search/TwitterSearchView$$State;)V
    .locals 1

    .line 478
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string v0, "onLoadMoreComplete"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public apply(Lcom/smedialink/ui/twitter/search/TwitterSearchView;)V
    .locals 0

    .line 483
    invoke-interface {p1}, Lcom/smedialink/ui/base/mvp/LoadMoreView;->onLoadMoreComplete()V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 476
    check-cast p1, Lcom/smedialink/ui/twitter/search/TwitterSearchView;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/twitter/search/TwitterSearchView$$State$OnLoadMoreCompleteCommand;->apply(Lcom/smedialink/ui/twitter/search/TwitterSearchView;)V

    return-void
.end method
