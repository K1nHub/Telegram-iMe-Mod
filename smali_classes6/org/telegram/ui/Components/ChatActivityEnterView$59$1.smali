.class Lorg/telegram/ui/Components/ChatActivityEnterView$59$1;
.super Lorg/telegram/ui/Components/ReportAlert;
.source "ChatActivityEnterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView$59;->lambda$showKiklikoReportAlert$1([Ljava/lang/CharSequence;Lorg/fork/utils/Callbacks$Callback1;Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$59;

.field final synthetic val$reasonCallback:Lorg/fork/utils/Callbacks$Callback1;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView$59;Landroid/content/Context;ILorg/fork/utils/Callbacks$Callback1;)V
    .locals 0

    .line 8933
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$59$1;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$59;

    iput-object p4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$59$1;->val$reasonCallback:Lorg/fork/utils/Callbacks$Callback1;

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/Components/ReportAlert;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public dismissInternal()V
    .locals 1

    .line 8937
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismissInternal()V

    .line 8938
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$59$1;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$59;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$59;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8939
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$59$1;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$59;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$59;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->checkAdjustResize()V

    :cond_0
    return-void
.end method

.method protected onSend(ILjava/lang/String;)V
    .locals 3

    .line 8945
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$59$1;->val$reasonCallback:Lorg/fork/utils/Callbacks$Callback1;

    invoke-interface {p1, p2}, Lorg/fork/utils/Callbacks$Callback1;->invoke(Ljava/lang/Object;)V

    .line 8946
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$59$1;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$59;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatActivityEnterView$59;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->getUndoView()Lorg/telegram/ui/Components/UndoView;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-wide/16 v0, 0x0

    const/16 v2, 0x4a

    invoke-virtual {p1, v0, v1, v2, p2}, Lorg/telegram/ui/Components/UndoView;->showWithAction(JILjava/lang/Object;)V

    return-void
.end method
