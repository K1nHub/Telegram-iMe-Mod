.class public Lcom/iMe/ui/twitter/TwitterView$$State$OnLoadMoreErrorCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "TwitterView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/twitter/TwitterView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnLoadMoreErrorCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/twitter/TwitterView;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/iMe/ui/twitter/TwitterView$$State;)V
    .locals 1

    .line 421
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string v0, "onLoadMoreError"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/twitter/TwitterView;)V
    .locals 0

    .line 426
    invoke-interface {p1}, Lcom/iMe/ui/base/mvp/LoadMoreView;->onLoadMoreError()V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 419
    check-cast p1, Lcom/iMe/ui/twitter/TwitterView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/twitter/TwitterView$$State$OnLoadMoreErrorCommand;->apply(Lcom/iMe/ui/twitter/TwitterView;)V

    return-void
.end method
