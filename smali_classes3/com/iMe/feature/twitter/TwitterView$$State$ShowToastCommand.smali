.class public Lcom/iMe/feature/twitter/TwitterView$$State$ShowToastCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "TwitterView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/feature/twitter/TwitterView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowToastCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/feature/twitter/TwitterView;",
        ">;"
    }
.end annotation


# instance fields
.field public final text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/iMe/feature/twitter/TwitterView$$State;Ljava/lang/String;)V
    .locals 1

    .line 386
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "showToast"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 388
    iput-object p2, p0, Lcom/iMe/feature/twitter/TwitterView$$State$ShowToastCommand;->text:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/feature/twitter/TwitterView;)V
    .locals 1

    .line 393
    iget-object v0, p0, Lcom/iMe/feature/twitter/TwitterView$$State$ShowToastCommand;->text:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/iMe/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 382
    check-cast p1, Lcom/iMe/feature/twitter/TwitterView;

    invoke-virtual {p0, p1}, Lcom/iMe/feature/twitter/TwitterView$$State$ShowToastCommand;->apply(Lcom/iMe/feature/twitter/TwitterView;)V

    return-void
.end method
