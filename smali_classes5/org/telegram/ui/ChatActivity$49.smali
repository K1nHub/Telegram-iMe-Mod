.class Lorg/telegram/ui/ChatActivity$49;
.super Lorg/telegram/ui/Cells/TextSelectionHelper$Callback;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;)V
    .locals 0

    .line 9346
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$49;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Z)V
    .locals 2

    .line 9349
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$49;->this$0:Lorg/telegram/ui/ChatActivity;

    xor-int/lit8 v1, p1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$27002(Lorg/telegram/ui/ChatActivity;Z)Z

    if-eqz p1, :cond_1

    .line 9351
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$49;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$15700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 9352
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$49;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$15700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->setSlidingOffset(F)V

    .line 9353
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$49;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/ChatActivity;->access$15702(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 9355
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$49;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/ChatActivity;->access$15902(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 9356
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$49;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1, v0}, Lorg/telegram/ui/ChatActivity;->access$15802(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 9357
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$49;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$27100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/TextSelectionHint;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 9358
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$49;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$27100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/TextSelectionHint;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/TextSelectionHint;->hide()V

    .line 9361
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$49;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/telegram/ui/ChatActivity;->access$9600(Lorg/telegram/ui/ChatActivity;Z)V

    return-void
.end method

.method public onTextCopied()V
    .locals 5

    .line 9366
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$49;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$27200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$49;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$27300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9367
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$49;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->clearSelectionMode()V

    .line 9369
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$49;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$12500(Lorg/telegram/ui/ChatActivity;)V

    .line 9371
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$49;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$12600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/UndoView;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 9375
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$49;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$12600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/UndoView;

    move-result-object v0

    const-wide/16 v1, 0x0

    const/16 v3, 0x3a

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/ui/Components/UndoView;->showWithAction(JILjava/lang/Runnable;)V

    return-void
.end method
