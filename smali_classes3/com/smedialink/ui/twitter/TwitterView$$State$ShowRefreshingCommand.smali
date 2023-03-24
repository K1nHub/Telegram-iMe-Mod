.class public Lcom/smedialink/ui/twitter/TwitterView$$State$ShowRefreshingCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "TwitterView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/twitter/TwitterView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowRefreshingCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/smedialink/ui/twitter/TwitterView;",
        ">;"
    }
.end annotation


# instance fields
.field public final show:Z


# direct methods
.method constructor <init>(Lcom/smedialink/ui/twitter/TwitterView$$State;Z)V
    .locals 1

    .line 409
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string v0, "showRefreshing"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 411
    iput-boolean p2, p0, Lcom/smedialink/ui/twitter/TwitterView$$State$ShowRefreshingCommand;->show:Z

    return-void
.end method


# virtual methods
.method public apply(Lcom/smedialink/ui/twitter/TwitterView;)V
    .locals 1

    .line 416
    iget-boolean v0, p0, Lcom/smedialink/ui/twitter/TwitterView$$State$ShowRefreshingCommand;->show:Z

    invoke-interface {p1, v0}, Lcom/smedialink/ui/base/mvp/SwipeRefreshView;->showRefreshing(Z)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 405
    check-cast p1, Lcom/smedialink/ui/twitter/TwitterView;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/twitter/TwitterView$$State$ShowRefreshingCommand;->apply(Lcom/smedialink/ui/twitter/TwitterView;)V

    return-void
.end method
