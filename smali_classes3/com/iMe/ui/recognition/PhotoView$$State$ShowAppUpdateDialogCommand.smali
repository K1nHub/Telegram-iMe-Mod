.class public Lcom/iMe/ui/recognition/PhotoView$$State$ShowAppUpdateDialogCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "PhotoView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/recognition/PhotoView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowAppUpdateDialogCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/recognition/PhotoView;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/iMe/ui/recognition/PhotoView$$State;)V
    .locals 1

    .line 262
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "showAppUpdateDialog"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/recognition/PhotoView;)V
    .locals 0

    .line 267
    invoke-interface {p1}, Lcom/iMe/ui/base/mvp/AppUpdateRequiredView;->showAppUpdateDialog()V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 260
    check-cast p1, Lcom/iMe/ui/recognition/PhotoView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/recognition/PhotoView$$State$ShowAppUpdateDialogCommand;->apply(Lcom/iMe/ui/recognition/PhotoView;)V

    return-void
.end method
