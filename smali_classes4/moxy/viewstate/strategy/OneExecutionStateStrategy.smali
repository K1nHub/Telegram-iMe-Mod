.class public Lmoxy/viewstate/strategy/OneExecutionStateStrategy;
.super Ljava/lang/Object;
.source "OneExecutionStateStrategy.java"

# interfaces
.implements Lmoxy/viewstate/strategy/StateStrategy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterApply(Ljava/util/List;Lmoxy/viewstate/ViewCommand;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<View::",
            "Lmoxy/MvpView;",
            ">(",
            "Ljava/util/List<",
            "Lmoxy/viewstate/ViewCommand<",
            "TView;>;>;",
            "Lmoxy/viewstate/ViewCommand<",
            "TView;>;)V"
        }
    .end annotation

    .line 22
    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public beforeApply(Ljava/util/List;Lmoxy/viewstate/ViewCommand;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<View::",
            "Lmoxy/MvpView;",
            ">(",
            "Ljava/util/List<",
            "Lmoxy/viewstate/ViewCommand<",
            "TView;>;>;",
            "Lmoxy/viewstate/ViewCommand<",
            "TView;>;)V"
        }
    .end annotation

    .line 16
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
