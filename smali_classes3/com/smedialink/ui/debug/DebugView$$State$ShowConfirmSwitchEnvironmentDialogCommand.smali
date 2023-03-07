.class public Lcom/smedialink/ui/debug/DebugView$$State$ShowConfirmSwitchEnvironmentDialogCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "DebugView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/debug/DebugView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowConfirmSwitchEnvironmentDialogCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/smedialink/ui/debug/DebugView;",
        ">;"
    }
.end annotation


# instance fields
.field public final action:Lorg/fork/utils/Callbacks$Callback;

.field public final model:Lcom/smedialink/model/dialog/DialogModel;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/debug/DebugView$$State;Lcom/smedialink/model/dialog/DialogModel;Lorg/fork/utils/Callbacks$Callback;)V
    .locals 1

    .line 100
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "showConfirmSwitchEnvironmentDialog"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 102
    iput-object p2, p0, Lcom/smedialink/ui/debug/DebugView$$State$ShowConfirmSwitchEnvironmentDialogCommand;->model:Lcom/smedialink/model/dialog/DialogModel;

    .line 103
    iput-object p3, p0, Lcom/smedialink/ui/debug/DebugView$$State$ShowConfirmSwitchEnvironmentDialogCommand;->action:Lorg/fork/utils/Callbacks$Callback;

    return-void
.end method


# virtual methods
.method public apply(Lcom/smedialink/ui/debug/DebugView;)V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/smedialink/ui/debug/DebugView$$State$ShowConfirmSwitchEnvironmentDialogCommand;->model:Lcom/smedialink/model/dialog/DialogModel;

    iget-object v1, p0, Lcom/smedialink/ui/debug/DebugView$$State$ShowConfirmSwitchEnvironmentDialogCommand;->action:Lorg/fork/utils/Callbacks$Callback;

    invoke-interface {p1, v0, v1}, Lcom/smedialink/ui/debug/DebugView;->showConfirmSwitchEnvironmentDialog(Lcom/smedialink/model/dialog/DialogModel;Lorg/fork/utils/Callbacks$Callback;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 94
    check-cast p1, Lcom/smedialink/ui/debug/DebugView;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/debug/DebugView$$State$ShowConfirmSwitchEnvironmentDialogCommand;->apply(Lcom/smedialink/ui/debug/DebugView;)V

    return-void
.end method
