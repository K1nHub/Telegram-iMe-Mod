.class public Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;
.super Landroid/widget/FrameLayout;
.source "SharedPhotoVideoCell2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;
    }
.end annotation


# static fields
.field static lastAutoDownload:Z

.field static lastUpdateDownloadSettingsTime:J


# instance fields
.field animator:Landroid/animation/ValueAnimator;

.field private attached:Z

.field public blurImageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field private final bounds:Landroid/graphics/RectF;

.field canvasButton:Lorg/telegram/ui/Components/CanvasButton;

.field checkBoxBase:Lorg/telegram/ui/Components/CheckBoxBase;

.field checkBoxProgress:F

.field crossfadeProgress:F

.field crossfadeToColumnsCount:F

.field crossfadeView:Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

.field currentAccount:I

.field currentMessageObject:Lorg/telegram/messenger/MessageObject;

.field currentParentColumnsCount:I

.field drawVideoIcon:Z

.field globalGradientView:Lorg/telegram/ui/Components/FlickerLoadingView;

.field private gradientDrawable:Landroid/graphics/drawable/Drawable;

.field private gradientDrawableLoading:Z

.field highlightProgress:F

.field imageAlpha:F

.field public imageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field imageScale:F

.field public isFirst:Z

.field public isLast:Z

.field public isStory:Z

.field private mediaSpoilerEffect:Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

.field private mediaSpoilerEffect2:Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;

.field private path:Landroid/graphics/Path;

.field sharedResources:Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;

.field showVideoLayout:Z

.field private spoilerMaxRadius:F

.field private spoilerRevealProgress:F

.field private spoilerRevealX:F

.field private spoilerRevealY:F

.field public storyId:I

.field private style:I

.field videoInfoLayot:Landroid/text/StaticLayout;

