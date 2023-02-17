.class Lorg/telegram/ui/Components/ChatActivityEnterView$29;
.super Ljava/lang/Object;
.source "ChatActivityEnterView.java"

# interfaces
.implements Lorg/telegram/ui/Components/VideoTimelineView$VideoTimelineViewDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView;-><init>(Landroid/app/Activity;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ChatActivity;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V
    .locals 0

    .line 3529
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$29;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didStartDragging()V
    .locals 3

    .line 3550
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$29;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->needChangeVideoPreviewState(IF)V

    return-void
.end method

.method public didStopDragging()V
    .locals 3

    .line 3555
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$29;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->needChangeVideoPreviewState(IF)V

    return-void
.end method

.method public onLeftProgressChanged(F)V
    .locals 3

    .line 3532
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$29;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$10600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3535
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$29;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$10600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$29;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$10600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v1

    iget-wide v1, v1, Lorg/telegram/messenger/VideoEditedInfo;->estimatedDuration:J

    long-to-float v1, v1

    mul-float v1, v1, p1

    float-to-long v1, v1

    iput-wide v1, v0, Lorg/telegram/messenger/VideoEditedInfo;->startTime:J

    .line 3536
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$29;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->needChangeVideoPreviewState(IF)V

    return-void
.end method

.method public onRightProgressChanged(F)V
    .locals 3

    .line 3541
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$29;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$10600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3544
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$29;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$10600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$29;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$10600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object v1

    iget-wide v1, v1, Lorg/telegram/messenger/VideoEditedInfo;->estimatedDuration:J

    long-to-float v1, v1

    mul-float v1, v1, p1

    float-to-long v1, v1

    iput-wide v1, v0, Lorg/telegram/messenger/VideoEditedInfo;->endTime:J

    .line 3545
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$29;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->needChangeVideoPreviewState(IF)V

    return-void
.end method
