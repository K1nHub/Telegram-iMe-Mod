.class public Lorg/telegram/ui/Stories/StoriesVolumeContorl;
.super Landroid/view/View;
.source "StoriesVolumeContorl.java"


# instance fields
.field currentProgress:F

.field hideRunnuble:Ljava/lang/Runnable;

.field isVisible:Z

.field paint:Landroid/graphics/Paint;

.field progressToVisible:Lorg/telegram/ui/Components/AnimatedFloat;

.field volumeProgress:Lorg/telegram/ui/Components/AnimatedFloat;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 19
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 16
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/StoriesVolumeContorl;->paint:Landroid/graphics/Paint;

    .line 23
    new-instance p1, Lorg/telegram/ui/Stories/StoriesVolumeContorl$1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/StoriesVolumeContorl$1;-><init>(Lorg/telegram/ui/Stories/StoriesVolumeContorl;)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/StoriesVolumeContorl;->hideRunnuble:Ljava/lang/Runnable;

    .line 30
    new-instance p1, Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/StoriesVolumeContorl;->progressToVisible:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 31
    new-instance p1, Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/StoriesVolumeContorl;->volumeProgress:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 20
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesVolumeContorl;->paint:Landroid/graphics/Paint;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private adjustVolume(Z)V
    .locals 6

    .line 49
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x3

    .line 50
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    .line 51
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz p1, :cond_0

    add-int/2addr v3, v5

    if-le v3, v2, :cond_1

    move v3, v2

    goto :goto_0

    :cond_0
    add-int/lit8 v3, v3, -0x1

    if-gez v3, :cond_1

    move v3, v4

    .line 66
    :cond_1
    :goto_0
    invoke-virtual {v0, v1, v3, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    int-to-float p1, v3

    int-to-float v0, v2

    div-float/2addr p1, v0

    .line 67
    iput p1, p0, Lorg/telegram/ui/Stories/StoriesVolumeContorl;->currentProgress:F

    .line 68
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesVolumeContorl;->isVisible:Z

    if-nez v0, :cond_2

    .line 69
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesVolumeContorl;->volumeProgress:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v0, p1, v5}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    .line 71
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 72
    iput-boolean v5, p0, Lorg/telegram/ui/Stories/StoriesVolumeContorl;->isVisible:Z

    .line 73
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesVolumeContorl;->hideRunnuble:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 74
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesVolumeContorl;->hideRunnuble:Ljava/lang/Runnable;

    const-wide/16 v0, 0x7d0

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method


# virtual methods
.method public hide()V
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesVolumeContorl;->hideRunnuble:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 92
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesVolumeContorl;->hideRunnuble:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 79
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 80
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesVolumeContorl;->volumeProgress:Lorg/telegram/ui/Components/AnimatedFloat;

    iget v1, p0, Lorg/telegram/ui/Stories/StoriesVolumeContorl;->currentProgress:F

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    .line 81
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesVolumeContorl;->progressToVisible:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v1, p0, Lorg/telegram/ui/Stories/StoriesVolumeContorl;->isVisible:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    .line 82
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesVolumeContorl;->progressToVisible:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1

    .line 83
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 84
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesVolumeContorl;->paint:Landroid/graphics/Paint;

    const/high16 v3, 0x437f0000    # 255.0f

    iget-object v4, p0, Lorg/telegram/ui/Stories/StoriesVolumeContorl;->progressToVisible:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v4

    mul-float/2addr v4, v3

    float-to-int v3, v4

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 85
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lorg/telegram/ui/Stories/StoriesVolumeContorl;->volumeProgress:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v4

    mul-float/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v2, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 86
    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesVolumeContorl;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x18

    if-ne p1, v1, :cond_0

    .line 38
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/StoriesVolumeContorl;->adjustVolume(Z)V

    return v0

    :cond_0
    const/16 v1, 0x19

    if-ne p1, v1, :cond_1

    const/4 p1, 0x0

    .line 41
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoriesVolumeContorl;->adjustVolume(Z)V

    return v0

    .line 45
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
