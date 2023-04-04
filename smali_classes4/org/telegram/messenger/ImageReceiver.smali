.class public Lorg/telegram/messenger/ImageReceiver;
.super Ljava/lang/Object;
.source "ImageReceiver.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/ImageReceiver$ReactionLastFrame;,
        Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;,
        Lorg/telegram/messenger/ImageReceiver$SetImageBackup;,
        Lorg/telegram/messenger/ImageReceiver$BitmapHolder;,
        Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;
    }
.end annotation


# static fields
.field public static final DEFAULT_CROSSFADE_DURATION:I = 0x96

.field private static final TYPE_CROSSFDADE:I = 0x2

.field public static final TYPE_IMAGE:I = 0x0

.field public static final TYPE_MEDIA:I = 0x3

.field public static final TYPE_THUMB:I = 0x1

.field private static radii:[F

.field private static selectedColorFilter:Landroid/graphics/PorterDuffColorFilter;

.field private static selectedGroupColorFilter:Landroid/graphics/PorterDuffColorFilter;


# instance fields
.field private allowDecodeSingleFrame:Z

.field private allowLoadingOnAttachedOnly:Z

.field private allowLottieVibration:Z

.field private allowStartAnimation:Z

.field private allowStartLottieAnimation:Z

.field private animateFromIsPressed:I

.field public animatedFileDrawableRepeatMaxCount:I

.field private animationReadySent:Z

.field private attachedToWindow:Z

.field private autoRepeat:I

.field private autoRepeatCount:I

.field private autoRepeatTimeout:J

.field private bitmapRect:Landroid/graphics/RectF;

.field private blendMode:Ljava/lang/Object;

.field private bufferedFrame:I

.field private canceledLoading:Z

.field private centerRotation:Z

.field public clip:Z

.field private colorFilter:Landroid/graphics/ColorFilter;

.field private composeShader:Landroid/graphics/ComposeShader;

.field private crossfadeAlpha:B

.field private crossfadeByScale:F

.field private crossfadeDuration:I

.field private crossfadeImage:Landroid/graphics/drawable/Drawable;

.field private crossfadeKey:Ljava/lang/String;

.field private crossfadeShader:Landroid/graphics/BitmapShader;

.field private crossfadeWithOldImage:Z

.field private crossfadeWithThumb:Z

.field private crossfadingWithThumb:Z

.field private currentAccount:I

.field private currentAlpha:F

.field private currentCacheType:I

.field private currentExt:Ljava/lang/String;

.field private currentGuid:I

.field private currentImageDrawable:Landroid/graphics/drawable/Drawable;

.field private currentImageFilter:Ljava/lang/String;

.field private currentImageKey:Ljava/lang/String;

.field private currentImageLocation:Lorg/telegram/messenger/ImageLocation;

.field private currentKeyQuality:Z

.field private currentLayerNum:I

.field private currentMediaDrawable:Landroid/graphics/drawable/Drawable;

.field private currentMediaFilter:Ljava/lang/String;

.field private currentMediaKey:Ljava/lang/String;

.field private currentMediaLocation:Lorg/telegram/messenger/ImageLocation;

.field private currentOpenedLayerFlags:I

.field private currentParentObject:Ljava/lang/Object;

.field private currentSize:J

.field private currentThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private currentThumbFilter:Ljava/lang/String;

.field private currentThumbKey:Ljava/lang/String;

.field private currentThumbLocation:Lorg/telegram/messenger/ImageLocation;

.field private currentTime:J

.field private delegate:Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;

.field private drawRegion:Landroid/graphics/RectF;

.field private endTime:J

.field private fileLoadingPriority:I

.field private forceCrossfade:Z

.field private forceLoding:Z

.field private forcePreview:Z

.field private gradientBitmap:Landroid/graphics/Bitmap;

.field private gradientShader:Landroid/graphics/BitmapShader;

.field private ignoreImageSet:Z

.field public ignoreNotifications:Z

.field private imageH:F

.field protected imageOrientation:I

.field private imageShader:Landroid/graphics/BitmapShader;

.field private imageTag:I

.field private imageW:F

.field private imageX:F

.field private imageY:F

.field private invalidateAll:Z

.field private isAspectFit:Z

.field private isLastFrame:I

.field private isPressed:I

.field private isRoundRect:Z

.field private isRoundVideo:Z

.field private isVisible:Z

.field private lastUpdateAlphaTime:J

.field private legacyBitmap:Landroid/graphics/Bitmap;

.field private legacyCanvas:Landroid/graphics/Canvas;

.field private legacyPaint:Landroid/graphics/Paint;

.field private legacyShader:Landroid/graphics/BitmapShader;

.field private loadingOperations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private manualAlphaAnimator:Z

.field private mediaShader:Landroid/graphics/BitmapShader;

.field private mediaTag:I

.field private needsQualityThumb:Z

.field private overrideAlpha:F

.field private param:I

.field private parentView:Landroid/view/View;

.field private pressedProgress:F

.field private previousAlpha:F

.field private qulityThumbDocument:Lorg/telegram/tgnet/TLRPC$Document;

.field private roundPaint:Landroid/graphics/Paint;

.field private roundPath:Landroid/graphics/Path;

.field private roundRadius:[I

.field private roundRect:Landroid/graphics/RectF;

.field private setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

.field private shaderMatrix:Landroid/graphics/Matrix;

.field private shouldGenerateQualityThumb:Z

.field private sideClip:F

.field private skipUpdateFrame:Z

.field private startTime:J

.field private staticThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private strippedLocation:Lorg/telegram/messenger/ImageLocation;

.field private thumbOrientation:I

.field public thumbShader:Landroid/graphics/BitmapShader;

.field private thumbTag:I

.field private uniqKeyPrefix:Ljava/lang/String;

.field private useRoundForThumb:Z

.field private useSharedAnimationQueue:Z

.field private videoThumbIsSame:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 206
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    const v2, -0x222223

    invoke-direct {v0, v2, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    sput-object v0, Lorg/telegram/messenger/ImageReceiver;->selectedColorFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 207
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    const v2, -0x444445

    invoke-direct {v0, v2, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    sput-object v0, Lorg/telegram/messenger/ImageReceiver;->selectedGroupColorFilter:Landroid/graphics/PorterDuffColorFilter;

    const/16 v0, 0x8

    new-array v0, v0, [F

    .line 302
    sput-object v0, Lorg/telegram/messenger/ImageReceiver;->radii:[F

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 332
    invoke-direct {p0, v0}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 210
    iput v0, p0, Lorg/telegram/messenger/ImageReceiver;->fileLoadingPriority:I

    .line 253
    iput-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->useRoundForThumb:Z

    .line 265
    iput-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->allowLottieVibration:Z

    .line 266
    iput-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->allowStartAnimation:Z

    .line 267
    iput-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->allowStartLottieAnimation:Z

    .line 270
    iput v0, p0, Lorg/telegram/messenger/ImageReceiver;->autoRepeat:I

    const/4 v1, -0x1

    .line 271
    iput v1, p0, Lorg/telegram/messenger/ImageReceiver;->autoRepeatCount:I

    .line 289
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->drawRegion:Landroid/graphics/RectF;

    .line 290
    iput-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->isVisible:Z

    const/4 v1, 0x4

    new-array v1, v1, [I

    .line 294
    iput-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->roundRadius:[I

    .line 295
    iput-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->isRoundRect:Z

    .line 298
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->roundRect:Landroid/graphics/RectF;

    .line 299
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->bitmapRect:Landroid/graphics/RectF;

    .line 300
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->shaderMatrix:Landroid/graphics/Matrix;

    .line 301
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->roundPath:Landroid/graphics/Path;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 303
    iput v1, p0, Lorg/telegram/messenger/ImageReceiver;->overrideAlpha:F

    .line 308
    iput v1, p0, Lorg/telegram/messenger/ImageReceiver;->previousAlpha:F

    .line 310
    iput-byte v0, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeAlpha:B

    const v1, 0x3d4ccccd    # 0.05f

    .line 313
    iput v1, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeByScale:F

    const/16 v1, 0x96

    .line 318
    iput v1, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeDuration:I

    .line 322
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->loadingOperations:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 325
    iput-boolean v1, p0, Lorg/telegram/messenger/ImageReceiver;->allowLoadingOnAttachedOnly:Z

    .line 327
    iput-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->clip:Z

    .line 336
    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->parentView:Landroid/view/View;

    .line 337
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->roundPaint:Landroid/graphics/Paint;

    .line 338
    sget p1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput p1, p0, Lorg/telegram/messenger/ImageReceiver;->currentAccount:I

    return-void
.end method

.method private checkAlphaAnimation(ZLorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)V
    .locals 8

    .line 1684
    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->manualAlphaAnimator:Z

    if-eqz v0, :cond_0

    return-void

    .line 1687
    :cond_0
    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_6

    if-nez p1, :cond_4

    if-eqz p2, :cond_3

    .line 1690
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1691
    iget-wide v4, p0, Lorg/telegram/messenger/ImageReceiver;->lastUpdateAlphaTime:J

    sub-long/2addr v2, v4

    const-wide/16 v6, 0x0

    cmp-long p1, v4, v6

    if-nez p1, :cond_1

    const-wide/16 v2, 0x10

    :cond_1
    const-wide/16 v4, 0x1e

    cmp-long p1, v2, v4

    if-lez p1, :cond_2

    .line 1695
    sget p1, Lorg/telegram/messenger/AndroidUtilities;->screenRefreshRate:F

    const/high16 v0, 0x42700000    # 60.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    move-wide v2, v4

    .line 1698
    :cond_2
    iget p1, p0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    long-to-float v0, v2

    iget v2, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeDuration:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    add-float/2addr p1, v0

    iput p1, p0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    goto :goto_0

    :cond_3
    const/high16 p1, 0x41800000    # 16.0f

    .line 1700
    iget v2, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeDuration:I

    int-to-float v2, v2

    div-float/2addr p1, v2

    add-float/2addr v0, p1

    iput v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    .line 1702
    :goto_0
    iget p1, p0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    cmpl-float p1, p1, v1

    if-lez p1, :cond_4

    .line 1703
    iput v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    .line 1704
    iput v1, p0, Lorg/telegram/messenger/ImageReceiver;->previousAlpha:F

    .line 1705
    iget-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeImage:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_4

    const/4 p1, 0x2

    const/4 v0, 0x0

    .line 1706
    invoke-direct {p0, v0, p1}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;I)V

    .line 1707
    iput-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeShader:Landroid/graphics/BitmapShader;

    :cond_4
    if-eqz p2, :cond_5

    .line 1712
    new-instance p1, Lorg/telegram/messenger/ImageReceiver$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/telegram/messenger/ImageReceiver$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/ImageReceiver;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 1714
    :cond_5
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->invalidate()V

    :cond_6
    :goto_1
    return-void
.end method

.method private drawBitmapDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/BitmapDrawable;Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;I)V
    .locals 10

    if-eqz p3, :cond_3

    .line 1613
    instance-of v0, p2, Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v0, :cond_0

    .line 1614
    move-object v1, p2

    check-cast v1, Lorg/telegram/ui/Components/RLottieDrawable;

    iget v3, p3, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->imageX:F

    iget v4, p3, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->imageY:F

    iget v5, p3, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->imageW:F

    iget v6, p3, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->imageH:F

    iget-object v8, p3, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->colorFilter:Landroid/graphics/ColorFilter;

    iget v9, p3, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->threadIndex:I

    move-object v2, p1

    move v7, p4

    invoke-virtual/range {v1 .. v9}, Lorg/telegram/ui/Components/RLottieDrawable;->drawInBackground(Landroid/graphics/Canvas;FFFFILandroid/graphics/ColorFilter;I)V

    goto/16 :goto_0

    .line 1615
    :cond_0
    instance-of v0, p2, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v0, :cond_1

    .line 1616
    move-object v1, p2

    check-cast v1, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    iget v3, p3, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->imageX:F

    iget v4, p3, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->imageY:F

    iget v5, p3, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->imageW:F

    iget v6, p3, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->imageH:F

    iget-object v8, p3, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->colorFilter:Landroid/graphics/ColorFilter;

    iget v9, p3, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->threadIndex:I

    move-object v2, p1

    move v7, p4

    invoke-virtual/range {v1 .. v9}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->drawInBackground(Landroid/graphics/Canvas;FFFFILandroid/graphics/ColorFilter;I)V

    goto :goto_0

    .line 1618
    :cond_1
    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 1620
    iget-object v0, p3, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->paint:Landroid/graphics/Paint;

    if-nez v0, :cond_2

    .line 1621
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p3, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->paint:Landroid/graphics/Paint;

    .line 1623
    :cond_2
    iget-object v0, p3, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1624
    iget-object p4, p3, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->paint:Landroid/graphics/Paint;

    iget-object v0, p3, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->colorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 1625
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1626
    iget p4, p3, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->imageX:F

    iget v0, p3, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->imageY:F

    invoke-virtual {p1, p4, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1627
    iget p4, p3, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->imageW:F

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p4, v0

    iget v0, p3, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->imageH:F

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p1, p4, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1628
    iget-object p3, p3, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->paint:Landroid/graphics/Paint;

    const/4 p4, 0x0

    invoke-virtual {p1, p2, p4, p4, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1629
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 1633
    :cond_3
    invoke-virtual {p2, p4}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 1634
    instance-of p3, p2, Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz p3, :cond_4

    .line 1635
    move-object v0, p2

    check-cast v0, Lorg/telegram/ui/Components/RLottieDrawable;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-wide v4, p0, Lorg/telegram/messenger/ImageReceiver;->currentTime:J

    const/4 v6, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Components/RLottieDrawable;->drawInternal(Landroid/graphics/Canvas;Landroid/graphics/Paint;ZJI)V

    goto :goto_0

    .line 1636
    :cond_4
    instance-of p3, p2, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz p3, :cond_5

    .line 1637
    move-object v0, p2

    check-cast v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    const/4 v2, 0x0

    iget-wide v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentTime:J

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->drawInternal(Landroid/graphics/Canvas;ZJI)V

    goto :goto_0

    .line 1639
    :cond_5
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_6
    :goto_0
    return-void
.end method

.method private drawDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;ILandroid/graphics/BitmapShader;ILorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)V
    .locals 8

    .line 1135
    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->isPressed:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->pressedProgress:F

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_1

    const v2, 0x3dda740e

    sub-float/2addr v0, v2

    .line 1136
    iput v0, p0, Lorg/telegram/messenger/ImageReceiver;->pressedProgress:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 1138
    iput v1, p0, Lorg/telegram/messenger/ImageReceiver;->pressedProgress:F

    .line 1140
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->invalidate()V

    .line 1142
    :cond_1
    iget v6, p0, Lorg/telegram/messenger/ImageReceiver;->isPressed:I

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz v6, :cond_2

    .line 1143
    iput v0, p0, Lorg/telegram/messenger/ImageReceiver;->pressedProgress:F

    .line 1144
    iput v6, p0, Lorg/telegram/messenger/ImageReceiver;->animateFromIsPressed:I

    .line 1146
    :cond_2
    iget v2, p0, Lorg/telegram/messenger/ImageReceiver;->pressedProgress:F

    cmpl-float v1, v2, v1

    if-eqz v1, :cond_4

    cmpl-float v0, v2, v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move-object v7, p6

    .line 1149
    invoke-virtual/range {v0 .. v7}, Lorg/telegram/messenger/ImageReceiver;->drawDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;ILandroid/graphics/BitmapShader;IILorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)V

    int-to-float v0, p3

    .line 1150
    iget v1, p0, Lorg/telegram/messenger/ImageReceiver;->pressedProgress:F

    mul-float/2addr v0, v1

    float-to-int v3, v0

    iget v6, p0, Lorg/telegram/messenger/ImageReceiver;->animateFromIsPressed:I

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lorg/telegram/messenger/ImageReceiver;->drawDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;ILandroid/graphics/BitmapShader;IILorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)V

    goto :goto_1

    :cond_4
    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move-object v7, p6

    .line 1147
    invoke-virtual/range {v0 .. v7}, Lorg/telegram/messenger/ImageReceiver;->drawDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;ILandroid/graphics/BitmapShader;IILorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)V

    :goto_1
    return-void
.end method

.method private hasRoundRadius()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private loadImage()V
    .locals 1

    .line 728
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/ImageLoader;->loadImageForImageReceiver(Lorg/telegram/messenger/ImageReceiver;)V

    .line 729
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->invalidate()V

    return-void
.end method

.method private onBitmapException(Landroid/graphics/drawable/Drawable;)V
    .locals 13

    .line 1670
    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaKey:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1671
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageLoader;->removeImage(Ljava/lang/String;)V

    .line 1672
    iput-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaKey:Ljava/lang/String;

    goto :goto_0

    .line 1673
    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageKey:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1674
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageLoader;->removeImage(Ljava/lang/String;)V

    .line 1675
    iput-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageKey:Ljava/lang/String;

    goto :goto_0

    .line 1676
    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v1, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1677
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageLoader;->removeImage(Ljava/lang/String;)V

    .line 1678
    iput-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    .line 1680
    :cond_2
    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaLocation:Lorg/telegram/messenger/ImageLocation;

    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaFilter:Ljava/lang/String;

    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageLocation:Lorg/telegram/messenger/ImageLocation;

    iget-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageFilter:Ljava/lang/String;

    iget-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbLocation:Lorg/telegram/messenger/ImageLocation;

    iget-object v6, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbFilter:Ljava/lang/String;

    iget-object v7, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget-wide v8, p0, Lorg/telegram/messenger/ImageReceiver;->currentSize:J

    iget-object v10, p0, Lorg/telegram/messenger/ImageReceiver;->currentExt:Ljava/lang/String;

    iget-object v11, p0, Lorg/telegram/messenger/ImageReceiver;->currentParentObject:Ljava/lang/Object;

    iget v12, p0, Lorg/telegram/messenger/ImageReceiver;->currentCacheType:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v12}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method

.method private recycleBitmap(Ljava/lang/String;I)V
    .locals 7

    const/4 v0, 0x2

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-ne p2, v1, :cond_0

    .line 2788
    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaKey:Ljava/lang/String;

    .line 2789
    iget-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    if-ne p2, v0, :cond_1

    .line 2791
    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeKey:Ljava/lang/String;

    .line 2792
    iget-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeImage:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    if-ne p2, v2, :cond_2

    .line 2794
    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    .line 2795
    iget-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 2797
    :cond_2
    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageKey:Ljava/lang/String;

    .line 2798
    iget-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageDrawable:Landroid/graphics/drawable/Drawable;

    :goto_0
    if-eqz v3, :cond_4

    const-string v5, "-"

    .line 2800
    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "strippedmessage-"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2801
    :cond_3
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v5

    invoke-virtual {v5, v3}, Lorg/telegram/messenger/ImageLoader;->getReplacedKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    move-object v3, v5

    .line 2806
    :cond_4
    instance-of v5, v4, Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v5, :cond_5

    .line 2807
    move-object v5, v4

    check-cast v5, Lorg/telegram/ui/Components/RLottieDrawable;

    .line 2808
    invoke-virtual {v5, p0}, Lorg/telegram/ui/Components/RLottieDrawable;->removeParentView(Lorg/telegram/messenger/ImageReceiver;)V

    .line 2810
    :cond_5
    instance-of v5, v4, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v5, :cond_6

    .line 2811
    move-object v5, v4

    check-cast v5, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    .line 2812
    invoke-virtual {v5, p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->removeParent(Lorg/telegram/messenger/ImageReceiver;)V

    :cond_6
    if-eqz v3, :cond_c

    if-eqz p1, :cond_7

    .line 2814
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    :cond_7
    if-eqz v4, :cond_c

    .line 2815
    instance-of p1, v4, Lorg/telegram/ui/Components/RLottieDrawable;

    const/4 v5, 0x0

    if-eqz p1, :cond_8

    .line 2816
    check-cast v4, Lorg/telegram/ui/Components/RLottieDrawable;

    .line 2817
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object p1

    invoke-virtual {p1, v3}, Lorg/telegram/messenger/ImageLoader;->decrementUseCount(Ljava/lang/String;)Z

    move-result p1

    .line 2818
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v6

    invoke-virtual {v6, v3, v2}, Lorg/telegram/messenger/ImageLoader;->isInMemCache(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_c

    if-eqz p1, :cond_c

    .line 2820
    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RLottieDrawable;->recycle(Z)V

    goto :goto_1

    .line 2823
    :cond_8
    instance-of p1, v4, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz p1, :cond_b

    .line 2824
    check-cast v4, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    .line 2825
    iget-boolean p1, v4, Lorg/telegram/ui/Components/AnimatedFileDrawable;->isWebmSticker:Z

    if-eqz p1, :cond_a

    .line 2826
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object p1

    invoke-virtual {p1, v3}, Lorg/telegram/messenger/ImageLoader;->decrementUseCount(Ljava/lang/String;)Z

    move-result p1

    .line 2827
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v5

    invoke-virtual {v5, v3, v2}, Lorg/telegram/messenger/ImageLoader;->isInMemCache(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_9

    if-eqz p1, :cond_c

    .line 2829
    invoke-virtual {v4}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->recycle()V

    goto :goto_1

    :cond_9
    if-eqz p1, :cond_c

    .line 2832
    invoke-virtual {v4}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->stop()V

    goto :goto_1

    .line 2835
    :cond_a
    invoke-virtual {v4}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getParents()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 2836
    invoke-virtual {v4}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->recycle()V

    goto :goto_1

    .line 2839
    :cond_b
    instance-of p1, v4, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p1, :cond_c

    .line 2840
    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 2841
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/telegram/messenger/ImageLoader;->decrementUseCount(Ljava/lang/String;)Z

    move-result v4

    .line 2842
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v6

    invoke-virtual {v6, v3, v5}, Lorg/telegram/messenger/ImageLoader;->isInMemCache(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_c

    if-eqz v4, :cond_c

    .line 2844
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2845
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2846
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->recycleBitmaps(Ljava/util/List;)V

    :cond_c
    :goto_1
    const/4 p1, 0x0

    if-ne p2, v1, :cond_d

    .line 2852
    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaKey:Ljava/lang/String;

    .line 2853
    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaDrawable:Landroid/graphics/drawable/Drawable;

    .line 2854
    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->mediaShader:Landroid/graphics/BitmapShader;

    goto :goto_2

    :cond_d
    if-ne p2, v0, :cond_e

    .line 2856
    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeKey:Ljava/lang/String;

    .line 2857
    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeImage:Landroid/graphics/drawable/Drawable;

    .line 2858
    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeShader:Landroid/graphics/BitmapShader;

    goto :goto_2

    :cond_e
    if-ne p2, v2, :cond_f

    .line 2860
    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 2861
    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    .line 2862
    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->thumbShader:Landroid/graphics/BitmapShader;

    goto :goto_2

    .line 2864
    :cond_f
    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 2865
    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageKey:Ljava/lang/String;

    .line 2866
    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->imageShader:Landroid/graphics/BitmapShader;

    :goto_2
    return-void
.end method

.method private setDrawableShader(Landroid/graphics/drawable/Drawable;Landroid/graphics/BitmapShader;)V
    .locals 2

    .line 935
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_5

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    goto/16 :goto_0

    .line 937
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    .line 938
    iput-object p2, p0, Lorg/telegram/messenger/ImageReceiver;->mediaShader:Landroid/graphics/BitmapShader;

    goto/16 :goto_1

    .line 939
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_6

    .line 940
    iput-object p2, p0, Lorg/telegram/messenger/ImageReceiver;->imageShader:Landroid/graphics/BitmapShader;

    .line 941
    iget-object p2, p0, Lorg/telegram/messenger/ImageReceiver;->gradientShader:Landroid/graphics/BitmapShader;

    if-eqz p2, :cond_6

    instance-of p2, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p2, :cond_6

    .line 942
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    if-lt p2, v0, :cond_2

    .line 943
    new-instance p1, Landroid/graphics/ComposeShader;

    iget-object p2, p0, Lorg/telegram/messenger/ImageReceiver;->gradientShader:Landroid/graphics/BitmapShader;

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->imageShader:Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p2, v0, v1}, Landroid/graphics/ComposeShader;-><init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/PorterDuff$Mode;)V

    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->composeShader:Landroid/graphics/ComposeShader;

    goto :goto_1

    .line 945
    :cond_2
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 946
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    .line 947
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    .line 948
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->legacyBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, p2, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->legacyBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-eq v0, p1, :cond_6

    .line 949
    :cond_3
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->legacyBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 950
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 952
    :cond_4
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->legacyBitmap:Landroid/graphics/Bitmap;

    .line 953
    new-instance p1, Landroid/graphics/Canvas;

    iget-object p2, p0, Lorg/telegram/messenger/ImageReceiver;->legacyBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p1, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->legacyCanvas:Landroid/graphics/Canvas;

    .line 954
    new-instance p1, Landroid/graphics/BitmapShader;

    iget-object p2, p0, Lorg/telegram/messenger/ImageReceiver;->legacyBitmap:Landroid/graphics/Bitmap;

    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {p1, p2, v0, v0}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->legacyShader:Landroid/graphics/BitmapShader;

    .line 955
    iget-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->legacyPaint:Landroid/graphics/Paint;

    if-nez p1, :cond_6

    .line 956
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->legacyPaint:Landroid/graphics/Paint;

    .line 957
    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, v0}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_1

    .line 936
    :cond_5
    :goto_0
    iput-object p2, p0, Lorg/telegram/messenger/ImageReceiver;->thumbShader:Landroid/graphics/BitmapShader;

    :cond_6
    :goto_1
    return-void
.end method

.method private setStaticDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 915
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 919
    instance-of v2, v0, Lorg/telegram/ui/Components/AttachableDrawable;

    if-eqz v2, :cond_2

    .line 920
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 923
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object v1, v0

    check-cast v1, Lorg/telegram/ui/Components/AttachableDrawable;

    .line 925
    :cond_2
    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 926
    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->attachedToWindow:Z

    if-eqz v0, :cond_3

    instance-of v0, p1, Lorg/telegram/ui/Components/AttachableDrawable;

    if-eqz v0, :cond_3

    .line 927
    check-cast p1, Lorg/telegram/ui/Components/AttachableDrawable;

    invoke-interface {p1, p0}, Lorg/telegram/ui/Components/AttachableDrawable;->onAttachedToWindow(Lorg/telegram/messenger/ImageReceiver;)V

    .line 929
    :cond_3
    iget-boolean p1, p0, Lorg/telegram/messenger/ImageReceiver;->attachedToWindow:Z

    if-eqz p1, :cond_4

    if-eqz v1, :cond_4

    .line 930
    invoke-interface {v1, p0}, Lorg/telegram/ui/Components/AttachableDrawable;->onDetachedFromWindow(Lorg/telegram/messenger/ImageReceiver;)V

    :cond_4
    return-void
.end method

.method private updateDrawableRadius(Landroid/graphics/drawable/Drawable;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 978
    :cond_0
    instance-of v0, p1, Lorg/telegram/ui/Components/ClipRoundedDrawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 979
    check-cast p1, Lorg/telegram/ui/Components/ClipRoundedDrawable;

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->roundRadius:[I

    aget v1, v0, v1

    int-to-float v1, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    int-to-float v2, v2

    const/4 v3, 0x2

    aget v3, v0, v3

    int-to-float v3, v3

    const/4 v4, 0x3

    aget v0, v0, v4

    int-to-float v0, v0

    invoke-virtual {p1, v1, v2, v3, v0}, Lorg/telegram/ui/Components/ClipRoundedDrawable;->setRadii(FFFF)V

    goto :goto_1

    .line 980
    :cond_1
    invoke-direct {p0}, Lorg/telegram/messenger/ImageReceiver;->hasRoundRadius()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->gradientShader:Landroid/graphics/BitmapShader;

    if-eqz v0, :cond_3

    :cond_2
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v0, :cond_4

    instance-of v0, p1, Lorg/telegram/ui/Components/AvatarDrawable;

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 995
    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/ImageReceiver;->setDrawableShader(Landroid/graphics/drawable/Drawable;Landroid/graphics/BitmapShader;)V

    goto :goto_1

    .line 981
    :cond_4
    :goto_0
    instance-of v0, p1, Lorg/telegram/ui/Components/AvatarDrawable;

    if-eqz v0, :cond_5

    .line 982
    check-cast p1, Lorg/telegram/ui/Components/AvatarDrawable;

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->roundRadius:[I

    aget v0, v0, v1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/AvatarDrawable;->setRoundRadius(I)V

    goto :goto_1

    .line 984
    :cond_5
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 985
    instance-of v1, v0, Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v1, :cond_6

    goto :goto_1

    .line 987
    :cond_6
    instance-of v1, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v1, :cond_7

    .line 988
    check-cast p1, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    .line 989
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->roundRadius:[I

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->setRoundRadius([I)V

    goto :goto_1

    .line 990
    :cond_7
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 991
    new-instance v1, Landroid/graphics/BitmapShader;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v0, v2, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-direct {p0, p1, v1}, Lorg/telegram/messenger/ImageReceiver;->setDrawableShader(Landroid/graphics/drawable/Drawable;Landroid/graphics/BitmapShader;)V

    :cond_8
    :goto_1
    return-void
.end method


# virtual methods
.method public addLoadingImageRunnable(Ljava/lang/Runnable;)V
    .locals 1

    .line 2966
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->loadingOperations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public canInvertBitmap()Z
    .locals 1

    .line 733
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lorg/telegram/messenger/ExtendedBitmapDrawable;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lorg/telegram/messenger/ExtendedBitmapDrawable;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lorg/telegram/messenger/ExtendedBitmapDrawable;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lorg/telegram/messenger/ExtendedBitmapDrawable;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public cancelLoadImage()V
    .locals 2

    const/4 v0, 0x0

    .line 342
    iput-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->forceLoding:Z

    .line 343
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/ImageLoader;->cancelLoadingForImageReceiver(Lorg/telegram/messenger/ImageReceiver;Z)V

    .line 344
    iput-boolean v1, p0, Lorg/telegram/messenger/ImageReceiver;->canceledLoading:Z

    return-void
.end method

.method public clearImage()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    const/4 v1, 0x0

    .line 1001
    invoke-direct {p0, v1, v0}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1003
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/ImageLoader;->cancelLoadingForImageReceiver(Lorg/telegram/messenger/ImageReceiver;Z)V

    return-void
.end method

.method protected customDraw(Landroid/graphics/Canvas;Lorg/telegram/ui/Components/AnimatedFileDrawable;Lorg/telegram/ui/Components/RLottieDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/BitmapShader;Landroid/graphics/drawable/Drawable;Landroid/graphics/BitmapShader;Landroid/graphics/drawable/Drawable;Landroid/graphics/BitmapShader;ZZLandroid/graphics/drawable/Drawable;Landroid/graphics/BitmapShader;Landroid/graphics/drawable/Drawable;FFF[ILorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 3

    .line 2880
    sget p2, Lorg/telegram/messenger/NotificationCenter;->didReplacedPhotoInMemCache:I

    const/4 v0, 0x0

    if-ne p1, p2, :cond_2

    .line 2881
    aget-object p1, p3, v0

    check-cast p1, Ljava/lang/String;

    .line 2882
    iget-object p2, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaKey:Ljava/lang/String;

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2883
    aget-object p2, p3, v0

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaKey:Ljava/lang/String;

    .line 2884
    aget-object p2, p3, v1

    check-cast p2, Lorg/telegram/messenger/ImageLocation;

    iput-object p2, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaLocation:Lorg/telegram/messenger/ImageLocation;

    .line 2885
    iget-object p2, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    if-eqz p2, :cond_0

    .line 2886
    aget-object v2, p3, v1

    check-cast v2, Lorg/telegram/messenger/ImageLocation;

    iput-object v2, p2, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->mediaLocation:Lorg/telegram/messenger/ImageLocation;

    .line 2889
    :cond_0
    iget-object p2, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageKey:Ljava/lang/String;

    if-eqz p2, :cond_1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 2890
    aget-object p2, p3, v0

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageKey:Ljava/lang/String;

    .line 2891
    aget-object p2, p3, v1

    check-cast p2, Lorg/telegram/messenger/ImageLocation;

    iput-object p2, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageLocation:Lorg/telegram/messenger/ImageLocation;

    .line 2892
    iget-object p2, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    if-eqz p2, :cond_1

    .line 2893
    aget-object v2, p3, v1

    check-cast v2, Lorg/telegram/messenger/ImageLocation;

    iput-object v2, p2, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->imageLocation:Lorg/telegram/messenger/ImageLocation;

    .line 2896
    :cond_1
    iget-object p2, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    if-eqz p2, :cond_9

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 2897
    aget-object p1, p3, v0

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    .line 2898
    aget-object p1, p3, v1

    check-cast p1, Lorg/telegram/messenger/ImageLocation;

    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbLocation:Lorg/telegram/messenger/ImageLocation;

    .line 2899
    iget-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    if-eqz p1, :cond_9

    .line 2900
    aget-object p2, p3, v1

    check-cast p2, Lorg/telegram/messenger/ImageLocation;

    iput-object p2, p1, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->thumbLocation:Lorg/telegram/messenger/ImageLocation;

    goto/16 :goto_0

    .line 2903
    :cond_2
    sget p2, Lorg/telegram/messenger/NotificationCenter;->stopAllHeavyOperations:I

    if-ne p1, p2, :cond_5

    .line 2904
    aget-object p1, p3, v0

    check-cast p1, Ljava/lang/Integer;

    .line 2905
    iget p2, p0, Lorg/telegram/messenger/ImageReceiver;->currentLayerNum:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-lt p2, p3, :cond_3

    return-void

    .line 2908
    :cond_3
    iget p2, p0, Lorg/telegram/messenger/ImageReceiver;->currentOpenedLayerFlags:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    or-int/2addr p1, p2

    iput p1, p0, Lorg/telegram/messenger/ImageReceiver;->currentOpenedLayerFlags:I

    if-eqz p1, :cond_9

    .line 2910
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 2911
    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieDrawable;->isHeavyDrawable()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 2912
    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieDrawable;->stop()V

    .line 2914
    :cond_4
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 2916
    invoke-virtual {p1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->stop()V

    goto :goto_0

    .line 2919
    :cond_5
    sget p2, Lorg/telegram/messenger/NotificationCenter;->startAllHeavyOperations:I

    if-ne p1, p2, :cond_9

    .line 2920
    aget-object p1, p3, v0

    check-cast p1, Ljava/lang/Integer;

    .line 2921
    iget p2, p0, Lorg/telegram/messenger/ImageReceiver;->currentLayerNum:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-ge p2, p3, :cond_9

    iget p2, p0, Lorg/telegram/messenger/ImageReceiver;->currentOpenedLayerFlags:I

    if-nez p2, :cond_6

    goto :goto_0

    .line 2924
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    not-int p1, p1

    and-int/2addr p1, p2

    iput p1, p0, Lorg/telegram/messenger/ImageReceiver;->currentOpenedLayerFlags:I

    if-nez p1, :cond_9

    .line 2926
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 2928
    iget-boolean p2, p0, Lorg/telegram/messenger/ImageReceiver;->allowLottieVibration:Z

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RLottieDrawable;->setAllowVibration(Z)V

    .line 2930
    :cond_7
    iget-boolean p2, p0, Lorg/telegram/messenger/ImageReceiver;->allowStartLottieAnimation:Z

    if-eqz p2, :cond_8

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieDrawable;->isHeavyDrawable()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 2931
    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    .line 2933
    :cond_8
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object p1

    .line 2934
    iget-boolean p2, p0, Lorg/telegram/messenger/ImageReceiver;->allowStartAnimation:Z

    if-eqz p2, :cond_9

    if-eqz p1, :cond_9

    .line 2935
    invoke-virtual {p1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->checkRepeat()V

    .line 2936
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->invalidate()V

    nop

    :cond_9
    :goto_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1745
    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)Z

    move-result p1

    return p1
.end method

.method public draw(Landroid/graphics/Canvas;Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)Z
    .locals 41

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v0, p2

    .line 1750
    iget-object v1, v15, Lorg/telegram/messenger/ImageReceiver;->gradientBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, v15, Lorg/telegram/messenger/ImageReceiver;->currentImageKey:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1751
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1752
    iget v1, v15, Lorg/telegram/messenger/ImageReceiver;->imageX:F

    iget v2, v15, Lorg/telegram/messenger/ImageReceiver;->imageY:F

    iget v3, v15, Lorg/telegram/messenger/ImageReceiver;->imageW:F

    add-float/2addr v3, v1

    iget v4, v15, Lorg/telegram/messenger/ImageReceiver;->imageH:F

    add-float/2addr v4, v2

    invoke-virtual {v14, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    const/high16 v1, -0x1000000

    .line 1753
    invoke-virtual {v14, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    :cond_0
    const/16 v21, 0x0

    if-eqz v0, :cond_1

    const/16 v22, 0x1

    goto :goto_0

    :cond_1
    move/from16 v22, v21

    :goto_0
    if-eqz v22, :cond_2

    .line 1779
    :try_start_0
    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->access$600(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object v1

    .line 1780
    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->access$700(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v2

    .line 1781
    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->access$400(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)[I

    move-result-object v3

    .line 1782
    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->access$800(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 1783
    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->access$900(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)Landroid/graphics/BitmapShader;

    move-result-object v5

    .line 1784
    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->access$1000(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 1785
    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->access$1100(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)Landroid/graphics/BitmapShader;

    move-result-object v7

    .line 1786
    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->access$1200(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)Landroid/graphics/BitmapShader;

    move-result-object v8

    .line 1787
    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->access$1300(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 1788
    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->access$1400(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)Z

    move-result v10

    .line 1789
    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->access$1500(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)Z

    move-result v11

    .line 1790
    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->access$1600(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 1791
    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->access$1700(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    .line 1792
    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->access$1800(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)F

    move-result v17

    .line 1793
    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->access$1900(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)F

    move-result v18

    .line 1794
    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->access$2000(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)Landroid/graphics/BitmapShader;

    move-result-object v19

    .line 1795
    iget-boolean v13, v0, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->animationNotReady:Z

    move-object/from16 v23, v1

    .line 1796
    iget v1, v0, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->overrideAlpha:F

    move-object/from16 v24, v5

    move-object/from16 v25, v7

    move-object/from16 v26, v8

    move-object v7, v9

    move/from16 v27, v11

    move/from16 v28, v13

    move-object/from16 v11, v16

    move/from16 v5, v17

    move/from16 v29, v18

    move-object/from16 v30, v19

    move-object/from16 v13, v23

    move/from16 v23, v1

    move-object v9, v4

    move-object v8, v6

    move/from16 v16, v10

    move-object v6, v12

    move-object v12, v2

    move-object v10, v3

    goto/16 :goto_2

    .line 1798
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object v1

    .line 1799
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v2

    .line 1800
    iget-object v3, v15, Lorg/telegram/messenger/ImageReceiver;->roundRadius:[I

    .line 1801
    iget-object v4, v15, Lorg/telegram/messenger/ImageReceiver;->currentMediaDrawable:Landroid/graphics/drawable/Drawable;

    .line 1802
    iget-object v5, v15, Lorg/telegram/messenger/ImageReceiver;->mediaShader:Landroid/graphics/BitmapShader;

    .line 1803
    iget-object v6, v15, Lorg/telegram/messenger/ImageReceiver;->currentImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 1804
    iget-object v7, v15, Lorg/telegram/messenger/ImageReceiver;->imageShader:Landroid/graphics/BitmapShader;

    .line 1805
    iget-object v12, v15, Lorg/telegram/messenger/ImageReceiver;->currentThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 1806
    iget-object v8, v15, Lorg/telegram/messenger/ImageReceiver;->thumbShader:Landroid/graphics/BitmapShader;

    .line 1807
    iget-boolean v9, v15, Lorg/telegram/messenger/ImageReceiver;->crossfadeWithOldImage:Z

    .line 1808
    iget-boolean v11, v15, Lorg/telegram/messenger/ImageReceiver;->crossfadingWithThumb:Z

    .line 1809
    iget-object v10, v15, Lorg/telegram/messenger/ImageReceiver;->crossfadeImage:Landroid/graphics/drawable/Drawable;

    .line 1810
    iget-object v13, v15, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v16, v3

    .line 1811
    iget v3, v15, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    move/from16 v17, v3

    .line 1812
    iget v3, v15, Lorg/telegram/messenger/ImageReceiver;->previousAlpha:F

    move/from16 v18, v3

    .line 1813
    iget-object v3, v15, Lorg/telegram/messenger/ImageReceiver;->crossfadeShader:Landroid/graphics/BitmapShader;

    move-object/from16 v19, v3

    .line 1814
    iget v3, v15, Lorg/telegram/messenger/ImageReceiver;->overrideAlpha:F

    if-eqz v1, :cond_3

    .line 1815
    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->hasBitmap()Z

    move-result v23

    if-eqz v23, :cond_4

    :cond_3
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RLottieDrawable;->hasBitmap()Z

    move-result v23
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    if-nez v23, :cond_5

    :cond_4
    const/16 v23, 0x1

    goto :goto_1

    :cond_5
    move/from16 v23, v21

    :goto_1
    move-object/from16 v24, v5

    move-object/from16 v25, v7

    move-object/from16 v26, v8

    move-object v7, v10

    move/from16 v27, v11

    move-object v11, v13

    move-object/from16 v10, v16

    move/from16 v5, v17

    move/from16 v29, v18

    move-object/from16 v30, v19

    move/from16 v28, v23

    move-object v13, v1

    move/from16 v23, v3

    move-object v8, v6

    move/from16 v16, v9

    move-object v6, v12

    move-object v12, v2

    move-object v9, v4

    :goto_2
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v13

    move-object v4, v12

    move/from16 v31, v5

    move-object v5, v9

    move-object/from16 v32, v6

    move-object/from16 v6, v24

    move-object/from16 v33, v7

    move-object v7, v8

    move-object v0, v8

    move-object/from16 v8, v25

    move-object/from16 v34, v0

    move-object v0, v9

    move-object/from16 v9, v32

    move-object/from16 v35, v10

    move-object/from16 v10, v26

    move-object/from16 v36, v11

    move/from16 v11, v16

    move-object/from16 v37, v0

    move-object v0, v12

    move/from16 v12, v27

    move-object/from16 v38, v0

    move-object/from16 v39, v13

    const/4 v0, 0x1

    move-object/from16 v13, v33

    move-object/from16 v14, v30

    move-object/from16 v15, v36

    move/from16 v16, v31

    move/from16 v17, v29

    move/from16 v18, v23

    move-object/from16 v19, v35

    move-object/from16 v20, p2

    .line 1818
    :try_start_1
    invoke-virtual/range {v1 .. v20}, Lorg/telegram/messenger/ImageReceiver;->customDraw(Landroid/graphics/Canvas;Lorg/telegram/ui/Components/AnimatedFileDrawable;Lorg/telegram/ui/Components/RLottieDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/BitmapShader;Landroid/graphics/drawable/Drawable;Landroid/graphics/BitmapShader;Landroid/graphics/drawable/Drawable;Landroid/graphics/BitmapShader;ZZLandroid/graphics/drawable/Drawable;Landroid/graphics/BitmapShader;Landroid/graphics/drawable/Drawable;FFF[ILorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)Z

    move-result v1

    if-eqz v1, :cond_6

    return v0

    :cond_6
    move-object/from16 v1, v39

    if-eqz v1, :cond_7

    move-object/from16 v8, v35

    .line 1834
    invoke-virtual {v1, v8}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->setRoundRadius([I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_3

    :cond_7
    move-object/from16 v8, v35

    :goto_3
    if-eqz v38, :cond_8

    if-nez v22, :cond_8

    move-object/from16 v9, p0

    .line 1837
    :try_start_2
    iget-object v2, v9, Lorg/telegram/messenger/ImageReceiver;->parentView:Landroid/view/View;

    move-object/from16 v3, v38

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentParentView(Landroid/view/View;)V

    goto :goto_4

    :catch_0
    move-exception v0

    goto/16 :goto_16

    :cond_8
    move-object/from16 v9, p0

    move-object/from16 v3, v38

    :goto_4
    if-nez v1, :cond_9

    if-eqz v3, :cond_a

    :cond_9
    if-nez v28, :cond_a

    .line 1839
    iget-boolean v1, v9, Lorg/telegram/messenger/ImageReceiver;->animationReadySent:Z

    if-nez v1, :cond_a

    if-nez v22, :cond_a

    .line 1840
    iput-boolean v0, v9, Lorg/telegram/messenger/ImageReceiver;->animationReadySent:Z

    .line 1841
    iget-object v1, v9, Lorg/telegram/messenger/ImageReceiver;->delegate:Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;

    if-eqz v1, :cond_a

    .line 1842
    invoke-interface {v1, v9}, Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;->onAnimationReady(Lorg/telegram/messenger/ImageReceiver;)V

    .line 1847
    :cond_a
    iget-boolean v1, v9, Lorg/telegram/messenger/ImageReceiver;->forcePreview:Z

    if-nez v1, :cond_b

    if-eqz v37, :cond_b

    if-nez v28, :cond_b

    .line 1850
    iget v1, v9, Lorg/telegram/messenger/ImageReceiver;->imageOrientation:I

    move v14, v1

    move-object/from16 v1, v26

    move/from16 v7, v28

    move-object/from16 v12, v32

    move-object/from16 v10, v33

    move-object/from16 v13, v36

    move-object/from16 v15, v37

    move-object/from16 v26, v24

    goto/16 :goto_5

    :cond_b
    if-nez v1, :cond_d

    if-eqz v34, :cond_d

    if-eqz v28, :cond_c

    if-eqz v37, :cond_d

    .line 1854
    :cond_c
    iget v1, v9, Lorg/telegram/messenger/ImageReceiver;->imageOrientation:I

    move v14, v1

    move/from16 v7, v21

    move-object/from16 v1, v26

    move-object/from16 v12, v32

    move-object/from16 v10, v33

    move-object/from16 v15, v34

    move-object/from16 v13, v36

    move-object/from16 v26, v25

    goto :goto_5

    :cond_d
    move-object/from16 v10, v33

    if-eqz v10, :cond_e

    if-nez v27, :cond_e

    .line 1859
    iget v1, v9, Lorg/telegram/messenger/ImageReceiver;->imageOrientation:I

    move v14, v1

    move-object v15, v10

    move-object/from16 v1, v26

    move/from16 v7, v28

    move-object/from16 v26, v30

    move-object/from16 v12, v32

    move-object/from16 v13, v36

    goto :goto_5

    :cond_e
    move-object/from16 v13, v36

    .line 1860
    instance-of v1, v13, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_10

    .line 1862
    iget-boolean v1, v9, Lorg/telegram/messenger/ImageReceiver;->useRoundForThumb:Z

    if-eqz v1, :cond_f

    if-nez v26, :cond_f

    .line 1863
    invoke-direct {v9, v13}, Lorg/telegram/messenger/ImageReceiver;->updateDrawableRadius(Landroid/graphics/drawable/Drawable;)V

    .line 1864
    iget-object v1, v9, Lorg/telegram/messenger/ImageReceiver;->thumbShader:Landroid/graphics/BitmapShader;

    move-object/from16 v26, v1

    .line 1867
    :cond_f
    iget v1, v9, Lorg/telegram/messenger/ImageReceiver;->thumbOrientation:I

    move v14, v1

    move-object v15, v13

    move-object/from16 v1, v26

    move/from16 v7, v28

    move-object/from16 v12, v32

    goto :goto_5

    :cond_10
    move-object/from16 v12, v32

    if-eqz v12, :cond_11

    .line 1871
    iget v1, v9, Lorg/telegram/messenger/ImageReceiver;->thumbOrientation:I

    move v14, v1

    move-object v15, v12

    move-object/from16 v1, v26

    move/from16 v7, v28

    goto :goto_5

    :cond_11
    move/from16 v14, v21

    move-object/from16 v1, v26

    move/from16 v7, v28

    const/4 v15, 0x0

    const/16 v26, 0x0

    .line 1875
    :goto_5
    iget v2, v9, Lorg/telegram/messenger/ImageReceiver;->crossfadeByScale:F

    const/16 v16, 0x0

    cmpl-float v3, v2, v16

    const/high16 v6, 0x3f800000    # 1.0f

    move/from16 v5, v31

    if-lez v3, :cond_12

    mul-float/2addr v2, v5

    add-float/2addr v2, v5

    .line 1876
    invoke-static {v2, v6}, Ljava/lang/Math;->min(FF)F

    move-result v2

    move/from16 v17, v2

    goto :goto_6

    :cond_12
    move/from16 v17, v5

    :goto_6
    const/high16 v18, 0x437f0000    # 255.0f

    if-eqz v15, :cond_28

    .line 1880
    iget-byte v2, v9, Lorg/telegram/messenger/ImageReceiver;->crossfadeAlpha:B

    if-eqz v2, :cond_25

    cmpl-float v2, v29, v6

    if-eqz v2, :cond_16

    move-object/from16 v4, v34

    move-object/from16 v3, v37

    if-eq v15, v4, :cond_13

    if-ne v15, v3, :cond_15

    :cond_13
    if-eqz v13, :cond_15

    .line 1882
    iget-boolean v2, v9, Lorg/telegram/messenger/ImageReceiver;->useRoundForThumb:Z

    if-eqz v2, :cond_14

    if-nez v1, :cond_14

    .line 1883
    invoke-direct {v9, v13}, Lorg/telegram/messenger/ImageReceiver;->updateDrawableRadius(Landroid/graphics/drawable/Drawable;)V

    .line 1884
    iget-object v1, v9, Lorg/telegram/messenger/ImageReceiver;->thumbShader:Landroid/graphics/BitmapShader;

    :cond_14
    move-object/from16 v19, v1

    mul-float v1, v23, v18

    float-to-int v2, v1

    move-object/from16 v1, p0

    move/from16 v20, v2

    move-object/from16 v2, p1

    move-object v0, v3

    move-object v3, v13

    move-object v11, v4

    move/from16 v4, v20

    move/from16 v40, v5

    move-object/from16 v5, v19

    move/from16 v20, v6

    move v6, v14

    move-object/from16 v35, v8

    move v8, v7

    move-object/from16 v7, p2

    .line 1886
    invoke-direct/range {v1 .. v7}, Lorg/telegram/messenger/ImageReceiver;->drawDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;ILandroid/graphics/BitmapShader;ILorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)V

    move-object/from16 v1, v19

    goto :goto_8

    :cond_15
    move-object v0, v3

    move-object v11, v4

    move/from16 v40, v5

    move/from16 v20, v6

    move-object/from16 v35, v8

    goto :goto_7

    :cond_16
    move/from16 v40, v5

    move/from16 v20, v6

    move-object/from16 v35, v8

    move-object/from16 v11, v34

    move-object/from16 v0, v37

    :goto_7
    move v8, v7

    .line 1888
    :goto_8
    iget-boolean v2, v9, Lorg/telegram/messenger/ImageReceiver;->crossfadeWithThumb:Z

    if-eqz v2, :cond_17

    if-eqz v8, :cond_17

    mul-float v0, v23, v18

    float-to-int v4, v0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v15

    move-object/from16 v5, v26

    move v6, v14

    move-object/from16 v7, p2

    .line 1889
    invoke-direct/range {v1 .. v7}, Lorg/telegram/messenger/ImageReceiver;->drawDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;ILandroid/graphics/BitmapShader;ILorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)V

    move-object/from16 v10, p1

    goto/16 :goto_12

    :cond_17
    if-eqz v2, :cond_22

    cmpl-float v2, v17, v20

    if-eqz v2, :cond_22

    if-eq v15, v11, :cond_1b

    if-ne v15, v0, :cond_18

    goto :goto_a

    :cond_18
    if-eq v15, v12, :cond_1a

    if-ne v15, v10, :cond_19

    goto :goto_9

    :cond_19
    if-ne v15, v13, :cond_1f

    if-eqz v10, :cond_1f

    goto :goto_b

    :cond_1a
    :goto_9
    if-eqz v13, :cond_1f

    .line 1912
    iget-boolean v0, v9, Lorg/telegram/messenger/ImageReceiver;->useRoundForThumb:Z

    if-eqz v0, :cond_1e

    if-nez v1, :cond_1e

    .line 1913
    invoke-direct {v9, v13}, Lorg/telegram/messenger/ImageReceiver;->updateDrawableRadius(Landroid/graphics/drawable/Drawable;)V

    .line 1914
    iget-object v1, v9, Lorg/telegram/messenger/ImageReceiver;->thumbShader:Landroid/graphics/BitmapShader;

    goto :goto_c

    :cond_1b
    :goto_a
    if-eqz v10, :cond_1c

    :goto_b
    move-object v11, v10

    move-object/from16 v5, v30

    goto :goto_d

    :cond_1c
    if-eqz v12, :cond_1d

    move-object v5, v1

    move-object v11, v12

    goto :goto_d

    :cond_1d
    if-eqz v13, :cond_1f

    .line 1903
    iget-boolean v0, v9, Lorg/telegram/messenger/ImageReceiver;->useRoundForThumb:Z

    if-eqz v0, :cond_1e

    if-nez v1, :cond_1e

    .line 1904
    invoke-direct {v9, v13}, Lorg/telegram/messenger/ImageReceiver;->updateDrawableRadius(Landroid/graphics/drawable/Drawable;)V

    .line 1905
    iget-object v1, v9, Lorg/telegram/messenger/ImageReceiver;->thumbShader:Landroid/graphics/BitmapShader;

    :cond_1e
    :goto_c
    move-object v5, v1

    move-object v11, v13

    goto :goto_d

    :cond_1f
    const/4 v5, 0x0

    const/4 v11, 0x0

    :goto_d
    if-eqz v11, :cond_22

    .line 1926
    instance-of v0, v11, Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    if-nez v0, :cond_21

    instance-of v0, v11, Lorg/telegram/messenger/Emoji$EmojiDrawable;

    if-eqz v0, :cond_20

    goto :goto_e

    :cond_20
    mul-float v29, v29, v23

    mul-float v0, v29, v18

    float-to-int v0, v0

    goto :goto_f

    :cond_21
    :goto_e
    sub-float v6, v20, v17

    mul-float v6, v6, v23

    mul-float v6, v6, v18

    float-to-int v0, v6

    .line 1931
    :goto_f
    iget v6, v9, Lorg/telegram/messenger/ImageReceiver;->thumbOrientation:I

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v11

    move v4, v0

    move-object/from16 v7, p2

    invoke-direct/range {v1 .. v7}, Lorg/telegram/messenger/ImageReceiver;->drawDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;ILandroid/graphics/BitmapShader;ILorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)V

    const/16 v1, 0xff

    if-eq v0, v1, :cond_22

    .line 1932
    instance-of v0, v11, Lorg/telegram/messenger/Emoji$EmojiDrawable;

    if-eqz v0, :cond_22

    .line 1933
    invoke-virtual {v11, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1938
    :cond_22
    iget v0, v9, Lorg/telegram/messenger/ImageReceiver;->crossfadeByScale:F

    cmpl-float v0, v0, v16

    if-lez v0, :cond_24

    cmpg-float v0, v17, v20

    if-gez v0, :cond_24

    if-eqz v27, :cond_24

    .line 1939
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1941
    iget-object v0, v9, Lorg/telegram/messenger/ImageReceiver;->roundPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 1942
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget v1, v9, Lorg/telegram/messenger/ImageReceiver;->imageX:F

    iget v2, v9, Lorg/telegram/messenger/ImageReceiver;->imageY:F

    iget v3, v9, Lorg/telegram/messenger/ImageReceiver;->imageW:F

    add-float/2addr v3, v1

    iget v4, v9, Lorg/telegram/messenger/ImageReceiver;->imageH:F

    add-float/2addr v4, v2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    move/from16 v0, v21

    move-object/from16 v3, v35

    .line 1943
    :goto_10
    array-length v1, v3

    if-ge v0, v1, :cond_23

    .line 1944
    sget-object v1, Lorg/telegram/messenger/ImageReceiver;->radii:[F

    mul-int/lit8 v2, v0, 0x2

    aget v4, v3, v0

    int-to-float v4, v4

    aput v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    .line 1945
    aget v4, v3, v0

    int-to-float v4, v4

    aput v4, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 1947
    :cond_23
    iget-object v0, v9, Lorg/telegram/messenger/ImageReceiver;->roundPath:Landroid/graphics/Path;

    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    sget-object v2, Lorg/telegram/messenger/ImageReceiver;->radii:[F

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 1948
    iget-object v0, v9, Lorg/telegram/messenger/ImageReceiver;->roundPath:Landroid/graphics/Path;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object/from16 v10, p1

    :try_start_3
    invoke-virtual {v10, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 1949
    iget v0, v9, Lorg/telegram/messenger/ImageReceiver;->crossfadeByScale:F

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_IN:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    move/from16 v2, v40

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v1

    sub-float v6, v20, v1

    mul-float/2addr v0, v6

    add-float v0, v0, v20

    .line 1950
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/ImageReceiver;->getCenterX()F

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/ImageReceiver;->getCenterY()F

    move-result v2

    invoke-virtual {v10, v0, v0, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    const/4 v13, 0x1

    goto :goto_11

    :cond_24
    move-object/from16 v10, p1

    move/from16 v13, v21

    :goto_11
    mul-float v23, v23, v17

    mul-float v0, v23, v18

    float-to-int v4, v0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v15

    move-object/from16 v5, v26

    move v6, v14

    move-object/from16 v7, p2

    .line 1952
    invoke-direct/range {v1 .. v7}, Lorg/telegram/messenger/ImageReceiver;->drawDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;ILandroid/graphics/BitmapShader;ILorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)V

    if-eqz v13, :cond_26

    .line 1954
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_12

    :cond_25
    move-object/from16 v10, p1

    move v8, v7

    mul-float v0, v23, v18

    float-to-int v4, v0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v15

    move-object/from16 v5, v26

    move v6, v14

    move-object/from16 v7, p2

    .line 1958
    invoke-direct/range {v1 .. v7}, Lorg/telegram/messenger/ImageReceiver;->drawDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;ILandroid/graphics/BitmapShader;ILorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)V

    :cond_26
    :goto_12
    if-eqz v8, :cond_27

    .line 1961
    iget-boolean v0, v9, Lorg/telegram/messenger/ImageReceiver;->crossfadeWithThumb:Z

    if-eqz v0, :cond_27

    move-object/from16 v0, p2

    const/4 v13, 0x1

    goto :goto_13

    :cond_27
    move-object/from16 v0, p2

    move/from16 v13, v21

    :goto_13
    invoke-direct {v9, v13, v0}, Lorg/telegram/messenger/ImageReceiver;->checkAlphaAnimation(ZLorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)V

    goto :goto_14

    :cond_28
    move-object/from16 v10, p1

    move-object/from16 v0, p2

    move v8, v7

    if-eqz v13, :cond_2a

    .line 1964
    instance-of v1, v13, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;

    if-eqz v1, :cond_29

    .line 1965
    move-object v11, v13

    check-cast v11, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;

    invoke-virtual {v11, v9}, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;->setParent(Lorg/telegram/messenger/ImageReceiver;)V

    :cond_29
    mul-float v1, v23, v18

    float-to-int v4, v1

    const/4 v5, 0x0

    .line 1967
    iget v6, v9, Lorg/telegram/messenger/ImageReceiver;->thumbOrientation:I

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v13

    move-object/from16 v7, p2

    invoke-direct/range {v1 .. v7}, Lorg/telegram/messenger/ImageReceiver;->drawDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;ILandroid/graphics/BitmapShader;ILorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)V

    .line 1968
    invoke-direct {v9, v8, v0}, Lorg/telegram/messenger/ImageReceiver;->checkAlphaAnimation(ZLorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)V

    :goto_14
    const/16 v21, 0x1

    goto :goto_15

    .line 1971
    :cond_2a
    invoke-direct {v9, v8, v0}, Lorg/telegram/messenger/ImageReceiver;->checkAlphaAnimation(ZLorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)V

    :goto_15
    if-nez v15, :cond_2b

    if-eqz v8, :cond_2b

    if-nez v22, :cond_2b

    .line 1975
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/ImageReceiver;->invalidate()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_18

    :catch_1
    move-exception v0

    goto :goto_17

    :catch_2
    move-exception v0

    move-object/from16 v9, p0

    :goto_16
    move-object/from16 v10, p1

    goto :goto_17

    :catch_3
    move-exception v0

    move-object v10, v14

    move-object v9, v15

    .line 1978
    :goto_17
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1980
    :cond_2b
    :goto_18
    iget-object v0, v9, Lorg/telegram/messenger/ImageReceiver;->gradientBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2c

    iget-object v0, v9, Lorg/telegram/messenger/ImageReceiver;->currentImageKey:Ljava/lang/String;

    if-eqz v0, :cond_2c

    .line 1981
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2c
    return v21
.end method

.method protected drawDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;ILandroid/graphics/BitmapShader;IILorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)V
    .locals 31

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v2, p2

    move/from16 v0, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    if-eqz v7, :cond_0

    .line 1165
    iget v8, v7, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->imageX:F

    .line 1166
    iget v9, v7, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->imageY:F

    .line 1167
    iget v10, v7, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->imageH:F

    .line 1168
    iget v11, v7, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->imageW:F

    .line 1169
    iget-object v12, v7, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->drawRegion:Landroid/graphics/RectF;

    .line 1170
    iget-object v13, v7, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->colorFilter:Landroid/graphics/ColorFilter;

    .line 1171
    invoke-static/range {p7 .. p7}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->access$400(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)[I

    move-result-object v14

    goto :goto_0

    .line 1173
    :cond_0
    iget v8, v1, Lorg/telegram/messenger/ImageReceiver;->imageX:F

    .line 1174
    iget v9, v1, Lorg/telegram/messenger/ImageReceiver;->imageY:F

    .line 1175
    iget v10, v1, Lorg/telegram/messenger/ImageReceiver;->imageH:F

    .line 1176
    iget v11, v1, Lorg/telegram/messenger/ImageReceiver;->imageW:F

    .line 1177
    iget-object v12, v1, Lorg/telegram/messenger/ImageReceiver;->drawRegion:Landroid/graphics/RectF;

    .line 1178
    iget-object v13, v1, Lorg/telegram/messenger/ImageReceiver;->colorFilter:Landroid/graphics/ColorFilter;

    .line 1179
    iget-object v14, v1, Lorg/telegram/messenger/ImageReceiver;->roundRadius:[I

    .line 1181
    :goto_0
    instance-of v15, v2, Landroid/graphics/drawable/BitmapDrawable;

    const/high16 v16, 0x3f800000    # 1.0f

    move-object/from16 v17, v14

    const/high16 v18, 0x40000000    # 2.0f

    if-eqz v15, :cond_54

    .line 1182
    move-object v15, v2

    check-cast v15, Landroid/graphics/drawable/BitmapDrawable;

    .line 1183
    instance-of v14, v2, Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v14, :cond_1

    move/from16 v20, v14

    .line 1184
    move-object v14, v2

    check-cast v14, Lorg/telegram/ui/Components/RLottieDrawable;

    iget-boolean v3, v1, Lorg/telegram/messenger/ImageReceiver;->skipUpdateFrame:Z

    iput-boolean v3, v14, Lorg/telegram/ui/Components/RLottieDrawable;->skipFrameUpdate:Z

    goto :goto_1

    :cond_1
    move/from16 v20, v14

    .line 1185
    instance-of v3, v2, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v3, :cond_2

    .line 1186
    move-object v3, v2

    check-cast v3, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    iget-boolean v14, v1, Lorg/telegram/messenger/ImageReceiver;->skipUpdateFrame:Z

    iput-boolean v14, v3, Lorg/telegram/ui/Components/AnimatedFileDrawable;->skipFrameUpdate:Z

    :cond_2
    :goto_1
    if-eqz v4, :cond_3

    .line 1191
    iget-object v3, v1, Lorg/telegram/messenger/ImageReceiver;->roundPaint:Landroid/graphics/Paint;

    goto :goto_2

    .line 1193
    :cond_3
    invoke-virtual {v15}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    .line 1195
    :goto_2
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    move-object/from16 v21, v12

    if-lt v14, v0, :cond_5

    .line 1196
    iget-object v0, v1, Lorg/telegram/messenger/ImageReceiver;->blendMode:Ljava/lang/Object;

    if-eqz v0, :cond_4

    iget-object v12, v1, Lorg/telegram/messenger/ImageReceiver;->gradientShader:Landroid/graphics/BitmapShader;

    if-nez v12, :cond_4

    .line 1197
    check-cast v0, Landroid/graphics/BlendMode;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    .line 1199
    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    :cond_5
    :goto_3
    const/4 v0, 0x1

    if-eqz v3, :cond_6

    .line 1202
    invoke-virtual {v3}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v3

    if-eqz v3, :cond_6

    move v3, v0

    goto :goto_4

    :cond_6
    const/4 v3, 0x0

    :goto_4
    if-eqz v3, :cond_8

    if-nez v6, :cond_8

    if-eqz v4, :cond_7

    .line 1205
    iget-object v3, v1, Lorg/telegram/messenger/ImageReceiver;->roundPaint:Landroid/graphics/Paint;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_5

    :cond_7
    const/4 v6, 0x0

    .line 1206
    iget-object v3, v1, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v3, v2, :cond_c

    .line 1207
    invoke-virtual {v15, v6}, Landroid/graphics/drawable/BitmapDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_5

    :cond_8
    if-nez v3, :cond_c

    if-eqz v6, :cond_c

    if-ne v6, v0, :cond_a

    if-eqz v4, :cond_9

    .line 1212
    iget-object v3, v1, Lorg/telegram/messenger/ImageReceiver;->roundPaint:Landroid/graphics/Paint;

    sget-object v6, Lorg/telegram/messenger/ImageReceiver;->selectedColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_5

    .line 1214
    :cond_9
    sget-object v3, Lorg/telegram/messenger/ImageReceiver;->selectedColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v15, v3}, Landroid/graphics/drawable/BitmapDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_5

    :cond_a
    if-eqz v4, :cond_b

    .line 1218
    iget-object v3, v1, Lorg/telegram/messenger/ImageReceiver;->roundPaint:Landroid/graphics/Paint;

    sget-object v6, Lorg/telegram/messenger/ImageReceiver;->selectedGroupColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_5

    .line 1220
    :cond_b
    sget-object v3, Lorg/telegram/messenger/ImageReceiver;->selectedGroupColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v15, v3}, Landroid/graphics/drawable/BitmapDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_c
    :goto_5
    if-eqz v13, :cond_e

    .line 1224
    iget-object v3, v1, Lorg/telegram/messenger/ImageReceiver;->gradientShader:Landroid/graphics/BitmapShader;

    if-nez v3, :cond_e

    if-eqz v4, :cond_d

    .line 1226
    iget-object v3, v1, Lorg/telegram/messenger/ImageReceiver;->roundPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v13}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_6

    .line 1228
    :cond_d
    invoke-virtual {v15, v13}, Landroid/graphics/drawable/BitmapDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1233
    :cond_e
    :goto_6
    instance-of v3, v15, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    const/16 v6, 0x10e

    const/16 v13, 0x5a

    if-nez v3, :cond_13

    instance-of v0, v15, Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v0, :cond_f

    goto :goto_9

    .line 1242
    :cond_f
    invoke-virtual {v15}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 1243
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v23

    if-eqz v23, :cond_10

    return-void

    .line 1246
    :cond_10
    rem-int/lit16 v12, v5, 0x168

    if-eq v12, v13, :cond_12

    if-ne v12, v6, :cond_11

    goto :goto_7

    .line 1250
    :cond_11
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    .line 1251
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    goto :goto_8

    .line 1247
    :cond_12
    :goto_7
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    .line 1248
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 1253
    :goto_8
    instance-of v6, v15, Lorg/telegram/messenger/ImageReceiver$ReactionLastFrame;

    goto :goto_c

    .line 1234
    :cond_13
    :goto_9
    rem-int/lit16 v0, v5, 0x168

    if-eq v0, v13, :cond_15

    const/16 v6, 0x10e

    if-ne v0, v6, :cond_14

    goto :goto_a

    .line 1238
    :cond_14
    invoke-virtual {v15}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v12

    .line 1239
    invoke-virtual {v15}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_b

    .line 1235
    :cond_15
    :goto_a
    invoke-virtual {v15}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v12

    .line 1236
    invoke-virtual {v15}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v0

    :goto_b
    const/4 v6, 0x0

    .line 1255
    :goto_c
    iget v13, v1, Lorg/telegram/messenger/ImageReceiver;->sideClip:F

    mul-float v24, v13, v18

    sub-float v24, v11, v24

    mul-float v13, v13, v18

    sub-float v13, v10, v13

    const/16 v19, 0x0

    cmpl-float v25, v11, v19

    if-nez v25, :cond_16

    move/from16 v2, v16

    goto :goto_d

    :cond_16
    int-to-float v2, v12

    div-float v2, v2, v24

    :goto_d
    cmpl-float v26, v10, v19

    move/from16 v27, v14

    if-nez v26, :cond_17

    move/from16 v14, v16

    goto :goto_e

    :cond_17
    int-to-float v14, v0

    div-float/2addr v14, v13

    :goto_e
    const v28, 0x3f99999a    # 1.2f

    if-eqz v6, :cond_18

    div-float v2, v2, v28

    div-float v14, v14, v28

    :cond_18
    const/16 v29, 0x2

    if-eqz v4, :cond_34

    if-nez v7, :cond_34

    .line 1265
    iget-boolean v3, v1, Lorg/telegram/messenger/ImageReceiver;->isAspectFit:Z

    if-eqz v3, :cond_1c

    .line 1266
    invoke-static {v2, v14}, Ljava/lang/Math;->max(FF)F

    move-result v2

    int-to-float v3, v12

    div-float/2addr v3, v2

    float-to-int v3, v3

    int-to-float v0, v0

    div-float/2addr v0, v2

    float-to-int v0, v0

    int-to-float v3, v3

    sub-float v5, v11, v3

    div-float v5, v5, v18

    add-float/2addr v5, v8

    int-to-float v0, v0

    sub-float v6, v10, v0

    div-float v6, v6, v18

    add-float/2addr v6, v9

    add-float/2addr v11, v3

    div-float v11, v11, v18

    add-float/2addr v8, v11

    add-float/2addr v10, v0

    div-float v10, v10, v18

    add-float/2addr v9, v10

    move-object/from16 v3, v21

    .line 1269
    invoke-virtual {v3, v5, v6, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1271
    iget-boolean v0, v1, Lorg/telegram/messenger/ImageReceiver;->isVisible:Z

    if-eqz v0, :cond_52

    .line 1272
    iget-object v0, v1, Lorg/telegram/messenger/ImageReceiver;->shaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 1273
    iget-object v0, v1, Lorg/telegram/messenger/ImageReceiver;->shaderMatrix:Landroid/graphics/Matrix;

    iget v5, v3, Landroid/graphics/RectF;->left:F

    float-to-int v5, v5

    int-to-float v5, v5

    iget v6, v3, Landroid/graphics/RectF;->top:F

    float-to-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Matrix;->setTranslate(FF)V

    div-float v0, v16, v2

    .line 1275
    iget-object v2, v1, Lorg/telegram/messenger/ImageReceiver;->shaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0, v0}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 1277
    iget-object v0, v1, Lorg/telegram/messenger/ImageReceiver;->shaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v0}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 1278
    iget-object v0, v1, Lorg/telegram/messenger/ImageReceiver;->roundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1279
    iget-object v0, v1, Lorg/telegram/messenger/ImageReceiver;->roundPaint:Landroid/graphics/Paint;

    move/from16 v2, p3

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1280
    iget-object v0, v1, Lorg/telegram/messenger/ImageReceiver;->roundRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 1282
    iget-boolean v0, v1, Lorg/telegram/messenger/ImageReceiver;->isRoundRect:Z

    if-eqz v0, :cond_1a

    move-object/from16 v2, p1

    if-eqz v2, :cond_52

    const/4 v3, 0x0

    .line 1285
    :try_start_0
    aget v0, v17, v3

    if-nez v0, :cond_19

    .line 1286
    iget-object v0, v1, Lorg/telegram/messenger/ImageReceiver;->roundRect:Landroid/graphics/RectF;

    iget-object v3, v1, Lorg/telegram/messenger/ImageReceiver;->roundPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_28

    .line 1288
    :cond_19
    iget-object v0, v1, Lorg/telegram/messenger/ImageReceiver;->roundRect:Landroid/graphics/RectF;

    const/4 v3, 0x0

    aget v4, v17, v3

    int-to-float v4, v4

    aget v5, v17, v3

    int-to-float v3, v5

    iget-object v5, v1, Lorg/telegram/messenger/ImageReceiver;->roundPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0, v4, v3, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_28

    :catch_0
    move-exception v0

    .line 1292
    invoke-direct {v1, v15}, Lorg/telegram/messenger/ImageReceiver;->onBitmapException(Landroid/graphics/drawable/Drawable;)V

    .line 1293
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_28

    :cond_1a
    move-object/from16 v2, p1

    move-object/from16 v3, v17

    const/4 v0, 0x0

    .line 1296
    :goto_f
    array-length v4, v3

    if-ge v0, v4, :cond_1b

    .line 1297
    sget-object v4, Lorg/telegram/messenger/ImageReceiver;->radii:[F

    mul-int/lit8 v5, v0, 0x2

    aget v6, v3, v0

    int-to-float v6, v6

    aput v6, v4, v5

    const/4 v6, 0x1

    add-int/2addr v5, v6

    .line 1298
    aget v6, v3, v0

    int-to-float v6, v6

    aput v6, v4, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 1300
    :cond_1b
    iget-object v0, v1, Lorg/telegram/messenger/ImageReceiver;->roundPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 1301
    iget-object v0, v1, Lorg/telegram/messenger/ImageReceiver;->roundPath:Landroid/graphics/Path;

    iget-object v3, v1, Lorg/telegram/messenger/ImageReceiver;->roundRect:Landroid/graphics/RectF;

    sget-object v4, Lorg/telegram/messenger/ImageReceiver;->radii:[F

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v3, v4, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 1302
    iget-object v0, v1, Lorg/telegram/messenger/ImageReceiver;->roundPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    if-eqz v2, :cond_52

    .line 1304
    iget-object v0, v1, Lorg/telegram/messenger/ImageReceiver;->roundPath:Landroid/graphics/Path;

    iget-object v3, v1, Lorg/telegram/messenger/ImageReceiver;->roundPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_28

    :cond_1c
    move-object/from16 v30, v17

    move-object/from16 v3, v21

    .line 1309
    iget-object v7, v1, Lorg/telegram/messenger/ImageReceiver;->legacyCanvas:Landroid/graphics/Canvas;

    if-eqz v7, :cond_1d

    .line 1310
    iget-object v7, v1, Lorg/telegram/messenger/ImageReceiver;->roundRect:Landroid/graphics/RectF;

    iget-object v5, v1, Lorg/telegram/messenger/ImageReceiver;->legacyBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    move/from16 v17, v6

    iget-object v6, v1, Lorg/telegram/messenger/ImageReceiver;->legacyBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    move/from16 v21, v0

    const/4 v0, 0x0

    invoke-virtual {v7, v0, v0, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1311
    iget-object v0, v1, Lorg/telegram/messenger/ImageReceiver;->legacyCanvas:Landroid/graphics/Canvas;

    iget-object v5, v1, Lorg/telegram/messenger/ImageReceiver;->gradientBitmap:Landroid/graphics/Bitmap;

    iget-object v6, v1, Lorg/telegram/messenger/ImageReceiver;->roundRect:Landroid/graphics/RectF;

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v7, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1312
    iget-object v0, v1, Lorg/telegram/messenger/ImageReceiver;->legacyCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v15}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    iget-object v6, v1, Lorg/telegram/messenger/ImageReceiver;->roundRect:Landroid/graphics/RectF;

    move-object/from16 v22, v15

    iget-object v15, v1, Lorg/telegram/messenger/ImageReceiver;->legacyPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5, v7, v6, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_10

    :cond_1d
    move/from16 v21, v0

    move/from16 v17, v6

    move-object/from16 v22, v15

    .line 1314
    :goto_10
    iget-object v0, v1, Lorg/telegram/messenger/ImageReceiver;->imageShader:Landroid/graphics/BitmapShader;

    if-ne v4, v0, :cond_1f

    iget-object v0, v1, Lorg/telegram/messenger/ImageReceiver;->gradientShader:Landroid/graphics/BitmapShader;

    if-eqz v0, :cond_1f

    .line 1315
    iget-object v0, v1, Lorg/telegram/messenger/ImageReceiver;->composeShader:Landroid/graphics/ComposeShader;

    if-eqz v0, :cond_1e

    .line 1316
    iget-object v5, v1, Lorg/telegram/messenger/ImageReceiver;->roundPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_11

    .line 1318
    :cond_1e
    iget-object v0, v1, Lorg/telegram/messenger/ImageReceiver;->roundPaint:Landroid/graphics/Paint;

    iget-object v5, v1, Lorg/telegram/messenger/ImageReceiver;->legacyShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_11

    .line 1321
    :cond_1f
    iget-object v0, v1, Lorg/telegram/messenger/ImageReceiver;->roundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1323
    :goto_11
    invoke-static {v2, v14}, Ljava/lang/Math;->min(FF)F

    move-result v0

    div-float v0, v16, v0

    .line 1324
    iget-object v5, v1, Lorg/telegram/messenger/ImageReceiver;->roundRect:Landroid/graphics/RectF;

    iget v6, v1, Lorg/telegram/messenger/ImageReceiver;->sideClip:F

    add-float v7, v8, v6

    add-float v15, v9, v6

    add-float/2addr v11, v8

    sub-float/2addr v11, v6

    add-float/2addr v10, v9

    sub-float/2addr v10, v6

    invoke-virtual {v5, v7, v15, v11, v10}, Landroid/graphics/RectF;->set(FFFF)V

    sub-float v5, v2, v14

    .line 1325
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const v6, 0x3a03126f    # 5.0E-4f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_21

    int-to-float v5, v12

    div-float/2addr v5, v14

    cmpl-float v7, v5, v24

    if-lez v7, :cond_20

    float-to-int v2, v5

    int-to-float v2, v2

    sub-float v5, v2, v24

    div-float v5, v5, v18

    sub-float v5, v8, v5

    add-float v2, v2, v24

    div-float v2, v2, v18

    add-float/2addr v2, v8

    add-float v7, v9, v13

    .line 1328
    invoke-virtual {v3, v5, v9, v2, v7}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_12

    :cond_20
    move/from16 v5, v21

    int-to-float v5, v5

    div-float/2addr v5, v2

    float-to-int v2, v5

    int-to-float v2, v2

    sub-float v5, v2, v13

    div-float v5, v5, v18

    sub-float v5, v9, v5

    add-float v7, v8, v24

    add-float/2addr v2, v13

    div-float v2, v2, v18

    add-float/2addr v2, v9

    .line 1331
    invoke-virtual {v3, v8, v5, v7, v2}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_12

    :cond_21
    add-float v2, v8, v24

    add-float v5, v9, v13

    .line 1334
    invoke-virtual {v3, v8, v9, v2, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1336
    :goto_12
    iget-boolean v2, v1, Lorg/telegram/messenger/ImageReceiver;->isVisible:Z

    if-eqz v2, :cond_52

    .line 1337
    iget-object v2, v1, Lorg/telegram/messenger/ImageReceiver;->shaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    if-eqz v17, :cond_22

    .line 1339
    iget-object v2, v1, Lorg/telegram/messenger/ImageReceiver;->shaderMatrix:Landroid/graphics/Matrix;

    iget v5, v3, Landroid/graphics/RectF;->left:F

    iget v7, v1, Lorg/telegram/messenger/ImageReceiver;->sideClip:F

    add-float/2addr v5, v7

    float-to-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v7

    mul-float v7, v7, v28

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v10

    sub-float/2addr v7, v10

    div-float v7, v7, v18

    sub-float/2addr v5, v7

    iget v7, v3, Landroid/graphics/RectF;->top:F

    iget v10, v1, Lorg/telegram/messenger/ImageReceiver;->sideClip:F

    add-float/2addr v7, v10

    float-to-int v7, v7

    int-to-float v7, v7

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v10

    mul-float v10, v10, v28

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v11

    sub-float/2addr v10, v11

    div-float v10, v10, v18

    sub-float/2addr v7, v10

    invoke-virtual {v2, v5, v7}, Landroid/graphics/Matrix;->setTranslate(FF)V

    goto :goto_13

    .line 1341
    :cond_22
    iget-object v2, v1, Lorg/telegram/messenger/ImageReceiver;->shaderMatrix:Landroid/graphics/Matrix;

    iget v5, v3, Landroid/graphics/RectF;->left:F

    iget v7, v1, Lorg/telegram/messenger/ImageReceiver;->sideClip:F

    add-float/2addr v5, v7

    float-to-int v5, v5

    int-to-float v5, v5

    iget v10, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v10, v7

    float-to-int v7, v10

    int-to-float v7, v7

    invoke-virtual {v2, v5, v7}, Landroid/graphics/Matrix;->setTranslate(FF)V

    :goto_13
    move/from16 v7, p5

    const/16 v2, 0x5a

    if-ne v7, v2, :cond_23

    .line 1344
    iget-object v2, v1, Lorg/telegram/messenger/ImageReceiver;->shaderMatrix:Landroid/graphics/Matrix;

    const/high16 v5, 0x42b40000    # 90.0f

    invoke-virtual {v2, v5}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 1345
    iget-object v2, v1, Lorg/telegram/messenger/ImageReceiver;->shaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v5

    neg-float v5, v5

    const/4 v7, 0x0

    invoke-virtual {v2, v7, v5}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    goto :goto_14

    :cond_23
    const/16 v2, 0xb4

    if-ne v7, v2, :cond_24

    .line 1347
    iget-object v2, v1, Lorg/telegram/messenger/ImageReceiver;->shaderMatrix:Landroid/graphics/Matrix;

    const/high16 v5, 0x43340000    # 180.0f

    invoke-virtual {v2, v5}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 1348
    iget-object v2, v1, Lorg/telegram/messenger/ImageReceiver;->shaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v5

    neg-float v5, v5

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v7

    neg-float v7, v7

    invoke-virtual {v2, v5, v7}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    goto :goto_14

    :cond_24
    const/16 v2, 0x10e

    if-ne v7, v2, :cond_25

    .line 1350
    iget-object v2, v1, Lorg/telegram/messenger/ImageReceiver;->shaderMatrix:Landroid/graphics/Matrix;

    const/high16 v5, 0x43870000    # 270.0f

    invoke-virtual {v2, v5}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 1351
    iget-object v2, v1, Lorg/telegram/messenger/ImageReceiver;->shaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v5

    neg-float v5, v5

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v7}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 1353
    :cond_25
    :goto_14
    iget-object v2, v1, Lorg/telegram/messenger/ImageReceiver;->shaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0, v0}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 1354
    iget-boolean v0, v1, Lorg/telegram/messenger/ImageReceiver;->isRoundVideo:Z

    if-eqz v0, :cond_26

    .line 1355
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->roundMessageInset:I

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    add-float v0, v24, v0

    div-float v0, v0, v24

    .line 1356
    iget-object v2, v1, Lorg/telegram/messenger/ImageReceiver;->shaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    invoke-virtual {v2, v0, v0, v5, v7}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 1358
    :cond_26
    iget-object v0, v1, Lorg/telegram/messenger/ImageReceiver;->legacyShader:Landroid/graphics/BitmapShader;

    if-eqz v0, :cond_27

    .line 1359
    iget-object v2, v1, Lorg/telegram/messenger/ImageReceiver;->shaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 1361
    :cond_27
    iget-object v0, v1, Lorg/telegram/messenger/ImageReceiver;->shaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v0}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 1363
    iget-object v0, v1, Lorg/telegram/messenger/ImageReceiver;->composeShader:Landroid/graphics/ComposeShader;

    if-eqz v0, :cond_2e

    .line 1364
    iget-object v0, v1, Lorg/telegram/messenger/ImageReceiver;->gradientBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 1365
    iget-object v2, v1, Lorg/telegram/messenger/ImageReceiver;->gradientBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-nez v25, :cond_28

    move/from16 v4, v16

    goto :goto_15

    :cond_28
    int-to-float v4, v0

    div-float v4, v4, v24

    :goto_15
    if-nez v26, :cond_29

    move/from16 v5, v16

    goto :goto_16

    :cond_29
    int-to-float v5, v2

    div-float/2addr v5, v13

    :goto_16
    sub-float v7, v4, v5

    .line 1368
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v6, v7, v6

    if-lez v6, :cond_2b

    int-to-float v6, v0

    div-float/2addr v6, v5

    cmpl-float v5, v6, v24

    if-lez v5, :cond_2a

    float-to-int v0, v6

    int-to-float v4, v0

    sub-float v5, v4, v24

    div-float v5, v5, v18

    sub-float v5, v8, v5

    add-float v4, v4, v24

    div-float v4, v4, v18

    add-float/2addr v8, v4

    add-float v4, v9, v13

    .line 1371
    invoke-virtual {v3, v5, v9, v8, v4}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_17

    :cond_2a
    int-to-float v2, v2

    div-float/2addr v2, v4

    float-to-int v2, v2

    int-to-float v4, v2

    sub-float v5, v4, v13

    div-float v5, v5, v18

    sub-float v5, v9, v5

    add-float v6, v8, v24

    add-float/2addr v4, v13

    div-float v4, v4, v18

    add-float/2addr v9, v4

    .line 1374
    invoke-virtual {v3, v8, v5, v6, v9}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_17

    :cond_2b
    add-float v4, v8, v24

    add-float v5, v9, v13

    .line 1377
    invoke-virtual {v3, v8, v9, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_17
    if-nez v25, :cond_2c

    move/from16 v0, v16

    goto :goto_18

    :cond_2c
    int-to-float v0, v0

    div-float v0, v0, v24

    :goto_18
    if-nez v26, :cond_2d

    move/from16 v2, v16

    goto :goto_19

    :cond_2d
    int-to-float v2, v2

    div-float/2addr v2, v13

    .line 1379
    :goto_19
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    div-float v0, v16, v0

    .line 1381
    iget-object v2, v1, Lorg/telegram/messenger/ImageReceiver;->shaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 1382
    iget-object v2, v1, Lorg/telegram/messenger/ImageReceiver;->shaderMatrix:Landroid/graphics/Matrix;

    iget v4, v3, Landroid/graphics/RectF;->left:F

    iget v5, v1, Lorg/telegram/messenger/ImageReceiver;->sideClip:F

    add-float/2addr v4, v5

    iget v6, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v6, v5

    invoke-virtual {v2, v4, v6}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 1383
    iget-object v2, v1, Lorg/telegram/messenger/ImageReceiver;->shaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0, v0}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 1384
    iget-object v0, v1, Lorg/telegram/messenger/ImageReceiver;->gradientShader:Landroid/graphics/BitmapShader;

    iget-object v2, v1, Lorg/telegram/messenger/ImageReceiver;->shaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 1387
    :cond_2e
    iget-object v0, v1, Lorg/telegram/messenger/ImageReceiver;->roundPaint:Landroid/graphics/Paint;

    move/from16 v2, p3

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1389
    iget-boolean v0, v1, Lorg/telegram/messenger/ImageReceiver;->isRoundRect:Z

    if-eqz v0, :cond_32

    move-object/from16 v2, p1

    if-eqz v2, :cond_52

    move-object/from16 v4, v30

    const/4 v5, 0x0

    .line 1392
    :try_start_1
    aget v0, v4, v5

    if-nez v0, :cond_30

    if-eqz v17, :cond_2f

    .line 1394
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v4, v1, Lorg/telegram/messenger/ImageReceiver;->roundRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 1395
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v4

    mul-float v4, v4, v28

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v5

    sub-float/2addr v4, v5

    neg-float v4, v4

    div-float v4, v4, v18

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v5

    mul-float v5, v5, v28

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    sub-float/2addr v5, v3

    neg-float v3, v5

    div-float v3, v3, v18

    invoke-virtual {v0, v4, v3}, Landroid/graphics/RectF;->inset(FF)V

    .line 1396
    iget-object v3, v1, Lorg/telegram/messenger/ImageReceiver;->roundPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_28

    .line 1398
    :cond_2f
    iget-object v0, v1, Lorg/telegram/messenger/ImageReceiver;->roundRect:Landroid/graphics/RectF;

    iget-object v3, v1, Lorg/telegram/messenger/ImageReceiver;->roundPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_28

    .line 1401
    :cond_30
    iget-object v0, v1, Lorg/telegram/messenger/ImageReceiver;->roundRect:Landroid/graphics/RectF;

    const/4 v3, 0x0

    aget v5, v4, v3

    int-to-float v5, v5

    aget v4, v4, v3

    int-to-float v3, v4

    iget-object v4, v1, Lorg/telegram/messenger/ImageReceiver;->roundPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0, v5, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_28

    :catch_1
    move-exception v0

    move-object/from16 v6, p7

    if-nez v6, :cond_31

    move-object/from16 v13, v22

    .line 1406
    invoke-direct {v1, v13}, Lorg/telegram/messenger/ImageReceiver;->onBitmapException(Landroid/graphics/drawable/Drawable;)V

    .line 1408
    :cond_31
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_28

    :cond_32
    move-object/from16 v15, p1

    move-object/from16 v4, v30

    const/4 v0, 0x0

    .line 1411
    :goto_1a
    array-length v2, v4

    if-ge v0, v2, :cond_33

    .line 1412
    sget-object v2, Lorg/telegram/messenger/ImageReceiver;->radii:[F

    mul-int/lit8 v3, v0, 0x2

    aget v5, v4, v0

    int-to-float v5, v5

    aput v5, v2, v3

    const/4 v5, 0x1

    add-int/2addr v3, v5

    .line 1413
    aget v6, v4, v0

    int-to-float v6, v6

    aput v6, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 1415
    :cond_33
    iget-object v0, v1, Lorg/telegram/messenger/ImageReceiver;->roundPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 1416
    iget-object v0, v1, Lorg/telegram/messenger/ImageReceiver;->roundPath:Landroid/graphics/Path;

    iget-object v2, v1, Lorg/telegram/messenger/ImageReceiver;->roundRect:Landroid/graphics/RectF;

    sget-object v3, Lorg/telegram/messenger/ImageReceiver;->radii:[F

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 1417
    iget-object v0, v1, Lorg/telegram/messenger/ImageReceiver;->roundPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    if-eqz v15, :cond_52

    .line 1419
    iget-object v0, v1, Lorg/telegram/messenger/ImageReceiver;->roundPath:Landroid/graphics/Path;

    iget-object v2, v1, Lorg/telegram/messenger/ImageReceiver;->roundPaint:Landroid/graphics/Paint;

    invoke-virtual {v15, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_28

    :cond_34
    move-object v6, v7

    move-object v13, v15

    move-object/from16 v4, v17

    move-object/from16 v15, p1

    move/from16 v17, v3

    move v7, v5

    move-object/from16 v3, v21

    move v5, v0

    move/from16 v0, p3

    .line 1425
    iget-boolean v7, v1, Lorg/telegram/messenger/ImageReceiver;->isAspectFit:Z

    if-eqz v7, :cond_3a

    .line 1426
    invoke-static {v2, v14}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 1427
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v7, v12

    div-float/2addr v7, v2

    float-to-int v7, v7

    int-to-float v5, v5

    div-float/2addr v5, v2

    float-to-int v2, v5

    if-nez v6, :cond_35

    int-to-float v5, v7

    sub-float v7, v11, v5

    div-float v7, v7, v18

    add-float/2addr v7, v8

    int-to-float v2, v2

    sub-float v12, v10, v2

    div-float v12, v12, v18

    add-float/2addr v12, v9

    add-float/2addr v5, v11

    div-float v5, v5, v18

    add-float/2addr v5, v8

    add-float/2addr v2, v10

    div-float v2, v2, v18

    add-float/2addr v2, v9

    .line 1431
    invoke-virtual {v3, v7, v12, v5, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1432
    iget v2, v3, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v5, v3, Landroid/graphics/RectF;->top:F

    float-to-int v5, v5

    iget v7, v3, Landroid/graphics/RectF;->right:F

    float-to-int v7, v7

    iget v12, v3, Landroid/graphics/RectF;->bottom:F

    float-to-int v12, v12

    invoke-virtual {v13, v2, v5, v7, v12}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 1433
    instance-of v2, v13, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v2, :cond_35

    .line 1434
    move-object v2, v13

    check-cast v2, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    iget v5, v3, Landroid/graphics/RectF;->left:F

    iget v7, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v12

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-virtual {v2, v5, v7, v12, v3}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->setActualDrawRect(FFFF)V

    :cond_35
    if-eqz v6, :cond_37

    if-eqz v4, :cond_37

    const/4 v2, 0x0

    .line 1437
    aget v3, v4, v2

    if-lez v3, :cond_37

    .line 1438
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1439
    invoke-static/range {p7 .. p7}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->access$500(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)Landroid/graphics/Path;

    move-result-object v2

    if-nez v2, :cond_36

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    invoke-static {v6, v2}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->access$502(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;Landroid/graphics/Path;)Landroid/graphics/Path;

    move-result-object v2

    goto :goto_1b

    :cond_36
    invoke-static/range {p7 .. p7}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->access$500(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)Landroid/graphics/Path;

    move-result-object v2

    .line 1440
    :goto_1b
    invoke-virtual {v2}, Landroid/graphics/Path;->rewind()V

    .line 1441
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    add-float/2addr v11, v8

    add-float/2addr v10, v9

    invoke-virtual {v3, v8, v9, v11, v10}, Landroid/graphics/RectF;->set(FFFF)V

    const/4 v5, 0x0

    .line 1442
    aget v7, v4, v5

    int-to-float v5, v7

    aget v7, v4, v29

    int-to-float v7, v7

    sget-object v8, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v3, v5, v7, v8}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 1443
    invoke-virtual {v15, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 1445
    :cond_37
    iget-boolean v2, v1, Lorg/telegram/messenger/ImageReceiver;->isVisible:Z

    if-eqz v2, :cond_39

    .line 1447
    :try_start_2
    invoke-virtual {v13, v0}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 1448
    invoke-direct {v1, v15, v13, v6, v0}, Lorg/telegram/messenger/ImageReceiver;->drawBitmapDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/BitmapDrawable;Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1c

    :catch_2
    move-exception v0

    if-nez v6, :cond_38

    .line 1451
    invoke-direct {v1, v13}, Lorg/telegram/messenger/ImageReceiver;->onBitmapException(Landroid/graphics/drawable/Drawable;)V

    .line 1453
    :cond_38
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1456
    :cond_39
    :goto_1c
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    if-eqz v6, :cond_52

    if-eqz v4, :cond_52

    const/4 v2, 0x0

    .line 1457
    aget v0, v4, v2

    if-lez v0, :cond_52

    .line 1458
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_28

    :cond_3a
    if-eqz v15, :cond_52

    sub-float v4, v2, v14

    .line 1462
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const v7, 0x3727c5ac    # 1.0E-5f

    cmpl-float v4, v4, v7

    if-lez v4, :cond_47

    .line 1463
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1464
    iget-boolean v4, v1, Lorg/telegram/messenger/ImageReceiver;->clip:Z

    if-eqz v4, :cond_3b

    add-float v4, v8, v11

    add-float v7, v9, v10

    .line 1465
    invoke-virtual {v15, v8, v9, v4, v7}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    :cond_3b
    move/from16 v4, p5

    .line 1468
    rem-int/lit16 v7, v4, 0x168

    if-eqz v7, :cond_3d

    .line 1469
    iget-boolean v0, v1, Lorg/telegram/messenger/ImageReceiver;->centerRotation:Z

    if-eqz v0, :cond_3c

    int-to-float v0, v4

    div-float v4, v11, v18

    div-float v1, v10, v18

    .line 1470
    invoke-virtual {v15, v0, v4, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto :goto_1d

    :cond_3c
    int-to-float v0, v4

    const/4 v1, 0x0

    .line 1472
    invoke-virtual {v15, v0, v1, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    :cond_3d
    :goto_1d
    int-to-float v0, v12

    div-float/2addr v0, v14

    cmpl-float v1, v0, v11

    if-lez v1, :cond_3e

    float-to-int v0, v0

    int-to-float v0, v0

    sub-float v1, v0, v11

    div-float v1, v1, v18

    sub-float v1, v8, v1

    add-float/2addr v0, v11

    div-float v0, v0, v18

    add-float/2addr v0, v8

    add-float v2, v9, v10

    .line 1478
    invoke-virtual {v3, v1, v9, v0, v2}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_1e

    :cond_3e
    int-to-float v0, v5

    div-float/2addr v0, v2

    float-to-int v0, v0

    int-to-float v0, v0

    sub-float v1, v0, v10

    div-float v1, v1, v18

    sub-float v1, v9, v1

    add-float v2, v8, v11

    add-float/2addr v0, v10

    div-float v0, v0, v18

    add-float/2addr v0, v9

    .line 1481
    invoke-virtual {v3, v8, v1, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_1e
    if-eqz v17, :cond_3f

    .line 1484
    move-object v0, v13

    check-cast v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-virtual {v0, v8, v9, v11, v10}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->setActualDrawRect(FFFF)V

    :cond_3f
    if-nez v6, :cond_42

    const/16 v0, 0x5a

    if-eq v7, v0, :cond_41

    const/16 v0, 0x10e

    if-ne v7, v0, :cond_40

    goto :goto_1f

    .line 1494
    :cond_40
    iget v0, v3, Landroid/graphics/RectF;->left:F

    float-to-int v0, v0

    iget v1, v3, Landroid/graphics/RectF;->top:F

    float-to-int v1, v1

    iget v2, v3, Landroid/graphics/RectF;->right:F

    float-to-int v2, v2

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    float-to-int v3, v3

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    goto :goto_20

    .line 1488
    :cond_41
    :goto_1f
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float v0, v0, v18

    .line 1489
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float v1, v1, v18

    .line 1490
    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    .line 1491
    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    sub-float v4, v2, v1

    float-to-int v4, v4

    sub-float v5, v3, v0

    float-to-int v5, v5

    add-float/2addr v2, v1

    float-to-int v1, v2

    add-float/2addr v3, v0

    float-to-int v0, v3

    .line 1492
    invoke-virtual {v13, v4, v5, v1, v0}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    :cond_42
    :goto_20
    move-object/from16 v1, p0

    .line 1497
    iget-boolean v0, v1, Lorg/telegram/messenger/ImageReceiver;->isVisible:Z

    if-eqz v0, :cond_46

    move/from16 v0, v27

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_44

    .line 1500
    :try_start_3
    iget-object v0, v1, Lorg/telegram/messenger/ImageReceiver;->blendMode:Ljava/lang/Object;

    if-eqz v0, :cond_43

    .line 1501
    invoke-virtual {v13}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/messenger/ImageReceiver;->blendMode:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/BlendMode;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    goto :goto_21

    .line 1503
    :cond_43
    invoke-virtual {v13}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    :cond_44
    :goto_21
    move/from16 v5, p3

    .line 1506
    invoke-direct {v1, v15, v13, v6, v5}, Lorg/telegram/messenger/ImageReceiver;->drawBitmapDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/BitmapDrawable;Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_22

    :catch_3
    move-exception v0

    if-nez v6, :cond_45

    .line 1509
    invoke-direct {v1, v13}, Lorg/telegram/messenger/ImageReceiver;->onBitmapException(Landroid/graphics/drawable/Drawable;)V

    .line 1511
    :cond_45
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1515
    :cond_46
    :goto_22
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_28

    :cond_47
    move/from16 v4, p5

    move v5, v0

    move/from16 v0, v27

    const/16 v2, 0x1d

    .line 1517
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1518
    rem-int/lit16 v7, v4, 0x168

    if-eqz v7, :cond_49

    .line 1519
    iget-boolean v12, v1, Lorg/telegram/messenger/ImageReceiver;->centerRotation:Z

    if-eqz v12, :cond_48

    int-to-float v4, v4

    div-float v12, v11, v18

    div-float v14, v10, v18

    .line 1520
    invoke-virtual {v15, v4, v12, v14}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto :goto_23

    :cond_48
    int-to-float v4, v4

    const/4 v12, 0x0

    .line 1522
    invoke-virtual {v15, v4, v12, v12}, Landroid/graphics/Canvas;->rotate(FFF)V

    :cond_49
    :goto_23
    add-float v4, v8, v11

    add-float v12, v9, v10

    .line 1525
    invoke-virtual {v3, v8, v9, v4, v12}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1526
    iget-boolean v4, v1, Lorg/telegram/messenger/ImageReceiver;->isRoundVideo:Z

    if-eqz v4, :cond_4a

    .line 1527
    sget v4, Lorg/telegram/messenger/AndroidUtilities;->roundMessageInset:I

    neg-int v12, v4

    int-to-float v12, v12

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v3, v12, v4}, Landroid/graphics/RectF;->inset(FF)V

    :cond_4a
    if-eqz v17, :cond_4b

    .line 1530
    move-object v4, v13

    check-cast v4, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-virtual {v4, v8, v9, v11, v10}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->setActualDrawRect(FFFF)V

    :cond_4b
    if-nez v6, :cond_4e

    const/16 v4, 0x5a

    if-eq v7, v4, :cond_4d

    const/16 v4, 0x10e

    if-ne v7, v4, :cond_4c

    goto :goto_24

    .line 1540
    :cond_4c
    iget v4, v3, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    iget v7, v3, Landroid/graphics/RectF;->top:F

    float-to-int v7, v7

    iget v8, v3, Landroid/graphics/RectF;->right:F

    float-to-int v8, v8

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    float-to-int v3, v3

    invoke-virtual {v13, v4, v7, v8, v3}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    goto :goto_25

    .line 1534
    :cond_4d
    :goto_24
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float v4, v4, v18

    .line 1535
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v7

    div-float v7, v7, v18

    .line 1536
    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v8

    .line 1537
    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    sub-float v9, v8, v7

    float-to-int v9, v9

    sub-float v10, v3, v4

    float-to-int v10, v10

    add-float/2addr v8, v7

    float-to-int v7, v8

    add-float/2addr v3, v4

    float-to-int v3, v3

    .line 1538
    invoke-virtual {v13, v9, v10, v7, v3}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 1543
    :cond_4e
    :goto_25
    iget-boolean v3, v1, Lorg/telegram/messenger/ImageReceiver;->isVisible:Z

    if-eqz v3, :cond_51

    if-lt v0, v2, :cond_50

    .line 1546
    :try_start_4
    iget-object v0, v1, Lorg/telegram/messenger/ImageReceiver;->blendMode:Ljava/lang/Object;

    if-eqz v0, :cond_4f

    .line 1547
    invoke-virtual {v13}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/messenger/ImageReceiver;->blendMode:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/BlendMode;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    goto :goto_26

    .line 1549
    :cond_4f
    invoke-virtual {v13}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    .line 1553
    :cond_50
    :goto_26
    invoke-direct {v1, v15, v13, v6, v5}, Lorg/telegram/messenger/ImageReceiver;->drawBitmapDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/BitmapDrawable;Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_27

    :catch_4
    move-exception v0

    .line 1555
    invoke-direct {v1, v13}, Lorg/telegram/messenger/ImageReceiver;->onBitmapException(Landroid/graphics/drawable/Drawable;)V

    .line 1556
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1559
    :cond_51
    :goto_27
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_52
    :goto_28
    if-eqz v20, :cond_53

    move-object/from16 v2, p2

    .line 1566
    move-object v0, v2

    check-cast v0, Lorg/telegram/ui/Components/RLottieDrawable;

    const/4 v3, 0x0

    iput-boolean v3, v0, Lorg/telegram/ui/Components/RLottieDrawable;->skipFrameUpdate:Z

    goto/16 :goto_2c

    :cond_53
    move-object/from16 v2, p2

    const/4 v3, 0x0

    .line 1567
    instance-of v0, v2, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v0, :cond_5c

    .line 1568
    move-object v0, v2

    check-cast v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    iput-boolean v3, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->skipFrameUpdate:Z

    goto/16 :goto_2c

    :cond_54
    move v5, v0

    move-object v15, v3

    move-object v6, v7

    move-object v3, v12

    if-nez v6, :cond_58

    .line 1572
    iget-boolean v0, v1, Lorg/telegram/messenger/ImageReceiver;->isAspectFit:Z

    if-eqz v0, :cond_57

    .line 1573
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 1574
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 1575
    iget v7, v1, Lorg/telegram/messenger/ImageReceiver;->sideClip:F

    mul-float v12, v7, v18

    sub-float v12, v11, v12

    mul-float v7, v7, v18

    sub-float v7, v10, v7

    const/4 v13, 0x0

    cmpl-float v14, v11, v13

    if-nez v14, :cond_55

    move/from16 v14, v16

    goto :goto_29

    :cond_55
    int-to-float v14, v0

    div-float/2addr v14, v12

    :goto_29
    cmpl-float v12, v10, v13

    if-nez v12, :cond_56

    goto :goto_2a

    :cond_56
    int-to-float v12, v4

    div-float v16, v12, v7

    :goto_2a
    move/from16 v7, v16

    .line 1579
    invoke-static {v14, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    int-to-float v0, v0

    div-float/2addr v0, v7

    float-to-int v0, v0

    int-to-float v4, v4

    div-float/2addr v4, v7

    float-to-int v4, v4

    int-to-float v0, v0

    sub-float v7, v11, v0

    div-float v7, v7, v18

    add-float/2addr v7, v8

    int-to-float v4, v4

    sub-float v12, v10, v4

    div-float v12, v12, v18

    add-float/2addr v12, v9

    add-float/2addr v11, v0

    div-float v11, v11, v18

    add-float/2addr v8, v11

    add-float/2addr v10, v4

    div-float v10, v10, v18

    add-float/2addr v9, v10

    .line 1582
    invoke-virtual {v3, v7, v12, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_2b

    :cond_57
    add-float/2addr v11, v8

    add-float/2addr v10, v9

    .line 1584
    invoke-virtual {v3, v8, v9, v11, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1586
    :goto_2b
    iget v0, v3, Landroid/graphics/RectF;->left:F

    float-to-int v0, v0

    iget v4, v3, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    iget v7, v3, Landroid/graphics/RectF;->right:F

    float-to-int v7, v7

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    float-to-int v3, v3

    invoke-virtual {v2, v0, v4, v7, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1588
    :cond_58
    iget-boolean v0, v1, Lorg/telegram/messenger/ImageReceiver;->isVisible:Z

    if-eqz v0, :cond_5c

    if-eqz v15, :cond_5c

    .line 1590
    :try_start_5
    invoke-virtual/range {p2 .. p3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    if-eqz v6, :cond_5b

    .line 1592
    instance-of v0, v2, Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    if-eqz v0, :cond_5a

    .line 1593
    iget-wide v3, v6, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->time:J

    const-wide/16 v7, 0x0

    cmp-long v0, v3, v7

    if-nez v0, :cond_59

    .line 1595
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    :cond_59
    move-wide v7, v3

    .line 1597
    check-cast v2, Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    const/4 v4, 0x1

    iget v5, v6, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->threadIndex:I

    iget v0, v6, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->imageX:F

    iget v9, v6, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->imageY:F

    iget v10, v6, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->imageW:F

    iget v11, v6, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->imageH:F

    move-object/from16 v3, p1

    move-wide v6, v7

    move v8, v0

    invoke-virtual/range {v2 .. v11}, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->drawInternal(Landroid/graphics/Canvas;ZIJFFFF)V

    goto :goto_2c

    .line 1599
    :cond_5a
    invoke-virtual {v2, v15}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2c

    .line 1602
    :cond_5b
    invoke-virtual {v2, v15}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_2c

    :catch_5
    move-exception v0

    .line 1605
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_5c
    :goto_2c
    return-void
.end method

.method public getAllowStartAnimation()Z
    .locals 1

    .line 2475
    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->allowStartAnimation:Z

    return v0
.end method

.method public getAlpha()F
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 2193
    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->overrideAlpha:F

    return v0
.end method

.method public getAnimatedOrientation()I
    .locals 1

    .line 772
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 773
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getOrientation()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;
    .locals 2

    .line 2553
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v1, :cond_0

    .line 2554
    check-cast v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    return-object v0

    .line 2555
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v1, :cond_1

    .line 2556
    check-cast v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    return-object v0

    .line 2557
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v1, :cond_2

    .line 2558
    check-cast v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    return-object v0

    .line 2559
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v1, :cond_3

    .line 2560
    check-cast v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    return-object v0

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .line 2014
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2015
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->hasBitmap()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2016
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->getAnimatedBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 2018
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2019
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->hasBitmap()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2020
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getAnimatedBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 2021
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_2

    instance-of v1, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-nez v1, :cond_2

    instance-of v1, v0, Lorg/telegram/ui/Components/RLottieDrawable;

    if-nez v1, :cond_2

    .line 2022
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 2023
    :cond_2
    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v2, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_3

    instance-of v2, v1, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-nez v2, :cond_3

    instance-of v2, v0, Lorg/telegram/ui/Components/RLottieDrawable;

    if-nez v2, :cond_3

    .line 2024
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 2025
    :cond_3
    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v2, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_4

    instance-of v2, v1, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-nez v2, :cond_4

    instance-of v0, v0, Lorg/telegram/ui/Components/RLottieDrawable;

    if-nez v0, :cond_4

    .line 2026
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 2027
    :cond_4
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_5

    .line 2028
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBitmapHeight()I
    .locals 4

    .line 2135
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 2136
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object v0

    const/16 v1, 0xb4

    if-eqz v0, :cond_2

    .line 2138
    iget v2, p0, Lorg/telegram/messenger/ImageReceiver;->imageOrientation:I

    rem-int/lit16 v3, v2, 0x168

    if-eqz v3, :cond_1

    rem-int/lit16 v2, v2, 0x168

    if-ne v2, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getIntrinsicHeight()I

    move-result v0

    :goto_1
    return v0

    .line 2140
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2142
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->getIntrinsicHeight()I

    move-result v0

    return v0

    .line 2144
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_5

    .line 2146
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 2147
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0

    :cond_4
    const/4 v0, 0x1

    return v0

    .line 2151
    :cond_5
    iget v2, p0, Lorg/telegram/messenger/ImageReceiver;->imageOrientation:I

    rem-int/lit16 v3, v2, 0x168

    if-eqz v3, :cond_7

    rem-int/lit16 v2, v2, 0x168

    if-ne v2, v1, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    goto :goto_3

    :cond_7
    :goto_2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    :goto_3
    return v0
.end method

.method public getBitmapSafe()Lorg/telegram/messenger/ImageReceiver$BitmapHolder;
    .locals 5

    .line 2036
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object v0

    .line 2037
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 2039
    invoke-virtual {v1}, Lorg/telegram/ui/Components/RLottieDrawable;->hasBitmap()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2040
    invoke-virtual {v1}, Lorg/telegram/ui/Components/RLottieDrawable;->getAnimatedBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    move-object v1, v2

    goto/16 :goto_1

    :cond_0
    if-eqz v0, :cond_2

    .line 2041
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->hasBitmap()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2042
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getAnimatedBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2043
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getOrientation()I

    move-result v3

    if-eqz v3, :cond_1

    .line 2045
    new-instance v0, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;I)V

    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0

    .line 2047
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_3

    instance-of v1, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-nez v1, :cond_3

    instance-of v1, v0, Lorg/telegram/ui/Components/RLottieDrawable;

    if-nez v1, :cond_3

    .line 2048
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2049
    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaKey:Ljava/lang/String;

    goto :goto_1

    .line 2050
    :cond_3
    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v4, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_4

    instance-of v4, v1, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-nez v4, :cond_4

    instance-of v4, v0, Lorg/telegram/ui/Components/RLottieDrawable;

    if-nez v4, :cond_4

    .line 2051
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2052
    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageKey:Ljava/lang/String;

    goto :goto_1

    .line 2053
    :cond_4
    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v4, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_5

    instance-of v4, v1, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-nez v4, :cond_5

    instance-of v0, v0, Lorg/telegram/ui/Components/RLottieDrawable;

    if-nez v0, :cond_5

    .line 2054
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2055
    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    goto :goto_1

    .line 2056
    :cond_5
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_6

    .line 2057
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_6
    move-object v0, v2

    move-object v1, v0

    :goto_1
    if-eqz v0, :cond_7

    .line 2060
    new-instance v2, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

    invoke-direct {v2, v0, v1, v3}, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;I)V

    :cond_7
    return-object v2
.end method

.method public getBitmapWidth()I
    .locals 4

    .line 2115
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 2116
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object v0

    const/16 v1, 0xb4

    if-eqz v0, :cond_2

    .line 2118
    iget v2, p0, Lorg/telegram/messenger/ImageReceiver;->imageOrientation:I

    rem-int/lit16 v3, v2, 0x168

    if-eqz v3, :cond_1

    rem-int/lit16 v2, v2, 0x168

    if-ne v2, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getIntrinsicWidth()I

    move-result v0

    :goto_1
    return v0

    .line 2120
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2122
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->getIntrinsicWidth()I

    move-result v0

    return v0

    .line 2124
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_5

    .line 2126
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 2127
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0

    :cond_4
    const/4 v0, 0x1

    return v0

    .line 2131
    :cond_5
    iget v2, p0, Lorg/telegram/messenger/ImageReceiver;->imageOrientation:I

    rem-int/lit16 v3, v2, 0x168

    if-eqz v3, :cond_7

    rem-int/lit16 v2, v2, 0x168

    if-ne v2, v1, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    goto :goto_3

    :cond_7
    :goto_2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    :goto_3
    return v0
.end method

.method public getCacheType()I
    .locals 1

    .line 2362
    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentCacheType:I

    return v0
.end method

.method public getCenterX()F
    .locals 3

    .line 2270
    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->imageX:F

    iget v1, p0, Lorg/telegram/messenger/ImageReceiver;->imageW:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public getCenterY()F
    .locals 3

    .line 2274
    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->imageY:F

    iget v1, p0, Lorg/telegram/messenger/ImageReceiver;->imageH:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public getCurrentAccount()I
    .locals 1

    .line 2455
    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentAccount:I

    return v0
.end method

.method public getCurrentAlpha()F
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1992
    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    return v0
.end method

.method public getDrawRegion()Landroid/graphics/RectF;
    .locals 1

    .line 2314
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->drawRegion:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 2001
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    return-object v0

    .line 2003
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    return-object v0

    .line 2005
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    return-object v0

    .line 2007
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    return-object v0

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDrawableSafe()Lorg/telegram/messenger/ImageReceiver$BitmapHolder;
    .locals 5

    .line 2068
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    instance-of v1, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-nez v1, :cond_0

    instance-of v1, v0, Lorg/telegram/ui/Components/RLottieDrawable;

    if-nez v1, :cond_0

    .line 2070
    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaKey:Ljava/lang/String;

    goto :goto_1

    .line 2071
    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v3, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_1

    instance-of v3, v1, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-nez v3, :cond_1

    instance-of v3, v0, Lorg/telegram/ui/Components/RLottieDrawable;

    if-nez v3, :cond_1

    .line 2073
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageKey:Ljava/lang/String;

    :goto_0
    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_1

    .line 2074
    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v3, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_2

    instance-of v3, v1, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-nez v3, :cond_2

    instance-of v0, v0, Lorg/telegram/ui/Components/RLottieDrawable;

    if-nez v0, :cond_2

    .line 2076
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    goto :goto_0

    .line 2077
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_3

    move-object v1, v2

    goto :goto_1

    :cond_3
    move-object v0, v2

    move-object v1, v0

    :goto_1
    if-eqz v0, :cond_4

    .line 2081
    new-instance v2, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V

    :cond_4
    return-object v2
.end method

.method public getExt()Ljava/lang/String;
    .locals 1

    .line 2306
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentExt:Ljava/lang/String;

    return-object v0
.end method

.method public getFileLoadingPriority()I
    .locals 1

    .line 3026
    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->fileLoadingPriority:I

    return v0
.end method

.method public getImageAspectRatio()F
    .locals 2

    .line 2302
    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->imageOrientation:I

    rem-int/lit16 v0, v0, 0xb4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->drawRegion:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->drawRegion:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->drawRegion:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->drawRegion:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    :goto_0
    div-float/2addr v0, v1

    return v0
.end method

.method public getImageFilter()Ljava/lang/String;
    .locals 1

    .line 2354
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageFilter:Ljava/lang/String;

    return-object v0
.end method

.method public getImageHeight()F
    .locals 1

    .line 2298
    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->imageH:F

    return v0
.end method

.method public getImageKey()Ljava/lang/String;
    .locals 1

    .line 2322
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageKey:Ljava/lang/String;

    return-object v0
.end method

.method public getImageLocation()Lorg/telegram/messenger/ImageLocation;
    .locals 1

    .line 2342
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageLocation:Lorg/telegram/messenger/ImageLocation;

    return-object v0
.end method

.method public getImageWidth()F
    .locals 1

    .line 2294
    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->imageW:F

    return v0
.end method

.method public getImageX()F
    .locals 1

    .line 2278
    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->imageX:F

    return v0
.end method

.method public getImageX2()F
    .locals 2

    .line 2282
    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->imageX:F

    iget v1, p0, Lorg/telegram/messenger/ImageReceiver;->imageW:F

    add-float/2addr v0, v1

    return v0
.end method

.method public getImageY()F
    .locals 1

    .line 2286
    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->imageY:F

    return v0
.end method

.method public getImageY2()F
    .locals 2

    .line 2290
    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->imageY:F

    iget v1, p0, Lorg/telegram/messenger/ImageReceiver;->imageH:F

    add-float/2addr v0, v1

    return v0
.end method

.method public getLoadingOperations()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .line 2970
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->loadingOperations:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;
    .locals 2

    .line 2566
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v1, :cond_0

    .line 2567
    check-cast v0, Lorg/telegram/ui/Components/RLottieDrawable;

    return-object v0

    .line 2568
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v1, :cond_1

    .line 2569
    check-cast v0, Lorg/telegram/ui/Components/RLottieDrawable;

    return-object v0

    .line 2570
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v1, :cond_2

    .line 2571
    check-cast v0, Lorg/telegram/ui/Components/RLottieDrawable;

    return-object v0

    .line 2572
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v1, :cond_3

    .line 2573
    check-cast v0, Lorg/telegram/ui/Components/RLottieDrawable;

    return-object v0

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMediaFilter()Ljava/lang/String;
    .locals 1

    .line 2350
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaFilter:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaKey()Ljava/lang/String;
    .locals 1

    .line 2326
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaKey:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaLocation()Lorg/telegram/messenger/ImageLocation;
    .locals 1

    .line 2338
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaLocation:Lorg/telegram/messenger/ImageLocation;

    return-object v0
.end method

.method public getNewGuid()I
    .locals 1

    .line 2318
    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentGuid:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentGuid:I

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .line 777
    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->imageOrientation:I

    return v0
.end method

.method public getParam()I
    .locals 1

    .line 2603
    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->param:I

    return v0
.end method

.method public getParentObject()Ljava/lang/Object;
    .locals 1

    .line 2423
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentParentObject:Ljava/lang/Object;

    return-object v0
.end method

.method public getParentPosition([I)V
    .locals 1

    .line 2176
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->parentView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 2179
    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->getLocationInWindow([I)V

    return-void
.end method

.method public getParentView()Landroid/view/View;
    .locals 1

    .line 2998
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->parentView:Landroid/view/View;

    return-object v0
.end method

.method public getPressed()Z
    .locals 1

    .line 749
    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->isPressed:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getQualityThumbDocument()Lorg/telegram/tgnet/TLRPC$Document;
    .locals 1

    .line 2435
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->qulityThumbDocument:Lorg/telegram/tgnet/TLRPC$Document;

    return-object v0
.end method

.method public getRoundRadius()[I
    .locals 1

    .line 2419
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->roundRadius:[I

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .line 2334
    iget-wide v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentSize:J

    return-wide v0
.end method

.method public getStaticThumb()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 768
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getStrippedLocation()Lorg/telegram/messenger/ImageLocation;
    .locals 1

    .line 364
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->strippedLocation:Lorg/telegram/messenger/ImageLocation;

    return-object v0
.end method

.method protected getTag(I)I
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2580
    iget p1, p0, Lorg/telegram/messenger/ImageReceiver;->thumbTag:I

    return p1

    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 2582
    iget p1, p0, Lorg/telegram/messenger/ImageReceiver;->mediaTag:I

    return p1

    .line 2584
    :cond_1
    iget p1, p0, Lorg/telegram/messenger/ImageReceiver;->imageTag:I

    return p1
.end method

.method public getThumb()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 2087
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getThumbBitmap()Landroid/graphics/Bitmap;
    .locals 2

    .line 2091
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    .line 2092
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 2093
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_1

    .line 2094
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getThumbBitmapSafe()Lorg/telegram/messenger/ImageReceiver$BitmapHolder;
    .locals 4

    .line 2102
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2103
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2104
    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    goto :goto_0

    .line 2105
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_1

    .line 2106
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v1, v2

    goto :goto_0

    :cond_1
    move-object v0, v2

    move-object v1, v0

    :goto_0
    if-eqz v0, :cond_2

    .line 2109
    new-instance v2, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;I)V

    :cond_2
    return-object v2
.end method

.method public getThumbFilter()Ljava/lang/String;
    .locals 1

    .line 2358
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbFilter:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbKey()Ljava/lang/String;
    .locals 1

    .line 2330
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbLocation()Lorg/telegram/messenger/ImageLocation;
    .locals 1

    .line 2346
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbLocation:Lorg/telegram/messenger/ImageLocation;

    return-object v0
.end method

.method public getUniqKeyPrefix()Ljava/lang/String;
    .locals 1

    .line 2962
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->uniqKeyPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public getVisible()Z
    .locals 1

    .line 2183
    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->isVisible:Z

    return v0
.end method

.method public hasBitmapImage()Z
    .locals 1

    .line 2205
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public hasImageLoaded()Z
    .locals 1

    .line 2209
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public hasImageSet()Z
    .locals 1

    .line 2201
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageKey:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public hasNotThumb()Z
    .locals 1

    .line 2213
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public hasStaticThumb()Z
    .locals 1

    .line 2217
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public incrementFrames(I)V
    .locals 2

    .line 1077
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v1, :cond_0

    goto :goto_1

    .line 1083
    :cond_0
    instance-of v0, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v0, :cond_1

    .line 1084
    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->bufferedFrame:I

    add-int/2addr p1, v0

    .line 1085
    iput p1, p0, Lorg/telegram/messenger/ImageReceiver;->bufferedFrame:I

    :goto_0
    if-eq v0, p1, :cond_1

    .line 1088
    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v1, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getNextFrame()Landroid/graphics/Bitmap;

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public invalidate()V
    .locals 6

    .line 2165
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->parentView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 2168
    :cond_0
    iget-boolean v1, p0, Lorg/telegram/messenger/ImageReceiver;->invalidateAll:Z

    if-eqz v1, :cond_1

    .line 2169
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 2171
    :cond_1
    iget v1, p0, Lorg/telegram/messenger/ImageReceiver;->imageX:F

    float-to-int v2, v1

    iget v3, p0, Lorg/telegram/messenger/ImageReceiver;->imageY:F

    float-to-int v4, v3

    iget v5, p0, Lorg/telegram/messenger/ImageReceiver;->imageW:F

    add-float/2addr v1, v5

    float-to-int v1, v1

    iget v5, p0, Lorg/telegram/messenger/ImageReceiver;->imageH:F

    add-float/2addr v3, v5

    float-to-int v3, v3

    invoke-virtual {v0, v2, v4, v1, v3}, Landroid/view/View;->invalidate(IIII)V

    :goto_0
    return-void
.end method

.method public isAllowStartAnimation()Z
    .locals 1

    .line 2519
    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->allowStartAnimation:Z

    return v0
.end method

.method public isAnimationRunning()Z
    .locals 1

    .line 2548
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2549
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAspectFit()Z
    .locals 1

    .line 2225
    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->isAspectFit:Z

    return v0
.end method

.method public isAttachedToWindow()Z
    .locals 1

    .line 3002
    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->attachedToWindow:Z

    return v0
.end method

.method public isCrossfadingWithOldImage()Z
    .locals 1

    .line 2443
    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeWithOldImage:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeImage:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadingWithThumb:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCurrentKeyQuality()Z
    .locals 1

    .line 2451
    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentKeyQuality:Z

    return v0
.end method

.method public isForceLoding()Z
    .locals 1

    .line 352
    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->forceLoding:Z

    return v0
.end method

.method public isForcePreview()Z
    .locals 1

    .line 2374
    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->forcePreview:Z

    return v0
.end method

.method public isInsideImage(FF)Z
    .locals 2

    .line 2310
    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->imageX:F

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_0

    iget v1, p0, Lorg/telegram/messenger/ImageReceiver;->imageW:F

    add-float/2addr v0, v1

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_0

    iget p1, p0, Lorg/telegram/messenger/ImageReceiver;->imageY:F

    cmpl-float v0, p2, p1

    if-ltz v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->imageH:F

    add-float/2addr p1, v0

    cmpg-float p1, p2, p1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isNeedsQualityThumb()Z
    .locals 1

    .line 2447
    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->needsQualityThumb:Z

    return v0
.end method

.method public isShouldGenerateQualityThumb()Z
    .locals 1

    .line 2463
    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->shouldGenerateQualityThumb:Z

    return v0
.end method

.method public moveImageToFront()V
    .locals 2

    .line 2974
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageLoader;->moveToFront(Ljava/lang/String;)V

    .line 2975
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageLoader;->moveToFront(Ljava/lang/String;)V

    return-void
.end method

.method public moveLottieToFront()V
    .locals 5

    .line 2982
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lorg/telegram/ui/Components/RLottieDrawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2983
    move-object v2, v0

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 2984
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaKey:Ljava/lang/String;

    :goto_0
    move-object v4, v2

    move-object v2, v0

    move-object v0, v4

    goto :goto_1

    .line 2985
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v1, :cond_1

    .line 2986
    move-object v2, v0

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 2987
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageKey:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_1
    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 2990
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageLoader;->moveToFront(Ljava/lang/String;)V

    .line 2991
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/ImageLoader;->isInMemCache(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2992
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageLoader;->getLottieMemCahce()Lorg/telegram/messenger/LruCache;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lorg/telegram/messenger/LruCache;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public onAttachedToWindow()Z
    .locals 5

    .line 1095
    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->attachedToWindow:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    .line 1098
    iput-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->attachedToWindow:Z

    .line 1099
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/NotificationCenter;->getCurrentHeavyOperationFlags()I

    move-result v2

    iput v2, p0, Lorg/telegram/messenger/ImageReceiver;->currentOpenedLayerFlags:I

    .line 1100
    iget v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentLayerNum:I

    not-int v3, v3

    and-int/2addr v2, v3

    iput v2, p0, Lorg/telegram/messenger/ImageReceiver;->currentOpenedLayerFlags:I

    .line 1101
    iget-boolean v2, p0, Lorg/telegram/messenger/ImageReceiver;->ignoreNotifications:Z

    if-nez v2, :cond_1

    .line 1102
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->didReplacedPhotoInMemCache:I

    invoke-virtual {v2, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1103
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->stopAllHeavyOperations:I

    invoke-virtual {v2, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1104
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->startAllHeavyOperations:I

    invoke-virtual {v2, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1106
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->setBackupImage()Z

    move-result v2

    if-eqz v2, :cond_2

    return v0

    .line 1109
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1111
    invoke-virtual {v2, p0}, Lorg/telegram/ui/Components/RLottieDrawable;->addParentView(Lorg/telegram/messenger/ImageReceiver;)V

    .line 1112
    iget-boolean v3, p0, Lorg/telegram/messenger/ImageReceiver;->allowLottieVibration:Z

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RLottieDrawable;->setAllowVibration(Z)V

    :cond_3
    if-eqz v2, :cond_5

    .line 1114
    iget-boolean v3, p0, Lorg/telegram/messenger/ImageReceiver;->allowStartLottieAnimation:Z

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RLottieDrawable;->isHeavyDrawable()Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentOpenedLayerFlags:I

    if-nez v3, :cond_5

    .line 1115
    :cond_4
    invoke-virtual {v2}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    .line 1117
    :cond_5
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 1119
    invoke-virtual {v2, p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->addParent(Lorg/telegram/messenger/ImageReceiver;)V

    :cond_6
    if-eqz v2, :cond_7

    .line 1121
    iget-boolean v3, p0, Lorg/telegram/messenger/ImageReceiver;->allowStartAnimation:Z

    if-eqz v3, :cond_7

    iget v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentOpenedLayerFlags:I

    if-nez v3, :cond_7

    .line 1122
    invoke-virtual {v2}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->checkRepeat()V

    .line 1123
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->invalidate()V

    .line 1125
    :cond_7
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/NotificationCenter;->isAnimationInProgress()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1126
    sget v2, Lorg/telegram/messenger/NotificationCenter;->stopAllHeavyOperations:I

    iget v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentAccount:I

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v4, 0x200

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v1

    invoke-virtual {p0, v2, v3, v0}, Lorg/telegram/messenger/ImageReceiver;->didReceivedNotification(II[Ljava/lang/Object;)V

    .line 1128
    :cond_8
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v2, v0, Lorg/telegram/ui/Components/AttachableDrawable;

    if-eqz v2, :cond_9

    .line 1129
    check-cast v0, Lorg/telegram/ui/Components/AttachableDrawable;

    invoke-interface {v0, p0}, Lorg/telegram/ui/Components/AttachableDrawable;->onAttachedToWindow(Lorg/telegram/messenger/ImageReceiver;)V

    :cond_9
    return v1
.end method

.method public onDetachedFromWindow()V
    .locals 4

    .line 1007
    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->attachedToWindow:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1010
    iput-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->attachedToWindow:Z

    .line 1011
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageLocation:Lorg/telegram/messenger/ImageLocation;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaLocation:Lorg/telegram/messenger/ImageLocation;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbLocation:Lorg/telegram/messenger/ImageLocation;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 1012
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    if-nez v0, :cond_2

    .line 1013
    new-instance v0, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    invoke-direct {v0, v1}, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;-><init>(Lorg/telegram/messenger/ImageReceiver$1;)V

    iput-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    .line 1015
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaLocation:Lorg/telegram/messenger/ImageLocation;

    iput-object v2, v0, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->mediaLocation:Lorg/telegram/messenger/ImageLocation;

    .line 1016
    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaFilter:Ljava/lang/String;

    iput-object v2, v0, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->mediaFilter:Ljava/lang/String;

    .line 1017
    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageLocation:Lorg/telegram/messenger/ImageLocation;

    iput-object v2, v0, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->imageLocation:Lorg/telegram/messenger/ImageLocation;

    .line 1018
    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageFilter:Ljava/lang/String;

    iput-object v2, v0, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->imageFilter:Ljava/lang/String;

    .line 1019
    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbLocation:Lorg/telegram/messenger/ImageLocation;

    iput-object v2, v0, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->thumbLocation:Lorg/telegram/messenger/ImageLocation;

    .line 1020
    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbFilter:Ljava/lang/String;

    iput-object v2, v0, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->thumbFilter:Ljava/lang/String;

    .line 1021
    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v2, v0, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->thumb:Landroid/graphics/drawable/Drawable;

    .line 1022
    iget-wide v2, p0, Lorg/telegram/messenger/ImageReceiver;->currentSize:J

    iput-wide v2, v0, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->size:J

    .line 1023
    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->currentExt:Ljava/lang/String;

    iput-object v2, v0, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->ext:Ljava/lang/String;

    .line 1024
    iget v2, p0, Lorg/telegram/messenger/ImageReceiver;->currentCacheType:I

    iput v2, v0, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->cacheType:I

    .line 1025
    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->currentParentObject:Ljava/lang/Object;

    iput-object v2, v0, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->parentObject:Ljava/lang/Object;

    .line 1027
    :cond_3
    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->ignoreNotifications:Z

    if-nez v0, :cond_4

    .line 1028
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->didReplacedPhotoInMemCache:I

    invoke-virtual {v0, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1029
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->stopAllHeavyOperations:I

    invoke-virtual {v0, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1030
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->startAllHeavyOperations:I

    invoke-virtual {v0, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1032
    :cond_4
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v2, v0, Lorg/telegram/ui/Components/AttachableDrawable;

    if-eqz v2, :cond_5

    .line 1033
    check-cast v0, Lorg/telegram/ui/Components/AttachableDrawable;

    invoke-interface {v0, p0}, Lorg/telegram/ui/Components/AttachableDrawable;->onDetachedFromWindow(Lorg/telegram/messenger/ImageReceiver;)V

    .line 1036
    :cond_5
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    .line 1037
    invoke-direct {p0, v1}, Lorg/telegram/messenger/ImageReceiver;->setStaticDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1038
    iput-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->thumbShader:Landroid/graphics/BitmapShader;

    .line 1039
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->roundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1041
    :cond_6
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->clearImage()V

    .line 1042
    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->isPressed:I

    if-nez v0, :cond_7

    const/4 v0, 0x0

    .line 1043
    iput v0, p0, Lorg/telegram/messenger/ImageReceiver;->pressedProgress:F

    .line 1046
    :cond_7
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 1048
    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->removeParent(Lorg/telegram/messenger/ImageReceiver;)V

    .line 1050
    :cond_8
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 1052
    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/RLottieDrawable;->removeParentView(Lorg/telegram/messenger/ImageReceiver;)V

    :cond_9
    return-void
.end method

.method public setAllowDecodeSingleFrame(Z)V
    .locals 0

    .line 2483
    iput-boolean p1, p0, Lorg/telegram/messenger/ImageReceiver;->allowDecodeSingleFrame:Z

    return-void
.end method

.method public setAllowLoadingOnAttachedOnly(Z)V
    .locals 0

    .line 3010
    iput-boolean p1, p0, Lorg/telegram/messenger/ImageReceiver;->allowLoadingOnAttachedOnly:Z

    return-void
.end method

.method public setAllowLottieVibration(Z)V
    .locals 0

    .line 2471
    iput-boolean p1, p0, Lorg/telegram/messenger/ImageReceiver;->allowLottieVibration:Z

    return-void
.end method

.method public setAllowStartAnimation(Z)V
    .locals 0

    .line 2467
    iput-boolean p1, p0, Lorg/telegram/messenger/ImageReceiver;->allowStartAnimation:Z

    return-void
.end method

.method public setAllowStartLottieAnimation(Z)V
    .locals 0

    .line 2479
    iput-boolean p1, p0, Lorg/telegram/messenger/ImageReceiver;->allowStartLottieAnimation:Z

    return-void
.end method

.method public setAlpha(F)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 2188
    iput p1, p0, Lorg/telegram/messenger/ImageReceiver;->overrideAlpha:F

    return-void
.end method

.method public setAnimation(III)V
    .locals 8

    .line 59
    new-instance v7, Lorg/telegram/ui/Components/RLottieDrawable;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move v1, p1

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(ILjava/lang/String;IIZ[I)V

    iput-object v7, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setAspectFit(Z)V
    .locals 0

    .line 2221
    iput-boolean p1, p0, Lorg/telegram/messenger/ImageReceiver;->isAspectFit:Z

    return-void
.end method

.method public setAutoRepeat(I)V
    .locals 1

    .line 2487
    iput p1, p0, Lorg/telegram/messenger/ImageReceiver;->autoRepeat:I

    .line 2488
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2490
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/RLottieDrawable;->setAutoRepeat(I)V

    :cond_0
    return-void
.end method

.method public setAutoRepeatCount(I)V
    .locals 1

    .line 2495
    iput p1, p0, Lorg/telegram/messenger/ImageReceiver;->autoRepeatCount:I

    .line 2496
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2497
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/RLottieDrawable;->setAutoRepeatCount(I)V

    goto :goto_0

    .line 2499
    :cond_0
    iput p1, p0, Lorg/telegram/messenger/ImageReceiver;->animatedFileDrawableRepeatMaxCount:I

    .line 2500
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2501
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object p1

    const/4 v0, 0x0

    iput v0, p1, Lorg/telegram/ui/Components/AnimatedFileDrawable;->repeatCount:I

    :cond_1
    :goto_0
    return-void
.end method

.method public setAutoRepeatTimeout(J)V
    .locals 2

    .line 2507
    iput-wide p1, p0, Lorg/telegram/messenger/ImageReceiver;->autoRepeatTimeout:J

    .line 2508
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2510
    iget-wide v0, p0, Lorg/telegram/messenger/ImageReceiver;->autoRepeatTimeout:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setAutoRepeatTimeout(J)V

    :cond_0
    return-void
.end method

.method public setBackupImage()Z
    .locals 15

    .line 1057
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    if-eqz v0, :cond_3

    invoke-static {v0}, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->access$300(Lorg/telegram/messenger/ImageReceiver$SetImageBackup;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1058
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    const/4 v1, 0x0

    .line 1059
    iput-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    .line 1060
    iget-object v3, v0, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->mediaLocation:Lorg/telegram/messenger/ImageLocation;

    iget-object v4, v0, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->mediaFilter:Ljava/lang/String;

    iget-object v5, v0, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->imageLocation:Lorg/telegram/messenger/ImageLocation;

    iget-object v6, v0, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->imageFilter:Ljava/lang/String;

    iget-object v7, v0, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->thumbLocation:Lorg/telegram/messenger/ImageLocation;

    iget-object v8, v0, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->thumbFilter:Ljava/lang/String;

    iget-object v9, v0, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->thumb:Landroid/graphics/drawable/Drawable;

    iget-wide v10, v0, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->size:J

    iget-object v12, v0, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->ext:Ljava/lang/String;

    iget-object v13, v0, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->parentObject:Ljava/lang/Object;

    iget v14, v0, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->cacheType:I

    move-object v2, p0

    invoke-virtual/range {v2 .. v14}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    .line 1061
    invoke-static {v0}, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->access$200(Lorg/telegram/messenger/ImageReceiver$SetImageBackup;)V

    .line 1062
    iput-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    .line 1063
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1065
    iget-boolean v1, p0, Lorg/telegram/messenger/ImageReceiver;->allowLottieVibration:Z

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setAllowVibration(Z)V

    :cond_0
    if-eqz v0, :cond_2

    .line 1067
    iget-boolean v1, p0, Lorg/telegram/messenger/ImageReceiver;->allowStartLottieAnimation:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->isHeavyDrawable()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentOpenedLayerFlags:I

    if-nez v1, :cond_2

    .line 1068
    :cond_1
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    :cond_2
    const/4 v0, 0x1

    return v0

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public setBlendMode(Ljava/lang/Object;)V
    .locals 0

    .line 1645
    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->blendMode:Ljava/lang/Object;

    .line 1646
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->invalidate()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 737
    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->colorFilter:Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setCrossfadeAlpha(B)V
    .locals 0

    .line 2197
    iput-byte p1, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeAlpha:B

    return-void
.end method

.method public setCrossfadeByScale(F)V
    .locals 0

    .line 2875
    iput p1, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeByScale:F

    return-void
.end method

.method public setCrossfadeDuration(I)V
    .locals 0

    .line 2871
    iput p1, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeDuration:I

    return-void
.end method

.method public setCrossfadeWithOldImage(Z)V
    .locals 0

    .line 2439
    iput-boolean p1, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeWithOldImage:Z

    return-void
.end method

.method public setCurrentAccount(I)V
    .locals 0

    .line 2415
    iput p1, p0, Lorg/telegram/messenger/ImageReceiver;->currentAccount:I

    return-void
.end method

.method public setCurrentAlpha(F)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1997
    iput p1, p0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    return-void
.end method

.method public setCurrentTime(J)V
    .locals 0

    .line 3018
    iput-wide p1, p0, Lorg/telegram/messenger/ImageReceiver;->currentTime:J

    return-void
.end method

.method public setDelegate(Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;)V
    .locals 0

    .line 741
    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->delegate:Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;

    return-void
.end method

.method public setDrawInBackgroundThread(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;I)Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;
    .locals 3

    if-nez p1, :cond_0

    .line 3031
    new-instance p1, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;

    invoke-direct {p1}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;-><init>()V

    .line 3033
    :cond_0
    iput p2, p1, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->threadIndex:I

    .line 3034
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->access$602(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;Lorg/telegram/ui/Components/AnimatedFileDrawable;)Lorg/telegram/ui/Components/AnimatedFileDrawable;

    .line 3035
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->access$702(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;Lorg/telegram/ui/Components/RLottieDrawable;)Lorg/telegram/ui/Components/RLottieDrawable;

    const/4 p2, 0x0

    move v0, p2

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 3037
    invoke-static {p1}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->access$400(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)[I

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->roundRadius:[I

    aget v2, v2, v0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3039
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p1, v0}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->access$802(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 3040
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->mediaShader:Landroid/graphics/BitmapShader;

    invoke-static {p1, v0}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->access$902(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;Landroid/graphics/BitmapShader;)Landroid/graphics/BitmapShader;

    .line 3041
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p1, v0}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->access$1002(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 3042
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->imageShader:Landroid/graphics/BitmapShader;

    invoke-static {p1, v0}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->access$1102(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;Landroid/graphics/BitmapShader;)Landroid/graphics/BitmapShader;

    .line 3043
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p1, v0}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->access$1602(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 3044
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->thumbShader:Landroid/graphics/BitmapShader;

    invoke-static {p1, v0}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->access$1202(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;Landroid/graphics/BitmapShader;)Landroid/graphics/BitmapShader;

    .line 3045
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p1, v0}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->access$1702(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 3046
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeImage:Landroid/graphics/drawable/Drawable;

    invoke-static {p1, v0}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->access$1302(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 3047
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->colorFilter:Landroid/graphics/ColorFilter;

    iput-object v0, p1, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->colorFilter:Landroid/graphics/ColorFilter;

    .line 3048
    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadingWithThumb:Z

    invoke-static {p1, v0}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->access$1502(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;Z)Z

    .line 3049
    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeWithOldImage:Z

    invoke-static {p1, v0}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->access$1402(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;Z)Z

    .line 3050
    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    invoke-static {p1, v0}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->access$1802(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;F)F

    .line 3051
    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->previousAlpha:F

    invoke-static {p1, v0}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->access$1902(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;F)F

    .line 3052
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeShader:Landroid/graphics/BitmapShader;

    invoke-static {p1, v0}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->access$2002(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;Landroid/graphics/BitmapShader;)Landroid/graphics/BitmapShader;

    .line 3053
    invoke-static {p1}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->access$600(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->access$600(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->hasBitmap()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-static {p1}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->access$700(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {p1}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->access$700(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->hasBitmap()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    const/4 p2, 0x1

    :cond_4
    iput-boolean p2, p1, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->animationNotReady:Z

    .line 3054
    iget p2, p0, Lorg/telegram/messenger/ImageReceiver;->imageX:F

    iput p2, p1, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->imageX:F

    .line 3055
    iget p2, p0, Lorg/telegram/messenger/ImageReceiver;->imageY:F

    iput p2, p1, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->imageY:F

    .line 3056
    iget p2, p0, Lorg/telegram/messenger/ImageReceiver;->imageW:F

    iput p2, p1, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->imageW:F

    .line 3057
    iget p2, p0, Lorg/telegram/messenger/ImageReceiver;->imageH:F

    iput p2, p1, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->imageH:F

    .line 3058
    iget p2, p0, Lorg/telegram/messenger/ImageReceiver;->overrideAlpha:F

    iput p2, p1, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->overrideAlpha:F

    return-object p1
.end method

.method public setFileLoadingPriority(I)V
    .locals 0

    .line 3022
    iput p1, p0, Lorg/telegram/messenger/ImageReceiver;->fileLoadingPriority:I

    return-void
.end method

.method public setForUserOrChat(Lorg/telegram/tgnet/TLObject;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x0

    .line 388
    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/messenger/ImageReceiver;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    return-void
.end method

.method public setForUserOrChat(Lorg/telegram/tgnet/TLObject;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 391
    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/ImageReceiver;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;ZI)V

    return-void
.end method

.method public setForUserOrChat(Lorg/telegram/tgnet/TLObject;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;ZI)V
    .locals 16

    move-object/from16 v13, p0

    move-object/from16 v0, p1

    move/from16 v1, p5

    if-nez p3, :cond_0

    move-object v11, v0

    goto :goto_0

    :cond_0
    move-object/from16 v11, p3

    :goto_0
    const/4 v2, 0x1

    .line 398
    invoke-virtual {v13, v2}, Lorg/telegram/messenger/ImageReceiver;->setUseRoundForThumbDrawable(Z)V

    .line 404
    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$User;

    const/4 v14, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v3, :cond_c

    .line 405
    move-object v3, v0

    check-cast v3, Lorg/telegram/tgnet/TLRPC$User;

    .line 406
    iget-boolean v6, v3, Lorg/telegram/tgnet/TLRPC$User;->premium:Z

    .line 407
    iget-object v7, v3, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v7, :cond_b

    .line 408
    iget-object v8, v7, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->strippedBitmap:Landroid/graphics/drawable/BitmapDrawable;

    .line 409
    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->stripped_thumb:[B

    if-eqz v7, :cond_1

    move v7, v2

    goto :goto_1

    :cond_1
    move v7, v5

    :goto_1
    if-ne v1, v14, :cond_3

    .line 411
    iget v9, v13, Lorg/telegram/messenger/ImageReceiver;->currentAccount:I

    invoke-static {v9}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    iget-wide v14, v3, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v9, v14, v15}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 413
    iget-object v10, v3, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-boolean v10, v10, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->personal:Z

    if-eqz v10, :cond_2

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$UserFull;->personal_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    goto :goto_2

    :cond_2
    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$UserFull;->profile_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    :goto_2
    if-eqz v9, :cond_3

    .line 415
    invoke-static {v9}, Lorg/telegram/messenger/FileLoader;->getVectorMarkupVideoSize(Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/tgnet/TLRPC$VideoSize;

    move-result-object v9

    goto :goto_3

    :cond_3
    move-object v9, v4

    :goto_3
    if-nez v9, :cond_a

    if-eqz p4, :cond_a

    .line 419
    iget v10, v13, Lorg/telegram/messenger/ImageReceiver;->currentAccount:I

    invoke-static {v10}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v10

    invoke-virtual {v10, v3}, Lorg/telegram/messenger/MessagesController;->isPremiumUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v10

    if-eqz v10, :cond_a

    iget-object v10, v3, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-boolean v10, v10, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->has_video:Z

    if-eqz v10, :cond_a

    const/16 v10, 0x400

    invoke-static {v10}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v10

    if-eqz v10, :cond_a

    iget v10, v13, Lorg/telegram/messenger/ImageReceiver;->currentAccount:I

    invoke-static {v10}, Lcom/iMe/fork/controller/ForkCommonController;->getInstance(I)Lcom/iMe/fork/controller/ForkCommonController;

    move-result-object v10

    invoke-virtual {v10}, Lcom/iMe/fork/controller/ForkCommonController;->isPremiumAnimateAvatars()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 420
    iget v10, v13, Lorg/telegram/messenger/ImageReceiver;->currentAccount:I

    invoke-static {v10}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v10

    iget-wide v14, v3, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v10, v14, v15}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v10

    if-nez v10, :cond_4

    .line 422
    iget v10, v13, Lorg/telegram/messenger/ImageReceiver;->currentAccount:I

    invoke-static {v10}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v10

    iget v12, v13, Lorg/telegram/messenger/ImageReceiver;->currentGuid:I

    invoke-virtual {v10, v3, v12, v5}, Lorg/telegram/messenger/MessagesController;->loadFullUser(Lorg/telegram/tgnet/TLRPC$User;IZ)V

    goto :goto_6

    .line 424
    :cond_4
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->personal:Z

    if-eqz v3, :cond_5

    iget-object v3, v10, Lorg/telegram/tgnet/TLRPC$UserFull;->personal_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    goto :goto_4

    :cond_5
    iget-object v3, v10, Lorg/telegram/tgnet/TLRPC$UserFull;->profile_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    :goto_4
    if-eqz v3, :cond_a

    .line 426
    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getVectorMarkupVideoSize(Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/tgnet/TLRPC$VideoSize;

    move-result-object v9

    if-nez v9, :cond_a

    .line 428
    iget-object v10, v3, Lorg/telegram/tgnet/TLRPC$Photo;->video_sizes:Ljava/util/ArrayList;

    if-eqz v10, :cond_a

    .line 429
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_a

    const/16 v4, 0x64

    .line 430
    invoke-static {v10, v4}, Lorg/telegram/messenger/FileLoader;->getClosestVideoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$VideoSize;

    move-result-object v4

    .line 431
    :goto_5
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v5, v12, :cond_9

    .line 432
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/tgnet/TLRPC$VideoSize;

    .line 433
    iget-object v14, v12, Lorg/telegram/tgnet/TLRPC$VideoSize;->type:Ljava/lang/String;

    const-string v15, "p"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    move-object v4, v12

    .line 436
    :cond_6
    instance-of v14, v12, Lorg/telegram/tgnet/TLRPC$TL_videoSizeEmojiMarkup;

    if-nez v14, :cond_7

    instance-of v14, v12, Lorg/telegram/tgnet/TLRPC$TL_videoSizeStickerMarkup;

    if-eqz v14, :cond_8

    :cond_7
    move-object v9, v12

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 440
    :cond_9
    invoke-static {v4, v3}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$VideoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v4

    :cond_a
    :goto_6
    move-object v3, v4

    move v5, v7

    move-object v4, v8

    goto :goto_7

    :cond_b
    move-object v3, v4

    move-object v9, v3

    :goto_7
    move-object v7, v4

    move-object v4, v3

    move v3, v5

    move v5, v6

    goto :goto_9

    .line 447
    :cond_c
    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v3, :cond_e

    .line 448
    move-object v3, v0

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 449
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    if-eqz v3, :cond_e

    .line 450
    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->strippedBitmap:Landroid/graphics/drawable/BitmapDrawable;

    .line 451
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->stripped_thumb:[B

    if-eqz v3, :cond_d

    move v3, v2

    goto :goto_8

    :cond_d
    move v3, v5

    :goto_8
    move-object v9, v4

    move-object v7, v6

    goto :goto_9

    :cond_e
    move-object v7, v4

    move-object v9, v7

    move v3, v5

    :goto_9
    if-eqz v9, :cond_f

    if-eqz v1, :cond_f

    .line 455
    new-instance v0, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;

    invoke-direct {v0, v9, v5, v1}, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;-><init>(Lorg/telegram/tgnet/TLRPC$VideoSize;ZI)V

    .line 456
    invoke-virtual {v13, v0}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_a

    .line 458
    :cond_f
    invoke-static {v0, v2}, Lorg/telegram/messenger/ImageLocation;->getForUserOrChat(Lorg/telegram/tgnet/TLObject;I)Lorg/telegram/messenger/ImageLocation;

    move-result-object v5

    const-string v6, "50_50"

    if-eqz v4, :cond_10

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v14, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const-string v2, "avatar"

    move-object/from16 v0, p0

    move-object v1, v4

    move-object v3, v5

    move-object v4, v6

    move-object v5, v8

    move-object v6, v9

    move-wide v8, v14

    .line 461
    invoke-virtual/range {v0 .. v12}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    const/4 v0, 0x3

    .line 462
    iput v0, v13, Lorg/telegram/messenger/ImageReceiver;->animatedFileDrawableRepeatMaxCount:I

    goto :goto_a

    :cond_10
    if-eqz v7, :cond_11

    const/4 v4, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    move-object v3, v7

    move-object v5, v11

    move v6, v8

    .line 465
    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    goto :goto_a

    :cond_11
    if-eqz v3, :cond_12

    const/4 v1, 0x2

    .line 467
    invoke-static {v0, v1}, Lorg/telegram/messenger/ImageLocation;->getForUserOrChat(Lorg/telegram/tgnet/TLObject;I)Lorg/telegram/messenger/ImageLocation;

    move-result-object v3

    const/4 v7, 0x0

    const-string v4, "50_50_b"

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    move-object/from16 v5, p2

    move-object v6, v11

    invoke-virtual/range {v0 .. v7}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;I)V

    goto :goto_a

    :cond_12
    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    move-object/from16 v3, p2

    move-object v5, v11

    move v6, v7

    .line 469
    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    :goto_a
    return-void
.end method

.method public setForceCrossfade(Z)V
    .locals 0

    .line 2370
    iput-boolean p1, p0, Lorg/telegram/messenger/ImageReceiver;->forceCrossfade:Z

    return-void
.end method

.method public setForceLoading(Z)V
    .locals 0

    .line 348
    iput-boolean p1, p0, Lorg/telegram/messenger/ImageReceiver;->forceLoding:Z

    return-void
.end method

.method public setForcePreview(Z)V
    .locals 0

    .line 2366
    iput-boolean p1, p0, Lorg/telegram/messenger/ImageReceiver;->forcePreview:Z

    return-void
.end method

.method public setGradientBitmap(Landroid/graphics/Bitmap;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 1651
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->gradientShader:Landroid/graphics/BitmapShader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->gradientBitmap:Landroid/graphics/Bitmap;

    if-eq v0, p1, :cond_1

    .line 1652
    :cond_0
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p1, v1, v1}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->gradientShader:Landroid/graphics/BitmapShader;

    .line 1653
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lorg/telegram/messenger/ImageReceiver;->updateDrawableRadius(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    const/4 v0, 0x1

    .line 1655
    iput-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->isRoundRect:Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 1657
    iput-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->gradientShader:Landroid/graphics/BitmapShader;

    .line 1658
    iput-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->composeShader:Landroid/graphics/ComposeShader;

    .line 1659
    iput-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->legacyShader:Landroid/graphics/BitmapShader;

    .line 1660
    iput-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->legacyCanvas:Landroid/graphics/Canvas;

    .line 1661
    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->legacyBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    .line 1662
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1663
    iput-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->legacyBitmap:Landroid/graphics/Bitmap;

    .line 1666
    :cond_3
    :goto_0
    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->gradientBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setIgnoreImageSet(Z)V
    .locals 0

    .line 360
    iput-boolean p1, p0, Lorg/telegram/messenger/ImageReceiver;->ignoreImageSet:Z

    return-void
.end method

.method public setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;J)V
    .locals 11

    .line 376
    invoke-static {p1}, Lorg/telegram/messenger/ImageLocation;->getForPath(Ljava/lang/String;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v0, p0

    move-object v2, p2

    move-object v5, p3

    move-wide/from16 v6, p5

    move-object v8, p4

    invoke-virtual/range {v0 .. v10}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method

.method public setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V
    .locals 11

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-wide v6, p4

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    .line 372
    invoke-virtual/range {v0 .. v10}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method

.method public setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 11

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    .line 368
    invoke-virtual/range {v0 .. v10}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method

.method public setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Object;I)V
    .locals 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    .line 384
    invoke-virtual/range {v0 .. v10}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method

.method public setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V
    .locals 13

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-wide/from16 v8, p6

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move/from16 v12, p10

    .line 481
    invoke-virtual/range {v0 .. v12}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method

.method public setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;I)V
    .locals 13

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v11, p6

    move/from16 v12, p7

    .line 477
    invoke-virtual/range {v0 .. v12}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method

.method public setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 11

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    .line 380
    invoke-virtual/range {v0 .. v10}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method

.method public setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-wide/from16 v8, p8

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move/from16 v12, p12

    .line 485
    iget-boolean v13, v0, Lorg/telegram/messenger/ImageReceiver;->allowLoadingOnAttachedOnly:Z

    const/4 v14, 0x0

    if-eqz v13, :cond_1

    iget-boolean v13, v0, Lorg/telegram/messenger/ImageReceiver;->attachedToWindow:Z

    if-nez v13, :cond_1

    .line 486
    iget-object v13, v0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    if-nez v13, :cond_0

    .line 487
    new-instance v13, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    invoke-direct {v13, v14}, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;-><init>(Lorg/telegram/messenger/ImageReceiver$1;)V

    iput-object v13, v0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    .line 489
    :cond_0
    iget-object v13, v0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    iput-object v1, v13, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->mediaLocation:Lorg/telegram/messenger/ImageLocation;

    .line 490
    iput-object v2, v13, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->mediaFilter:Ljava/lang/String;

    .line 491
    iput-object v3, v13, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->imageLocation:Lorg/telegram/messenger/ImageLocation;

    .line 492
    iput-object v4, v13, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->imageFilter:Ljava/lang/String;

    .line 493
    iput-object v5, v13, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->thumbLocation:Lorg/telegram/messenger/ImageLocation;

    .line 494
    iput-object v6, v13, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->thumbFilter:Ljava/lang/String;

    .line 495
    iput-object v7, v13, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->thumb:Landroid/graphics/drawable/Drawable;

    .line 496
    iput-wide v8, v13, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->size:J

    .line 497
    iput-object v10, v13, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->ext:Ljava/lang/String;

    .line 498
    iput v12, v13, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->cacheType:I

    .line 499
    iput-object v11, v13, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->parentObject:Ljava/lang/Object;

    return-void

    .line 502
    :cond_1
    iget-boolean v13, v0, Lorg/telegram/messenger/ImageReceiver;->ignoreImageSet:Z

    if-eqz v13, :cond_2

    return-void

    .line 505
    :cond_2
    iget-boolean v13, v0, Lorg/telegram/messenger/ImageReceiver;->crossfadeWithOldImage:Z

    if-eqz v13, :cond_3

    iget-object v13, v0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    if-eqz v13, :cond_3

    invoke-static {v13}, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->access$100(Lorg/telegram/messenger/ImageReceiver$SetImageBackup;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 506
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/ImageReceiver;->setBackupImage()Z

    .line 508
    :cond_3
    iget-object v13, v0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    if-eqz v13, :cond_4

    .line 509
    invoke-static {v13}, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->access$200(Lorg/telegram/messenger/ImageReceiver$SetImageBackup;)V

    :cond_4
    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-nez v3, :cond_c

    if-nez v5, :cond_c

    if-nez v1, :cond_c

    move v1, v15

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_5

    const/4 v2, 0x0

    .line 514
    invoke-direct {v0, v2, v1}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    .line 516
    iput-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->currentImageLocation:Lorg/telegram/messenger/ImageLocation;

    .line 517
    iput-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->currentImageFilter:Ljava/lang/String;

    .line 518
    iput-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->currentImageKey:Ljava/lang/String;

    .line 519
    iput-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->currentMediaLocation:Lorg/telegram/messenger/ImageLocation;

    .line 520
    iput-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->currentMediaFilter:Ljava/lang/String;

    .line 521
    iput-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->currentMediaKey:Ljava/lang/String;

    .line 522
    iput-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->currentThumbLocation:Lorg/telegram/messenger/ImageLocation;

    .line 523
    iput-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->currentThumbFilter:Ljava/lang/String;

    .line 524
    iput-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    .line 526
    iput-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->currentMediaDrawable:Landroid/graphics/drawable/Drawable;

    .line 527
    iput-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->mediaShader:Landroid/graphics/BitmapShader;

    .line 528
    iput-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->currentImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 529
    iput-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->imageShader:Landroid/graphics/BitmapShader;

    .line 530
    iput-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->composeShader:Landroid/graphics/ComposeShader;

    .line 531
    iput-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->thumbShader:Landroid/graphics/BitmapShader;

    .line 532
    iput-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->crossfadeShader:Landroid/graphics/BitmapShader;

    .line 533
    iput-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->legacyShader:Landroid/graphics/BitmapShader;

    .line 534
    iput-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->legacyCanvas:Landroid/graphics/Canvas;

    .line 535
    iget-object v1, v0, Lorg/telegram/messenger/ImageReceiver;->legacyBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_6

    .line 536
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 537
    iput-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->legacyBitmap:Landroid/graphics/Bitmap;

    .line 540
    :cond_6
    iput-object v10, v0, Lorg/telegram/messenger/ImageReceiver;->currentExt:Ljava/lang/String;

    .line 541
    iput-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->currentParentObject:Ljava/lang/Object;

    .line 542
    iput v15, v0, Lorg/telegram/messenger/ImageReceiver;->currentCacheType:I

    .line 543
    iget-object v1, v0, Lorg/telegram/messenger/ImageReceiver;->roundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 544
    invoke-direct {v0, v7}, Lorg/telegram/messenger/ImageReceiver;->setStaticDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 545
    iput v13, v0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    .line 546
    iput v13, v0, Lorg/telegram/messenger/ImageReceiver;->previousAlpha:F

    const-wide/16 v1, 0x0

    .line 547
    iput-wide v1, v0, Lorg/telegram/messenger/ImageReceiver;->currentSize:J

    .line 549
    iget-object v1, v0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v2, v1, Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    if-eqz v2, :cond_7

    .line 550
    check-cast v1, Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->setParent(Lorg/telegram/messenger/ImageReceiver;)V

    .line 552
    :cond_7
    iget-object v1, v0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->updateDrawableRadius(Landroid/graphics/drawable/Drawable;)V

    .line 554
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v1

    invoke-virtual {v1, v0, v14}, Lorg/telegram/messenger/ImageLoader;->cancelLoadingForImageReceiver(Lorg/telegram/messenger/ImageReceiver;Z)V

    .line 555
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/ImageReceiver;->invalidate()V

    .line 556
    iget-object v1, v0, Lorg/telegram/messenger/ImageReceiver;->delegate:Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;

    if-eqz v1, :cond_b

    .line 557
    iget-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->currentImageDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_9

    iget-object v3, v0, Lorg/telegram/messenger/ImageReceiver;->currentThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_9

    iget-object v3, v0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_9

    iget-object v3, v0, Lorg/telegram/messenger/ImageReceiver;->currentMediaDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_8

    goto :goto_1

    :cond_8
    move v3, v15

    goto :goto_2

    :cond_9
    :goto_1
    move v3, v14

    :goto_2
    if-nez v2, :cond_a

    iget-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->currentMediaDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_a

    goto :goto_3

    :cond_a
    move v14, v15

    :goto_3
    invoke-interface {v1, v0, v3, v14, v15}, Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;->didSetImage(Lorg/telegram/messenger/ImageReceiver;ZZZ)V

    :cond_b
    return-void

    :cond_c
    if-eqz v3, :cond_d

    const/4 v13, 0x0

    .line 561
    invoke-virtual {v3, v11, v13, v15}, Lorg/telegram/messenger/ImageLocation;->getKey(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v16

    goto :goto_4

    :cond_d
    const/16 v16, 0x0

    :goto_4
    if-nez v16, :cond_e

    if-eqz v3, :cond_e

    const/4 v3, 0x0

    .line 565
    :cond_e
    iget v13, v0, Lorg/telegram/messenger/ImageReceiver;->autoRepeatCount:I

    invoke-static {v13, v15}, Ljava/lang/Math;->max(II)I

    move-result v13

    iput v13, v0, Lorg/telegram/messenger/ImageReceiver;->animatedFileDrawableRepeatMaxCount:I

    .line 566
    iput-boolean v15, v0, Lorg/telegram/messenger/ImageReceiver;->currentKeyQuality:Z

    if-nez v16, :cond_11

    .line 567
    iget-boolean v13, v0, Lorg/telegram/messenger/ImageReceiver;->needsQualityThumb:Z

    if-eqz v13, :cond_11

    instance-of v13, v11, Lorg/telegram/messenger/MessageObject;

    if-nez v13, :cond_f

    iget-object v13, v0, Lorg/telegram/messenger/ImageReceiver;->qulityThumbDocument:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v13, :cond_11

    .line 568
    :cond_f
    iget-object v13, v0, Lorg/telegram/messenger/ImageReceiver;->qulityThumbDocument:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v13, :cond_10

    goto :goto_5

    :cond_10
    move-object v13, v11

    check-cast v13, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v13}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v13

    :goto_5
    if-eqz v13, :cond_11

    .line 569
    iget v15, v13, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    if-eqz v15, :cond_11

    iget-wide v14, v13, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    const-wide/16 v17, 0x0

    cmp-long v14, v14, v17

    if-eqz v14, :cond_11

    .line 570
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "q_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v13, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, "_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v12, v13, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-virtual {v14, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/4 v12, 0x1

    .line 571
    iput-boolean v12, v0, Lorg/telegram/messenger/ImageReceiver;->currentKeyQuality:Z

    :cond_11
    move-object/from16 v12, v16

    const-string v13, "@"

    if-eqz v12, :cond_12

    if-eqz v4, :cond_12

    .line 575
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 578
    :cond_12
    iget-object v14, v0, Lorg/telegram/messenger/ImageReceiver;->uniqKeyPrefix:Ljava/lang/String;

    if-eqz v14, :cond_13

    .line 579
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v0, Lorg/telegram/messenger/ImageReceiver;->uniqKeyPrefix:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :cond_13
    if-eqz v1, :cond_14

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 582
    invoke-virtual {v1, v11, v15, v14}, Lorg/telegram/messenger/ImageLocation;->getKey(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v15, v16

    goto :goto_6

    :cond_14
    const/4 v15, 0x0

    :goto_6
    if-nez v15, :cond_15

    if-eqz v1, :cond_15

    const/4 v1, 0x0

    :cond_15
    if-eqz v15, :cond_16

    if-eqz v2, :cond_16

    .line 587
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 590
    :cond_16
    iget-object v14, v0, Lorg/telegram/messenger/ImageReceiver;->uniqKeyPrefix:Ljava/lang/String;

    if-eqz v14, :cond_17

    .line 591
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Lorg/telegram/messenger/ImageReceiver;->uniqKeyPrefix:Ljava/lang/String;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    :cond_17
    if-nez v15, :cond_18

    .line 594
    iget-object v7, v0, Lorg/telegram/messenger/ImageReceiver;->currentImageKey:Ljava/lang/String;

    if-eqz v7, :cond_18

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_19

    :cond_18
    iget-object v7, v0, Lorg/telegram/messenger/ImageReceiver;->currentMediaKey:Ljava/lang/String;

    if-eqz v7, :cond_1e

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 595
    :cond_19
    iget-object v7, v0, Lorg/telegram/messenger/ImageReceiver;->delegate:Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;

    if-eqz v7, :cond_1d

    .line 596
    iget-object v14, v0, Lorg/telegram/messenger/ImageReceiver;->currentImageDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v14, :cond_1b

    iget-object v8, v0, Lorg/telegram/messenger/ImageReceiver;->currentThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v8, :cond_1b

    iget-object v8, v0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v8, :cond_1b

    iget-object v8, v0, Lorg/telegram/messenger/ImageReceiver;->currentMediaDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_1a

    goto :goto_7

    :cond_1a
    const/4 v8, 0x0

    goto :goto_8

    :cond_1b
    :goto_7
    const/4 v8, 0x1

    :goto_8
    if-nez v14, :cond_1c

    iget-object v9, v0, Lorg/telegram/messenger/ImageReceiver;->currentMediaDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v9, :cond_1c

    const/4 v9, 0x1

    goto :goto_9

    :cond_1c
    const/4 v9, 0x0

    :goto_9
    const/4 v14, 0x0

    invoke-interface {v7, v0, v8, v9, v14}, Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;->didSetImage(Lorg/telegram/messenger/ImageReceiver;ZZZ)V

    .line 598
    :cond_1d
    iget-boolean v7, v0, Lorg/telegram/messenger/ImageReceiver;->canceledLoading:Z

    if-nez v7, :cond_1e

    return-void

    .line 604
    :cond_1e
    iget-object v7, v0, Lorg/telegram/messenger/ImageReceiver;->strippedLocation:Lorg/telegram/messenger/ImageLocation;

    if-eqz v7, :cond_1f

    goto :goto_a

    :cond_1f
    if-eqz v1, :cond_20

    move-object v7, v1

    goto :goto_a

    :cond_20
    move-object v7, v3

    :goto_a
    if-nez v7, :cond_21

    move-object v7, v5

    :cond_21
    if-eqz v5, :cond_22

    const/4 v8, 0x0

    .line 613
    invoke-virtual {v5, v11, v7, v8}, Lorg/telegram/messenger/ImageLocation;->getKey(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v7

    goto :goto_b

    :cond_22
    const/4 v7, 0x0

    :goto_b
    if-eqz v7, :cond_23

    if-eqz v6, :cond_23

    .line 615
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 618
    :cond_23
    iget-boolean v8, v0, Lorg/telegram/messenger/ImageReceiver;->crossfadeWithOldImage:Z

    const/4 v9, 0x3

    const/4 v13, 0x2

    if-eqz v8, :cond_2a

    .line 619
    iget-object v8, v0, Lorg/telegram/messenger/ImageReceiver;->currentParentObject:Ljava/lang/Object;

    instance-of v14, v8, Lorg/telegram/messenger/MessageObject;

    if-eqz v14, :cond_24

    move-object v14, v8

    check-cast v14, Lorg/telegram/messenger/MessageObject;

    iget-object v14, v14, Lorg/telegram/messenger/MessageObject;->lastGeoWebFileSet:Ljava/lang/Object;

    if-eqz v14, :cond_24

    check-cast v8, Lorg/telegram/messenger/MessageObject;

    invoke-static {v8}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v8

    instance-of v8, v8, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeoLive;

    if-eqz v8, :cond_24

    .line 620
    iget-object v8, v0, Lorg/telegram/messenger/ImageReceiver;->currentParentObject:Ljava/lang/Object;

    move-object v14, v8

    check-cast v14, Lorg/telegram/messenger/MessageObject;

    check-cast v8, Lorg/telegram/messenger/MessageObject;

    iget-object v8, v8, Lorg/telegram/messenger/MessageObject;->lastGeoWebFileSet:Ljava/lang/Object;

    iput-object v8, v14, Lorg/telegram/messenger/MessageObject;->lastGeoWebFileLoaded:Ljava/lang/Object;

    .line 622
    :cond_24
    iget-object v8, v0, Lorg/telegram/messenger/ImageReceiver;->currentMediaDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_26

    .line 623
    instance-of v9, v8, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v9, :cond_25

    .line 624
    check-cast v8, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->stop()V

    .line 625
    iget-object v8, v0, Lorg/telegram/messenger/ImageReceiver;->currentMediaDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v8, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-virtual {v8, v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->removeParent(Lorg/telegram/messenger/ImageReceiver;)V

    :cond_25
    const/4 v8, 0x1

    .line 627
    invoke-direct {v0, v7, v8}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;I)V

    const/4 v8, 0x0

    .line 628
    invoke-direct {v0, v8, v13}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;I)V

    const/4 v9, 0x0

    .line 629
    invoke-direct {v0, v15, v9}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;I)V

    .line 630
    iget-object v13, v0, Lorg/telegram/messenger/ImageReceiver;->currentMediaDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v13, v0, Lorg/telegram/messenger/ImageReceiver;->crossfadeImage:Landroid/graphics/drawable/Drawable;

    .line 631
    iget-object v13, v0, Lorg/telegram/messenger/ImageReceiver;->mediaShader:Landroid/graphics/BitmapShader;

    iput-object v13, v0, Lorg/telegram/messenger/ImageReceiver;->crossfadeShader:Landroid/graphics/BitmapShader;

    .line 632
    iget-object v13, v0, Lorg/telegram/messenger/ImageReceiver;->currentImageKey:Ljava/lang/String;

    iput-object v13, v0, Lorg/telegram/messenger/ImageReceiver;->crossfadeKey:Ljava/lang/String;

    .line 633
    iput-boolean v9, v0, Lorg/telegram/messenger/ImageReceiver;->crossfadingWithThumb:Z

    .line 634
    iput-object v8, v0, Lorg/telegram/messenger/ImageReceiver;->currentMediaDrawable:Landroid/graphics/drawable/Drawable;

    .line 635
    iput-object v8, v0, Lorg/telegram/messenger/ImageReceiver;->currentMediaKey:Ljava/lang/String;

    goto :goto_c

    :cond_26
    const/4 v8, 0x0

    .line 636
    iget-object v14, v0, Lorg/telegram/messenger/ImageReceiver;->currentImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v14, :cond_27

    const/4 v14, 0x1

    .line 637
    invoke-direct {v0, v7, v14}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;I)V

    .line 638
    invoke-direct {v0, v8, v13}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;I)V

    .line 639
    invoke-direct {v0, v15, v9}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;I)V

    .line 640
    iget-object v9, v0, Lorg/telegram/messenger/ImageReceiver;->imageShader:Landroid/graphics/BitmapShader;

    iput-object v9, v0, Lorg/telegram/messenger/ImageReceiver;->crossfadeShader:Landroid/graphics/BitmapShader;

    .line 641
    iget-object v9, v0, Lorg/telegram/messenger/ImageReceiver;->currentImageDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v9, v0, Lorg/telegram/messenger/ImageReceiver;->crossfadeImage:Landroid/graphics/drawable/Drawable;

    .line 642
    iget-object v9, v0, Lorg/telegram/messenger/ImageReceiver;->currentImageKey:Ljava/lang/String;

    iput-object v9, v0, Lorg/telegram/messenger/ImageReceiver;->crossfadeKey:Ljava/lang/String;

    const/4 v14, 0x0

    .line 643
    iput-boolean v14, v0, Lorg/telegram/messenger/ImageReceiver;->crossfadingWithThumb:Z

    .line 644
    iput-object v8, v0, Lorg/telegram/messenger/ImageReceiver;->currentImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 645
    iput-object v8, v0, Lorg/telegram/messenger/ImageReceiver;->currentImageKey:Ljava/lang/String;

    :goto_c
    const/4 v9, 0x1

    goto :goto_d

    :cond_27
    const/4 v14, 0x0

    .line 646
    iget-object v9, v0, Lorg/telegram/messenger/ImageReceiver;->currentThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_28

    .line 647
    invoke-direct {v0, v12, v14}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;I)V

    .line 648
    invoke-direct {v0, v8, v13}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;I)V

    const/4 v9, 0x3

    .line 649
    invoke-direct {v0, v15, v9}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;I)V

    .line 650
    iget-object v9, v0, Lorg/telegram/messenger/ImageReceiver;->thumbShader:Landroid/graphics/BitmapShader;

    iput-object v9, v0, Lorg/telegram/messenger/ImageReceiver;->crossfadeShader:Landroid/graphics/BitmapShader;

    .line 651
    iget-object v9, v0, Lorg/telegram/messenger/ImageReceiver;->currentThumbDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v9, v0, Lorg/telegram/messenger/ImageReceiver;->crossfadeImage:Landroid/graphics/drawable/Drawable;

    .line 652
    iget-object v9, v0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    iput-object v9, v0, Lorg/telegram/messenger/ImageReceiver;->crossfadeKey:Ljava/lang/String;

    .line 653
    iput-boolean v14, v0, Lorg/telegram/messenger/ImageReceiver;->crossfadingWithThumb:Z

    .line 654
    iput-object v8, v0, Lorg/telegram/messenger/ImageReceiver;->currentThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 655
    iput-object v8, v0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    goto :goto_c

    .line 656
    :cond_28
    iget-object v9, v0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_29

    .line 657
    invoke-direct {v0, v12, v14}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;I)V

    const/4 v9, 0x1

    .line 658
    invoke-direct {v0, v7, v9}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;I)V

    .line 659
    invoke-direct {v0, v8, v13}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;I)V

    const/4 v9, 0x3

    .line 660
    invoke-direct {v0, v15, v9}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;I)V

    .line 661
    iget-object v9, v0, Lorg/telegram/messenger/ImageReceiver;->thumbShader:Landroid/graphics/BitmapShader;

    iput-object v9, v0, Lorg/telegram/messenger/ImageReceiver;->crossfadeShader:Landroid/graphics/BitmapShader;

    .line 662
    iget-object v9, v0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v9, v0, Lorg/telegram/messenger/ImageReceiver;->crossfadeImage:Landroid/graphics/drawable/Drawable;

    .line 663
    iput-boolean v14, v0, Lorg/telegram/messenger/ImageReceiver;->crossfadingWithThumb:Z

    .line 664
    iput-object v8, v0, Lorg/telegram/messenger/ImageReceiver;->crossfadeKey:Ljava/lang/String;

    .line 665
    iput-object v8, v0, Lorg/telegram/messenger/ImageReceiver;->currentThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 666
    iput-object v8, v0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    goto :goto_c

    .line 668
    :cond_29
    invoke-direct {v0, v12, v14}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;I)V

    const/4 v9, 0x1

    .line 669
    invoke-direct {v0, v7, v9}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;I)V

    .line 670
    invoke-direct {v0, v8, v13}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;I)V

    const/4 v13, 0x3

    .line 671
    invoke-direct {v0, v15, v13}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;I)V

    .line 672
    iput-object v8, v0, Lorg/telegram/messenger/ImageReceiver;->crossfadeShader:Landroid/graphics/BitmapShader;

    goto :goto_d

    :cond_2a
    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v14, 0x0

    .line 675
    invoke-direct {v0, v12, v14}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;I)V

    .line 676
    invoke-direct {v0, v7, v9}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;I)V

    .line 677
    invoke-direct {v0, v8, v13}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;I)V

    const/4 v13, 0x3

    .line 678
    invoke-direct {v0, v15, v13}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;I)V

    .line 679
    iput-object v8, v0, Lorg/telegram/messenger/ImageReceiver;->crossfadeShader:Landroid/graphics/BitmapShader;

    .line 682
    :goto_d
    iput-object v3, v0, Lorg/telegram/messenger/ImageReceiver;->currentImageLocation:Lorg/telegram/messenger/ImageLocation;

    .line 683
    iput-object v4, v0, Lorg/telegram/messenger/ImageReceiver;->currentImageFilter:Ljava/lang/String;

    .line 684
    iput-object v12, v0, Lorg/telegram/messenger/ImageReceiver;->currentImageKey:Ljava/lang/String;

    .line 685
    iput-object v1, v0, Lorg/telegram/messenger/ImageReceiver;->currentMediaLocation:Lorg/telegram/messenger/ImageLocation;

    .line 686
    iput-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->currentMediaFilter:Ljava/lang/String;

    .line 687
    iput-object v15, v0, Lorg/telegram/messenger/ImageReceiver;->currentMediaKey:Ljava/lang/String;

    .line 688
    iput-object v5, v0, Lorg/telegram/messenger/ImageReceiver;->currentThumbLocation:Lorg/telegram/messenger/ImageLocation;

    .line 689
    iput-object v6, v0, Lorg/telegram/messenger/ImageReceiver;->currentThumbFilter:Ljava/lang/String;

    .line 690
    iput-object v7, v0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    .line 692
    iput-object v11, v0, Lorg/telegram/messenger/ImageReceiver;->currentParentObject:Ljava/lang/Object;

    .line 693
    iput-object v10, v0, Lorg/telegram/messenger/ImageReceiver;->currentExt:Ljava/lang/String;

    move-wide/from16 v1, p8

    .line 694
    iput-wide v1, v0, Lorg/telegram/messenger/ImageReceiver;->currentSize:J

    move/from16 v1, p12

    .line 695
    iput v1, v0, Lorg/telegram/messenger/ImageReceiver;->currentCacheType:I

    move-object/from16 v1, p7

    .line 696
    invoke-direct {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setStaticDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x0

    .line 697
    iput-object v1, v0, Lorg/telegram/messenger/ImageReceiver;->imageShader:Landroid/graphics/BitmapShader;

    .line 698
    iput-object v1, v0, Lorg/telegram/messenger/ImageReceiver;->composeShader:Landroid/graphics/ComposeShader;

    .line 699
    iput-object v1, v0, Lorg/telegram/messenger/ImageReceiver;->thumbShader:Landroid/graphics/BitmapShader;

    .line 700
    iput-object v1, v0, Lorg/telegram/messenger/ImageReceiver;->mediaShader:Landroid/graphics/BitmapShader;

    .line 701
    iput-object v1, v0, Lorg/telegram/messenger/ImageReceiver;->legacyShader:Landroid/graphics/BitmapShader;

    .line 702
    iput-object v1, v0, Lorg/telegram/messenger/ImageReceiver;->legacyCanvas:Landroid/graphics/Canvas;

    .line 703
    iget-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->roundPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 704
    iget-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->legacyBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2b

    .line 705
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 706
    iput-object v1, v0, Lorg/telegram/messenger/ImageReceiver;->legacyBitmap:Landroid/graphics/Bitmap;

    :cond_2b
    const/high16 v1, 0x3f800000    # 1.0f

    .line 708
    iput v1, v0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    .line 709
    iput v1, v0, Lorg/telegram/messenger/ImageReceiver;->previousAlpha:F

    .line 711
    iget-object v1, v0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v2, v1, Lorg/telegram/ui/Components/ClipRoundedDrawable;

    if-eqz v2, :cond_2c

    .line 712
    check-cast v1, Lorg/telegram/ui/Components/ClipRoundedDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ClipRoundedDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v1, v1, Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    if-eqz v1, :cond_2d

    .line 713
    iget-object v1, v0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v1, Lorg/telegram/ui/Components/ClipRoundedDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ClipRoundedDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->setParent(Lorg/telegram/messenger/ImageReceiver;)V

    goto :goto_e

    .line 715
    :cond_2c
    instance-of v2, v1, Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    if-eqz v2, :cond_2d

    .line 716
    check-cast v1, Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->setParent(Lorg/telegram/messenger/ImageReceiver;)V

    .line 718
    :cond_2d
    :goto_e
    iget-object v1, v0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->updateDrawableRadius(Landroid/graphics/drawable/Drawable;)V

    .line 720
    iget-object v1, v0, Lorg/telegram/messenger/ImageReceiver;->delegate:Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;

    if-eqz v1, :cond_31

    .line 721
    iget-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->currentImageDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_2f

    iget-object v3, v0, Lorg/telegram/messenger/ImageReceiver;->currentThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_2f

    iget-object v3, v0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_2f

    iget-object v3, v0, Lorg/telegram/messenger/ImageReceiver;->currentMediaDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_2e

    goto :goto_f

    :cond_2e
    const/4 v12, 0x0

    goto :goto_10

    :cond_2f
    :goto_f
    move v12, v9

    :goto_10
    if-nez v2, :cond_30

    iget-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->currentMediaDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_30

    move v2, v9

    goto :goto_11

    :cond_30
    const/4 v2, 0x0

    :goto_11
    const/4 v3, 0x0

    invoke-interface {v1, v0, v12, v2, v3}, Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;->didSetImage(Lorg/telegram/messenger/ImageReceiver;ZZZ)V

    goto :goto_12

    :cond_31
    const/4 v3, 0x0

    .line 723
    :goto_12
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/ImageReceiver;->loadImage()V

    .line 724
    instance-of v1, v11, Lorg/telegram/messenger/MessageObject;

    if-eqz v1, :cond_32

    move-object v1, v11

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v1

    if-eqz v1, :cond_32

    move v14, v9

    goto :goto_13

    :cond_32
    move v14, v3

    :goto_13
    iput-boolean v14, v0, Lorg/telegram/messenger/ImageReceiver;->isRoundVideo:Z

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 789
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/drawable/Drawable;)V
    .locals 7

    .line 793
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/ImageLoader;->cancelLoadingForImageReceiver(Lorg/telegram/messenger/ImageReceiver;Z)V

    .line 795
    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeWithOldImage:Z

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_4

    .line 796
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-eqz v0, :cond_0

    .line 797
    invoke-direct {p0, v4, v1}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;I)V

    .line 798
    invoke-direct {p0, v4, v6}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;I)V

    .line 799
    invoke-direct {p0, v4, v5}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;I)V

    .line 800
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->imageShader:Landroid/graphics/BitmapShader;

    iput-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeShader:Landroid/graphics/BitmapShader;

    .line 801
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeImage:Landroid/graphics/drawable/Drawable;

    .line 802
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageKey:Ljava/lang/String;

    iput-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeKey:Ljava/lang/String;

    .line 803
    iput-boolean v1, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadingWithThumb:Z

    goto :goto_2

    .line 804
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 805
    invoke-direct {p0, v4, v3}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;I)V

    .line 806
    invoke-direct {p0, v4, v6}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;I)V

    .line 807
    invoke-direct {p0, v4, v5}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;I)V

    .line 808
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->thumbShader:Landroid/graphics/BitmapShader;

    iput-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeShader:Landroid/graphics/BitmapShader;

    .line 809
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeImage:Landroid/graphics/drawable/Drawable;

    .line 810
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    iput-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeKey:Ljava/lang/String;

    .line 811
    iput-boolean v1, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadingWithThumb:Z

    goto :goto_2

    .line 812
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 813
    invoke-direct {p0, v4, v3}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;I)V

    .line 814
    invoke-direct {p0, v4, v1}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;I)V

    .line 815
    invoke-direct {p0, v4, v6}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;I)V

    .line 816
    invoke-direct {p0, v4, v5}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;I)V

    .line 817
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->thumbShader:Landroid/graphics/BitmapShader;

    iput-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeShader:Landroid/graphics/BitmapShader;

    .line 818
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeImage:Landroid/graphics/drawable/Drawable;

    .line 819
    iput-boolean v1, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadingWithThumb:Z

    .line 820
    iput-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeKey:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move v0, v3

    :goto_0
    if-ge v0, v2, :cond_3

    .line 823
    invoke-direct {p0, v4, v0}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 825
    :cond_3
    iput-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeShader:Landroid/graphics/BitmapShader;

    goto :goto_2

    :cond_4
    move v0, v3

    :goto_1
    if-ge v0, v2, :cond_5

    .line 829
    invoke-direct {p0, v4, v0}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 833
    :cond_5
    :goto_2
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v2, v0, Lorg/telegram/ui/Components/RecyclableDrawable;

    if-eqz v2, :cond_6

    .line 834
    check-cast v0, Lorg/telegram/ui/Components/RecyclableDrawable;

    .line 835
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclableDrawable;->recycle()V

    .line 837
    :cond_6
    instance-of v0, p1, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v0, :cond_b

    .line 838
    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    .line 839
    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->parentView:Landroid/view/View;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->setParentView(Landroid/view/View;)V

    .line 840
    iget-boolean v2, p0, Lorg/telegram/messenger/ImageReceiver;->attachedToWindow:Z

    if-eqz v2, :cond_7

    .line 841
    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->addParent(Lorg/telegram/messenger/ImageReceiver;)V

    .line 843
    :cond_7
    iget-boolean v2, p0, Lorg/telegram/messenger/ImageReceiver;->useSharedAnimationQueue:Z

    if-nez v2, :cond_9

    iget-boolean v2, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->isWebmSticker:Z

    if-eqz v2, :cond_8

    goto :goto_3

    :cond_8
    move v2, v3

    goto :goto_4

    :cond_9
    :goto_3
    move v2, v1

    :goto_4
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->setUseSharedQueue(Z)V

    .line 844
    iget-boolean v2, p0, Lorg/telegram/messenger/ImageReceiver;->allowStartAnimation:Z

    if-eqz v2, :cond_a

    iget v2, p0, Lorg/telegram/messenger/ImageReceiver;->currentOpenedLayerFlags:I

    if-nez v2, :cond_a

    .line 845
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->checkRepeat()V

    .line 847
    :cond_a
    iget-boolean v2, p0, Lorg/telegram/messenger/ImageReceiver;->allowDecodeSingleFrame:Z

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->setAllowDecodeSingleFrame(Z)V

    goto :goto_5

    .line 848
    :cond_b
    instance-of v0, p1, Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v0, :cond_10

    .line 849
    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Components/RLottieDrawable;

    .line 850
    iget-boolean v2, p0, Lorg/telegram/messenger/ImageReceiver;->attachedToWindow:Z

    if-eqz v2, :cond_c

    .line 851
    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/RLottieDrawable;->addParentView(Lorg/telegram/messenger/ImageReceiver;)V

    :cond_c
    if-eqz v0, :cond_d

    .line 854
    iget-boolean v2, p0, Lorg/telegram/messenger/ImageReceiver;->allowLottieVibration:Z

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->setAllowVibration(Z)V

    .line 856
    :cond_d
    iget-boolean v2, p0, Lorg/telegram/messenger/ImageReceiver;->allowStartLottieAnimation:Z

    if-eqz v2, :cond_f

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->isHeavyDrawable()Z

    move-result v2

    if-eqz v2, :cond_e

    iget v2, p0, Lorg/telegram/messenger/ImageReceiver;->currentOpenedLayerFlags:I

    if-nez v2, :cond_f

    .line 857
    :cond_e
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    .line 859
    :cond_f
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setAllowDecodeSingleFrame(Z)V

    .line 861
    :cond_10
    :goto_5
    iput-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->thumbShader:Landroid/graphics/BitmapShader;

    .line 862
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->roundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 863
    invoke-direct {p0, p1}, Lorg/telegram/messenger/ImageReceiver;->setStaticDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 865
    invoke-direct {p0, p1}, Lorg/telegram/messenger/ImageReceiver;->updateDrawableRadius(Landroid/graphics/drawable/Drawable;)V

    .line 866
    iput-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaLocation:Lorg/telegram/messenger/ImageLocation;

    .line 867
    iput-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaFilter:Ljava/lang/String;

    .line 868
    iget-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, p1, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v0, :cond_11

    .line 869
    check-cast p1, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->removeParent(Lorg/telegram/messenger/ImageReceiver;)V

    .line 871
    :cond_11
    iput-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaDrawable:Landroid/graphics/drawable/Drawable;

    .line 872
    iput-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaKey:Ljava/lang/String;

    .line 873
    iput-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->mediaShader:Landroid/graphics/BitmapShader;

    .line 875
    iput-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageLocation:Lorg/telegram/messenger/ImageLocation;

    .line 876
    iput-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageFilter:Ljava/lang/String;

    .line 877
    iput-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 878
    iput-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageKey:Ljava/lang/String;

    .line 879
    iput-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->imageShader:Landroid/graphics/BitmapShader;

    .line 880
    iput-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->composeShader:Landroid/graphics/ComposeShader;

    .line 881
    iput-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->legacyShader:Landroid/graphics/BitmapShader;

    .line 882
    iput-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->legacyCanvas:Landroid/graphics/Canvas;

    .line 883
    iget-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->legacyBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_12

    .line 884
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 885
    iput-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->legacyBitmap:Landroid/graphics/Bitmap;

    .line 888
    :cond_12
    iput-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbLocation:Lorg/telegram/messenger/ImageLocation;

    .line 889
    iput-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbFilter:Ljava/lang/String;

    .line 890
    iput-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    .line 892
    iput-boolean v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentKeyQuality:Z

    .line 893
    iput-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->currentExt:Ljava/lang/String;

    const-wide/16 v4, 0x0

    .line 894
    iput-wide v4, p0, Lorg/telegram/messenger/ImageReceiver;->currentSize:J

    .line 895
    iput v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentCacheType:I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 896
    iput p1, p0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    .line 897
    iput p1, p0, Lorg/telegram/messenger/ImageReceiver;->previousAlpha:F

    .line 899
    iget-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    if-eqz p1, :cond_13

    .line 900
    invoke-static {p1}, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->access$200(Lorg/telegram/messenger/ImageReceiver$SetImageBackup;)V

    .line 903
    :cond_13
    iget-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->delegate:Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;

    if-eqz p1, :cond_16

    .line 904
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_15

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_14

    goto :goto_6

    :cond_14
    move v0, v3

    goto :goto_7

    :cond_15
    :goto_6
    move v0, v1

    :goto_7
    invoke-interface {p1, p0, v0, v1, v3}, Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;->didSetImage(Lorg/telegram/messenger/ImageReceiver;ZZZ)V

    .line 906
    :cond_16
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->invalidate()V

    .line 907
    iget-boolean p1, p0, Lorg/telegram/messenger/ImageReceiver;->forceCrossfade:Z

    if-eqz p1, :cond_19

    iget-boolean p1, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeWithOldImage:Z

    if-eqz p1, :cond_19

    iget-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeImage:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_19

    const/4 p1, 0x0

    .line 908
    iput p1, p0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    .line 909
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/telegram/messenger/ImageReceiver;->lastUpdateAlphaTime:J

    .line 910
    iget-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_18

    iget-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_17

    goto :goto_8

    :cond_17
    move v1, v3

    :cond_18
    :goto_8
    iput-boolean v1, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeWithThumb:Z

    :cond_19
    return-void
.end method

.method protected setImageBitmapByKey(Landroid/graphics/drawable/Drawable;Ljava/lang/String;IZI)Z
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_38

    if-eqz p2, :cond_38

    .line 2607
    iget v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentGuid:I

    if-eq v1, p5, :cond_0

    goto/16 :goto_11

    :cond_0
    const/4 p5, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    if-nez p3, :cond_12

    .line 2611
    iget-object p3, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageKey:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    return v0

    .line 2615
    :cond_1
    instance-of p2, p1, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-nez p2, :cond_3

    .line 2616
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageKey:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lorg/telegram/messenger/ImageLoader;->incrementUseCount(Ljava/lang/String;)V

    .line 2617
    iget-boolean p2, p0, Lorg/telegram/messenger/ImageReceiver;->videoThumbIsSame:Z

    if-eqz p2, :cond_5

    .line 2618
    iget-object p2, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, p2, :cond_2

    iget p2, p0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    cmpl-float p2, p2, v1

    if-ltz p2, :cond_2

    goto :goto_0

    :cond_2
    move p2, v0

    goto :goto_1

    .line 2621
    :cond_3
    move-object p2, p1

    check-cast p2, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    .line 2622
    iget-wide v3, p0, Lorg/telegram/messenger/ImageReceiver;->startTime:J

    iget-wide v5, p0, Lorg/telegram/messenger/ImageReceiver;->endTime:J

    invoke-virtual {p2, v3, v4, v5, v6}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->setStartEndTime(JJ)V

    .line 2623
    iget-boolean p3, p2, Lorg/telegram/ui/Components/AnimatedFileDrawable;->isWebmSticker:Z

    if-eqz p3, :cond_4

    .line 2624
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object p3

    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageKey:Ljava/lang/String;

    invoke-virtual {p3, v3}, Lorg/telegram/messenger/ImageLoader;->incrementUseCount(Ljava/lang/String;)V

    .line 2626
    :cond_4
    iget-boolean p3, p0, Lorg/telegram/messenger/ImageReceiver;->videoThumbIsSame:Z

    if-eqz p3, :cond_5

    .line 2627
    invoke-virtual {p2}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->hasBitmap()Z

    move-result p2

    xor-int/2addr p2, v2

    goto :goto_1

    :cond_5
    :goto_0
    move p2, v2

    .line 2630
    :goto_1
    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 2632
    instance-of p3, p1, Lorg/telegram/messenger/ExtendedBitmapDrawable;

    if-eqz p3, :cond_6

    .line 2633
    move-object p3, p1

    check-cast p3, Lorg/telegram/messenger/ExtendedBitmapDrawable;

    invoke-virtual {p3}, Lorg/telegram/messenger/ExtendedBitmapDrawable;->getOrientation()I

    move-result p3

    iput p3, p0, Lorg/telegram/messenger/ImageReceiver;->imageOrientation:I

    .line 2635
    :cond_6
    invoke-direct {p0, p1}, Lorg/telegram/messenger/ImageReceiver;->updateDrawableRadius(Landroid/graphics/drawable/Drawable;)V

    if-eqz p2, :cond_11

    .line 2637
    iget-boolean p2, p0, Lorg/telegram/messenger/ImageReceiver;->isVisible:Z

    if-eqz p2, :cond_11

    if-nez p4, :cond_7

    iget-boolean p2, p0, Lorg/telegram/messenger/ImageReceiver;->forcePreview:Z

    if-eqz p2, :cond_8

    :cond_7
    iget-boolean p2, p0, Lorg/telegram/messenger/ImageReceiver;->forceCrossfade:Z

    if-eqz p2, :cond_11

    :cond_8
    iget p2, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeDuration:I

    if-eqz p2, :cond_11

    .line 2639
    iget-object p2, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaDrawable:Landroid/graphics/drawable/Drawable;

    instance-of p3, p2, Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz p3, :cond_a

    check-cast p2, Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/RLottieDrawable;->hasBitmap()Z

    move-result p2

    if-eqz p2, :cond_a

    :cond_9
    :goto_2
    move p2, v0

    goto :goto_3

    .line 2641
    :cond_a
    iget-object p2, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaDrawable:Landroid/graphics/drawable/Drawable;

    instance-of p3, p2, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz p3, :cond_b

    check-cast p2, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->hasBitmap()Z

    move-result p2

    if-eqz p2, :cond_b

    goto :goto_2

    .line 2643
    :cond_b
    iget-object p2, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageDrawable:Landroid/graphics/drawable/Drawable;

    instance-of p2, p2, Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz p2, :cond_c

    .line 2644
    iget-object p2, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    instance-of p3, p2, Lorg/telegram/ui/Components/LoadingStickerDrawable;

    if-nez p3, :cond_c

    instance-of p3, p2, Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    if-nez p3, :cond_c

    instance-of p2, p2, Lorg/telegram/messenger/Emoji$EmojiDrawable;

    if-eqz p2, :cond_9

    :cond_c
    move p2, v2

    :goto_3
    if-eqz p2, :cond_2c

    .line 2646
    iget-object p2, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_d

    iget-object p3, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p3, :cond_d

    iget-boolean p3, p0, Lorg/telegram/messenger/ImageReceiver;->forceCrossfade:Z

    if-eqz p3, :cond_2c

    :cond_d
    if-eqz p2, :cond_e

    .line 2647
    iget-object p2, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_e

    .line 2648
    iget p2, p0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    iput p2, p0, Lorg/telegram/messenger/ImageReceiver;->previousAlpha:F

    goto :goto_4

    .line 2650
    :cond_e
    iput v1, p0, Lorg/telegram/messenger/ImageReceiver;->previousAlpha:F

    .line 2652
    :goto_4
    iput p5, p0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    .line 2653
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iput-wide p2, p0, Lorg/telegram/messenger/ImageReceiver;->lastUpdateAlphaTime:J

    .line 2654
    iget-object p2, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeImage:Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_10

    iget-object p2, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_10

    iget-object p2, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_f

    goto :goto_5

    :cond_f
    move p2, v0

    goto :goto_6

    :cond_10
    :goto_5
    move p2, v2

    :goto_6
    iput-boolean p2, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeWithThumb:Z

    goto/16 :goto_c

    .line 2657
    :cond_11
    iput v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    .line 2658
    iput v1, p0, Lorg/telegram/messenger/ImageReceiver;->previousAlpha:F

    goto/16 :goto_c

    :cond_12
    const/4 v3, 0x3

    if-ne p3, v3, :cond_21

    .line 2661
    iget-object p3, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaKey:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_13

    return v0

    .line 2664
    :cond_13
    instance-of p2, p1, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-nez p2, :cond_14

    .line 2665
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaKey:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lorg/telegram/messenger/ImageLoader;->incrementUseCount(Ljava/lang/String;)V

    goto :goto_7

    .line 2667
    :cond_14
    move-object p2, p1

    check-cast p2, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    .line 2668
    iget-wide v3, p0, Lorg/telegram/messenger/ImageReceiver;->startTime:J

    iget-wide v5, p0, Lorg/telegram/messenger/ImageReceiver;->endTime:J

    invoke-virtual {p2, v3, v4, v5, v6}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->setStartEndTime(JJ)V

    .line 2669
    iget-boolean p3, p2, Lorg/telegram/ui/Components/AnimatedFileDrawable;->isWebmSticker:Z

    if-eqz p3, :cond_15

    .line 2670
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object p3

    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaKey:Ljava/lang/String;

    invoke-virtual {p3, v3}, Lorg/telegram/messenger/ImageLoader;->incrementUseCount(Ljava/lang/String;)V

    .line 2672
    :cond_15
    iget-boolean p3, p0, Lorg/telegram/messenger/ImageReceiver;->videoThumbIsSame:Z

    if-eqz p3, :cond_18

    iget-object p3, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v3, p3, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-nez v3, :cond_16

    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v3, v3, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v3, :cond_18

    :cond_16
    const-wide/16 v3, 0x0

    .line 2674
    instance-of v5, p3, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v5, :cond_17

    .line 2675
    check-cast p3, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-virtual {p3}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getLastFrameTimestamp()J

    move-result-wide v3

    .line 2677
    :cond_17
    invoke-virtual {p2, v3, v4, v2, v2}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->seekTo(JZZ)V

    .line 2680
    :cond_18
    :goto_7
    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaDrawable:Landroid/graphics/drawable/Drawable;

    .line 2681
    invoke-direct {p0, p1}, Lorg/telegram/messenger/ImageReceiver;->updateDrawableRadius(Landroid/graphics/drawable/Drawable;)V

    .line 2683
    iget-object p2, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_2c

    if-nez p4, :cond_19

    .line 2685
    iget-boolean p2, p0, Lorg/telegram/messenger/ImageReceiver;->forcePreview:Z

    if-eqz p2, :cond_1a

    :cond_19
    iget-boolean p2, p0, Lorg/telegram/messenger/ImageReceiver;->forceCrossfade:Z

    if-eqz p2, :cond_20

    .line 2686
    :cond_1a
    iget-object p2, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_1b

    iget-object p3, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p3, :cond_1c

    :cond_1b
    iget p3, p0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    cmpl-float p3, p3, v1

    if-eqz p3, :cond_1c

    iget-boolean p3, p0, Lorg/telegram/messenger/ImageReceiver;->forceCrossfade:Z

    if-eqz p3, :cond_2c

    :cond_1c
    if-eqz p2, :cond_1d

    .line 2687
    iget-object p2, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_1d

    .line 2688
    iget p2, p0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    iput p2, p0, Lorg/telegram/messenger/ImageReceiver;->previousAlpha:F

    goto :goto_8

    .line 2690
    :cond_1d
    iput v1, p0, Lorg/telegram/messenger/ImageReceiver;->previousAlpha:F

    .line 2692
    :goto_8
    iput p5, p0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    .line 2693
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iput-wide p2, p0, Lorg/telegram/messenger/ImageReceiver;->lastUpdateAlphaTime:J

    .line 2694
    iget-object p2, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeImage:Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_1f

    iget-object p2, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_1f

    iget-object p2, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_1e

    goto :goto_9

    :cond_1e
    move p2, v0

    goto :goto_a

    :cond_1f
    :goto_9
    move p2, v2

    :goto_a
    iput-boolean p2, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeWithThumb:Z

    goto/16 :goto_c

    .line 2697
    :cond_20
    iput v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    .line 2698
    iput v1, p0, Lorg/telegram/messenger/ImageReceiver;->previousAlpha:F

    goto/16 :goto_c

    :cond_21
    if-ne p3, v2, :cond_2c

    .line 2702
    iget-object p3, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p3, :cond_22

    return v0

    .line 2705
    :cond_22
    iget-boolean p3, p0, Lorg/telegram/messenger/ImageReceiver;->forcePreview:Z

    if-nez p3, :cond_26

    .line 2706
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object p3

    if-eqz p3, :cond_23

    .line 2707
    invoke-virtual {p3}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->hasBitmap()Z

    move-result p3

    if-eqz p3, :cond_23

    return v0

    .line 2710
    :cond_23
    iget-object p3, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p3, :cond_24

    instance-of p3, p3, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz p3, :cond_25

    :cond_24
    iget-object p3, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p3, :cond_26

    instance-of p3, p3, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-nez p3, :cond_26

    :cond_25
    return v0

    .line 2714
    :cond_26
    iget-object p3, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_27

    return v0

    .line 2717
    :cond_27
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lorg/telegram/messenger/ImageLoader;->incrementUseCount(Ljava/lang/String;)V

    .line 2719
    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 2720
    instance-of p2, p1, Lorg/telegram/messenger/ExtendedBitmapDrawable;

    if-eqz p2, :cond_28

    .line 2721
    move-object p2, p1

    check-cast p2, Lorg/telegram/messenger/ExtendedBitmapDrawable;

    invoke-virtual {p2}, Lorg/telegram/messenger/ExtendedBitmapDrawable;->getOrientation()I

    move-result p2

    iput p2, p0, Lorg/telegram/messenger/ImageReceiver;->thumbOrientation:I

    .line 2723
    :cond_28
    invoke-direct {p0, p1}, Lorg/telegram/messenger/ImageReceiver;->updateDrawableRadius(Landroid/graphics/drawable/Drawable;)V

    if-nez p4, :cond_2b

    .line 2725
    iget-byte p2, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeAlpha:B

    const/4 p3, 0x2

    if-eq p2, p3, :cond_2b

    .line 2726
    iget-object p2, p0, Lorg/telegram/messenger/ImageReceiver;->currentParentObject:Ljava/lang/Object;

    instance-of p3, p2, Lorg/telegram/messenger/MessageObject;

    if-eqz p3, :cond_29

    check-cast p2, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result p2

    if-eqz p2, :cond_29

    iget-object p2, p0, Lorg/telegram/messenger/ImageReceiver;->currentParentObject:Ljava/lang/Object;

    check-cast p2, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->isSending()Z

    move-result p2

    if-eqz p2, :cond_29

    .line 2727
    iput v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    .line 2728
    iput v1, p0, Lorg/telegram/messenger/ImageReceiver;->previousAlpha:F

    goto :goto_c

    .line 2730
    :cond_29
    iput p5, p0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    .line 2731
    iput v1, p0, Lorg/telegram/messenger/ImageReceiver;->previousAlpha:F

    .line 2732
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iput-wide p2, p0, Lorg/telegram/messenger/ImageReceiver;->lastUpdateAlphaTime:J

    .line 2733
    iget-object p2, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_2a

    move p2, v2

    goto :goto_b

    :cond_2a
    move p2, v0

    :goto_b
    iput-boolean p2, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeWithThumb:Z

    goto :goto_c

    .line 2736
    :cond_2b
    iput v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    .line 2737
    iput v1, p0, Lorg/telegram/messenger/ImageReceiver;->previousAlpha:F

    .line 2740
    :cond_2c
    :goto_c
    iget-object p2, p0, Lorg/telegram/messenger/ImageReceiver;->delegate:Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;

    if-eqz p2, :cond_30

    .line 2741
    iget-object p3, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p3, :cond_2e

    iget-object p5, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p5, :cond_2e

    iget-object p5, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p5, :cond_2e

    iget-object p5, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p5, :cond_2d

    goto :goto_d

    :cond_2d
    move p5, v0

    goto :goto_e

    :cond_2e
    :goto_d
    move p5, v2

    :goto_e
    if-nez p3, :cond_2f

    iget-object p3, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p3, :cond_2f

    move p3, v2

    goto :goto_f

    :cond_2f
    move p3, v0

    :goto_f
    invoke-interface {p2, p0, p5, p3, p4}, Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;->didSetImage(Lorg/telegram/messenger/ImageReceiver;ZZZ)V

    .line 2743
    :cond_30
    instance-of p2, p1, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz p2, :cond_33

    .line 2744
    check-cast p1, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    .line 2745
    iget-boolean p2, p0, Lorg/telegram/messenger/ImageReceiver;->useSharedAnimationQueue:Z

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->setUseSharedQueue(Z)V

    .line 2746
    iget-boolean p2, p0, Lorg/telegram/messenger/ImageReceiver;->attachedToWindow:Z

    if-eqz p2, :cond_31

    .line 2747
    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->addParent(Lorg/telegram/messenger/ImageReceiver;)V

    .line 2749
    :cond_31
    iget-boolean p2, p0, Lorg/telegram/messenger/ImageReceiver;->allowStartAnimation:Z

    if-eqz p2, :cond_32

    iget p2, p0, Lorg/telegram/messenger/ImageReceiver;->currentOpenedLayerFlags:I

    if-nez p2, :cond_32

    .line 2750
    invoke-virtual {p1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->checkRepeat()V

    .line 2752
    :cond_32
    iget-boolean p2, p0, Lorg/telegram/messenger/ImageReceiver;->allowDecodeSingleFrame:Z

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->setAllowDecodeSingleFrame(Z)V

    .line 2753
    iput-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->animationReadySent:Z

    .line 2754
    iget-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->parentView:Landroid/view/View;

    if-eqz p1, :cond_37

    .line 2755
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    goto :goto_10

    .line 2757
    :cond_33
    instance-of p2, p1, Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz p2, :cond_37

    .line 2758
    check-cast p1, Lorg/telegram/ui/Components/RLottieDrawable;

    .line 2759
    iget-boolean p2, p0, Lorg/telegram/messenger/ImageReceiver;->attachedToWindow:Z

    if-eqz p2, :cond_34

    .line 2760
    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/RLottieDrawable;->addParentView(Lorg/telegram/messenger/ImageReceiver;)V

    .line 2762
    :cond_34
    iget-boolean p2, p0, Lorg/telegram/messenger/ImageReceiver;->allowStartLottieAnimation:Z

    if-eqz p2, :cond_36

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieDrawable;->isHeavyDrawable()Z

    move-result p2

    if-eqz p2, :cond_35

    iget p2, p0, Lorg/telegram/messenger/ImageReceiver;->currentOpenedLayerFlags:I

    if-nez p2, :cond_36

    .line 2763
    :cond_35
    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    .line 2765
    :cond_36
    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->setAllowDecodeSingleFrame(Z)V

    .line 2766
    iget p2, p0, Lorg/telegram/messenger/ImageReceiver;->autoRepeat:I

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RLottieDrawable;->setAutoRepeat(I)V

    .line 2767
    iget p2, p0, Lorg/telegram/messenger/ImageReceiver;->autoRepeatCount:I

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RLottieDrawable;->setAutoRepeatCount(I)V

    .line 2768
    iget-wide p2, p0, Lorg/telegram/messenger/ImageReceiver;->autoRepeatTimeout:J

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/RLottieDrawable;->setAutoRepeatTimeout(J)V

    .line 2769
    iput-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->animationReadySent:Z

    .line 2771
    :cond_37
    :goto_10
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->invalidate()V

    return v2

    :cond_38
    :goto_11
    return v0
.end method

.method public setImageCoords(FFFF)V
    .locals 0

    .line 2250
    iput p1, p0, Lorg/telegram/messenger/ImageReceiver;->imageX:F

    .line 2251
    iput p2, p0, Lorg/telegram/messenger/ImageReceiver;->imageY:F

    .line 2252
    iput p3, p0, Lorg/telegram/messenger/ImageReceiver;->imageW:F

    .line 2253
    iput p4, p0, Lorg/telegram/messenger/ImageReceiver;->imageH:F

    return-void
.end method

.method public setImageCoords(Landroid/graphics/Rect;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 2258
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/messenger/ImageReceiver;->imageX:F

    .line 2259
    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/messenger/ImageReceiver;->imageY:F

    .line 2260
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/messenger/ImageReceiver;->imageW:F

    .line 2261
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lorg/telegram/messenger/ImageReceiver;->imageH:F

    :cond_0
    return-void
.end method

.method public setImageWidth(I)V
    .locals 0

    int-to-float p1, p1

    .line 2246
    iput p1, p0, Lorg/telegram/messenger/ImageReceiver;->imageW:F

    return-void
.end method

.method public setImageX(I)V
    .locals 0

    int-to-float p1, p1

    .line 2238
    iput p1, p0, Lorg/telegram/messenger/ImageReceiver;->imageX:F

    return-void
.end method

.method public setImageY(F)V
    .locals 0

    .line 2242
    iput p1, p0, Lorg/telegram/messenger/ImageReceiver;->imageY:F

    return-void
.end method

.method public setInvalidateAll(Z)V
    .locals 0

    .line 764
    iput-boolean p1, p0, Lorg/telegram/messenger/ImageReceiver;->invalidateAll:Z

    return-void
.end method

.method public setLayerNum(I)V
    .locals 1

    .line 781
    iput p1, p0, Lorg/telegram/messenger/ImageReceiver;->currentLayerNum:I

    .line 782
    iget-boolean p1, p0, Lorg/telegram/messenger/ImageReceiver;->attachedToWindow:Z

    if-eqz p1, :cond_0

    .line 783
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/NotificationCenter;->getCurrentHeavyOperationFlags()I

    move-result p1

    iput p1, p0, Lorg/telegram/messenger/ImageReceiver;->currentOpenedLayerFlags:I

    .line 784
    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentLayerNum:I

    not-int v0, v0

    and-int/2addr p1, v0

    iput p1, p0, Lorg/telegram/messenger/ImageReceiver;->currentOpenedLayerFlags:I

    :cond_0
    return-void
.end method

.method public setManualAlphaAnimator(Z)V
    .locals 0

    .line 1987
    iput-boolean p1, p0, Lorg/telegram/messenger/ImageReceiver;->manualAlphaAnimator:Z

    return-void
.end method

.method public setMediaStartEndTime(JJ)V
    .locals 2

    .line 2776
    iput-wide p1, p0, Lorg/telegram/messenger/ImageReceiver;->startTime:J

    .line 2777
    iput-wide p3, p0, Lorg/telegram/messenger/ImageReceiver;->endTime:J

    .line 2779
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v1, :cond_0

    .line 2780
    check-cast v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->setStartEndTime(JJ)V

    :cond_0
    return-void
.end method

.method public setNeedsQualityThumb(Z)V
    .locals 0

    .line 2427
    iput-boolean p1, p0, Lorg/telegram/messenger/ImageReceiver;->needsQualityThumb:Z

    return-void
.end method

.method public setOrientation(IZ)V
    .locals 1

    :goto_0
    if-gez p1, :cond_0

    add-int/lit16 p1, p1, 0x168

    goto :goto_0

    :cond_0
    :goto_1
    const/16 v0, 0x168

    if-le p1, v0, :cond_1

    add-int/lit16 p1, p1, -0x168

    goto :goto_1

    .line 759
    :cond_1
    iput p1, p0, Lorg/telegram/messenger/ImageReceiver;->thumbOrientation:I

    iput p1, p0, Lorg/telegram/messenger/ImageReceiver;->imageOrientation:I

    .line 760
    iput-boolean p2, p0, Lorg/telegram/messenger/ImageReceiver;->centerRotation:Z

    return-void
.end method

.method public setParam(I)V
    .locals 0

    .line 2599
    iput p1, p0, Lorg/telegram/messenger/ImageReceiver;->param:I

    return-void
.end method

.method public setParentView(Landroid/view/View;)V
    .locals 1

    .line 2230
    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->parentView:Landroid/view/View;

    .line 2231
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2232
    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->attachedToWindow:Z

    if-eqz v0, :cond_0

    .line 2233
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->parentView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->setParentView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setPressed(I)V
    .locals 0

    .line 745
    iput p1, p0, Lorg/telegram/messenger/ImageReceiver;->isPressed:I

    return-void
.end method

.method public setQualityThumbDocument(Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 0

    .line 2431
    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->qulityThumbDocument:Lorg/telegram/tgnet/TLRPC$Document;

    return-void
.end method

.method public setRoundRadius(I)V
    .locals 2

    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 v1, 0x2

    aput p1, v0, v1

    const/4 v1, 0x3

    aput p1, v0, v1

    .line 2378
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius([I)V

    return-void
.end method

.method public setRoundRadius(IIII)V
    .locals 2

    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    const/4 p1, 0x2

    aput p3, v0, p1

    const/4 p1, 0x3

    aput p4, v0, p1

    .line 2382
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius([I)V

    return-void
.end method

.method public setRoundRadius([I)V
    .locals 8

    const/4 v0, 0x0

    .line 2387
    aget v1, p1, v0

    const/4 v2, 0x1

    .line 2388
    iput-boolean v2, p0, Lorg/telegram/messenger/ImageReceiver;->isRoundRect:Z

    move v3, v0

    move v4, v3

    .line 2389
    :goto_0
    iget-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->roundRadius:[I

    array-length v6, v5

    if-ge v3, v6, :cond_2

    .line 2390
    aget v6, v5, v3

    aget v7, p1, v3

    if-eq v6, v7, :cond_0

    move v4, v2

    .line 2393
    :cond_0
    aget v6, p1, v3

    if-eq v1, v6, :cond_1

    .line 2394
    iput-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->isRoundRect:Z

    .line 2396
    :cond_1
    aget v6, p1, v3

    aput v6, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-eqz v4, :cond_6

    .line 2399
    iget-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->imageShader:Landroid/graphics/BitmapShader;

    if-nez v0, :cond_3

    .line 2400
    invoke-direct {p0, p1}, Lorg/telegram/messenger/ImageReceiver;->updateDrawableRadius(Landroid/graphics/drawable/Drawable;)V

    .line 2402
    :cond_3
    iget-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_4

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->mediaShader:Landroid/graphics/BitmapShader;

    if-nez v0, :cond_4

    .line 2403
    invoke-direct {p0, p1}, Lorg/telegram/messenger/ImageReceiver;->updateDrawableRadius(Landroid/graphics/drawable/Drawable;)V

    .line 2405
    :cond_4
    iget-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_5

    .line 2406
    invoke-direct {p0, p1}, Lorg/telegram/messenger/ImageReceiver;->updateDrawableRadius(Landroid/graphics/drawable/Drawable;)V

    .line 2408
    :cond_5
    iget-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_6

    .line 2409
    invoke-direct {p0, p1}, Lorg/telegram/messenger/ImageReceiver;->updateDrawableRadius(Landroid/graphics/drawable/Drawable;)V

    :cond_6
    return-void
.end method

.method public setShouldGenerateQualityThumb(Z)V
    .locals 0

    .line 2459
    iput-boolean p1, p0, Lorg/telegram/messenger/ImageReceiver;->shouldGenerateQualityThumb:Z

    return-void
.end method

.method public setSideClip(F)V
    .locals 0

    .line 2266
    iput p1, p0, Lorg/telegram/messenger/ImageReceiver;->sideClip:F

    return-void
.end method

.method public setSkipUpdateFrame(Z)V
    .locals 0

    .line 3014
    iput-boolean p1, p0, Lorg/telegram/messenger/ImageReceiver;->skipUpdateFrame:Z

    return-void
.end method

.method public setStrippedLocation(Lorg/telegram/messenger/ImageLocation;)V
    .locals 0

    .line 356
    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->strippedLocation:Lorg/telegram/messenger/ImageLocation;

    return-void
.end method

.method protected setTag(II)V
    .locals 1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 2590
    iput p1, p0, Lorg/telegram/messenger/ImageReceiver;->thumbTag:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    .line 2592
    iput p1, p0, Lorg/telegram/messenger/ImageReceiver;->mediaTag:I

    goto :goto_0

    .line 2594
    :cond_1
    iput p1, p0, Lorg/telegram/messenger/ImageReceiver;->imageTag:I

    :goto_0
    return-void
.end method

.method public setUniqKeyPrefix(Ljava/lang/String;)V
    .locals 0

    .line 2958
    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->uniqKeyPrefix:Ljava/lang/String;

    return-void
.end method

.method public setUseRoundForThumbDrawable(Z)V
    .locals 0

    .line 1155
    iput-boolean p1, p0, Lorg/telegram/messenger/ImageReceiver;->useRoundForThumb:Z

    return-void
.end method

.method public setUseSharedAnimationQueue(Z)V
    .locals 0

    .line 2515
    iput-boolean p1, p0, Lorg/telegram/messenger/ImageReceiver;->useSharedAnimationQueue:Z

    return-void
.end method

.method public setVideoThumbIsSame(Z)V
    .locals 0

    .line 3006
    iput-boolean p1, p0, Lorg/telegram/messenger/ImageReceiver;->videoThumbIsSame:Z

    return-void
.end method

.method public setVisible(ZZ)V
    .locals 1

    .line 2155
    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->isVisible:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 2158
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/messenger/ImageReceiver;->isVisible:Z

    if-eqz p2, :cond_1

    .line 2160
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->invalidate()V

    :cond_1
    return-void
.end method

.method public skipDraw()V
    .locals 0

    return-void
.end method

.method public startAnimation()V
    .locals 2

    .line 2523
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2525
    iget-boolean v1, p0, Lorg/telegram/messenger/ImageReceiver;->useSharedAnimationQueue:Z

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->setUseSharedQueue(Z)V

    .line 2526
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->start()V

    goto :goto_0

    .line 2528
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2529
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->isRunning()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2530
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->restart()Z

    :cond_1
    :goto_0
    return-void
.end method

.method public startCrossfadeFromStaticThumb(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 2943
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/ImageReceiver;->startCrossfadeFromStaticThumb(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public startCrossfadeFromStaticThumb(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    const/4 v0, 0x0

    .line 2947
    iput-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    .line 2948
    iput-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 2949
    iput-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->thumbShader:Landroid/graphics/BitmapShader;

    .line 2950
    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->roundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 2951
    invoke-direct {p0, p1}, Lorg/telegram/messenger/ImageReceiver;->setStaticDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x1

    .line 2952
    iput-boolean p1, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeWithThumb:Z

    const/4 p1, 0x0

    .line 2953
    iput p1, p0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    .line 2954
    iget-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Lorg/telegram/messenger/ImageReceiver;->updateDrawableRadius(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public stopAnimation()V
    .locals 2

    .line 2536
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2538
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->stop()V

    goto :goto_0

    .line 2540
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2541
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->isRunning()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2542
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->stop()V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateThumbShaderMatrix()Z
    .locals 9

    .line 67
    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v8, 0x1

    if-eqz v2, :cond_0

    iget-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->thumbShader:Landroid/graphics/BitmapShader;

    if-eqz v4, :cond_0

    const/4 v1, 0x0

    const/16 v3, 0xff

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    .line 68
    invoke-virtual/range {v0 .. v7}, Lorg/telegram/messenger/ImageReceiver;->drawDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;ILandroid/graphics/BitmapShader;IILorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)V

    return v8

    .line 71
    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    iget-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->thumbShader:Landroid/graphics/BitmapShader;

    if-eqz v4, :cond_1

    const/4 v1, 0x0

    const/16 v3, 0xff

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    .line 72
    invoke-virtual/range {v0 .. v7}, Lorg/telegram/messenger/ImageReceiver;->drawDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;ILandroid/graphics/BitmapShader;IILorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)V

    return v8

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
