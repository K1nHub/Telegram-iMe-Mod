.class Lorg/telegram/ui/ChatActivity$46;
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

    .line 9242
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$46;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onQuote(Ljava/lang/String;)V
    .locals 6

    .line 9246
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$46;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 9247
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$46;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$4000(Lorg/telegram/ui/ChatActivity;)[Landroid/util/SparseArray;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 9248
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$46;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$4000(Lorg/telegram/ui/ChatActivity;)[Landroid/util/SparseArray;

    move-result-object v3

    aget-object v3, v3, v1

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$46;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$4000(Lorg/telegram/ui/ChatActivity;)[Landroid/util/SparseArray;

    move-result-object v4

    aget-object v4, v4, v1

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    .line 9249
    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$46;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$3100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/telegram/ui/Cells/TextSelectionHelper;->isSelected(Lorg/telegram/messenger/MessageObject;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_2

    .line 9252
    :cond_0
    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$46;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$28600(Lorg/telegram/ui/ChatActivity;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    const-string v3, "\n\n"

    .line 9253
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 9255
    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$46;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v4, v3}, Lorg/telegram/ui/ChatActivity;->showFieldPanelForReply(Lorg/telegram/messenger/MessageObject;)V

    .line 9256
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$46;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3, v5}, Lorg/telegram/ui/ChatActivity;->access$28602(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 9259
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "| "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    .line 9260
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 9261
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v3

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/Components/EditTextCaption;->setSelectionOverride(II)V

    .line 9262
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextCaption;->makeSelectedBold()V

    add-int/2addr v3, v5

    .line 9264
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v3

    add-int/2addr v4, v5

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/Components/EditTextCaption;->setSelectionOverride(II)V

    .line 9265
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextCaption;->makeSelectedItalic()V

    .line 9266
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$46;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$28700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$46;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$28800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 9267
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$46;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ChatActivity;->clearSelectionMode()V

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method public onStateChanged(Z)V
    .locals 2

    .line 9274
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$46;->this$0:Lorg/telegram/ui/ChatActivity;

    xor-int/lit8 v1, p1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$28902(Lorg/telegram/ui/ChatActivity;Z)Z

    if-eqz p1, :cond_1

    .line 9276
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$46;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$16400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 9277
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$46;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$16400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->setSlidingOffset(F)V

    .line 9278
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$46;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/ChatActivity;->access$16402(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 9280
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$46;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/ChatActivity;->access$16602(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 9281
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$46;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1, v0}, Lorg/telegram/ui/ChatActivity;->access$16502(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 9282
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$46;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$29000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/TextSelectionHint;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 9283
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$46;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$29000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/TextSelectionHint;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/TextSelectionHint;->hide()V

    .line 9286
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$46;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/telegram/ui/ChatActivity;->access$10300(Lorg/telegram/ui/ChatActivity;Z)V

    return-void
.end method

.method public onTextCopied()V
    .locals 5

    .line 9291
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$46;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$29100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$46;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$29200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9292
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$46;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->clearSelectionMode()V

    .line 9294
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$46;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$13600(Lorg/telegram/ui/ChatActivity;)V

    .line 9295
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$46;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$13700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/UndoView;

    move-result-object v0

    const-wide/16 v1, 0x0

    const/16 v3, 0x3a

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/ui/Components/UndoView;->showWithAction(JILjava/lang/Runnable;)V

    return-void
.end method