.field videoText:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$AVG2OTE5oAJsAL-bnKwheiVBKPE(Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;Lorg/telegram/messenger/ImageReceiver;ZZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->lambda$new$0(Lorg/telegram/messenger/ImageReceiver;ZZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$K57s2xEmhslp2YOQbhU0uHUIrIg(Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->lambda$setStyle$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$eKoRFv0xQPMdPZ4-6vpsYaMI5-w(Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;[I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->lambda$onDraw$2([I)V

    return-void
.end method

.method public static synthetic $r8$lambda$skWoODMtMd_SstGy8mJbaH_0pO4(Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->lambda$startRevealMedia$3(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;I)V
    .locals 1

    .line 106
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 61
    new-instance p1, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {p1}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 62
    new-instance p1, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {p1}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->blurImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 69
    iput p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageAlpha:F

    .line 70
    iput p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageScale:F

    const/4 p1, 0x1

    .line 73
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->drawVideoIcon:Z

    .line 91
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->path:Landroid/graphics/Path;

    .line 92
    new-instance p1, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    invoke-direct {p1}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->mediaSpoilerEffect:Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    const/4 p1, 0x0

    .line 101
    iput p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->style:I

    .line 312
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->bounds:Landroid/graphics/RectF;

    .line 107
    iput-object p2, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->sharedResources:Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;

    .line 108
    iput p3, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->currentAccount:I

    .line 110
    invoke-virtual {p0, p1, p1}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->setChecked(ZZ)V

    .line 111
    iget-object p2, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p2, p0}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    .line 112
    iget-object p2, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->blurImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p2, p0}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    .line 114
    iget-object p2, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    new-instance p3, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$$ExternalSyntheticLambda2;

    invoke-direct {p3, p0}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;)V

    invoke-virtual {p2, p3}, Lorg/telegram/messenger/ImageReceiver;->setDelegate(Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;)V

    .line 123
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    return-void
.end method

.method private canAutoDownload(Lorg/telegram/messenger/MessageObject;)Z
    .locals 4

    .line 284
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->lastUpdateDownloadSettingsTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 285
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->lastUpdateDownloadSettingsTime:J

    .line 286
    iget v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/DownloadController;->canDownloadMedia(Lorg/telegram/messenger/MessageObject;)Z

    move-result p1

    sput-boolean p1, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->lastAutoDownload:Z

    .line 288
    :cond_0
    sget-boolean p1, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->lastAutoDownload:Z

    return p1
.end method

.method private getPadding()F
    .locals 6

    .line 301
    iget v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->crossfadeProgress:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/16 v1, 0x9

    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->crossfadeToColumnsCount:F

    const/high16 v4, 0x41100000    # 9.0f

    cmpl-float v5, v0, v4

    if-eqz v5, :cond_0

    iget v5, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->currentParentColumnsCount:I

    if-ne v5, v1, :cond_2

    :cond_0
    cmpl-float v0, v0, v4

    if-nez v0, :cond_1

    .line 303
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->crossfadeProgress:F

    mul-float/2addr v0, v1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    iget v2, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->crossfadeProgress:F

    :goto_0
    sub-float/2addr v3, v2

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    return v0

    .line 305
    :cond_1
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->crossfadeProgress:F

    mul-float/2addr v0, v1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    iget v2, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->crossfadeProgress:F

    goto :goto_0

    .line 308
    :cond_2
    iget v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->currentParentColumnsCount:I

    if-ne v0, v1, :cond_3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    goto :goto_1

    :cond_3
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    :goto_1
    return v0
.end method

.method private synthetic lambda$new$0(Lorg/telegram/messenger/ImageReceiver;ZZZ)V
    .locals 0

    if-eqz p2, :cond_1

    if-nez p3, :cond_1

    .line 115
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->hasMediaSpoilers()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 116
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->blurImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 117
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->blurImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 119
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->blurImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object p2, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p2}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/Utilities;->stackBlurBitmapMax(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$onDraw$2([I)V
    .locals 2

    .line 360
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->gradientDrawableLoading:Z

    if-nez v0, :cond_0

    return-void

    .line 363
    :cond_0
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->gradientDrawable:Landroid/graphics/drawable/Drawable;

    .line 364
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    const/4 p1, 0x0

    .line 365
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->gradientDrawableLoading:Z

    return-void
.end method

.method private synthetic lambda$setStyle$1()V
    .locals 0

    .line 142
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->onCheckBoxPressed()V

    return-void
.end method

.method private synthetic lambda$startRevealMedia$3(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 507
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->spoilerRevealProgress:F

    .line 508
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private updateSpoilers2()V
    .locals 1

    .line 574
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 577
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->hasMediaSpoilers()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->supports()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 578
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->mediaSpoilerEffect2:Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;

    if-nez v0, :cond_2

    .line 579
    invoke-static {p0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->getInstance(Landroid/view/View;)Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->mediaSpoilerEffect2:Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;

    goto :goto_0

    .line 582
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->mediaSpoilerEffect2:Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;

    if-eqz v0, :cond_2

    .line 583
    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->detach(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 584
    iput-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->mediaSpoilerEffect2:Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public canRevealSpoiler()Z
    .locals 2

    .line 496
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->hasMediaSpoilers()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->spoilerRevealProgress:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-boolean v0, v0, Lorg/telegram/messenger/MessageObject;->isMediaSpoilersRevealedInSharedMedia:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public drawCrossafadeImage(Landroid/graphics/Canvas;)V
    .locals 3

    .line 622
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->crossfadeView:Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    if-eqz v0, :cond_0

    .line 623
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 624
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getY()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 625
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    iget v2, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageScale:F

    mul-float/2addr v0, v2

    iget-object v2, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->crossfadeView:Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int/2addr v2, v1

    int-to-float v1, v2

    div-float/2addr v0, v1

    .line 626
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->crossfadeView:Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->setImageScale(FZ)V

    .line 627
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->crossfadeView:Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 628
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    return-void
.end method

.method public drawDuration(Landroid/graphics/Canvas;Landroid/graphics/RectF;F)V
    .locals 11

    .line 446
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->showVideoLayout:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getVisible()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p3, v0

    if-gez v0, :cond_1

    float-to-double v0, p3

    const-wide/high16 v2, 0x4020000000000000L    # 8.0

    .line 451
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float p3, v0

    .line 454
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 455
    iget v0, p2, Landroid/graphics/RectF;->left:F

    iget v1, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 456
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 457
    iget v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->currentParentColumnsCount:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->videoInfoLayot:Landroid/text/StaticLayout;

    if-nez v3, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->videoText:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 458
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->sharedResources:Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;

    iget-object v0, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v6, v0

    .line 459
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v4, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->videoText:Ljava/lang/String;

    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->sharedResources:Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;

    iget-object v5, v1, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;->textPaint:Landroid/text/TextPaint;

    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->videoInfoLayot:Landroid/text/StaticLayout;

    goto :goto_0

    :cond_2
    if-ge v0, v1, :cond_3

    .line 460
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->videoText:Ljava/lang/String;

    if-nez v0, :cond_4

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->videoInfoLayot:Landroid/text/StaticLayout;

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 461
    iput-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->videoInfoLayot:Landroid/text/StaticLayout;

    .line 464
    :cond_4
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->videoInfoLayot:Landroid/text/StaticLayout;

    const/4 v1, 0x4

    if-nez v0, :cond_5

    const/16 v0, 0x8

    .line 465
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    goto :goto_1

    .line 467
    :cond_5
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iget-object v3, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->videoInfoLayot:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getWidth()I

    move-result v3

    add-int/2addr v0, v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int/2addr v0, v3

    .line 469
    :goto_1
    iget-boolean v3, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->drawVideoIcon:Z

    const/16 v4, 0xa

    if-eqz v3, :cond_6

    .line 470
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int/2addr v0, v3

    :cond_6
    const/4 v3, 0x5

    .line 472
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    const/4 v6, 0x1

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    add-float/2addr v6, p2

    const/16 p2, 0x11

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 473
    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    int-to-float v0, v0

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v2, v2, v0, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 474
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_timeBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    .line 475
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->chat_timeBackgroundPaint:Landroid/graphics/Paint;

    int-to-float v6, v0

    mul-float/2addr v6, p3

    float-to-int v6, v6

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 476
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->chat_timeBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v2, v6, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 477
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->chat_timeBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 478
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->drawVideoIcon:Z

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v0, :cond_8

    .line 479
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 480
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->videoInfoLayot:Landroid/text/StaticLayout;

    if-nez v0, :cond_7

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    goto :goto_2

    :cond_7
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    :goto_2
    int-to-float v0, v0

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    iget-object v5, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->sharedResources:Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;

    iget-object v5, v5, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;->playDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    sub-int/2addr v3, v5

    int-to-float v3, v3

    div-float/2addr v3, v2

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 481
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->sharedResources:Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;

    iget-object v0, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;->playDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v3, 0x437f0000    # 255.0f

    iget v5, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageAlpha:F

    mul-float/2addr v5, v3

    mul-float/2addr v5, p3

    float-to-int v3, v5

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 482
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->sharedResources:Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;

    iget-object v0, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;->playDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 483
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 485
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->videoInfoLayot:Landroid/text/StaticLayout;

    if-eqz v0, :cond_a

    .line 486
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->drawVideoIcon:Z

    if-eqz v0, :cond_9

    goto :goto_3

    :cond_9
    const/4 v4, 0x0

    :goto_3
    add-int/2addr v4, v1

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->videoInfoLayot:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    sub-int/2addr p2, v1

    int-to-float p2, p2

    div-float/2addr p2, v2

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 487
    iget-object p2, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->sharedResources:Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;

    iget-object p2, p2, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {p2}, Landroid/text/TextPaint;->getAlpha()I

    move-result p2

    .line 488
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->sharedResources:Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;

    iget-object v0, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;->textPaint:Landroid/text/TextPaint;

    int-to-float v1, p2

    mul-float/2addr v1, p3

    float-to-int p3, v1

    invoke-virtual {v0, p3}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 489
    iget-object p3, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->videoInfoLayot:Landroid/text/StaticLayout;

    invoke-virtual {p3, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 490
    iget-object p3, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->sharedResources:Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;

    iget-object p3, p3, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {p3, p2}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 492
    :cond_a
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_b
    :goto_4
    return-void
.end method

.method public getCrossfadeView()Landroid/view/View;
    .locals 1

    .line 633
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->crossfadeView:Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    return-object v0
.end method

.method public getMessageId()I
    .locals 1

    .line 590
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getMessageObject()Lorg/telegram/messenger/MessageObject;
    .locals 1

    .line 594
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    return-object v0
.end method

.method public getStyle()I
    .locals 1

    .line 702
    iget v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->style:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 524
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 525
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->attached:Z

    .line 526
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->checkBoxBase:Lorg/telegram/ui/Components/CheckBoxBase;

    if-eqz v0, :cond_0

    .line 527
    invoke-virtual {v0}, Lorg/telegram/ui/Components/CheckBoxBase;->onAttachedToWindow()V

    .line 529
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_1

    .line 530
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    .line 531
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->blurImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    .line 533
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->mediaSpoilerEffect2:Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;

    if-eqz v0, :cond_3

    .line 534
    iget-boolean v1, v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->destroyed:Z

    if-eqz v1, :cond_2

    .line 535
    invoke-static {p0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->getInstance(Landroid/view/View;)Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->mediaSpoilerEffect2:Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;

    goto :goto_0

    .line 537
    :cond_2
    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->attach(Landroid/view/View;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onCheckBoxPressed()V
    .locals 0

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 544
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 545
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->attached:Z

    .line 546
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->checkBoxBase:Lorg/telegram/ui/Components/CheckBoxBase;

    if-eqz v0, :cond_0

    .line 547
    invoke-virtual {v0}, Lorg/telegram/ui/Components/CheckBoxBase;->onDetachedFromWindow()V

    .line 549
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_1

    .line 550
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    .line 551
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->blurImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    .line 553
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->mediaSpoilerEffect2:Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;

    if-eqz v0, :cond_2

    .line 554
    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->detach(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    .line 316
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 318
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->getPadding()F

    move-result v9

    .line 319
    iget-boolean v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->isStory:Z

    if-eqz v1, :cond_0

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->isFirst:Z

    if-eqz v2, :cond_0

    const/4 v11, 0x0

    goto :goto_0

    :cond_0
    move v11, v9

    :goto_0
    if-eqz v1, :cond_1

    .line 320
    iget-boolean v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->isLast:Z

    if-eqz v1, :cond_1

    const/4 v12, 0x0

    goto :goto_1

    :cond_1
    move v12, v9

    .line 322
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v11

    sub-float/2addr v1, v12

    iget v2, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageScale:F

    mul-float/2addr v1, v2

    .line 323
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v13, 0x40000000    # 2.0f

    mul-float v7, v9, v13

    sub-float/2addr v2, v7

    iget v3, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageScale:F

    mul-float/2addr v2, v3

    .line 325
    iget v3, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->crossfadeProgress:F

    const/high16 v14, 0x3f000000    # 0.5f

    cmpl-float v3, v3, v14

    const/16 v15, 0x9

    const/high16 v16, 0x41100000    # 9.0f

    if-lez v3, :cond_2

    iget v3, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->crossfadeToColumnsCount:F

    cmpl-float v3, v3, v16

    if-eqz v3, :cond_2

    iget v3, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->currentParentColumnsCount:I

    if-eq v3, v15, :cond_2

    sub-float/2addr v1, v13

    sub-float/2addr v2, v13

    :cond_2
    move v6, v1

    move v5, v2

    .line 330
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v4, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    if-nez v1, :cond_3

    iget v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->style:I

    if-ne v1, v4, :cond_5

    :cond_3
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->hasBitmapImage()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getCurrentAlpha()F

    move-result v1

    cmpl-float v1, v1, v3

    if-nez v1, :cond_5

    iget v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageAlpha:F

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    move v15, v3

    move v14, v4

    move v10, v5

    move v13, v6

    goto :goto_5

    .line 331
    :cond_5
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->globalGradientView:Lorg/telegram/ui/Components/FlickerLoadingView;

    if-eqz v1, :cond_7

    .line 332
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getX()F

    move-result v4

    neg-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/Components/FlickerLoadingView;->setParentSize(IIF)V

    .line 333
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->globalGradientView:Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/FlickerLoadingView;->updateColors()V

    .line 334
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->globalGradientView:Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/FlickerLoadingView;->updateGradient()V

    .line 336
    iget v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->crossfadeProgress:F

    cmpl-float v1, v1, v14

    if-lez v1, :cond_6

    iget v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->crossfadeToColumnsCount:F

    cmpl-float v1, v1, v16

    if-eqz v1, :cond_6

    iget v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->currentParentColumnsCount:I

    if-eq v1, v15, :cond_6

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    :goto_3
    add-float v2, v11, v1

    add-float v3, v9, v1

    add-float v4, v2, v6

    add-float v17, v3, v5

    .line 339
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->globalGradientView:Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/FlickerLoadingView;->getPaint()Landroid/graphics/Paint;

    move-result-object v18

    move-object/from16 v1, p1

    const/high16 v15, 0x3f800000    # 1.0f

    const/4 v14, 0x1

    move v10, v5

    move/from16 v5, v17

    move v13, v6

    move-object/from16 v6, v18

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_4

    :cond_7
    move v15, v3

    move v14, v4

    move v10, v5

    move v13, v6

    .line 341
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 344
    :goto_5
    iget v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageAlpha:F

    cmpl-float v2, v1, v15

    const/high16 v18, 0x437f0000    # 255.0f

    if-eqz v2, :cond_8

    const/4 v2, 0x0

    const/4 v3, 0x0

    add-float v4, v11, v12

    add-float/2addr v4, v13

    add-float v5, v7, v10

    mul-float v1, v1, v18

    float-to-int v6, v1

    const/16 v7, 0x1f

    move-object/from16 v1, p1

    .line 345
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    goto :goto_6

    .line 347
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 350
    :goto_6
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->checkBoxBase:Lorg/telegram/ui/Components/CheckBoxBase;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lorg/telegram/ui/Components/CheckBoxBase;->isChecked()Z

    move-result v1

    if-nez v1, :cond_a

    :cond_9
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->isShowingImage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_a
    add-float v6, v11, v13

    sub-float v4, v6, v12

    .line 351
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->sharedResources:Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;

    invoke-static {v1}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;->access$000(Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;)Landroid/graphics/Paint;

    move-result-object v6

    move-object/from16 v1, p1

    move v2, v11

    move v3, v9

    move v5, v10

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 354
    :cond_b
    iget-boolean v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->isStory:Z

    if-eqz v1, :cond_e

    iget v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->currentParentColumnsCount:I

    if-ne v1, v14, :cond_e

    .line 355
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3f3851ec    # 0.72f

    mul-float/2addr v1, v2

    .line 356
    iget-object v2, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->gradientDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    if-nez v2, :cond_c

    .line 357
    iget-boolean v2, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->gradientDrawableLoading:Z

    if-nez v2, :cond_d

    iget-object v2, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 358
    iput-boolean v14, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->gradientDrawableLoading:Z

    .line 359
    iget-object v2, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v4

    new-instance v5, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$$ExternalSyntheticLambda3;

    invoke-direct {v5, v0}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;)V

    invoke-static {v3, v2, v4, v5}, Lorg/telegram/ui/Stories/recorder/DominantColors;->getColors(ZLandroid/graphics/Bitmap;ZLorg/telegram/messenger/Utilities$Callback;)V

    goto :goto_7

    .line 369
    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v5

    invoke-virtual {v2, v3, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 370
    iget-object v2, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->gradientDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 372
    :cond_d
    :goto_7
    iget-object v2, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    sub-float v6, v13, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v6, v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v2, v6, v4, v1, v3}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    goto :goto_9

    :cond_e
    const/4 v4, 0x0

    .line 373
    iget v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->checkBoxProgress:F

    cmpl-float v1, v1, v4

    if-lez v1, :cond_f

    const/16 v1, 0xa

    .line 374
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    iget v2, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->checkBoxProgress:F

    mul-float/2addr v1, v2

    .line 375
    iget-object v2, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    add-float v3, v11, v1

    add-float v4, v9, v1

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v1, v5

    sub-float v6, v13, v1

    sub-float v5, v10, v1

    invoke-virtual {v2, v3, v4, v6, v5}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 376
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->blurImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v3, v4, v6, v5}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    goto :goto_9

    .line 379
    :cond_f
    iget v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->crossfadeProgress:F

    const/high16 v2, 0x3f000000    # 0.5f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_10

    iget v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->crossfadeToColumnsCount:F

    cmpl-float v1, v1, v16

    if-eqz v1, :cond_10

    iget v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->currentParentColumnsCount:I

    const/16 v2, 0x9

    if-eq v1, v2, :cond_10

    move v3, v15

    goto :goto_8

    :cond_10
    const/4 v3, 0x0

    .line 382
    :goto_8
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    add-float v2, v11, v3

    add-float/2addr v3, v9

    invoke-virtual {v1, v2, v3, v13, v10}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 383
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->blurImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v2, v3, v13, v10}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 385
    :goto_9
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->isShowingImage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 386
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v8}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 387
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->hasMediaSpoilers()Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-boolean v1, v1, Lorg/telegram/messenger/MessageObject;->isMediaSpoilersRevealedInSharedMedia:Z

    if-nez v1, :cond_13

    .line 388
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    add-float v6, v11, v13

    sub-float/2addr v6, v12

    add-float v5, v9, v10

    .line 389
    invoke-virtual {v8, v11, v9, v6, v5}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 391
    iget v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->spoilerRevealProgress:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_11

    .line 392
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->path:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    .line 393
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->path:Landroid/graphics/Path;

    iget v2, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->spoilerRevealX:F

    iget v3, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->spoilerRevealY:F

    iget v4, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->spoilerMaxRadius:F

    iget v5, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->spoilerRevealProgress:F

    mul-float/2addr v4, v5

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 395
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->path:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v8, v1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 398
    :cond_11
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->blurImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v8}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 400
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->mediaSpoilerEffect2:Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;

    if-eqz v1, :cond_12

    .line 401
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getImageX2()F

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getImageY2()F

    move-result v4

    invoke-virtual {v8, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 402
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->mediaSpoilerEffect2:Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;

    iget-object v2, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v8, v0, v2, v3}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->draw(Landroid/graphics/Canvas;Landroid/view/View;II)V

    goto :goto_a

    :cond_12
    const/4 v1, -0x1

    .line 405
    iget-object v2, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->mediaSpoilerEffect:Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3ea66666    # 0.325f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v1, v3}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->setColor(I)V

    .line 406
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->mediaSpoilerEffect:Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    iget-object v2, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getImageX2()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getImageY2()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->setBounds(IIII)V

    .line 407
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->mediaSpoilerEffect:Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    invoke-virtual {v1, v8}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->draw(Landroid/graphics/Canvas;)V

    .line 409
    :goto_a
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 411
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 413
    :cond_13
    iget v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->highlightProgress:F

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-lez v3, :cond_14

    .line 414
    iget-object v2, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->sharedResources:Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;

    iget-object v2, v2, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;->highlightPaint:Landroid/graphics/Paint;

    const/high16 v3, -0x1000000

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v1, v4

    mul-float v1, v1, v18

    float-to-int v1, v1

    invoke-static {v3, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 415
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getDrawRegion()Landroid/graphics/RectF;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->sharedResources:Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;

    iget-object v2, v2, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;->highlightPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 419
    :cond_14
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->bounds:Landroid/graphics/RectF;

    iget-object v2, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getImageX2()F

    move-result v4

    iget-object v5, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getImageY2()F

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 420
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->bounds:Landroid/graphics/RectF;

    add-float v6, v11, v13

    sub-float/2addr v6, v12

    add-float v5, v9, v10

    invoke-virtual {v1, v11, v9, v6, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 421
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v8, v1, v15}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->drawDuration(Landroid/graphics/Canvas;Landroid/graphics/RectF;F)V

    .line 423
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->checkBoxBase:Lorg/telegram/ui/Components/CheckBoxBase;

    if-eqz v1, :cond_18

    iget v2, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->style:I

    if-eq v2, v14, :cond_15

    invoke-virtual {v1}, Lorg/telegram/ui/Components/CheckBoxBase;->getProgress()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_18

    goto :goto_b

    :cond_15
    const/4 v2, 0x0

    .line 424
    :goto_b
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 426
    iget v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->style:I

    const/16 v3, 0x19

    const/4 v4, 0x2

    if-ne v1, v14, :cond_16

    .line 427
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    add-float v6, v13, v1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v6, v1

    const/4 v1, 0x4

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v6, v2

    .line 428
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v10, v1

    goto :goto_c

    .line 430
    :cond_16
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    add-float v6, v13, v1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v6, v1

    move v10, v2

    .line 433
    :goto_c
    invoke-virtual {v8, v6, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 434
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->checkBoxBase:Lorg/telegram/ui/Components/CheckBoxBase;

    invoke-virtual {v1, v8}, Lorg/telegram/ui/Components/CheckBoxBase;->draw(Landroid/graphics/Canvas;)V

    .line 435
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->canvasButton:Lorg/telegram/ui/Components/CanvasButton;

    if-eqz v1, :cond_17

    .line 436
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v2, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->checkBoxBase:Lorg/telegram/ui/Components/CheckBoxBase;

    iget-object v2, v2, Lorg/telegram/ui/Components/CheckBoxBase;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v6

    iget-object v3, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->checkBoxBase:Lorg/telegram/ui/Components/CheckBoxBase;

    iget-object v3, v3, Lorg/telegram/ui/Components/CheckBoxBase;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v10

    invoke-virtual {v1, v6, v10, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 437
    iget-object v2, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->canvasButton:Lorg/telegram/ui/Components/CanvasButton;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/CanvasButton;->setRect(Landroid/graphics/RectF;)V

    .line 439
    :cond_17
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 442
    :cond_18
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 564
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 565
    iget-boolean p2, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->isStory:Z

    if-eqz p2, :cond_0

    const/high16 v0, 0x3fa00000    # 1.25f

    int-to-float v1, p1

    mul-float/2addr v1, v0

    float-to-int v0, v1

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    if-eqz p2, :cond_1

    .line 566
    iget p2, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->currentParentColumnsCount:I

    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 567
    div-int/lit8 v0, v0, 0x2

    .line 569
    :cond_1
    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    .line 570
    invoke-direct {p0}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->updateSpoilers2()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 733
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->canvasButton:Lorg/telegram/ui/Components/CanvasButton;

    if-eqz v0, :cond_0

    .line 734
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/CanvasButton;->checkTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 738
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setChecked(ZZ)V
    .locals 7

    .line 640
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->checkBoxBase:Lorg/telegram/ui/Components/CheckBoxBase;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CheckBoxBase;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-ne v0, p1, :cond_1

    return-void

    .line 644
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->checkBoxBase:Lorg/telegram/ui/Components/CheckBoxBase;

    const/4 v3, 0x0

    if-nez v0, :cond_2

    .line 645
    new-instance v0, Lorg/telegram/ui/Components/CheckBoxBase;

    const/16 v4, 0x15

    invoke-direct {v0, p0, v4, v3}, Lorg/telegram/ui/Components/CheckBoxBase;-><init>(Landroid/view/View;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->checkBoxBase:Lorg/telegram/ui/Components/CheckBoxBase;

    const/4 v4, -0x1

    .line 646
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_sharedMedia_photoPlaceholder:I

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxCheck:I

    invoke-virtual {v0, v4, v5, v6}, Lorg/telegram/ui/Components/CheckBoxBase;->setColor(III)V

    .line 647
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->checkBoxBase:Lorg/telegram/ui/Components/CheckBoxBase;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/CheckBoxBase;->setDrawUnchecked(Z)V

    .line 648
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->checkBoxBase:Lorg/telegram/ui/Components/CheckBoxBase;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CheckBoxBase;->setBackgroundType(I)V

    .line 649
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->checkBoxBase:Lorg/telegram/ui/Components/CheckBoxBase;

    const/16 v4, 0x18

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-virtual {v0, v2, v2, v5, v4}, Lorg/telegram/ui/Components/CheckBoxBase;->setBounds(IIII)V

    .line 650
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->attached:Z

    if-eqz v0, :cond_2

    .line 651
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->checkBoxBase:Lorg/telegram/ui/Components/CheckBoxBase;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CheckBoxBase;->onAttachedToWindow()V

    .line 654
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->checkBoxBase:Lorg/telegram/ui/Components/CheckBoxBase;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/CheckBoxBase;->setChecked(ZZ)V

    .line 655
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->animator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_3

    .line 657
    iput-object v3, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->animator:Landroid/animation/ValueAnimator;

    .line 658
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz p2, :cond_5

    const/4 p2, 0x2

    new-array p2, p2, [F

    .line 661
    iget v4, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->checkBoxProgress:F

    aput v4, p2, v2

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    move v0, v3

    :goto_1
    aput v0, p2, v1

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->animator:Landroid/animation/ValueAnimator;

    .line 662
    new-instance v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$2;-><init>(Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 669
    iget-object p2, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->animator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xc8

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 670
    iget-object p2, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->animator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$3;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$3;-><init>(Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;Z)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 679
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_3

    :cond_5
    if-eqz p1, :cond_6

    goto :goto_2

    :cond_6
    move v0, v3

    .line 681
    :goto_2
    iput v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->checkBoxProgress:F

    .line 683
    :goto_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setCrossfadeView(Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;FI)V
    .locals 0

    .line 616
    iput-object p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->crossfadeView:Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    .line 617
    iput p2, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->crossfadeProgress:F

    int-to-float p1, p3

    .line 618
    iput p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->crossfadeToColumnsCount:F

    return-void
.end method

.method public setGradientView(Lorg/telegram/ui/Components/FlickerLoadingView;)V
    .locals 0

    .line 559
    iput-object p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->globalGradientView:Lorg/telegram/ui/Components/FlickerLoadingView;

    return-void
.end method

.method public setHighlightProgress(F)V
    .locals 1

    .line 691
    iget v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->highlightProgress:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 692
    iput p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->highlightProgress:F

    .line 693
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_0
    return-void
.end method

.method public setImageAlpha(FZ)V
    .locals 1

    .line 598
    iget v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageAlpha:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 599
    iput p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageAlpha:F

    if-eqz p2, :cond_0

    .line 601
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_0
    return-void
.end method

.method public setImageScale(FZ)V
    .locals 1

    .line 607
    iget v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageScale:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 608
    iput p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageScale:F

    if-eqz p2, :cond_0

    .line 610
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_0
    return-void
.end method

.method public setMessageObject(Lorg/telegram/messenger/MessageObject;I)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v12, p1

    move/from16 v1, p2

    .line 152
    iget v2, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->currentParentColumnsCount:I

    .line 153
    iput v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->currentParentColumnsCount:I

    .line 154
    iget-object v3, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v3, :cond_0

    if-nez v12, :cond_0

    return-void

    :cond_0
    if-eqz v3, :cond_1

    if-eqz v12, :cond_1

    .line 157
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    if-ne v3, v4, :cond_1

    if-ne v2, v1, :cond_1

    return-void

    .line 160
    :cond_1
    iput-object v12, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v2, 0x1

    const/4 v13, 0x0

    if-eqz v12, :cond_2

    .line 161
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isStory()Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v2

    goto :goto_0

    :cond_2
    move v3, v13

    :goto_0
    iput-boolean v3, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->isStory:Z

    .line 162
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->updateSpoilers2()V

    const/4 v14, 0x0

    if-nez v12, :cond_3

    .line 164
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    .line 165
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->blurImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    .line 166
    iput-object v14, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->videoText:Ljava/lang/String;

    .line 167
    iput-object v14, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->videoInfoLayot:Landroid/text/StaticLayout;

    .line 168
    iput-boolean v13, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->showVideoLayout:Z

    .line 169
    iput-boolean v13, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->gradientDrawableLoading:Z

    .line 170
    iput-object v14, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->gradientDrawable:Landroid/graphics/drawable/Drawable;

    return-void

    .line 173
    :cond_3
    iget-boolean v3, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->attached:Z

    if-eqz v3, :cond_4

    .line 174
    iget-object v3, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    .line 175
    iget-object v3, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->blurImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    .line 178
    :cond_4
    iget-object v3, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->restriction_reason:Ljava/util/ArrayList;

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getRestrictionReason(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v3

    .line 181
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    div-int/2addr v4, v1

    int-to-float v4, v4

    sget v5, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v4, v5

    float-to-int v4, v4

    .line 182
    iget-object v5, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->sharedResources:Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;

    invoke-virtual {v5, v4}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;->getFilterString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x140

    const/4 v6, 0x2

    if-gt v1, v6, :cond_5

    .line 185
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v5

    goto :goto_1

    :cond_5
    const/4 v7, 0x3

    .line 193
    :goto_1
    iput-object v14, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->videoText:Ljava/lang/String;

    .line 194
    iput-object v14, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->videoInfoLayot:Landroid/text/StaticLayout;

    .line 195
    iput-boolean v13, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->showVideoLayout:Z

    .line 196
    iget-object v7, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v7}, Lorg/telegram/messenger/ImageReceiver;->clearDecorators()V

    .line 197
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    goto/16 :goto_6

    .line 199
    :cond_6
    iget-object v3, v12, Lorg/telegram/messenger/MessageObject;->storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    if-eqz v3, :cond_7

    iget-object v7, v3, Lorg/telegram/tgnet/TLRPC$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v7, v7, Lorg/telegram/tgnet/TLRPC$TL_messageMediaUnsupported;

    if-eqz v7, :cond_7

    .line 200
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v1

    iput-wide v1, v3, Lorg/telegram/tgnet/TLRPC$StoryItem;->dialogId:J

    .line 201
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_emoji_recent:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 202
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    const v3, 0x40ffffff    # 7.9999995f

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 203
    iget-object v2, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    new-instance v3, Lorg/telegram/ui/Components/CombinedDrawable;

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    const v5, -0xcccccd

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-direct {v3, v4, v1}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_5

    .line 204
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v3

    const/16 v7, 0x32

    const-string v8, "_b"

    if-eqz v3, :cond_d

    .line 205
    iput-boolean v2, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->showVideoLayout:Z

    const/16 v3, 0x9

    if-eq v1, v3, :cond_8

    .line 207
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getDuration()D

    move-result-wide v9

    double-to-int v1, v9

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->formatShortDuration(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->videoText:Ljava/lang/String;

    .line 209
    :cond_8
    iget-object v3, v12, Lorg/telegram/messenger/MessageObject;->mediaThumb:Lorg/telegram/messenger/ImageLocation;

    if-eqz v3, :cond_a

    .line 210
    iget-object v5, v12, Lorg/telegram/messenger/MessageObject;->strippedThumb:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v5, :cond_9

    .line 211
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object/from16 v6, p1

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    goto/16 :goto_5

    .line 213
    :cond_9
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v5, v12, Lorg/telegram/messenger/MessageObject;->mediaSmallThumb:Lorg/telegram/messenger/ImageLocation;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-wide v7, v8

    move-object v9, v10

    move-object/from16 v10, p1

    invoke-virtual/range {v1 .. v11}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto/16 :goto_5

    .line 216
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v1

    .line 217
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-static {v3, v7}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v3

    .line 218
    iget-object v6, v1, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    iget-boolean v7, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->isStory:Z

    invoke-static {v6, v5, v13, v14, v7}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZLorg/telegram/tgnet/TLRPC$PhotoSize;Z)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v5

    if-ne v3, v5, :cond_b

    .line 219
    iget-boolean v6, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->isStory:Z

    if-nez v6, :cond_b

    move-object v5, v14

    :cond_b
    if-eqz v3, :cond_19

    .line 223
    iget-object v2, v12, Lorg/telegram/messenger/MessageObject;->strippedThumb:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_c

    .line 224
    iget-object v2, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {v5, v1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v3

    iget-object v5, v12, Lorg/telegram/messenger/MessageObject;->strippedThumb:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object/from16 v6, p1

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    goto/16 :goto_5

    .line 226
    :cond_c
    iget-object v2, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {v5, v1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v5

    invoke-static {v3, v1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v15, 0x0

    move-object v1, v2

    move-object v2, v5

    move-object v3, v4

    move-object v4, v6

    move-object v5, v7

    move-object v6, v8

    move-wide v7, v9

    move-object v9, v11

    move-object/from16 v10, p1

    move v11, v15

    invoke-virtual/range {v1 .. v11}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto/16 :goto_5

    .line 232
    :cond_d
    iget-object v1, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v1}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v1

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v1, :cond_19

    iget-object v1, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v1}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v1, :cond_19

    iget-object v1, v12, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_19

    .line 233
    iget-boolean v1, v12, Lorg/telegram/messenger/MessageObject;->mediaExists:Z

    if-nez v1, :cond_10

    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->canAutoDownload(Lorg/telegram/messenger/MessageObject;)Z

    move-result v1

    if-nez v1, :cond_10

    iget-boolean v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->isStory:Z

    if-eqz v1, :cond_e

    goto :goto_2

    .line 253
    :cond_e
    iget-object v6, v12, Lorg/telegram/messenger/MessageObject;->strippedThumb:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v6, :cond_f

    .line 254
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object/from16 v10, p1

    invoke-virtual/range {v1 .. v11}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto/16 :goto_5

    .line 256
    :cond_f
    iget-object v1, v12, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-static {v1, v7}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v1

    .line 257
    iget-object v2, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, v12, Lorg/telegram/messenger/MessageObject;->photoThumbsObject:Lorg/telegram/tgnet/TLObject;

    invoke-static {v1, v5}, Lorg/telegram/messenger/ImageLocation;->getForObject(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLObject;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v5

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const-string v10, "b"

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v10

    move-object/from16 v10, p1

    invoke-virtual/range {v1 .. v11}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto/16 :goto_5

    .line 234
    :cond_10
    :goto_2
    iget-object v3, v12, Lorg/telegram/messenger/MessageObject;->mediaThumb:Lorg/telegram/messenger/ImageLocation;

    if-eqz v3, :cond_12

    .line 235
    iget-object v5, v12, Lorg/telegram/messenger/MessageObject;->strippedThumb:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v5, :cond_11

    .line 236
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object/from16 v6, p1

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    goto/16 :goto_5

    .line 238
    :cond_11
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v5, v12, Lorg/telegram/messenger/MessageObject;->mediaSmallThumb:Lorg/telegram/messenger/ImageLocation;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-wide v7, v8

    move-object v9, v10

    move-object/from16 v10, p1

    invoke-virtual/range {v1 .. v11}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto/16 :goto_5

    .line 241
    :cond_12
    iget-object v1, v12, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-static {v1, v7}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v1

    .line 242
    iget-object v3, v12, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    iget-boolean v7, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->isStory:Z

    invoke-static {v3, v5, v13, v1, v7}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZLorg/telegram/tgnet/TLRPC$PhotoSize;Z)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v3

    if-ne v3, v1, :cond_13

    move-object v1, v14

    .line 246
    :cond_13
    iget-object v5, v12, Lorg/telegram/messenger/MessageObject;->strippedThumb:Landroid/graphics/drawable/BitmapDrawable;

    const-wide/16 v9, 0x0

    if-eqz v5, :cond_16

    .line 247
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v5, v12, Lorg/telegram/messenger/MessageObject;->photoThumbsObject:Lorg/telegram/tgnet/TLObject;

    invoke-static {v3, v5}, Lorg/telegram/messenger/ImageLocation;->getForObject(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLObject;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v11, v12, Lorg/telegram/messenger/MessageObject;->strippedThumb:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_14

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    int-to-long v9, v3

    :cond_14
    const/4 v15, 0x0

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->shouldEncryptPhotoOrVideo()Z

    move-result v3

    if-eqz v3, :cond_15

    move/from16 v16, v6

    goto :goto_3

    :cond_15
    move/from16 v16, v2

    :goto_3
    move-object v2, v5

    move-object v3, v4

    move-object v4, v7

    move-object v5, v8

    move-object v6, v11

    move-wide v7, v9

    move-object v9, v15

    move-object/from16 v10, p1

    move/from16 v11, v16

    invoke-virtual/range {v1 .. v11}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto :goto_5

    .line 249
    :cond_16
    iget-object v5, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v7, v12, Lorg/telegram/messenger/MessageObject;->photoThumbsObject:Lorg/telegram/tgnet/TLObject;

    invoke-static {v3, v7}, Lorg/telegram/messenger/ImageLocation;->getForObject(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLObject;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v7

    iget-object v11, v12, Lorg/telegram/messenger/MessageObject;->photoThumbsObject:Lorg/telegram/tgnet/TLObject;

    invoke-static {v1, v11}, Lorg/telegram/messenger/ImageLocation;->getForObject(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLObject;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v11

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    if-eqz v3, :cond_17

    iget v1, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    int-to-long v9, v1

    :cond_17
    const/4 v15, 0x0

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->shouldEncryptPhotoOrVideo()Z

    move-result v1

    if-eqz v1, :cond_18

    move/from16 v16, v6

    goto :goto_4

    :cond_18
    move/from16 v16, v2

    :goto_4
    move-object v1, v5

    move-object v2, v7

    move-object v3, v4

    move-object v4, v11

    move-object v5, v8

    move-wide v6, v9

    move-object v8, v15

    move-object/from16 v9, p1

    move/from16 v10, v16

    invoke-virtual/range {v1 .. v10}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Object;I)V

    :goto_5
    move v2, v13

    :cond_19
    :goto_6
    if-eqz v2, :cond_1a

    .line 265
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->photo_placeholder_in:I

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    .line 268
    :cond_1a
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->blurImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 269
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->blurImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 270
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->blurImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v14}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 272
    :cond_1b
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1c

    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->hasMediaSpoilers()Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-boolean v1, v1, Lorg/telegram/messenger/MessageObject;->isMediaSpoilersRevealed:Z

    if-nez v1, :cond_1c

    .line 273
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->blurImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v2, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->stackBlurBitmapMax(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 275
    :cond_1c
    iget-object v1, v12, Lorg/telegram/messenger/MessageObject;->storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    if-eqz v1, :cond_1d

    .line 276
    iget-object v2, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    new-instance v3, Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator;

    invoke-direct {v3, v1}, Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator;-><init>(Lorg/telegram/tgnet/TLRPC$StoryItem;)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/ImageReceiver;->addDecorator(Lorg/telegram/messenger/ImageReceiver$Decorator;)V

    .line 279
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setStyle(I)V
    .locals 4

    .line 127
    iget v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->style:I

    if-ne v0, p1, :cond_0

    return-void

    .line 130
    :cond_0
    iput p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->style:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 132
    new-instance p1, Lorg/telegram/ui/Components/CheckBoxBase;

    const/16 v1, 0x15

    const/4 v2, 0x0

    invoke-direct {p1, p0, v1, v2}, Lorg/telegram/ui/Components/CheckBoxBase;-><init>(Landroid/view/View;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->checkBoxBase:Lorg/telegram/ui/Components/CheckBoxBase;

    const/4 v1, -0x1

    .line 133
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_sharedMedia_photoPlaceholder:I

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxCheck:I

    invoke-virtual {p1, v1, v2, v3}, Lorg/telegram/ui/Components/CheckBoxBase;->setColor(III)V

    .line 134
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->checkBoxBase:Lorg/telegram/ui/Components/CheckBoxBase;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/CheckBoxBase;->setDrawUnchecked(Z)V

    .line 135
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->checkBoxBase:Lorg/telegram/ui/Components/CheckBoxBase;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/CheckBoxBase;->setBackgroundType(I)V

    .line 136
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->checkBoxBase:Lorg/telegram/ui/Components/CheckBoxBase;

    const/16 v1, 0x18

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {p1, v0, v0, v2, v1}, Lorg/telegram/ui/Components/CheckBoxBase;->setBounds(IIII)V

    .line 137
    iget-boolean p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->attached:Z

    if-eqz p1, :cond_1

    .line 138
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->checkBoxBase:Lorg/telegram/ui/Components/CheckBoxBase;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/CheckBoxBase;->onAttachedToWindow()V

    .line 140
    :cond_1
    new-instance p1, Lorg/telegram/ui/Components/CanvasButton;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/CanvasButton;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->canvasButton:Lorg/telegram/ui/Components/CanvasButton;

    .line 141
    new-instance v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/CanvasButton;->setDelegate(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public setVideoText(Ljava/lang/String;Z)V
    .locals 1

    .line 292
    iput-object p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->videoText:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 293
    :goto_0
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->showVideoLayout:Z

    if-eqz v0, :cond_1

    .line 294
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->videoInfoLayot:Landroid/text/StaticLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 295
    iput-object p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->videoInfoLayot:Landroid/text/StaticLayout;

    .line 297
    :cond_1
    iput-boolean p2, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->drawVideoIcon:Z

    return-void
.end method

.method public startRevealMedia(FF)V
    .locals 4

    .line 500
    iput p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->spoilerRevealX:F

    .line 501
    iput p2, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->spoilerRevealY:F

    .line 503
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    int-to-double p1, p1

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    add-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    iput p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->spoilerMaxRadius:F

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 504
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iget p2, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->spoilerMaxRadius:F

    const v0, 0x3e99999a    # 0.3f

    mul-float/2addr p2, v0

    const/high16 v0, 0x437a0000    # 250.0f

    const v1, 0x44098000    # 550.0f

    invoke-static {p2, v0, v1}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result p2

    float-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 505
    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_BOTH:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 506
    new-instance p2, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 510
    new-instance p2, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$1;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$1;-><init>(Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 519
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
