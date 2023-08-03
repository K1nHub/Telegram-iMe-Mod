.class public Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;
.super Landroid/view/View;
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

    .line 101
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 57
    new-instance p1, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {p1}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 58
    new-instance p1, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {p1}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->blurImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 65
    iput p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageAlpha:F

    .line 66
    iput p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageScale:F

    const/4 p1, 0x1

    .line 69
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->drawVideoIcon:Z

    .line 87
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->path:Landroid/graphics/Path;

    .line 88
    new-instance p1, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    invoke-direct {p1}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->mediaSpoilerEffect:Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    const/4 p1, 0x0

    .line 96
    iput p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->style:I

    .line 300
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->bounds:Landroid/graphics/RectF;

    .line 102
    iput-object p2, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->sharedResources:Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;

    .line 103
    iput p3, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->currentAccount:I

    .line 105
    invoke-virtual {p0, p1, p1}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->setChecked(ZZ)V

    .line 106
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1, p0}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    .line 107
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->blurImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1, p0}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    .line 109
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    new-instance p2, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;)V

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/ImageReceiver;->setDelegate(Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;)V

    return-void
.end method

.method private canAutoDownload(Lorg/telegram/messenger/MessageObject;)Z
    .locals 4

    .line 272
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->lastUpdateDownloadSettingsTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 273
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->lastUpdateDownloadSettingsTime:J

    .line 274
    iget v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/DownloadController;->canDownloadMedia(Lorg/telegram/messenger/MessageObject;)Z

    move-result p1

    sput-boolean p1, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->lastAutoDownload:Z

    .line 276
    :cond_0
    sget-boolean p1, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->lastAutoDownload:Z

    return p1
.end method

.method private getPadding()F
    .locals 6

    .line 289
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

    .line 291
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

    .line 293
    :cond_1
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->crossfadeProgress:F

    mul-float/2addr v0, v1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    iget v2, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->crossfadeProgress:F

    goto :goto_0

    .line 296
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

    .line 110
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->hasMediaSpoilers()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 111
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->blurImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 112
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->blurImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 114
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

    .line 348
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->gradientDrawableLoading:Z

    if-nez v0, :cond_0

    return-void

    .line 351
    :cond_0
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->gradientDrawable:Landroid/graphics/drawable/Drawable;

    .line 352
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    const/4 p1, 0x0

    .line 353
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->gradientDrawableLoading:Z

    return-void
.end method

.method private synthetic lambda$setStyle$1()V
    .locals 0

    .line 135
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->onCheckBoxPressed()V

    return-void
.end method

