.class public Lcom/iMe/feature/twitter/TwitterView$$State$OnLoadMoreCompleteCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "TwitterView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/feature/twitter/TwitterView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnLoadMoreCompleteCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/feature/twitter/TwitterView;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/iMe/feature/twitter/TwitterView$$State;)V
    .locals 1

    .line 500
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string v0, "onLoadMoreComplete"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/feature/twitter/TwitterView;)V
    .locals 0

    .line 505
    invoke-interface {p1}, Lcom/iMe/ui/base/mvp/LoadMoreView;->onLoadMoreComplete()V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 498
    check-cast p1, Lcom/iMe/feature/twitter/TwitterView;

    invoke-virtual {p0, p1}, Lcom/iMe/feature/twitter/TwitterView$$State$OnLoadMoreCompleteCommand;->apply(Lcom/iMe/feature/twitter/TwitterView;)V

    return-void
.end method
