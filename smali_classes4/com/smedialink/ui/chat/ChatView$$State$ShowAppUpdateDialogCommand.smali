.class public Lcom/smedialink/ui/chat/ChatView$$State$ShowAppUpdateDialogCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "ChatView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/chat/ChatView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowAppUpdateDialogCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/smedialink/ui/chat/ChatView;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/smedialink/ui/chat/ChatView$$State;)V
    .locals 1

    .line 407
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "showAppUpdateDialog"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public apply(Lcom/smedialink/ui/chat/ChatView;)V
    .locals 0

    .line 412
    invoke-interface {p1}, Lcom/smedialink/ui/base/mvp/AppUpdateRequiredView;->showAppUpdateDialog()V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 405
    check-cast p1, Lcom/smedialink/ui/chat/ChatView;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/chat/ChatView$$State$ShowAppUpdateDialogCommand;->apply(Lcom/smedialink/ui/chat/ChatView;)V

    return-void
.end method
