.class Lorg/telegram/ui/Cells/ChatMessageCell$6;
.super Lorg/telegram/messenger/video/VideoPlayerRewinder;
.source "ChatMessageCell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Cells/ChatMessageCell;->onLongPress()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Cells/ChatMessageCell;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 0

    .line 8319
    iput-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$6;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-direct {p0}, Lorg/telegram/messenger/video/VideoPlayerRewinder;-><init>()V

    return-void
.end method


# virtual methods
.method protected onRewindCanceled()V
    .locals 9

    .line 8322
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$6;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 8323
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$6;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v0, v0, Lorg/telegram/ui/Cells/ChatMessageCell;->videoForwardDrawable:Lorg/telegram/ui/Components/VideoForwardDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoForwardDrawable;->setShowing(Z)V

    return-void
.end method

.method protected onRewindStart(Z)V
    .locals 2

    .line 8337
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$6;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v0, v0, Lorg/telegram/ui/Cells/ChatMessageCell;->videoForwardDrawable:Lorg/telegram/ui/Components/VideoForwardDrawable;

    new-instance v1, Lorg/telegram/ui/Cells/ChatMessageCell$6$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Cells/ChatMessageCell$6$1;-><init>(Lorg/telegram/ui/Cells/ChatMessageCell$6;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoForwardDrawable;->setDelegate(Lorg/telegram/ui/Components/VideoForwardDrawable$VideoForwardDrawableDelegate;)V

    .line 8348
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$6;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v0, v0, Lorg/telegram/ui/Cells/ChatMessageCell;->videoForwardDrawable:Lorg/telegram/ui/Components/VideoForwardDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoForwardDrawable;->setOneShootAnimation(Z)V

    .line 8349
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$6;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v0, v0, Lorg/telegram/ui/Cells/ChatMessageCell;->videoForwardDrawable:Lorg/telegram/ui/Components/VideoForwardDrawable;

    const/4 v1, 0x1

    xor-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/VideoForwardDrawable;->setLeftSide(Z)V

    .line 8350
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$6;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object p1, p1, Lorg/telegram/ui/Cells/ChatMessageCell;->videoForwardDrawable:Lorg/telegram/ui/Components/VideoForwardDrawable;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/VideoForwardDrawable;->setShowing(Z)V

    .line 8351
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$6;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->invalidate()V

    return-void
.end method

.method protected updateRewindProgressUi(JFZ)V
    .locals 1

    .line 8328
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$6;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v0, v0, Lorg/telegram/ui/Cells/ChatMessageCell;->videoForwardDrawable:Lorg/telegram/ui/Components/VideoForwardDrawable;

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/VideoForwardDrawable;->setTime(J)V

    if-eqz p4, :cond_0

    .line 8330
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$6;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->access$800(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    iput p3, p1, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    .line 8331
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$6;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->updatePlayingMessageProgress()V

    :cond_0
    return-void
.end method
