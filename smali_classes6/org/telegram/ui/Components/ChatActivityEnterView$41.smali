.class Lorg/telegram/ui/Components/ChatActivityEnterView$41;
.super Ljava/lang/Object;
.source "ChatActivityEnterView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView;->createMessageEditText()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field ctrlPressed:Z

.field final synthetic this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V
    .locals 0

    .line 5363
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$41;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 5365
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$41;->ctrlPressed:Z

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 p1, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p2, v1, :cond_8

    .line 5369
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$41;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$41;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isPopupShowing()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_8

    .line 5370
    invoke-static {}, Lorg/telegram/ui/ContentPreviewViewer;->hasInstance()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {}, Lorg/telegram/ui/ContentPreviewViewer;->getInstance()Lorg/telegram/ui/ContentPreviewViewer;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/ContentPreviewViewer;->isVisible()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 5371
    invoke-static {}, Lorg/telegram/ui/ContentPreviewViewer;->getInstance()Lorg/telegram/ui/ContentPreviewViewer;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ContentPreviewViewer;->closeWithMenu()V

    return v0

    .line 5374
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$41;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$13400(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result p2

    if-ne p2, v0, :cond_1

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$41;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$13500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;

    move-result-object p2

    if-eqz p2, :cond_1

    return p1

    .line 5377
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    if-ne p2, v0, :cond_7

    .line 5378
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$41;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$13400(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result p2

    if-ne p2, v0, :cond_2

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$41;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$13500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 5379
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$41;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2800(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result p2

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getMainSettings(I)Landroid/content/SharedPreferences;

    move-result-object p2

    .line 5380
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hidekeyboard_"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$41;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2900(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v1

    invoke-virtual {p3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$41;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$13500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    invoke-interface {p2, p3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 5382
    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$41;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1600(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result p2

    if-eqz p2, :cond_4

    .line 5383
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$41;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p2, p1, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1700(Lorg/telegram/ui/Components/ChatActivityEnterView;IZ)V

    .line 5384
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$41;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/EmojiView;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 5385
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$41;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/EmojiView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/EmojiView;->closeSearch(Z)V

    .line 5387
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$41;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 5389
    :cond_4
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$41;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 5390
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$41;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p2, p1, v0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setStickersExpanded(ZZZ)V

    goto :goto_0

    .line 5392
    :cond_5
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$41;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$12100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/animation/Animator;

    move-result-object p2

    if-nez p2, :cond_7

    .line 5393
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$41;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$13500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;

    move-result-object p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$41;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$13400(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result p2

    if-eq p2, v0, :cond_6

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$41;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object p2, p2, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 5394
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$41;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1, v0, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$12400(Lorg/telegram/ui/Components/ChatActivityEnterView;II)V

    goto :goto_0

    .line 5396
    :cond_6
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$41;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p2, p1, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$12400(Lorg/telegram/ui/Components/ChatActivityEnterView;II)V

    :cond_7
    :goto_0
    return v0

    :cond_8
    const/16 v1, 0x42

    if-ne p2, v1, :cond_a

    .line 5403
    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$41;->ctrlPressed:Z

    if-nez v1, :cond_9

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$41;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$13600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$41;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$13200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    if-nez v1, :cond_a

    .line 5404
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$41;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$13700(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    return v0

    :cond_a
    const/16 v1, 0x71

    if-eq p2, v1, :cond_c

    const/16 v1, 0x72

    if-ne p2, v1, :cond_b

    goto :goto_1

    :cond_b
    return p1

    .line 5407
    :cond_c
    :goto_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    if-nez p2, :cond_d

    move p1, v0

    :cond_d
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$41;->ctrlPressed:Z

    return v0
.end method
