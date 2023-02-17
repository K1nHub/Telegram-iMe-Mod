.class Lorg/telegram/ui/PhotoViewer$58;
.super Ljava/lang/Object;
.source "PhotoViewer.java"

# interfaces
.implements Lorg/telegram/ui/Components/PhotoCropView$PhotoCropViewDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer;->createCropView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PhotoViewer;


# direct methods
.method public static synthetic $r8$lambda$ZJ_P9eRCMXpyOef5hKVfsssXXzA(Lorg/telegram/ui/PhotoViewer$58;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer$58;->lambda$onVideoThumbClick$0()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/PhotoViewer;)V
    .locals 0

    .line 9895
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$58;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onVideoThumbClick$0()V
    .locals 2

    .line 9924
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$58;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoViewer;->access$2502(Lorg/telegram/ui/PhotoViewer;Z)Z

    .line 9925
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$58;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$1500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9926
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$58;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$1500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->play()V

    .line 9928
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$58;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoViewer;->access$21002(Lorg/telegram/ui/PhotoViewer;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public getVideoThumbX()I
    .locals 3

    const/16 v0, 0x10

    .line 9944
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$58;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$1800(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoTimelinePlayView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    const/16 v2, 0x20

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$58;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$19100(Lorg/telegram/ui/PhotoViewer;)F

    move-result v2

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public mirror()Z
    .locals 1

    .line 9939
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$58;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$25100(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v0

    return v0
.end method

.method public onChange(Z)V
    .locals 1

    .line 9898
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$58;->this$0:Lorg/telegram/ui/PhotoViewer;

    xor-int/lit8 p1, p1, 0x1

    invoke-static {v0, p1}, Lorg/telegram/ui/PhotoViewer;->access$24800(Lorg/telegram/ui/PhotoViewer;Z)V

    return-void
.end method

.method public onTapUp()V
    .locals 2

    .line 9908
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$58;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$2800(Lorg/telegram/ui/PhotoViewer;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 9909
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$58;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoViewer;->access$2502(Lorg/telegram/ui/PhotoViewer;Z)Z

    .line 9910
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$58;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$24900(Lorg/telegram/ui/PhotoViewer;)V

    :cond_0
    return-void
.end method

.method public onUpdate()V
    .locals 1

    .line 9903
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$58;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$1300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public onVideoThumbClick()V
    .locals 3

    .line 9916
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$58;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$1500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 9919
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$58;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$1500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$58;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$1500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/VideoPlayer;->getDuration()J

    move-result-wide v1

    long-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$58;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$19100(Lorg/telegram/ui/PhotoViewer;)F

    move-result v2

    mul-float v1, v1, v2

    float-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(J)V

    .line 9920
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$58;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$1500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->pause()V

    .line 9921
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$58;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$1800(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoTimelinePlayView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$58;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$19100(Lorg/telegram/ui/PhotoViewer;)F

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->setProgress(F)V

    .line 9922
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$58;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$2600(Lorg/telegram/ui/PhotoViewer;)V

    .line 9923
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$58;->this$0:Lorg/telegram/ui/PhotoViewer;

    new-instance v1, Lorg/telegram/ui/PhotoViewer$58$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PhotoViewer$58$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/PhotoViewer$58;)V

    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoViewer;->access$21002(Lorg/telegram/ui/PhotoViewer;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0x35c

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public rotate()Z
    .locals 2

    .line 9934
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$58;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/high16 v1, -0x3d4c0000    # -90.0f

    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoViewer;->access$25000(Lorg/telegram/ui/PhotoViewer;F)Z

    move-result v0

    return v0
.end method