.method private synthetic lambda$startRevealMedia$3(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 490
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->spoilerRevealProgress:F

    .line 491
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public canRevealSpoiler()Z
    .locals 2

    .line 479
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

    .line 576
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->crossfadeView:Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    if-eqz v0, :cond_0

    .line 577
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 578
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 579
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    iget v2, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageScale:F

    mul-float/2addr v0, v2

    iget-object v2, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->crossfadeView:Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int/2addr v2, v1

    int-to-float v1, v2

    div-float/2addr v0, v1

    .line 580
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->crossfadeView:Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->setImageScale(FZ)V

    .line 581
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->crossfadeView:Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 582
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    return-void
.end method

.method public drawDuration(Landroid/graphics/Canvas;Landroid/graphics/RectF;F)V
    .locals 11

    .line 429
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

    .line 434
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float p3, v0

    .line 437
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 438
    iget v0, p2, Landroid/graphics/RectF;->left:F

    iget v1, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 439
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 440
    iget v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->currentParentColumnsCount:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->videoInfoLayot:Landroid/text/StaticLayout;

    if-nez v3, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->videoText:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 441
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->sharedResources:Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;

    iget-object v0, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v6, v0

    .line 442
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

    .line 443
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->videoText:Ljava/lang/String;

    if-nez v0, :cond_4

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->videoInfoLayot:Landroid/text/StaticLayout;

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 444
    iput-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->videoInfoLayot:Landroid/text/StaticLayout;

    .line 447
    :cond_4
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->videoInfoLayot:Landroid/text/StaticLayout;

    const/4 v1, 0x4

    if-nez v0, :cond_5

    const/16 v0, 0x8

    .line 448
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    goto :goto_1

    .line 450
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

    .line 452
    :goto_1
    iget-boolean v3, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->drawVideoIcon:Z

    const/16 v4, 0xa

    if-eqz v3, :cond_6

    .line 453
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int/2addr v0, v3

    :cond_6
    const/4 v3, 0x5

    .line 455
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

    .line 456
    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    int-to-float v0, v0

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v2, v2, v0, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 457
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_timeBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    .line 458
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->chat_timeBackgroundPaint:Landroid/graphics/Paint;

    int-to-float v6, v0

    mul-float/2addr v6, p3

    float-to-int v6, v6

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 459
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->chat_timeBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v2, v6, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 460
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->chat_timeBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 461
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->drawVideoIcon:Z

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v0, :cond_8

    .line 462
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 463
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

    .line 464
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->sharedResources:Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;

    iget-object v0, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;->playDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v3, 0x437f0000    # 255.0f

    iget v5, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageAlpha:F

    mul-float/2addr v5, v3

    mul-float/2addr v5, p3

    float-to-int v3, v5

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 465
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->sharedResources:Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;

    iget-object v0, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;->playDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 466
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 468
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->videoInfoLayot:Landroid/text/StaticLayout;

    if-eqz v0, :cond_a

    .line 469
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

    .line 470
    iget-object p2, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->sharedResources:Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;

    iget-object p2, p2, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {p2}, Landroid/text/TextPaint;->getAlpha()I

    move-result p2

    .line 471
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->sharedResources:Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;

    iget-object v0, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;->textPaint:Landroid/text/TextPaint;

    int-to-float v1, p2

    mul-float/2addr v1, p3

    float-to-int p3, v1

    invoke-virtual {v0, p3}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 472
    iget-object p3, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->videoInfoLayot:Landroid/text/StaticLayout;

    invoke-virtual {p3, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 473
    iget-object p3, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->sharedResources:Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;

    iget-object p3, p3, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {p3, p2}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 475
    :cond_a
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_b
    :goto_4
    return-void
.end method

.method public getCrossfadeView()Landroid/view/View;
    .locals 1

    .line 587
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->crossfadeView:Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    return-object v0
.end method

.method public getMessageId()I
    .locals 1

    .line 544
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

    .line 548
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    return-object v0
.end method

.method public getStyle()I
    .locals 1

    .line 656
    iget v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->style:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 505
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 506
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->attached:Z

    .line 507
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->checkBoxBase:Lorg/telegram/ui/Components/CheckBoxBase;

    if-eqz v0, :cond_0

    .line 508
    invoke-virtual {v0}, Lorg/telegram/ui/Components/CheckBoxBase;->onAttachedToWindow()V

    .line 510
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_1

    .line 511
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    .line 512
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->blurImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    :cond_1
    return-void
.end method

.method public onCheckBoxPressed()V
    .locals 0

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 518
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 519
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->attached:Z

    .line 520
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->checkBoxBase:Lorg/telegram/ui/Components/CheckBoxBase;

    if-eqz v0, :cond_0

    .line 521
    invoke-virtual {v0}, Lorg/telegram/ui/Components/CheckBoxBase;->onDetachedFromWindow()V

    .line 523
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_1

    .line 524
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    .line 525
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->blurImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    .line 304
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 306
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->getPadding()F

    move-result v9

    .line 307
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

    .line 308
    iget-boolean v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->isLast:Z

    if-eqz v1, :cond_1

    const/4 v12, 0x0

    goto :goto_1

    :cond_1
    move v12, v9

    .line 310
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v11

    sub-float/2addr v1, v12

    iget v2, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageScale:F

    mul-float/2addr v1, v2

    .line 311
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v13, 0x40000000    # 2.0f

    mul-float v7, v9, v13

    sub-float/2addr v2, v7

    iget v3, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageScale:F

    mul-float/2addr v2, v3

    .line 313
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

    .line 318
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

    .line 319
    :cond_5
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->globalGradientView:Lorg/telegram/ui/Components/FlickerLoadingView;

    if-eqz v1, :cond_7

    .line 320
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getX()F

    move-result v4

    neg-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/Components/FlickerLoadingView;->setParentSize(IIF)V

    .line 321
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->globalGradientView:Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/FlickerLoadingView;->updateColors()V

    .line 322
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->globalGradientView:Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/FlickerLoadingView;->updateGradient()V

    .line 324
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

    .line 327
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

    .line 329
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 332
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

    .line 333
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    goto :goto_6

    .line 335
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 338
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

    .line 339
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->sharedResources:Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;

    invoke-static {v1}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;->access$000(Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;)Landroid/graphics/Paint;

    move-result-object v6

    move-object/from16 v1, p1

    move v2, v11

    move v3, v9

    move v5, v10

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 342
    :cond_b
    iget-boolean v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->isStory:Z

    if-eqz v1, :cond_e

    iget v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->currentParentColumnsCount:I

    if-ne v1, v14, :cond_e

    .line 343
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3f3851ec    # 0.72f

    mul-float/2addr v1, v2

    .line 344
    iget-object v2, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->gradientDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    if-nez v2, :cond_c

    .line 345
    iget-boolean v2, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->gradientDrawableLoading:Z

    if-nez v2, :cond_d

    iget-object v2, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 346
    iput-boolean v14, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->gradientDrawableLoading:Z

    .line 347
    iget-object v2, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v4

    new-instance v5, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$$ExternalSyntheticLambda3;

    invoke-direct {v5, v0}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;)V

    invoke-static {v3, v2, v4, v5}, Lorg/telegram/ui/Stories/recorder/DominantColors;->getColors(ZLandroid/graphics/Bitmap;ZLorg/telegram/messenger/Utilities$Callback;)V

    goto :goto_7

    .line 357
    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {v2, v3, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 358
    iget-object v2, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->gradientDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 360
    :cond_d
    :goto_7
    iget-object v2, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    sub-float v6, v13, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v6, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v2, v6, v4, v1, v3}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    goto :goto_9

    :cond_e
    const/4 v4, 0x0

    .line 361
    iget v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->checkBoxProgress:F

    cmpl-float v1, v1, v4

    if-lez v1, :cond_f

    const/16 v1, 0xa

    .line 362
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    iget v2, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->checkBoxProgress:F

    mul-float/2addr v1, v2

    .line 363
    iget-object v2, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    add-float v3, v11, v1

    add-float v4, v9, v1

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v1, v5

    sub-float v6, v13, v1

    sub-float v5, v10, v1

    invoke-virtual {v2, v3, v4, v6, v5}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 364
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->blurImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v3, v4, v6, v5}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    goto :goto_9

    .line 367
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

    .line 370
    :goto_8
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    add-float v2, v11, v3

    add-float/2addr v3, v9

    invoke-virtual {v1, v2, v3, v13, v10}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 371
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->blurImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v2, v3, v13, v10}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 373
    :goto_9
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->isShowingImage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 374
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v8}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 375
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->hasMediaSpoilers()Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-boolean v1, v1, Lorg/telegram/messenger/MessageObject;->isMediaSpoilersRevealedInSharedMedia:Z

    if-nez v1, :cond_12

    .line 376
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    add-float v6, v11, v13

    sub-float/2addr v6, v12

    add-float v5, v9, v10

    .line 377
    invoke-virtual {v8, v11, v9, v6, v5}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 379
    iget v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->spoilerRevealProgress:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_11

    .line 380
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->path:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    .line 381
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->path:Landroid/graphics/Path;

    iget v2, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->spoilerRevealX:F

    iget v3, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->spoilerRevealY:F

    iget v4, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->spoilerMaxRadius:F

    iget v5, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->spoilerRevealProgress:F

    mul-float/2addr v4, v5

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 383
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->path:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v8, v1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 386
    :cond_11
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->blurImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v8}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    const/4 v1, -0x1

    .line 389
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

    .line 390
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

    .line 391
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->mediaSpoilerEffect:Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    invoke-virtual {v1, v8}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->draw(Landroid/graphics/Canvas;)V

    .line 392
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 394
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 396
    :cond_12
    iget v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->highlightProgress:F

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-lez v3, :cond_13

    .line 397
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

    .line 398
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getDrawRegion()Landroid/graphics/RectF;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->sharedResources:Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;

    iget-object v2, v2, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;->highlightPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 402
    :cond_13
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

    .line 403
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->bounds:Landroid/graphics/RectF;

    add-float v6, v11, v13

    sub-float/2addr v6, v12

    add-float v5, v9, v10

    invoke-virtual {v1, v11, v9, v6, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 404
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v8, v1, v15}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->drawDuration(Landroid/graphics/Canvas;Landroid/graphics/RectF;F)V

    .line 406
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->checkBoxBase:Lorg/telegram/ui/Components/CheckBoxBase;

    if-eqz v1, :cond_17

    iget v2, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->style:I

    if-eq v2, v14, :cond_14

    invoke-virtual {v1}, Lorg/telegram/ui/Components/CheckBoxBase;->getProgress()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_17

    goto :goto_a

    :cond_14
    const/4 v2, 0x0

    .line 407
    :goto_a
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 409
    iget v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->style:I

    const/16 v3, 0x19

    const/4 v4, 0x2

    if-ne v1, v14, :cond_15

    .line 410
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

    .line 411
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v10, v1

    goto :goto_b

    .line 413
    :cond_15
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    add-float v6, v13, v1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v6, v1

    move v10, v2

    .line 416
    :goto_b
    invoke-virtual {v8, v6, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 417
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->checkBoxBase:Lorg/telegram/ui/Components/CheckBoxBase;

    invoke-virtual {v1, v8}, Lorg/telegram/ui/Components/CheckBoxBase;->draw(Landroid/graphics/Canvas;)V

    .line 418
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->canvasButton:Lorg/telegram/ui/Components/CanvasButton;

    if-eqz v1, :cond_16

    .line 419
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

    .line 420
    iget-object v2, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->canvasButton:Lorg/telegram/ui/Components/CanvasButton;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/CanvasButton;->setRect(Landroid/graphics/RectF;)V

    .line 422
    :cond_16
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 425
    :cond_17
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 535
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 536
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

    .line 537
    iget p2, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->currentParentColumnsCount:I

    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 538
    div-int/lit8 v0, v0, 0x2

    .line 540
    :cond_1
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 687
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->canvasButton:Lorg/telegram/ui/Components/CanvasButton;

    if-eqz v0, :cond_0

    .line 688
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/CanvasButton;->checkTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 692
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setChecked(ZZ)V
    .locals 7

    .line 594
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

    .line 598
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->checkBoxBase:Lorg/telegram/ui/Components/CheckBoxBase;

    const/4 v3, 0x0

    if-nez v0, :cond_2

    .line 599
    new-instance v0, Lorg/telegram/ui/Components/CheckBoxBase;

    const/16 v4, 0x15

    invoke-direct {v0, p0, v4, v3}, Lorg/telegram/ui/Components/CheckBoxBase;-><init>(Landroid/view/View;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->checkBoxBase:Lorg/telegram/ui/Components/CheckBoxBase;

    const/4 v4, -0x1

    .line 600
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_sharedMedia_photoPlaceholder:I

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxCheck:I

    invoke-virtual {v0, v4, v5, v6}, Lorg/telegram/ui/Components/CheckBoxBase;->setColor(III)V

    .line 601
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->checkBoxBase:Lorg/telegram/ui/Components/CheckBoxBase;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/CheckBoxBase;->setDrawUnchecked(Z)V

    .line 602
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->checkBoxBase:Lorg/telegram/ui/Components/CheckBoxBase;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CheckBoxBase;->setBackgroundType(I)V

    .line 603
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->checkBoxBase:Lorg/telegram/ui/Components/CheckBoxBase;

    const/16 v4, 0x18

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-virtual {v0, v2, v2, v5, v4}, Lorg/telegram/ui/Components/CheckBoxBase;->setBounds(IIII)V

    .line 604
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->attached:Z

    if-eqz v0, :cond_2

    .line 605
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->checkBoxBase:Lorg/telegram/ui/Components/CheckBoxBase;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CheckBoxBase;->onAttachedToWindow()V

    .line 608
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->checkBoxBase:Lorg/telegram/ui/Components/CheckBoxBase;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/CheckBoxBase;->setChecked(ZZ)V

    .line 609
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->animator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_3

    .line 611
    iput-object v3, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->animator:Landroid/animation/ValueAnimator;

    .line 612
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz p2, :cond_5

    const/4 p2, 0x2

    new-array p2, p2, [F

    .line 615
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

    .line 616
    new-instance v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$2;-><init>(Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 623
    iget-object p2, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->animator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xc8

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 624
    iget-object p2, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->animator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$3;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$3;-><init>(Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;Z)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 633
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_3

    :cond_5
    if-eqz p1, :cond_6

    goto :goto_2

    :cond_6
    move v0, v3

    .line 635
    :goto_2
    iput v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->checkBoxProgress:F

    .line 637
    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setCrossfadeView(Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;FI)V
    .locals 0

    .line 570
    iput-object p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->crossfadeView:Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    .line 571
    iput p2, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->crossfadeProgress:F

    int-to-float p1, p3

    .line 572
    iput p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->crossfadeToColumnsCount:F

    return-void
.end method

.method public setGradientView(Lorg/telegram/ui/Components/FlickerLoadingView;)V
    .locals 0

    .line 530
    iput-object p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->globalGradientView:Lorg/telegram/ui/Components/FlickerLoadingView;

    return-void
.end method

.method public setHighlightProgress(F)V
    .locals 1

    .line 645
    iget v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->highlightProgress:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 646
    iput p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->highlightProgress:F

    .line 647
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setImageAlpha(FZ)V
    .locals 1

    .line 552
    iget v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageAlpha:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 553
    iput p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageAlpha:F

    if-eqz p2, :cond_0

    .line 555
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setImageScale(FZ)V
    .locals 1

    .line 561
    iget v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageScale:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 562
    iput p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageScale:F

    if-eqz p2, :cond_0

    .line 564
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setMessageObject(Lorg/telegram/messenger/MessageObject;I)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move/from16 v1, p2

    .line 145
    iget v2, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->currentParentColumnsCount:I

    .line 146
    iput v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->currentParentColumnsCount:I

    .line 147
    iget-object v3, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v3, :cond_0

    if-nez v10, :cond_0

    return-void

    :cond_0
    if-eqz v3, :cond_1

    if-eqz v10, :cond_1

    .line 150
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    if-ne v3, v4, :cond_1

    if-ne v2, v1, :cond_1

    return-void

    .line 153
    :cond_1
    iput-object v10, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v2, 0x1

    const/4 v12, 0x0

    if-eqz v10, :cond_2

    .line 154
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isStory()Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v2

    goto :goto_0

    :cond_2
    move v3, v12

    :goto_0
    iput-boolean v3, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->isStory:Z

    const/4 v13, 0x0

    if-nez v10, :cond_3

    .line 156
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    .line 157
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->blurImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    .line 158
    iput-object v13, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->videoText:Ljava/lang/String;

    .line 159
    iput-object v13, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->videoInfoLayot:Landroid/text/StaticLayout;

    .line 160
    iput-boolean v12, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->showVideoLayout:Z

    .line 161
    iput-boolean v12, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->gradientDrawableLoading:Z

    .line 162
    iput-object v13, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->gradientDrawable:Landroid/graphics/drawable/Drawable;

    return-void

    .line 165
    :cond_3
    iget-boolean v3, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->attached:Z

    if-eqz v3, :cond_4

    .line 166
    iget-object v3, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    .line 167
    iget-object v3, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->blurImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    .line 170
    :cond_4
    iget-object v3, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->restriction_reason:Ljava/util/ArrayList;

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getRestrictionReason(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v3

    .line 173
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    div-int/2addr v4, v1

    int-to-float v4, v4

    sget v5, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v4, v5

    float-to-int v4, v4

    .line 174
    iget-object v5, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->sharedResources:Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;

    invoke-virtual {v5, v4}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;->getFilterString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x140

    const/4 v6, 0x2

    if-gt v1, v6, :cond_5

    .line 177
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v5

    goto :goto_1

    :cond_5
    const/4 v7, 0x3

    .line 185
    :goto_1
    iput-object v13, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->videoText:Ljava/lang/String;

    .line 186
    iput-object v13, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->videoInfoLayot:Landroid/text/StaticLayout;

    .line 187
    iput-boolean v12, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->showVideoLayout:Z

    .line 188
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    goto/16 :goto_6

    .line 190
    :cond_6
    iget-object v3, v10, Lorg/telegram/messenger/MessageObject;->storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    if-eqz v3, :cond_7

    iget-object v7, v3, Lorg/telegram/tgnet/TLRPC$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v7, v7, Lorg/telegram/tgnet/TLRPC$TL_messageMediaUnsupported;

    if-eqz v7, :cond_7

    .line 191
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v1

    iput-wide v1, v3, Lorg/telegram/tgnet/TLRPC$StoryItem;->dialogId:J

    .line 192
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_emoji_recent:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 193
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    const v3, 0x40ffffff    # 7.9999995f

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 194
    iget-object v2, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    new-instance v3, Lorg/telegram/ui/Components/CombinedDrawable;

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    const v5, -0xcccccd

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-direct {v3, v4, v1}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_5

    .line 195
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v3

    const/16 v7, 0x32

    const-string v8, "_b"

    if-eqz v3, :cond_d

    .line 196
    iput-boolean v2, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->showVideoLayout:Z

    const/16 v3, 0x9

    if-eq v1, v3, :cond_8

    .line 198
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getDuration()D

    move-result-wide v14

    double-to-int v1, v14

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->formatShortDuration(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->videoText:Ljava/lang/String;

    .line 200
    :cond_8
    iget-object v3, v10, Lorg/telegram/messenger/MessageObject;->mediaThumb:Lorg/telegram/messenger/ImageLocation;

    if-eqz v3, :cond_a

    .line 201
    iget-object v5, v10, Lorg/telegram/messenger/MessageObject;->strippedThumb:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v5, :cond_9

    .line 202
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

    .line 204
    :cond_9
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v5, v10, Lorg/telegram/messenger/MessageObject;->mediaSmallThumb:Lorg/telegram/messenger/ImageLocation;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-wide v7, v8

    move-object v9, v11

    move-object/from16 v10, p1

    move v11, v14

    invoke-virtual/range {v1 .. v11}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto/16 :goto_5

    .line 207
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v1

    .line 208
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-static {v3, v7}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v3

    .line 209
    iget-object v6, v1, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    iget-boolean v7, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->isStory:Z

    invoke-static {v6, v5, v12, v13, v7}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZLorg/telegram/tgnet/TLRPC$PhotoSize;Z)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v5

    if-ne v3, v5, :cond_b

    .line 210
    iget-boolean v6, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->isStory:Z

    if-nez v6, :cond_b

    move-object v5, v13

    :cond_b
    if-eqz v3, :cond_19

    .line 214
    iget-object v2, v10, Lorg/telegram/messenger/MessageObject;->strippedThumb:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_c

    .line 215
    iget-object v2, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {v5, v1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v3

    iget-object v5, v10, Lorg/telegram/messenger/MessageObject;->strippedThumb:Landroid/graphics/drawable/BitmapDrawable;

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

    .line 217
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

    const-wide/16 v14, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v1, v2

    move-object v2, v5

    move-object v3, v4

    move-object v4, v6

    move-object v5, v7

    move-object v6, v8

    move-wide v7, v14

    move-object/from16 v10, p1

    invoke-virtual/range {v1 .. v11}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto/16 :goto_5

    .line 223
    :cond_d
    iget-object v1, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v1}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v1

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v1, :cond_19

    iget-object v1, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v1}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v1, :cond_19

    iget-object v1, v10, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_19

    .line 224
    iget-boolean v1, v10, Lorg/telegram/messenger/MessageObject;->mediaExists:Z

    if-nez v1, :cond_10

    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->canAutoDownload(Lorg/telegram/messenger/MessageObject;)Z

    move-result v1

    if-nez v1, :cond_10

    iget-boolean v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->isStory:Z

    if-eqz v1, :cond_e

    goto :goto_2

    .line 244
    :cond_e
    iget-object v6, v10, Lorg/telegram/messenger/MessageObject;->strippedThumb:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v6, :cond_f

    .line 245
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

    .line 247
    :cond_f
    iget-object v1, v10, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-static {v1, v7}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v1

    .line 248
    iget-object v2, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, v10, Lorg/telegram/messenger/MessageObject;->photoThumbsObject:Lorg/telegram/tgnet/TLObject;

    invoke-static {v1, v5}, Lorg/telegram/messenger/ImageLocation;->getForObject(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLObject;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v5

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const-string v14, "b"

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v14

    move-object/from16 v10, p1

    invoke-virtual/range {v1 .. v11}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto/16 :goto_5

    .line 225
    :cond_10
    :goto_2
    iget-object v3, v10, Lorg/telegram/messenger/MessageObject;->mediaThumb:Lorg/telegram/messenger/ImageLocation;

    if-eqz v3, :cond_12

    .line 226
    iget-object v5, v10, Lorg/telegram/messenger/MessageObject;->strippedThumb:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v5, :cond_11

    .line 227
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

    .line 229
    :cond_11
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v5, v10, Lorg/telegram/messenger/MessageObject;->mediaSmallThumb:Lorg/telegram/messenger/ImageLocation;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-wide v7, v8

    move-object v9, v11

    move-object/from16 v10, p1

    move v11, v14

    invoke-virtual/range {v1 .. v11}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto/16 :goto_5

    .line 232
    :cond_12
    iget-object v1, v10, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-static {v1, v7}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v1

    .line 233
    iget-object v3, v10, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    iget-boolean v7, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->isStory:Z

    invoke-static {v3, v5, v12, v1, v7}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZLorg/telegram/tgnet/TLRPC$PhotoSize;Z)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v3

    if-ne v3, v1, :cond_13

    move-object v1, v13

    .line 237
    :cond_13
    iget-object v5, v10, Lorg/telegram/messenger/MessageObject;->strippedThumb:Landroid/graphics/drawable/BitmapDrawable;

    const-wide/16 v14, 0x0

    if-eqz v5, :cond_16

    .line 238
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v5, v10, Lorg/telegram/messenger/MessageObject;->photoThumbsObject:Lorg/telegram/tgnet/TLObject;

    invoke-static {v3, v5}, Lorg/telegram/messenger/ImageLocation;->getForObject(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLObject;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, v10, Lorg/telegram/messenger/MessageObject;->strippedThumb:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_14

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    int-to-long v14, v3

    :cond_14
    const/4 v11, 0x0

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

    move-object v6, v9

    move-wide v7, v14

    move-object v9, v11

    move-object/from16 v10, p1

    move/from16 v11, v16

    invoke-virtual/range {v1 .. v11}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto :goto_5

    .line 240
    :cond_16
    iget-object v5, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v7, v10, Lorg/telegram/messenger/MessageObject;->photoThumbsObject:Lorg/telegram/tgnet/TLObject;

    invoke-static {v3, v7}, Lorg/telegram/messenger/ImageLocation;->getForObject(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLObject;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v7

    iget-object v9, v10, Lorg/telegram/messenger/MessageObject;->photoThumbsObject:Lorg/telegram/tgnet/TLObject;

    invoke-static {v1, v9}, Lorg/telegram/messenger/ImageLocation;->getForObject(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLObject;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    if-eqz v3, :cond_17

    iget v1, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    int-to-long v14, v1

    :cond_17
    const/4 v11, 0x0

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

    move-object v4, v9

    move-object v5, v8

    move-wide v6, v14

    move-object v8, v11

    move-object/from16 v9, p1

    move/from16 v10, v16

    invoke-virtual/range {v1 .. v10}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Object;I)V

    :goto_5
    move v2, v12

    :cond_19
    :goto_6
    if-eqz v2, :cond_1a

    .line 256
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->photo_placeholder_in:I

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    .line 259
    :cond_1a
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->blurImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 260
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->blurImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 261
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->blurImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v13}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 263
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

    .line 264
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->blurImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v2, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->stackBlurBitmapMax(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 267
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setStyle(I)V
    .locals 4

    .line 120
    iget v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->style:I

    if-ne v0, p1, :cond_0

    return-void

    .line 123
    :cond_0
    iput p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->style:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 125
    new-instance p1, Lorg/telegram/ui/Components/CheckBoxBase;

    const/16 v1, 0x15

    const/4 v2, 0x0

    invoke-direct {p1, p0, v1, v2}, Lorg/telegram/ui/Components/CheckBoxBase;-><init>(Landroid/view/View;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->checkBoxBase:Lorg/telegram/ui/Components/CheckBoxBase;

    const/4 v1, -0x1

    .line 126
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_sharedMedia_photoPlaceholder:I

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxCheck:I

    invoke-virtual {p1, v1, v2, v3}, Lorg/telegram/ui/Components/CheckBoxBase;->setColor(III)V

    .line 127
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->checkBoxBase:Lorg/telegram/ui/Components/CheckBoxBase;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/CheckBoxBase;->setDrawUnchecked(Z)V

    .line 128
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->checkBoxBase:Lorg/telegram/ui/Components/CheckBoxBase;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/CheckBoxBase;->setBackgroundType(I)V

    .line 129
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->checkBoxBase:Lorg/telegram/ui/Components/CheckBoxBase;

    const/16 v1, 0x18

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {p1, v0, v0, v2, v1}, Lorg/telegram/ui/Components/CheckBoxBase;->setBounds(IIII)V

    .line 130
    iget-boolean p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->attached:Z

    if-eqz p1, :cond_1

    .line 131
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->checkBoxBase:Lorg/telegram/ui/Components/CheckBoxBase;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/CheckBoxBase;->onAttachedToWindow()V

    .line 133
    :cond_1
    new-instance p1, Lorg/telegram/ui/Components/CanvasButton;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/CanvasButton;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->canvasButton:Lorg/telegram/ui/Components/CanvasButton;

    .line 134
    new-instance v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/CanvasButton;->setDelegate(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public setVideoText(Ljava/lang/String;Z)V
    .locals 1

    .line 280
    iput-object p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->videoText:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 281
    :goto_0
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->showVideoLayout:Z

    if-eqz v0, :cond_1

    .line 282
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

    .line 283
    iput-object p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->videoInfoLayot:Landroid/text/StaticLayout;

    .line 285
    :cond_1
    iput-boolean p2, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->drawVideoIcon:Z

    return-void
.end method

.method public startRevealMedia(FF)V
    .locals 4

    .line 483
    iput p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->spoilerRevealX:F

    .line 484
    iput p2, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->spoilerRevealY:F

    .line 486
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-double p1, p1

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

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

    .line 487
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

    .line 488
    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_BOTH:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 489
    new-instance p2, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 493
    new-instance p2, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$1;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$1;-><init>(Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 500
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
