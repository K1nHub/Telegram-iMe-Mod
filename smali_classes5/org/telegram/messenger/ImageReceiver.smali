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

.field private shouldLoadOnAttach:Z

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

    .line 192
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    const v2, -0x222223

    invoke-direct {v0, v2, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    sput-object v0, Lorg/telegram/messenger/ImageReceiver;->selectedColorFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 193
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    const v2, -0x444445

    invoke-direct {v0, v2, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    sput-object v0, Lorg/telegram/messenger/ImageReceiver;->selectedGroupColorFilter:Landroid/graphics/PorterDuffColorFilter;

    const/16 v0, 0x8

    new-array v0, v0, [F

    .line 288
    sput-object v0, Lorg/telegram/messenger/ImageReceiver;->radii:[F

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 319
    invoke-direct {p0, v0}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 196
    iput v0, p0, Lorg/telegram/messenger/ImageReceiver;->fileLoadingPriority:I

    .line 239
    iput-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->useRoundForThumb:Z

    .line 251
    iput-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->allowLottieVibration:Z

    .line 252
    iput-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->allowStartAnimation:Z

    .line 253
    iput-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->allowStartLottieAnimation:Z

    .line 256
    iput v0, p0, Lorg/telegram/messenger/ImageReceiver;->autoRepeat:I

    const/4 v1, -0x1

    .line 257
    iput v1, p0, Lorg/telegram/messenger/ImageReceiver;->autoRepeatCount:I

    .line 275
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->drawRegion:Landroid/graphics/RectF;

    .line 276
    iput-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->isVisible:Z

    const/4 v1, 0x4

    new-array v1, v1, [I

    .line 280
    iput-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->roundRadius:[I

    .line 281
    iput-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->isRoundRect:Z

    .line 284
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->roundRect:Landroid/graphics/RectF;

    .line 285
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->bitmapRect:Landroid/graphics/RectF;

    .line 286
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->shaderMatrix:Landroid/graphics/Matrix;

    .line 287
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->roundPath:Landroid/graphics/Path;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 289
    iput v1, p0, Lorg/telegram/messenger/ImageReceiver;->overrideAlpha:F

    .line 294
    iput v1, p0, Lorg/telegram/messenger/ImageReceiver;->previousAlpha:F

    .line 296
    iput-byte v0, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeAlpha:B

    const v1, 0x3d4ccccd    # 0.05f

    .line 299
    iput v1, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeByScale:F

    const/16 v1, 0x96

    .line 304
    iput v1, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeDuration:I

    .line 308
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->loadingOperations:Ljava/util/ArrayList;

    .line 314
    iput-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->clip:Z

    .line 323
    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->parentView:Landroid/view/View;

    .line 324
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->roundPaint:Landroid/graphics/Paint;

    .line 325
    sget p1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput p1, p0, Lorg/telegram/messenger/ImageReceiver;->currentAccount:I

    return-void
.end method

.method private checkAlphaAnimation(ZLorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)V
    .locals 8

    .line 1665
    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->manualAlphaAnimator:Z

    if-eqz v0, :cond_0

    return-void

    .line 1668
    :cond_0
    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_6

    if-nez p1, :cond_4

    if-eqz p2, :cond_3

    .line 1671
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1672
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

    .line 1676
    sget p1, Lorg/telegram/messenger/AndroidUtilities;->screenRefreshRate:F

    const/high16 v0, 0x42700000    # 60.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    move-wide v2, v4

    .line 1679
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

    .line 1681
    iget v2, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeDuration:I

    int-to-float v2, v2

    div-float/2addr p1, v2

    add-float/2addr v0, p1

    iput v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    .line 1683
    :goto_0
    iget p1, p0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    cmpl-float p1, p1, v1

    if-lez p1, :cond_4

    .line 1684
    iput v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    .line 1685
    iput v1, p0, Lorg/telegram/messenger/ImageReceiver;->previousAlpha:F

    .line 1686
    iget-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeImage:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_4

    const/4 p1, 0x2

    const/4 v0, 0x0

    .line 1687
    invoke-direct {p0, v0, p1}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;I)V

    .line 1688
    iput-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeShader:Landroid/graphics/BitmapShader;

    :cond_4
    if-eqz p2, :cond_5

    .line 1693
    new-instance p1, Lorg/telegram/messenger/ImageReceiver$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/telegram/messenger/ImageReceiver$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/ImageReceiver;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 1695
    :cond_5
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->invalidate()V

    :cond_6
    :goto_1
    return-void
.end method

.method private drawBitmapDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/BitmapDrawable;Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;I)V
    .locals 10

    if-eqz p3, :cond_3

    .line 1594
    instance-of v0, p2, Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v0, :cond_0

    .line 1595
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

    .line 1596
    :cond_0
    instance-of v0, p2, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v0, :cond_1

    .line 1597
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

    .line 1599
    :cond_1
    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 1601
    iget-object v0, p3, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->paint:Landroid/graphics/Paint;

    if-nez v0, :cond_2

    .line 1602
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p3, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->paint:Landroid/graphics/Paint;

    .line 1604
    :cond_2
    iget-object v0, p3, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1605
    iget-object p4, p3, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->paint:Landroid/graphics/Paint;

    iget-object v0, p3, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->colorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 1606
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1607
    iget p4, p3, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->imageX:F

    iget v0, p3, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->imageY:F

    invoke-virtual {p1, p4, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1608
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

    .line 1609
    iget-object p3, p3, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->paint:Landroid/graphics/Paint;

    const/4 p4, 0x0

    invoke-virtual {p1, p2, p4, p4, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1610
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 1614
    :cond_3
    invoke-virtual {p2, p4}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 1615
    instance-of p3, p2, Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz p3, :cond_4

    .line 1616
    move-object v0, p2

    check-cast v0, Lorg/telegram/ui/Components/RLottieDrawable;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-wide v4, p0, Lorg/telegram/messenger/ImageReceiver;->currentTime:J

    const/4 v6, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Components/RLottieDrawable;->drawInternal(Landroid/graphics/Canvas;Landroid/graphics/Paint;ZJI)V

    goto :goto_0

    .line 1617
    :cond_4
    instance-of p3, p2, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz p3, :cond_5

    .line 1618
    move-object v0, p2

    check-cast v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    const/4 v2, 0x0

    iget-wide v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentTime:J

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->drawInternal(Landroid/graphics/Canvas;ZJI)V

    goto :goto_0

    .line 1620
    :cond_5
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_6
    :goto_0
    return-void
.end method

.method private drawDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;ILandroid/graphics/BitmapShader;ILorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)V
    .locals 8

    .line 1116
    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->isPressed:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->pressedProgress:F

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_1

    const v2, 0x3dda740e

    sub-float/2addr v0, v2

    .line 1117
    iput v0, p0, Lorg/telegram/messenger/ImageReceiver;->pressedProgress:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 1119
    iput v1, p0, Lorg/telegram/messenger/ImageReceiver;->pressedProgress:F

    .line 1121
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->invalidate()V

    .line 1123
    :cond_1
    iget v6, p0, Lorg/telegram/messenger/ImageReceiver;->isPressed:I

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz v6, :cond_2

    .line 1124
    iput v0, p0, Lorg/telegram/messenger/ImageReceiver;->pressedProgress:F

    .line 1125
    iput v6, p0, Lorg/telegram/messenger/ImageReceiver;->animateFromIsPressed:I

    .line 1127
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

    .line 1130
    invoke-virtual/range {v0 .. v7}, Lorg/telegram/messenger/ImageReceiver;->drawDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;ILandroid/graphics/BitmapShader;IILorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)V

    int-to-float v0, p3

    .line 1131
    iget v1, p0, Lorg/telegram/messenger/ImageReceiver;->pressedProgress:F

    mul-float v0, v0, v1

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

    .line 1128
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

    .line 715
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/ImageLoader;->loadImageForImageReceiver(Lorg/telegram/messenger/ImageReceiver;)V

    .line 716
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->invalidate()V

    return-void
.end method

.method private onBitmapException(Landroid/graphics/drawable/Drawable;)V
    .locals 13

    .line 1651
    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaKey:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1652
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageLoader;->removeImage(Ljava/lang/String;)V

    .line 1653
    iput-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaKey:Ljava/lang/String;

    goto :goto_0

    .line 1654
    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageKey:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1655
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageLoader;->removeImage(Ljava/lang/String;)V

    .line 1656
    iput-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageKey:Ljava/lang/String;

    goto :goto_0

    .line 1657
    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v1, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1658
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageLoader;->removeImage(Ljava/lang/String;)V

    .line 1659
    iput-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    .line 1661
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

    .line 2769
    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaKey:Ljava/lang/String;

    .line 2770
    iget-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    if-ne p2, v0, :cond_1

    .line 2772
    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeKey:Ljava/lang/String;

    .line 2773
    iget-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeImage:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    if-ne p2, v2, :cond_2

    .line 2775
    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    .line 2776
    iget-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 2778
    :cond_2
    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageKey:Ljava/lang/String;

    .line 2779
    iget-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageDrawable:Landroid/graphics/drawable/Drawable;

    :goto_0
    if-eqz v3, :cond_4

    const-string v5, "-"

    .line 2781
    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string/jumbo v5, "strippedmessage-"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2782
    :cond_3
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v5

    invoke-virtual {v5, v3}, Lorg/telegram/messenger/ImageLoader;->getReplacedKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    move-object v3, v5

    .line 2787
    :cond_4
    instance-of v5, v4, Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v5, :cond_5

    .line 2788
    move-object v5, v4

    check-cast v5, Lorg/telegram/ui/Components/RLottieDrawable;

    .line 2789
    invoke-virtual {v5, p0}, Lorg/telegram/ui/Components/RLottieDrawable;->removeParentView(Lorg/telegram/messenger/ImageReceiver;)V

    .line 2791
    :cond_5
    instance-of v5, v4, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v5, :cond_6

    .line 2792
    move-object v5, v4

    check-cast v5, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    .line 2793
    invoke-virtual {v5, p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->removeParent(Lorg/telegram/messenger/ImageReceiver;)V

    :cond_6
    if-eqz v3, :cond_c

    if-eqz p1, :cond_7

    .line 2795
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    :cond_7
    if-eqz v4, :cond_c

    .line 2796
    instance-of p1, v4, Lorg/telegram/ui/Components/RLottieDrawable;

    const/4 v5, 0x0

    if-eqz p1, :cond_8

    .line 2797
    check-cast v4, Lorg/telegram/ui/Components/RLottieDrawable;

    .line 2798
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object p1

    invoke-virtual {p1, v3}, Lorg/telegram/messenger/ImageLoader;->decrementUseCount(Ljava/lang/String;)Z

    move-result p1

    .line 2799
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v6

    invoke-virtual {v6, v3, v2}, Lorg/telegram/messenger/ImageLoader;->isInMemCache(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_c

    if-eqz p1, :cond_c

    .line 2801
    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RLottieDrawable;->recycle(Z)V

    goto :goto_1

    .line 2804
    :cond_8
    instance-of p1, v4, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz p1, :cond_b

    .line 2805
    check-cast v4, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    .line 2806
    iget-boolean p1, v4, Lorg/telegram/ui/Components/AnimatedFileDrawable;->isWebmSticker:Z

    if-eqz p1, :cond_a

    .line 2807
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object p1

    invoke-virtual {p1, v3}, Lorg/telegram/messenger/ImageLoader;->decrementUseCount(Ljava/lang/String;)Z

    move-result p1

    .line 2808
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v5

    invoke-virtual {v5, v3, v2}, Lorg/telegram/messenger/ImageLoader;->isInMemCache(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_9

    if-eqz p1, :cond_c

    .line 2810
    invoke-virtual {v4}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->recycle()V

    goto :goto_1

    :cond_9
    if-eqz p1, :cond_c

    .line 2813
    invoke-virtual {v4}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->stop()V

    goto :goto_1

    .line 2816
    :cond_a
    invoke-virtual {v4}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getParents()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 2817
    invoke-virtual {v4}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->recycle()V

    goto :goto_1

    .line 2820
    :cond_b
    instance-of p1, v4, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p1, :cond_c

    .line 2821
    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 2822
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/telegram/messenger/ImageLoader;->decrementUseCount(Ljava/lang/String;)Z

    move-result v4

    .line 2823
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v6

    invoke-virtual {v6, v3, v5}, Lorg/telegram/messenger/ImageLoader;->isInMemCache(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_c

    if-eqz v4, :cond_c

    .line 2825
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2826
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2827
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->recycleBitmaps(Ljava/util/List;)V

    :cond_c
    :goto_1
    const/4 p1, 0x0

    if-ne p2, v1, :cond_d

    .line 2833
    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaKey:Ljava/lang/String;

    .line 2834
    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaDrawable:Landroid/graphics/drawable/Drawable;

    .line 2835
    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->mediaShader:Landroid/graphics/BitmapShader;

    goto :goto_2

    :cond_d
    if-ne p2, v0, :cond_e

    .line 2837
    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeKey:Ljava/lang/String;

    .line 2838
    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeImage:Landroid/graphics/drawable/Drawable;

    .line 2839
    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeShader:Landroid/graphics/BitmapShader;

    goto :goto_2

    :cond_e
    if-ne p2, v2, :cond_f

    .line 2841
    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 2842
    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    .line 2843
    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->thumbShader:Landroid/graphics/BitmapShader;

    goto :goto_2

    .line 2845
    :cond_f
    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 2846
    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageKey:Ljava/lang/String;

    .line 2847
    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->imageShader:Landroid/graphics/BitmapShader;

    :goto_2
    return-void
.end method

.method private setDrawableShader(Landroid/graphics/drawable/Drawable;Landroid/graphics/BitmapShader;)V
    .locals 2

    .line 922
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_5

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    goto/16 :goto_0

    .line 924
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    .line 925
    iput-object p2, p0, Lorg/telegram/messenger/ImageReceiver;->mediaShader:Landroid/graphics/BitmapShader;

    goto/16 :goto_1

    .line 926
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_6

    .line 927
    iput-object p2, p0, Lorg/telegram/messenger/ImageReceiver;->imageShader:Landroid/graphics/BitmapShader;

    .line 928
    iget-object p2, p0, Lorg/telegram/messenger/ImageReceiver;->gradientShader:Landroid/graphics/BitmapShader;

    if-eqz p2, :cond_6

    instance-of p2, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p2, :cond_6

    .line 929
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    if-lt p2, v0, :cond_2

    .line 930
    new-instance p1, Landroid/graphics/ComposeShader;

    iget-object p2, p0, Lorg/telegram/messenger/ImageReceiver;->gradientShader:Landroid/graphics/BitmapShader;

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->imageShader:Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p2, v0, v1}, Landroid/graphics/ComposeShader;-><init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/PorterDuff$Mode;)V

    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->composeShader:Landroid/graphics/ComposeShader;

    goto :goto_1

    .line 932
    :cond_2
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 933
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    .line 934
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    .line 935
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->legacyBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, p2, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->legacyBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-eq v0, p1, :cond_6

    .line 936
    :cond_3
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->legacyBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 937
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 939
    :cond_4
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->legacyBitmap:Landroid/graphics/Bitmap;

    .line 940
    new-instance p1, Landroid/graphics/Canvas;

    iget-object p2, p0, Lorg/telegram/messenger/ImageReceiver;->legacyBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p1, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->legacyCanvas:Landroid/graphics/Canvas;

    .line 941
    new-instance p1, Landroid/graphics/BitmapShader;

    iget-object p2, p0, Lorg/telegram/messenger/ImageReceiver;->legacyBitmap:Landroid/graphics/Bitmap;

    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {p1, p2, v0, v0}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->legacyShader:Landroid/graphics/BitmapShader;

    .line 942
    iget-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->legacyPaint:Landroid/graphics/Paint;

    if-nez p1, :cond_6

    .line 943
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->legacyPaint:Landroid/graphics/Paint;

    .line 944
    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, v0}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_1

    .line 923
    :cond_5
    :goto_0
    iput-object p2, p0, Lorg/telegram/messenger/ImageReceiver;->thumbShader:Landroid/graphics/BitmapShader;

    :cond_6
    :goto_1
    return-void
.end method

.method private setStaticDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 902
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 906
    instance-of v2, v0, Lorg/telegram/ui/Components/AttachableDrawable;

    if-eqz v2, :cond_2

    .line 907
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 910
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object v1, v0

    check-cast v1, Lorg/telegram/ui/Components/AttachableDrawable;

    .line 912
    :cond_2
    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 913
    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->attachedToWindow:Z

    if-eqz v0, :cond_3

    instance-of v0, p1, Lorg/telegram/ui/Components/AttachableDrawable;

    if-eqz v0, :cond_3

    .line 914
    check-cast p1, Lorg/telegram/ui/Components/AttachableDrawable;

    invoke-interface {p1, p0}, Lorg/telegram/ui/Components/AttachableDrawable;->onAttachedToWindow(Lorg/telegram/messenger/ImageReceiver;)V

    .line 916
    :cond_3
    iget-boolean p1, p0, Lorg/telegram/messenger/ImageReceiver;->attachedToWindow:Z

    if-eqz p1, :cond_4

    if-eqz v1, :cond_4

    .line 917
    invoke-interface {v1, p0}, Lorg/telegram/ui/Components/AttachableDrawable;->onDetachedFromWindow(Lorg/telegram/messenger/ImageReceiver;)V

    :cond_4
    return-void
.end method

.method private updateDrawableRadius(Landroid/graphics/drawable/Drawable;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 965
    :cond_0
    instance-of v0, p1, Lorg/telegram/ui/Components/ClipRoundedDrawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 966
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

    .line 967
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

    .line 982
    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/ImageReceiver;->setDrawableShader(Landroid/graphics/drawable/Drawable;Landroid/graphics/BitmapShader;)V

    goto :goto_1

    .line 968
    :cond_4
    :goto_0
    instance-of v0, p1, Lorg/telegram/ui/Components/AvatarDrawable;

    if-eqz v0, :cond_5

    .line 969
    check-cast p1, Lorg/telegram/ui/Components/AvatarDrawable;

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->roundRadius:[I

    aget v0, v0, v1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/AvatarDrawable;->setRoundRadius(I)V

    goto :goto_1

    .line 971
    :cond_5
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 972
    instance-of v1, v0, Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v1, :cond_6

    goto :goto_1

    .line 974
    :cond_6
    instance-of v1, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v1, :cond_7

    .line 975
    check-cast p1, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    .line 976
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->roundRadius:[I

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->setRoundRadius([I)V

    goto :goto_1

    .line 977
    :cond_7
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 978
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

    .line 2947
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->loadingOperations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public canInvertBitmap()Z
    .locals 1

    .line 720
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

    .line 329
    iput-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->forceLoding:Z

    .line 330
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/ImageLoader;->cancelLoadingForImageReceiver(Lorg/telegram/messenger/ImageReceiver;Z)V

    .line 331
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

    .line 988
    invoke-direct {p0, v1, v0}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 990
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

    .line 2861
    sget p2, Lorg/telegram/messenger/NotificationCenter;->didReplacedPhotoInMemCache:I

    const/4 v0, 0x0

    if-ne p1, p2, :cond_2

    .line 2862
    aget-object p1, p3, v0

    check-cast p1, Ljava/lang/String;

    .line 2863
    iget-object p2, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaKey:Ljava/lang/String;

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2864
    aget-object p2, p3, v0

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaKey:Ljava/lang/String;

    .line 2865
    aget-object p2, p3, v1

    check-cast p2, Lorg/telegram/messenger/ImageLocation;

    iput-object p2, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaLocation:Lorg/telegram/messenger/ImageLocation;

    .line 2866
    iget-object p2, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    if-eqz p2, :cond_0

    .line 2867
    aget-object v2, p3, v1

    check-cast v2, Lorg/telegram/messenger/ImageLocation;

    iput-object v2, p2, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->mediaLocation:Lorg/telegram/messenger/ImageLocation;

    .line 2870
    :cond_0
    iget-object p2, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageKey:Ljava/lang/String;

    if-eqz p2, :cond_1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 2871
    aget-object p2, p3, v0

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageKey:Ljava/lang/String;

    .line 2872
    aget-object p2, p3, v1

    check-cast p2, Lorg/telegram/messenger/ImageLocation;

    iput-object p2, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageLocation:Lorg/telegram/messenger/ImageLocation;

    .line 2873
    iget-object p2, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    if-eqz p2, :cond_1

    .line 2874
    aget-object v2, p3, v1

    check-cast v2, Lorg/telegram/messenger/ImageLocation;

    iput-object v2, p2, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->imageLocation:Lorg/telegram/messenger/ImageLocation;

    .line 2877
    :cond_1
    iget-object p2, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    if-eqz p2, :cond_9

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 2878
    aget-object p1, p3, v0

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    .line 2879
    aget-object p1, p3, v1

    check-cast p1, Lorg/telegram/messenger/ImageLocation;

    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbLocation:Lorg/telegram/messenger/ImageLocation;

    .line 2880
    iget-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    if-eqz p1, :cond_9

    .line 2881
    aget-object p2, p3, v1

    check-cast p2, Lorg/telegram/messenger/ImageLocation;

    iput-object p2, p1, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->thumbLocation:Lorg/telegram/messenger/ImageLocation;

    goto/16 :goto_0

    .line 2884
    :cond_2
    sget p2, Lorg/telegram/messenger/NotificationCenter;->stopAllHeavyOperations:I

    if-ne p1, p2, :cond_5

    .line 2885
    aget-object p1, p3, v0

    check-cast p1, Ljava/lang/Integer;

    .line 2886
    iget p2, p0, Lorg/telegram/messenger/ImageReceiver;->currentLayerNum:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-lt p2, p3, :cond_3

    return-void

    .line 2889
    :cond_3
    iget p2, p0, Lorg/telegram/messenger/ImageReceiver;->currentOpenedLayerFlags:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    or-int/2addr p1, p2

    iput p1, p0, Lorg/telegram/messenger/ImageReceiver;->currentOpenedLayerFlags:I

    if-eqz p1, :cond_9

    .line 2891
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 2892
    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieDrawable;->isHeavyDrawable()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 2893
    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieDrawable;->stop()V

    .line 2895
    :cond_4
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 2897
    invoke-virtual {p1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->stop()V

    goto :goto_0

    .line 2900
    :cond_5
    sget p2, Lorg/telegram/messenger/NotificationCenter;->startAllHeavyOperations:I

    if-ne p1, p2, :cond_9

    .line 2901
    aget-object p1, p3, v0

    check-cast p1, Ljava/lang/Integer;

    .line 2902
    iget p2, p0, Lorg/telegram/messenger/ImageReceiver;->currentLayerNum:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-ge p2, p3, :cond_9

    iget p2, p0, Lorg/telegram/messenger/ImageReceiver;->currentOpenedLayerFlags:I

    if-nez p2, :cond_6

    goto :goto_0

    .line 2905
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    not-int p1, p1

    and-int/2addr p1, p2

    iput p1, p0, Lorg/telegram/messenger/ImageReceiver;->currentOpenedLayerFlags:I

    if-nez p1, :cond_9

    .line 2907
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 2909
    iget-boolean p2, p0, Lorg/telegram/messenger/ImageReceiver;->allowLottieVibration:Z

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RLottieDrawable;->setAllowVibration(Z)V

    .line 2911
    :cond_7
    iget-boolean p2, p0, Lorg/telegram/messenger/ImageReceiver;->allowStartLottieAnimation:Z

    if-eqz p2, :cond_8

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieDrawable;->isHeavyDrawable()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 2912
    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    .line 2914
    :cond_8
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object p1

    .line 2915
    iget-boolean p2, p0, Lorg/telegram/messenger/ImageReceiver;->allowStartAnimation:Z

    if-eqz p2, :cond_9

    if-eqz p1, :cond_9

    .line 2916
    invoke-virtual {p1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->checkRepeat()V

    .line 2917
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->invalidate()V

    nop

    :cond_9
    :goto_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1726
    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)Z

    move-result p1

    return p1
.end method

.method public draw(Landroid/graphics/Canvas;Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)Z
    .locals 41

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v0, p2

    .line 1731
    iget-object v1, v15, Lorg/telegram/messenger/ImageReceiver;->gradientBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, v15, Lorg/telegram/messenger/ImageReceiver;->currentImageKey:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1732
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1733
    iget v1, v15, Lorg/telegram/messenger/ImageReceiver;->imageX:F

    iget v2, v15, Lorg/telegram/messenger/ImageReceiver;->imageY:F

    iget v3, v15, Lorg/telegram/messenger/ImageReceiver;->imageW:F

    add-float/2addr v3, v1

    iget v4, v15, Lorg/telegram/messenger/ImageReceiver;->imageH:F

    add-float/2addr v4, v2

    invoke-virtual {v14, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    const/high16 v1, -0x1000000

    .line 1734
    invoke-virtual {v14, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    :cond_0
    const/16 v21, 0x0

    if-eqz v0, :cond_1

    const/16 v22, 0x1

    goto :goto_0

    :cond_1
    const/16 v22, 0x0

    :goto_0
    if-eqz v22, :cond_2

    .line 1760
    :try_start_0
    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->access$600(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object v1

    .line 1761
    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->access$700(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v2

    .line 1762
    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->access$400(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)[I

    move-result-object v3

    .line 1763
    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->access$800(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 1764
    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->access$900(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)Landroid/graphics/BitmapShader;

    move-result-object v5

    .line 1765
    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->access$1000(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 1766
    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->access$1100(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)Landroid/graphics/BitmapShader;

    move-result-object v7

    .line 1767
    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->access$1200(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)Landroid/graphics/BitmapShader;

    move-result-object v8

    .line 1768
    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->access$1300(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 1769
    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->access$1400(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)Z

    move-result v10

    .line 1770
    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->access$1500(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)Z

    move-result v11

    .line 1771
    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->access$1600(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 1772
    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->access$1700(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    .line 1773
    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->access$1800(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)F

    move-result v17

    .line 1774
    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->access$1900(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)F

    move-result v18

    .line 1775
    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->access$2000(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)Landroid/graphics/BitmapShader;

    move-result-object v19

    .line 1776
    iget-boolean v13, v0, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->animationNotReady:Z

    move-object/from16 v23, v1

    .line 1777
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

    .line 1779
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object v1

    .line 1780
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v2

    .line 1781
    iget-object v3, v15, Lorg/telegram/messenger/ImageReceiver;->roundRadius:[I

    .line 1782
    iget-object v4, v15, Lorg/telegram/messenger/ImageReceiver;->currentMediaDrawable:Landroid/graphics/drawable/Drawable;

    .line 1783
    iget-object v5, v15, Lorg/telegram/messenger/ImageReceiver;->mediaShader:Landroid/graphics/BitmapShader;

    .line 1784
    iget-object v6, v15, Lorg/telegram/messenger/ImageReceiver;->currentImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 1785
    iget-object v7, v15, Lorg/telegram/messenger/ImageReceiver;->imageShader:Landroid/graphics/BitmapShader;

    .line 1786
    iget-object v12, v15, Lorg/telegram/messenger/ImageReceiver;->currentThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 1787
    iget-object v8, v15, Lorg/telegram/messenger/ImageReceiver;->thumbShader:Landroid/graphics/BitmapShader;

    .line 1788
    iget-boolean v9, v15, Lorg/telegram/messenger/ImageReceiver;->crossfadeWithOldImage:Z

    .line 1789
    iget-boolean v11, v15, Lorg/telegram/messenger/ImageReceiver;->crossfadingWithThumb:Z

    .line 1790
    iget-object v10, v15, Lorg/telegram/messenger/ImageReceiver;->crossfadeImage:Landroid/graphics/drawable/Drawable;

    .line 1791
    iget-object v13, v15, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v16, v3

    .line 1792
    iget v3, v15, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    move/from16 v17, v3

    .line 1793
    iget v3, v15, Lorg/telegram/messenger/ImageReceiver;->previousAlpha:F

    move/from16 v18, v3

    .line 1794
    iget-object v3, v15, Lorg/telegram/messenger/ImageReceiver;->crossfadeShader:Landroid/graphics/BitmapShader;

    move-object/from16 v19, v3

    .line 1795
    iget v3, v15, Lorg/telegram/messenger/ImageReceiver;->overrideAlpha:F

    if-eqz v1, :cond_3

    .line 1796
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
    const/16 v23, 0x0

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

    .line 1799
    :try_start_1
    invoke-virtual/range {v1 .. v20}, Lorg/telegram/messenger/ImageReceiver;->customDraw(Landroid/graphics/Canvas;Lorg/telegram/ui/Components/AnimatedFileDrawable;Lorg/telegram/ui/Components/RLottieDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/BitmapShader;Landroid/graphics/drawable/Drawable;Landroid/graphics/BitmapShader;Landroid/graphics/drawable/Drawable;Landroid/graphics/BitmapShader;ZZLandroid/graphics/drawable/Drawable;Landroid/graphics/BitmapShader;Landroid/graphics/drawable/Drawable;FFF[ILorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)Z

    move-result v1

    if-eqz v1, :cond_6

    return v0

    :cond_6
    move-object/from16 v1, v39

    if-eqz v1, :cond_7

    move-object/from16 v8, v35

    .line 1815
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

    .line 1818
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

    .line 1820
    iget-boolean v1, v9, Lorg/telegram/messenger/ImageReceiver;->animationReadySent:Z

    if-nez v1, :cond_a

    if-nez v22, :cond_a

    .line 1821
    iput-boolean v0, v9, Lorg/telegram/messenger/ImageReceiver;->animationReadySent:Z

    .line 1822
    iget-object v1, v9, Lorg/telegram/messenger/ImageReceiver;->delegate:Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;

    if-eqz v1, :cond_a

    .line 1823
    invoke-interface {v1, v9}, Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;->onAnimationReady(Lorg/telegram/messenger/ImageReceiver;)V

    .line 1828
    :cond_a
    iget-boolean v1, v9, Lorg/telegram/messenger/ImageReceiver;->forcePreview:Z

    if-nez v1, :cond_b

    if-eqz v37, :cond_b

    if-nez v28, :cond_b

    .line 1831
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

    .line 1835
    :cond_c
    iget v1, v9, Lorg/telegram/messenger/ImageReceiver;->imageOrientation:I

    move v14, v1

    move-object/from16 v1, v26

    move-object/from16 v12, v32

    move-object/from16 v10, v33

    move-object/from16 v15, v34

    move-object/from16 v13, v36

    const/4 v7, 0x0

    move-object/from16 v26, v25

    goto :goto_5

    :cond_d
    move-object/from16 v10, v33

    if-eqz v10, :cond_e

    if-nez v27, :cond_e

    .line 1840
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

    .line 1841
    instance-of v1, v13, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_10

    .line 1843
    iget-boolean v1, v9, Lorg/telegram/messenger/ImageReceiver;->useRoundForThumb:Z

    if-eqz v1, :cond_f

    if-nez v26, :cond_f

    .line 1844
    invoke-direct {v9, v13}, Lorg/telegram/messenger/ImageReceiver;->updateDrawableRadius(Landroid/graphics/drawable/Drawable;)V

    .line 1845
    iget-object v1, v9, Lorg/telegram/messenger/ImageReceiver;->thumbShader:Landroid/graphics/BitmapShader;

    move-object/from16 v26, v1

    .line 1848
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

    .line 1852
    iget v1, v9, Lorg/telegram/messenger/ImageReceiver;->thumbOrientation:I

    move v14, v1

    move-object v15, v12

    move-object/from16 v1, v26

    move/from16 v7, v28

    goto :goto_5

    :cond_11
    move-object/from16 v1, v26

    move/from16 v7, v28

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v26, 0x0

    .line 1856
    :goto_5
    iget v2, v9, Lorg/telegram/messenger/ImageReceiver;->crossfadeByScale:F

    const/16 v16, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v3, v2, v16

    move/from16 v5, v31

    if-lez v3, :cond_12

    mul-float v2, v2, v5

    add-float/2addr v2, v5

    .line 1857
    invoke-static {v2, v6}, Ljava/lang/Math;->min(FF)F

    move-result v2

    move/from16 v17, v2

    goto :goto_6

    :cond_12
    move/from16 v17, v5

    :goto_6
    const/high16 v18, 0x437f0000    # 255.0f

    if-eqz v15, :cond_28

    .line 1861
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

    .line 1863
    iget-boolean v2, v9, Lorg/telegram/messenger/ImageReceiver;->useRoundForThumb:Z

    if-eqz v2, :cond_14

    if-nez v1, :cond_14

    .line 1864
    invoke-direct {v9, v13}, Lorg/telegram/messenger/ImageReceiver;->updateDrawableRadius(Landroid/graphics/drawable/Drawable;)V

    .line 1865
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

    const/high16 v20, 0x3f800000    # 1.0f

    move v6, v14

    move-object/from16 v35, v8

    move v8, v7

    move-object/from16 v7, p2

    .line 1867
    invoke-direct/range {v1 .. v7}, Lorg/telegram/messenger/ImageReceiver;->drawDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;ILandroid/graphics/BitmapShader;ILorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)V

    move-object/from16 v1, v19

    goto :goto_8

    :cond_15
    move-object v0, v3

    move-object v11, v4

    move/from16 v40, v5

    move-object/from16 v35, v8

    goto :goto_7

    :cond_16
    move/from16 v40, v5

    move-object/from16 v35, v8

    move-object/from16 v11, v34

    move-object/from16 v0, v37

    :goto_7
    const/high16 v20, 0x3f800000    # 1.0f

    move v8, v7

    .line 1869
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

    .line 1870
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

    .line 1893
    iget-boolean v0, v9, Lorg/telegram/messenger/ImageReceiver;->useRoundForThumb:Z

    if-eqz v0, :cond_1e

    if-nez v1, :cond_1e

    .line 1894
    invoke-direct {v9, v13}, Lorg/telegram/messenger/ImageReceiver;->updateDrawableRadius(Landroid/graphics/drawable/Drawable;)V

    .line 1895
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

    .line 1884
    iget-boolean v0, v9, Lorg/telegram/messenger/ImageReceiver;->useRoundForThumb:Z

    if-eqz v0, :cond_1e

    if-nez v1, :cond_1e

    .line 1885
    invoke-direct {v9, v13}, Lorg/telegram/messenger/ImageReceiver;->updateDrawableRadius(Landroid/graphics/drawable/Drawable;)V

    .line 1886
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

    .line 1907
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

    .line 1912
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

    .line 1913
    instance-of v0, v11, Lorg/telegram/messenger/Emoji$EmojiDrawable;

    if-eqz v0, :cond_22

    .line 1914
    invoke-virtual {v11, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1919
    :cond_22
    iget v0, v9, Lorg/telegram/messenger/ImageReceiver;->crossfadeByScale:F

    cmpl-float v0, v0, v16

    if-lez v0, :cond_24

    cmpg-float v0, v17, v20

    if-gez v0, :cond_24

    if-eqz v27, :cond_24

    .line 1920
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1922
    iget-object v0, v9, Lorg/telegram/messenger/ImageReceiver;->roundPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 1923
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget v1, v9, Lorg/telegram/messenger/ImageReceiver;->imageX:F

    iget v2, v9, Lorg/telegram/messenger/ImageReceiver;->imageY:F

    iget v3, v9, Lorg/telegram/messenger/ImageReceiver;->imageW:F

    add-float/2addr v3, v1

    iget v4, v9, Lorg/telegram/messenger/ImageReceiver;->imageH:F

    add-float/2addr v4, v2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    move-object/from16 v3, v35

    const/4 v0, 0x0

    .line 1924
    :goto_10
    array-length v1, v3

    if-ge v0, v1, :cond_23

    .line 1925
    sget-object v1, Lorg/telegram/messenger/ImageReceiver;->radii:[F

    mul-int/lit8 v2, v0, 0x2

    aget v4, v3, v0

    int-to-float v4, v4

    aput v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    .line 1926
    aget v4, v3, v0

    int-to-float v4, v4

    aput v4, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 1928
    :cond_23
    iget-object v0, v9, Lorg/telegram/messenger/ImageReceiver;->roundPath:Landroid/graphics/Path;

    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    sget-object v2, Lorg/telegram/messenger/ImageReceiver;->radii:[F

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 1929
    iget-object v0, v9, Lorg/telegram/messenger/ImageReceiver;->roundPath:Landroid/graphics/Path;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object/from16 v10, p1

    :try_start_3
    invoke-virtual {v10, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 1930
    iget v0, v9, Lorg/telegram/messenger/ImageReceiver;->crossfadeByScale:F

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_IN:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    move/from16 v2, v40

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v1

    sub-float v6, v20, v1

    mul-float v0, v0, v6

    add-float v0, v0, v20

    .line 1931
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/ImageReceiver;->getCenterX()F

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/ImageReceiver;->getCenterY()F

    move-result v2

    invoke-virtual {v10, v0, v0, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    const/4 v13, 0x1

    goto :goto_11

    :cond_24
    move-object/from16 v10, p1

    const/4 v13, 0x0

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

    .line 1933
    invoke-direct/range {v1 .. v7}, Lorg/telegram/messenger/ImageReceiver;->drawDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;ILandroid/graphics/BitmapShader;ILorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)V

    if-eqz v13, :cond_26

    .line 1935
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

    .line 1939
    invoke-direct/range {v1 .. v7}, Lorg/telegram/messenger/ImageReceiver;->drawDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;ILandroid/graphics/BitmapShader;ILorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)V

    :cond_26
    :goto_12
    if-eqz v8, :cond_27

    .line 1942
    iget-boolean v0, v9, Lorg/telegram/messenger/ImageReceiver;->crossfadeWithThumb:Z

    if-eqz v0, :cond_27

    move-object/from16 v0, p2

    const/4 v13, 0x1

    goto :goto_13

    :cond_27
    move-object/from16 v0, p2

    const/4 v13, 0x0

    :goto_13
    invoke-direct {v9, v13, v0}, Lorg/telegram/messenger/ImageReceiver;->checkAlphaAnimation(ZLorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)V

    goto :goto_14

    :cond_28
    move-object/from16 v10, p1

    move-object/from16 v0, p2

    move v8, v7

    if-eqz v13, :cond_2a

    .line 1945
    instance-of v1, v13, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;

    if-eqz v1, :cond_29

    .line 1946
    move-object v11, v13

    check-cast v11, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;

    invoke-virtual {v11, v9}, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;->setParent(Lorg/telegram/messenger/ImageReceiver;)V

    :cond_29
    mul-float v1, v23, v18

    float-to-int v4, v1

    const/4 v5, 0x0

    .line 1948
    iget v6, v9, Lorg/telegram/messenger/ImageReceiver;->thumbOrientation:I

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v13

    move-object/from16 v7, p2

    invoke-direct/range {v1 .. v7}, Lorg/telegram/messenger/ImageReceiver;->drawDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;ILandroid/graphics/BitmapShader;ILorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)V

    .line 1949
    invoke-direct {v9, v8, v0}, Lorg/telegram/messenger/ImageReceiver;->checkAlphaAnimation(ZLorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)V

    :goto_14
    const/16 v21, 0x1

    goto :goto_15

    .line 1952
    :cond_2a
    invoke-direct {v9, v8, v0}, Lorg/telegram/messenger/ImageReceiver;->checkAlphaAnimation(ZLorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)V

    :goto_15
    if-nez v15, :cond_2b

    if-eqz v8, :cond_2b

    if-nez v22, :cond_2b

    .line 1956
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

    .line 1959
    :goto_17
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1961
    :cond_2b
    :goto_18
    iget-object v0, v9, Lorg/telegram/messenger/ImageReceiver;->gradientBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2c

    iget-object v0, v9, Lorg/telegram/messenger/ImageReceiver;->currentImageKey:Ljava/lang/String;

    if-eqz v0, :cond_2c

    .line 1962
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

    .line 1146
    iget v8, v7, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->imageX:F

    .line 1147
    iget v9, v7, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->imageY:F

    .line 1148
    iget v10, v7, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->imageH:F

    .line 1149
    iget v11, v7, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->imageW:F

    .line 1150
    iget-object v12, v7, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->drawRegion:Landroid/graphics/RectF;

    .line 1151
    iget-object v13, v7, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->colorFilter:Landroid/graphics/ColorFilter;

    .line 1152
    invoke-static/range {p7 .. p7}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->access$400(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)[I

    move-result-object v14

    goto :goto_0

    .line 1154
    :cond_0
    iget v8, v1, Lorg/telegram/messenger/ImageReceiver;->imageX:F

    .line 1155
    iget v9, v1, Lorg/telegram/messenger/ImageReceiver;->imageY:F

    .line 1156
    iget v10, v1, Lorg/telegram/messenger/ImageReceiver;->imageH:F

    .line 1157
    iget v11, v1, Lorg/telegram/messenger/ImageReceiver;->imageW:F

    .line 1158
    iget-object v12, v1, Lorg/telegram/messenger/ImageReceiver;->drawRegion:Landroid/graphics/RectF;

    .line 1159
    iget-object v13, v1, Lorg/telegram/messenger/ImageReceiver;->colorFilter:Landroid/graphics/ColorFilter;

    .line 1160
    iget-object v14, v1, Lorg/telegram/messenger/ImageReceiver;->roundRadius:[I

    .line 1162
    :goto_0
    instance-of v15, v2, Landroid/graphics/drawable/BitmapDrawable;

    const/high16 v16, 0x3f800000    # 1.0f

    move-object/from16 v17, v14

    const/high16 v18, 0x40000000    # 2.0f

    if-eqz v15, :cond_54

    .line 1163
    move-object v15, v2

    check-cast v15, Landroid/graphics/drawable/BitmapDrawable;

    .line 1164
    instance-of v14, v2, Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v14, :cond_1

    move/from16 v20, v14

    .line 1165
    move-object v14, v2

    check-cast v14, Lorg/telegram/ui/Components/RLottieDrawable;

    iget-boolean v3, v1, Lorg/telegram/messenger/ImageReceiver;->skipUpdateFrame:Z

    iput-boolean v3, v14, Lorg/telegram/ui/Components/RLottieDrawable;->skipFrameUpdate:Z

    goto :goto_1

    :cond_1
    move/from16 v20, v14

    .line 1166
    instance-of v3, v2, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v3, :cond_2

    .line 1167
    move-object v3, v2

    check-cast v3, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    iget-boolean v14, v1, Lorg/telegram/messenger/ImageReceiver;->skipUpdateFrame:Z

    iput-boolean v14, v3, Lorg/telegram/ui/Components/AnimatedFileDrawable;->skipFrameUpdate:Z

    :cond_2
    :goto_1
    if-eqz v4, :cond_3

    .line 1172
    iget-object v3, v1, Lorg/telegram/messenger/ImageReceiver;->roundPaint:Landroid/graphics/Paint;

    goto :goto_2

    .line 1174
    :cond_3
    invoke-virtual {v15}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    .line 1176
    :goto_2
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    move-object/from16 v21, v12

    if-lt v14, v0, :cond_5

    .line 1177
    iget-object v0, v1, Lorg/telegram/messenger/ImageReceiver;->blendMode:Ljava/lang/Object;

    if-eqz v0, :cond_4

    iget-object v12, v1, Lorg/telegram/messenger/ImageReceiver;->gradientShader:Landroid/graphics/BitmapShader;

    if-nez v12, :cond_4

    .line 1178
    check-cast v0, Landroid/graphics/BlendMode;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    .line 1180
    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    :cond_5
    :goto_3
    const/4 v0, 0x1

    if-eqz v3, :cond_6

    .line 1183
    invoke-virtual {v3}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v3

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    goto :goto_4

    :cond_6
    const/4 v3, 0x0

    :goto_4
    if-eqz v3, :cond_8

    if-nez v6, :cond_8

    if-eqz v4, :cond_7

    .line 1186
    iget-object v3, v1, Lorg/telegram/messenger/ImageReceiver;->roundPaint:Landroid/graphics/Paint;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_5

    :cond_7
    const/4 v6, 0x0

    .line 1187
    iget-object v3, v1, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v3, v2, :cond_c

    .line 1188
    invoke-virtual {v15, v6}, Landroid/graphics/drawable/BitmapDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_5

    :cond_8
    if-nez v3, :cond_c

    if-eqz v6, :cond_c

    if-ne v6, v0, :cond_a

    if-eqz v4, :cond_9

    .line 1193
    iget-object v3, v1, Lorg/telegram/messenger/ImageReceiver;->roundPaint:Landroid/graphics/Paint;

    sget-object v6, Lorg/telegram/messenger/ImageReceiver;->selectedColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_5

    .line 1195
    :cond_9
    sget-object v3, Lorg/telegram/messenger/ImageReceiver;->selectedColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v15, v3}, Landroid/graphics/drawable/BitmapDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_5

    :cond_a
    if-eqz v4, :cond_b

    .line 1199
    iget-object v3, v1, Lorg/telegram/messenger/ImageReceiver;->roundPaint:Landroid/graphics/Paint;

    sget-object v6, Lorg/telegram/messenger/ImageReceiver;->selectedGroupColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_5

    .line 1201
    :cond_b
    sget-object v3, Lorg/telegram/messenger/ImageReceiver;->selectedGroupColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v15, v3}, Landroid/graphics/drawable/BitmapDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_c
    :goto_5
    if-eqz v13, :cond_e

    .line 1205
    iget-object v3, v1, Lorg/telegram/messenger/ImageReceiver;->gradientShader:Landroid/graphics/BitmapShader;

    if-nez v3, :cond_e

    if-eqz v4, :cond_d

    .line 1207
    iget-object v3, v1, Lorg/telegram/messenger/ImageReceiver;->roundPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v13}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_6

    .line 1209
    :cond_d
    invoke-virtual {v15, v13}, Landroid/graphics/drawable/BitmapDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1214
    :cond_e
    :goto_6
    instance-of v3, v15, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    const/16 v6, 0x10e

    const/16 v13, 0x5a

    if-nez v3, :cond_13

    instance-of v0, v15, Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v0, :cond_f

    goto :goto_9

    .line 1223
    :cond_f
    invoke-virtual {v15}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 1224
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v23

    if-eqz v23, :cond_10

    return-void

    .line 1227
    :cond_10
    rem-int/lit16 v12, v5, 0x168

    if-eq v12, v13, :cond_12

    if-ne v12, v6, :cond_11

    goto :goto_7

    .line 1231
    :cond_11
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    .line 1232
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    goto :goto_8

    .line 1228
    :cond_12
    :goto_7
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    .line 1229
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 1234
    :goto_8
    instance-of v6, v15, Lorg/telegram/messenger/ImageReceiver$ReactionLastFrame;

    goto :goto_c

    .line 1215
    :cond_13
    :goto_9
    rem-int/lit16 v0, v5, 0x168

    if-eq v0, v13, :cond_15

    const/16 v6, 0x10e

    if-ne v0, v6, :cond_14

    goto :goto_a

    .line 1219
    :cond_14
    invoke-virtual {v15}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v12

    .line 1220
    invoke-virtual {v15}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_b

    .line 1216
    :cond_15
    :goto_a
    invoke-virtual {v15}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v12

    .line 1217
    invoke-virtual {v15}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v0

    :goto_b
    const/4 v6, 0x0

    .line 1236
    :goto_c
    iget v13, v1, Lorg/telegram/messenger/ImageReceiver;->sideClip:F

    mul-float v24, v13, v18

    sub-float v24, v11, v24

    mul-float v13, v13, v18

    sub-float v13, v10, v13

    const/16 v19, 0x0

    cmpl-float v25, v11, v19

    if-nez v25, :cond_16

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_d

    :cond_16
    int-to-float v2, v12

    div-float v2, v2, v24

    :goto_d
    cmpl-float v26, v10, v19

    move/from16 v27, v14

    if-nez v26, :cond_17

    const/high16 v14, 0x3f800000    # 1.0f

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

    .line 1246
    iget-boolean v3, v1, Lorg/telegram/messenger/ImageReceiver;->isAspectFit:Z

    if-eqz v3, :cond_1c

    .line 1247
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

    .line 1250
    invoke-virtual {v3, v5, v6, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1252
    iget-boolean v0, v1, Lorg/telegram/messenger/ImageReceiver;->isVisible:Z

    if-eqz v0, :cond_52

    .line 1253
    iget-object v0, v1, Lorg/telegram/messenger/ImageReceiver;->shaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 1254
    iget-object v0, v1, Lorg/telegram/messenger/ImageReceiver;->shaderMatrix:Landroid/graphics/Matrix;

    iget v5, v3, Landroid/graphics/RectF;->left:F

    float-to-int v5, v5

    int-to-float v5, v5

    iget v6, v3, Landroid/graphics/RectF;->top:F

    float-to-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Matrix;->setTranslate(FF)V

    div-float v0, v16, v2

    .line 1256
    iget-object v2, v1, Lorg/telegram/messenger/ImageReceiver;->shaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0, v0}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 1258
    iget-object v0, v1, Lorg/telegram/messenger/ImageReceiver;->shaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v0}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 1259
    iget-object v0, v1, Lorg/telegram/messenger/ImageReceiver;->roundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1260
    iget-object v0, v1, Lorg/telegram/messenger/ImageReceiver;->roundPaint:Landroid/graphics/Paint;

    move/from16 v2, p3

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1261
    iget-object v0, v1, Lorg/telegram/messenger/ImageReceiver;->roundRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 1263
    iget-boolean v0, v1, Lorg/telegram/messenger/ImageReceiver;->isRoundRect:Z

    if-eqz v0, :cond_1a

    move-object/from16 v2, p1

    if-eqz v2, :cond_52

    const/4 v3, 0x0

    .line 1266
    :try_start_0
    aget v0, v17, v3

    if-nez v0, :cond_19

    .line 1267
    iget-object v0, v1, Lorg/telegram/messenger/ImageReceiver;->roundRect:Landroid/graphics/RectF;

    iget-object v3, v1, Lorg/telegram/messenger/ImageReceiver;->roundPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_28

    .line 1269
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

    .line 1273
    invoke-direct {v1, v15}, Lorg/telegram/messenger/ImageReceiver;->onBitmapException(Landroid/graphics/drawable/Drawable;)V

    .line 1274
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_28

    :cond_1a
    move-object/from16 v2, p1

    move-object/from16 v3, v17

    const/4 v0, 0x0

    .line 1277
    :goto_f
    array-length v4, v3

    if-ge v0, v4, :cond_1b

    .line 1278
    sget-object v4, Lorg/telegram/messenger/ImageReceiver;->radii:[F

    mul-int/lit8 v5, v0, 0x2

    aget v6, v3, v0

    int-to-float v6, v6

    aput v6, v4, v5

    const/4 v6, 0x1

    add-int/2addr v5, v6

    .line 1279
    aget v6, v3, v0

    int-to-float v6, v6

    aput v6, v4, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 1281
    :cond_1b
    iget-object v0, v1, Lorg/telegram/messenger/ImageReceiver;->roundPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 1282
    iget-object v0, v1, Lorg/telegram/messenger/ImageReceiver;->roundPath:Landroid/graphics/Path;

    iget-object v3, v1, Lorg/telegram/messenger/ImageReceiver;->roundRect:Landroid/graphics/RectF;

    sget-object v4, Lorg/telegram/messenger/ImageReceiver;->radii:[F

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v3, v4, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 1283
    iget-object v0, v1, Lorg/telegram/messenger/ImageReceiver;->roundPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    if-eqz v2, :cond_52

    .line 1285
    iget-object v0, v1, Lorg/telegram/messenger/ImageReceiver;->roundPath:Landroid/graphics/Path;

    iget-object v3, v1, Lorg/telegram/messenger/ImageReceiver;->roundPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_28

    :cond_1c
    move-object/from16 v30, v17

    move-object/from16 v3, v21

    .line 1290
    iget-object v7, v1, Lorg/telegram/messenger/ImageReceiver;->legacyCanvas:Landroid/graphics/Canvas;

    if-eqz v7, :cond_1d

    .line 1291
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

    .line 1292
    iget-object v0, v1, Lorg/telegram/messenger/ImageReceiver;->legacyCanvas:Landroid/graphics/Canvas;

    iget-object v5, v1, Lorg/telegram/messenger/ImageReceiver;->gradientBitmap:Landroid/graphics/Bitmap;

    iget-object v6, v1, Lorg/telegram/messenger/ImageReceiver;->roundRect:Landroid/graphics/RectF;

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v7, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1293
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

    .line 1295
    :goto_10
    iget-object v0, v1, Lorg/telegram/messenger/ImageReceiver;->imageShader:Landroid/graphics/BitmapShader;

    if-ne v4, v0, :cond_1f

    iget-object v0, v1, Lorg/telegram/messenger/ImageReceiver;->gradientShader:Landroid/graphics/BitmapShader;

    if-eqz v0, :cond_1f

    .line 1296
    iget-object v0, v1, Lorg/telegram/messenger/ImageReceiver;->composeShader:Landroid/graphics/ComposeShader;

    if-eqz v0, :cond_1e

    .line 1297
    iget-object v5, v1, Lorg/telegram/messenger/ImageReceiver;->roundPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_11

    .line 1299
    :cond_1e
    iget-object v0, v1, Lorg/telegram/messenger/ImageReceiver;->roundPaint:Landroid/graphics/Paint;

    iget-object v5, v1, Lorg/telegram/messenger/ImageReceiver;->legacyShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_11

    .line 1302
    :cond_1f
    iget-object v0, v1, Lorg/telegram/messenger/ImageReceiver;->roundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1304
    :goto_11
    invoke-static {v2, v14}, Ljava/lang/Math;->min(FF)F

    move-result v0

    div-float v0, v16, v0

    .line 1305
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

    .line 1306
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

    .line 1309
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

    .line 1312
    invoke-virtual {v3, v8, v5, v7, v2}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_12

    :cond_21
    add-float v2, v8, v24

    add-float v5, v9, v13

    .line 1315
    invoke-virtual {v3, v8, v9, v2, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1317
    :goto_12
    iget-boolean v2, v1, Lorg/telegram/messenger/ImageReceiver;->isVisible:Z

    if-eqz v2, :cond_52

    .line 1318
    iget-object v2, v1, Lorg/telegram/messenger/ImageReceiver;->shaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    if-eqz v17, :cond_22

    .line 1320
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

    .line 1322
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

    .line 1325
    iget-object v2, v1, Lorg/telegram/messenger/ImageReceiver;->shaderMatrix:Landroid/graphics/Matrix;

    const/high16 v5, 0x42b40000    # 90.0f

    invoke-virtual {v2, v5}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 1326
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

    .line 1328
    iget-object v2, v1, Lorg/telegram/messenger/ImageReceiver;->shaderMatrix:Landroid/graphics/Matrix;

    const/high16 v5, 0x43340000    # 180.0f

    invoke-virtual {v2, v5}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 1329
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

    .line 1331
    iget-object v2, v1, Lorg/telegram/messenger/ImageReceiver;->shaderMatrix:Landroid/graphics/Matrix;

    const/high16 v5, 0x43870000    # 270.0f

    invoke-virtual {v2, v5}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 1332
    iget-object v2, v1, Lorg/telegram/messenger/ImageReceiver;->shaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v5

    neg-float v5, v5

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v7}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 1334
    :cond_25
    :goto_14
    iget-object v2, v1, Lorg/telegram/messenger/ImageReceiver;->shaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0, v0}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 1335
    iget-boolean v0, v1, Lorg/telegram/messenger/ImageReceiver;->isRoundVideo:Z

    if-eqz v0, :cond_26

    .line 1336
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->roundMessageInset:I

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    add-float v0, v24, v0

    div-float v0, v0, v24

    .line 1337
    iget-object v2, v1, Lorg/telegram/messenger/ImageReceiver;->shaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    invoke-virtual {v2, v0, v0, v5, v7}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 1339
    :cond_26
    iget-object v0, v1, Lorg/telegram/messenger/ImageReceiver;->legacyShader:Landroid/graphics/BitmapShader;

    if-eqz v0, :cond_27

    .line 1340
    iget-object v2, v1, Lorg/telegram/messenger/ImageReceiver;->shaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 1342
    :cond_27
    iget-object v0, v1, Lorg/telegram/messenger/ImageReceiver;->shaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v0}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 1344
    iget-object v0, v1, Lorg/telegram/messenger/ImageReceiver;->composeShader:Landroid/graphics/ComposeShader;

    if-eqz v0, :cond_2e

    .line 1345
    iget-object v0, v1, Lorg/telegram/messenger/ImageReceiver;->gradientBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 1346
    iget-object v2, v1, Lorg/telegram/messenger/ImageReceiver;->gradientBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-nez v25, :cond_28

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_15

    :cond_28
    int-to-float v4, v0

    div-float v4, v4, v24

    :goto_15
    if-nez v26, :cond_29

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_16

    :cond_29
    int-to-float v5, v2

    div-float/2addr v5, v13

    :goto_16
    sub-float v7, v4, v5

    .line 1349
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

    .line 1352
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

    .line 1355
    invoke-virtual {v3, v8, v5, v6, v9}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_17

    :cond_2b
    add-float v4, v8, v24

    add-float v5, v9, v13

    .line 1358
    invoke-virtual {v3, v8, v9, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_17
    if-nez v25, :cond_2c

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_18

    :cond_2c
    int-to-float v0, v0

    div-float v0, v0, v24

    :goto_18
    if-nez v26, :cond_2d

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_19

    :cond_2d
    int-to-float v2, v2

    div-float/2addr v2, v13

    .line 1360
    :goto_19
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    div-float v0, v16, v0

    .line 1362
    iget-object v2, v1, Lorg/telegram/messenger/ImageReceiver;->shaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 1363
    iget-object v2, v1, Lorg/telegram/messenger/ImageReceiver;->shaderMatrix:Landroid/graphics/Matrix;

    iget v4, v3, Landroid/graphics/RectF;->left:F

    iget v5, v1, Lorg/telegram/messenger/ImageReceiver;->sideClip:F

    add-float/2addr v4, v5

    iget v6, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v6, v5

    invoke-virtual {v2, v4, v6}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 1364
    iget-object v2, v1, Lorg/telegram/messenger/ImageReceiver;->shaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0, v0}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 1365
    iget-object v0, v1, Lorg/telegram/messenger/ImageReceiver;->gradientShader:Landroid/graphics/BitmapShader;

    iget-object v2, v1, Lorg/telegram/messenger/ImageReceiver;->shaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 1368
    :cond_2e
    iget-object v0, v1, Lorg/telegram/messenger/ImageReceiver;->roundPaint:Landroid/graphics/Paint;

    move/from16 v2, p3

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1370
    iget-boolean v0, v1, Lorg/telegram/messenger/ImageReceiver;->isRoundRect:Z

    if-eqz v0, :cond_32

    move-object/from16 v2, p1

    if-eqz v2, :cond_52

    move-object/from16 v4, v30

    const/4 v5, 0x0

    .line 1373
    :try_start_1
    aget v0, v4, v5

    if-nez v0, :cond_30

    if-eqz v17, :cond_2f

    .line 1375
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v4, v1, Lorg/telegram/messenger/ImageReceiver;->roundRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 1376
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

    .line 1377
    iget-object v3, v1, Lorg/telegram/messenger/ImageReceiver;->roundPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_28

    .line 1379
    :cond_2f
    iget-object v0, v1, Lorg/telegram/messenger/ImageReceiver;->roundRect:Landroid/graphics/RectF;

    iget-object v3, v1, Lorg/telegram/messenger/ImageReceiver;->roundPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_28

    .line 1382
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

    .line 1387
    invoke-direct {v1, v13}, Lorg/telegram/messenger/ImageReceiver;->onBitmapException(Landroid/graphics/drawable/Drawable;)V

    .line 1389
    :cond_31
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_28

    :cond_32
    move-object/from16 v15, p1

    move-object/from16 v4, v30

    const/4 v0, 0x0

    .line 1392
    :goto_1a
    array-length v2, v4

    if-ge v0, v2, :cond_33

    .line 1393
    sget-object v2, Lorg/telegram/messenger/ImageReceiver;->radii:[F

    mul-int/lit8 v3, v0, 0x2

    aget v5, v4, v0

    int-to-float v5, v5

    aput v5, v2, v3

    const/4 v5, 0x1

    add-int/2addr v3, v5

    .line 1394
    aget v6, v4, v0

    int-to-float v6, v6

    aput v6, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 1396
    :cond_33
    iget-object v0, v1, Lorg/telegram/messenger/ImageReceiver;->roundPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 1397
    iget-object v0, v1, Lorg/telegram/messenger/ImageReceiver;->roundPath:Landroid/graphics/Path;

    iget-object v2, v1, Lorg/telegram/messenger/ImageReceiver;->roundRect:Landroid/graphics/RectF;

    sget-object v3, Lorg/telegram/messenger/ImageReceiver;->radii:[F

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 1398
    iget-object v0, v1, Lorg/telegram/messenger/ImageReceiver;->roundPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    if-eqz v15, :cond_52

    .line 1400
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

    .line 1406
    iget-boolean v7, v1, Lorg/telegram/messenger/ImageReceiver;->isAspectFit:Z

    if-eqz v7, :cond_3a

    .line 1407
    invoke-static {v2, v14}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 1408
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

    .line 1412
    invoke-virtual {v3, v7, v12, v5, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1413
    iget v2, v3, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v5, v3, Landroid/graphics/RectF;->top:F

    float-to-int v5, v5

    iget v7, v3, Landroid/graphics/RectF;->right:F

    float-to-int v7, v7

    iget v12, v3, Landroid/graphics/RectF;->bottom:F

    float-to-int v12, v12

    invoke-virtual {v13, v2, v5, v7, v12}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 1414
    instance-of v2, v13, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v2, :cond_35

    .line 1415
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

    .line 1418
    aget v3, v4, v2

    if-lez v3, :cond_37

    .line 1419
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1420
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

    .line 1421
    :goto_1b
    invoke-virtual {v2}, Landroid/graphics/Path;->rewind()V

    .line 1422
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    add-float/2addr v11, v8

    add-float/2addr v10, v9

    invoke-virtual {v3, v8, v9, v11, v10}, Landroid/graphics/RectF;->set(FFFF)V

    const/4 v5, 0x0

    .line 1423
    aget v7, v4, v5

    int-to-float v5, v7

    aget v7, v4, v29

    int-to-float v7, v7

    sget-object v8, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v3, v5, v7, v8}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 1424
    invoke-virtual {v15, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 1426
    :cond_37
    iget-boolean v2, v1, Lorg/telegram/messenger/ImageReceiver;->isVisible:Z

    if-eqz v2, :cond_39

    .line 1428
    :try_start_2
    invoke-virtual {v13, v0}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 1429
    invoke-direct {v1, v15, v13, v6, v0}, Lorg/telegram/messenger/ImageReceiver;->drawBitmapDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/BitmapDrawable;Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1c

    :catch_2
    move-exception v0

    if-nez v6, :cond_38

    .line 1432
    invoke-direct {v1, v13}, Lorg/telegram/messenger/ImageReceiver;->onBitmapException(Landroid/graphics/drawable/Drawable;)V

    .line 1434
    :cond_38
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1437
    :cond_39
    :goto_1c
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    if-eqz v6, :cond_52

    if-eqz v4, :cond_52

    const/4 v2, 0x0

    .line 1438
    aget v0, v4, v2

    if-lez v0, :cond_52

    .line 1439
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_28

    :cond_3a
    if-eqz v15, :cond_52

    sub-float v4, v2, v14

    .line 1443
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const v7, 0x3727c5ac    # 1.0E-5f

    cmpl-float v4, v4, v7

    if-lez v4, :cond_47

    .line 1444
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1445
    iget-boolean v4, v1, Lorg/telegram/messenger/ImageReceiver;->clip:Z

    if-eqz v4, :cond_3b

    add-float v4, v8, v11

    add-float v7, v9, v10

    .line 1446
    invoke-virtual {v15, v8, v9, v4, v7}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    :cond_3b
    move/from16 v4, p5

    .line 1449
    rem-int/lit16 v7, v4, 0x168

    if-eqz v7, :cond_3d

    .line 1450
    iget-boolean v0, v1, Lorg/telegram/messenger/ImageReceiver;->centerRotation:Z

    if-eqz v0, :cond_3c

    int-to-float v0, v4

    div-float v4, v11, v18

    div-float v1, v10, v18

    .line 1451
    invoke-virtual {v15, v0, v4, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto :goto_1d

    :cond_3c
    int-to-float v0, v4

    const/4 v1, 0x0

    .line 1453
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

    .line 1459
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

    .line 1462
    invoke-virtual {v3, v8, v1, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_1e
    if-eqz v17, :cond_3f

    .line 1465
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

    .line 1475
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

    .line 1469
    :cond_41
    :goto_1f
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float v0, v0, v18

    .line 1470
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float v1, v1, v18

    .line 1471
    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    .line 1472
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

    .line 1473
    invoke-virtual {v13, v4, v5, v1, v0}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    :cond_42
    :goto_20
    move-object/from16 v1, p0

    .line 1478
    iget-boolean v0, v1, Lorg/telegram/messenger/ImageReceiver;->isVisible:Z

    if-eqz v0, :cond_46

    move/from16 v0, v27

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_44

    .line 1481
    :try_start_3
    iget-object v0, v1, Lorg/telegram/messenger/ImageReceiver;->blendMode:Ljava/lang/Object;

    if-eqz v0, :cond_43

    .line 1482
    invoke-virtual {v13}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/messenger/ImageReceiver;->blendMode:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/BlendMode;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    goto :goto_21

    .line 1484
    :cond_43
    invoke-virtual {v13}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    :cond_44
    :goto_21
    move/from16 v5, p3

    .line 1487
    invoke-direct {v1, v15, v13, v6, v5}, Lorg/telegram/messenger/ImageReceiver;->drawBitmapDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/BitmapDrawable;Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_22

    :catch_3
    move-exception v0

    if-nez v6, :cond_45

    .line 1490
    invoke-direct {v1, v13}, Lorg/telegram/messenger/ImageReceiver;->onBitmapException(Landroid/graphics/drawable/Drawable;)V

    .line 1492
    :cond_45
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1496
    :cond_46
    :goto_22
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_28

    :cond_47
    move/from16 v4, p5

    move v5, v0

    move/from16 v0, v27

    const/16 v2, 0x1d

    .line 1498
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1499
    rem-int/lit16 v7, v4, 0x168

    if-eqz v7, :cond_49

    .line 1500
    iget-boolean v12, v1, Lorg/telegram/messenger/ImageReceiver;->centerRotation:Z

    if-eqz v12, :cond_48

    int-to-float v4, v4

    div-float v12, v11, v18

    div-float v14, v10, v18

    .line 1501
    invoke-virtual {v15, v4, v12, v14}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto :goto_23

    :cond_48
    int-to-float v4, v4

    const/4 v12, 0x0

    .line 1503
    invoke-virtual {v15, v4, v12, v12}, Landroid/graphics/Canvas;->rotate(FFF)V

    :cond_49
    :goto_23
    add-float v4, v8, v11

    add-float v12, v9, v10

    .line 1506
    invoke-virtual {v3, v8, v9, v4, v12}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1507
    iget-boolean v4, v1, Lorg/telegram/messenger/ImageReceiver;->isRoundVideo:Z

    if-eqz v4, :cond_4a

    .line 1508
    sget v4, Lorg/telegram/messenger/AndroidUtilities;->roundMessageInset:I

    neg-int v12, v4

    int-to-float v12, v12

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v3, v12, v4}, Landroid/graphics/RectF;->inset(FF)V

    :cond_4a
    if-eqz v17, :cond_4b

    .line 1511
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

    .line 1521
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

    .line 1515
    :cond_4d
    :goto_24
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float v4, v4, v18

    .line 1516
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v7

    div-float v7, v7, v18

    .line 1517
    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v8

    .line 1518
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

    .line 1519
    invoke-virtual {v13, v9, v10, v7, v3}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 1524
    :cond_4e
    :goto_25
    iget-boolean v3, v1, Lorg/telegram/messenger/ImageReceiver;->isVisible:Z

    if-eqz v3, :cond_51

    if-lt v0, v2, :cond_50

    .line 1527
    :try_start_4
    iget-object v0, v1, Lorg/telegram/messenger/ImageReceiver;->blendMode:Ljava/lang/Object;

    if-eqz v0, :cond_4f

    .line 1528
    invoke-virtual {v13}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/messenger/ImageReceiver;->blendMode:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/BlendMode;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    goto :goto_26

    .line 1530
    :cond_4f
    invoke-virtual {v13}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    .line 1534
    :cond_50
    :goto_26
    invoke-direct {v1, v15, v13, v6, v5}, Lorg/telegram/messenger/ImageReceiver;->drawBitmapDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/BitmapDrawable;Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_27

    :catch_4
    move-exception v0

    .line 1536
    invoke-direct {v1, v13}, Lorg/telegram/messenger/ImageReceiver;->onBitmapException(Landroid/graphics/drawable/Drawable;)V

    .line 1537
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1540
    :cond_51
    :goto_27
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_52
    :goto_28
    if-eqz v20, :cond_53

    move-object/from16 v2, p2

    .line 1547
    move-object v0, v2

    check-cast v0, Lorg/telegram/ui/Components/RLottieDrawable;

    const/4 v3, 0x0

    iput-boolean v3, v0, Lorg/telegram/ui/Components/RLottieDrawable;->skipFrameUpdate:Z

    goto/16 :goto_2c

    :cond_53
    move-object/from16 v2, p2

    const/4 v3, 0x0

    .line 1548
    instance-of v0, v2, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v0, :cond_5c

    .line 1549
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

    .line 1553
    iget-boolean v0, v1, Lorg/telegram/messenger/ImageReceiver;->isAspectFit:Z

    if-eqz v0, :cond_57

    .line 1554
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 1555
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 1556
    iget v7, v1, Lorg/telegram/messenger/ImageReceiver;->sideClip:F

    mul-float v12, v7, v18

    sub-float v12, v11, v12

    mul-float v7, v7, v18

    sub-float v7, v10, v7

    const/4 v13, 0x0

    cmpl-float v14, v11, v13

    if-nez v14, :cond_55

    const/high16 v14, 0x3f800000    # 1.0f

    goto :goto_29

    :cond_55
    int-to-float v14, v0

    div-float/2addr v14, v12

    :goto_29
    cmpl-float v12, v10, v13

    if-nez v12, :cond_56

    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_2a

    :cond_56
    int-to-float v12, v4

    div-float v16, v12, v7

    move/from16 v7, v16

    .line 1560
    :goto_2a
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

    .line 1563
    invoke-virtual {v3, v7, v12, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_2b

    :cond_57
    add-float/2addr v11, v8

    add-float/2addr v10, v9

    .line 1565
    invoke-virtual {v3, v8, v9, v11, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1567
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

    .line 1569
    :cond_58
    iget-boolean v0, v1, Lorg/telegram/messenger/ImageReceiver;->isVisible:Z

    if-eqz v0, :cond_5c

    if-eqz v15, :cond_5c

    .line 1571
    :try_start_5
    invoke-virtual/range {p2 .. p3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    if-eqz v6, :cond_5b

    .line 1573
    instance-of v0, v2, Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    if-eqz v0, :cond_5a

    .line 1574
    iget-wide v3, v6, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->time:J

    const-wide/16 v7, 0x0

    cmp-long v0, v3, v7

    if-nez v0, :cond_59

    .line 1576
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    :cond_59
    move-wide v7, v3

    .line 1578
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

    .line 1580
    :cond_5a
    invoke-virtual {v2, v15}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2c

    .line 1583
    :cond_5b
    invoke-virtual {v2, v15}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_2c

    :catch_5
    move-exception v0

    .line 1586
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_5c
    :goto_2c
    return-void
.end method

.method public getAllowStartAnimation()Z
    .locals 1

    .line 2456
    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->allowStartAnimation:Z

    return v0
.end method

.method public getAlpha()F
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 2174
    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->overrideAlpha:F

    return v0
.end method

.method public getAnimatedOrientation()I
    .locals 1

    .line 759
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 760
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

    .line 2534
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v1, :cond_0

    .line 2535
    check-cast v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    return-object v0

    .line 2536
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v1, :cond_1

    .line 2537
    check-cast v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    return-object v0

    .line 2538
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v1, :cond_2

    .line 2539
    check-cast v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    return-object v0

    .line 2540
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v1, :cond_3

    .line 2541
    check-cast v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    return-object v0

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .line 1995
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1996
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->hasBitmap()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1997
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->getAnimatedBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 1999
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2000
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->hasBitmap()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2001
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getAnimatedBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 2002
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_2

    instance-of v1, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-nez v1, :cond_2

    instance-of v1, v0, Lorg/telegram/ui/Components/RLottieDrawable;

    if-nez v1, :cond_2

    .line 2003
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 2004
    :cond_2
    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v2, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_3

    instance-of v2, v1, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-nez v2, :cond_3

    instance-of v2, v0, Lorg/telegram/ui/Components/RLottieDrawable;

    if-nez v2, :cond_3

    .line 2005
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 2006
    :cond_3
    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v2, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_4

    instance-of v2, v1, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-nez v2, :cond_4

    instance-of v0, v0, Lorg/telegram/ui/Components/RLottieDrawable;

    if-nez v0, :cond_4

    .line 2007
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 2008
    :cond_4
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_5

    .line 2009
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

    .line 2116
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 2117
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object v0

    const/16 v1, 0xb4

    if-eqz v0, :cond_2

    .line 2119
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

    .line 2121
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2123
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->getIntrinsicHeight()I

    move-result v0

    return v0

    .line 2125
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_5

    .line 2127
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 2128
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0

    :cond_4
    const/4 v0, 0x1

    return v0

    .line 2132
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

    .line 2017
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object v0

    .line 2018
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 2020
    invoke-virtual {v1}, Lorg/telegram/ui/Components/RLottieDrawable;->hasBitmap()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2021
    invoke-virtual {v1}, Lorg/telegram/ui/Components/RLottieDrawable;->getAnimatedBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    move-object v1, v2

    goto/16 :goto_1

    :cond_0
    if-eqz v0, :cond_2

    .line 2022
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->hasBitmap()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2023
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getAnimatedBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2024
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getOrientation()I

    move-result v3

    if-eqz v3, :cond_1

    .line 2026
    new-instance v0, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;I)V

    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0

    .line 2028
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_3

    instance-of v1, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-nez v1, :cond_3

    instance-of v1, v0, Lorg/telegram/ui/Components/RLottieDrawable;

    if-nez v1, :cond_3

    .line 2029
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2030
    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaKey:Ljava/lang/String;

    goto :goto_1

    .line 2031
    :cond_3
    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v4, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_4

    instance-of v4, v1, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-nez v4, :cond_4

    instance-of v4, v0, Lorg/telegram/ui/Components/RLottieDrawable;

    if-nez v4, :cond_4

    .line 2032
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2033
    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageKey:Ljava/lang/String;

    goto :goto_1

    .line 2034
    :cond_4
    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v4, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_5

    instance-of v4, v1, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-nez v4, :cond_5

    instance-of v0, v0, Lorg/telegram/ui/Components/RLottieDrawable;

    if-nez v0, :cond_5

    .line 2035
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2036
    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    goto :goto_1

    .line 2037
    :cond_5
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_6

    .line 2038
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_6
    move-object v0, v2

    move-object v1, v0

    :goto_1
    if-eqz v0, :cond_7

    .line 2041
    new-instance v2, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

    invoke-direct {v2, v0, v1, v3}, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;I)V

    :cond_7
    return-object v2
.end method

.method public getBitmapWidth()I
    .locals 4

    .line 2096
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 2097
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object v0

    const/16 v1, 0xb4

    if-eqz v0, :cond_2

    .line 2099
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

    .line 2101
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2103
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->getIntrinsicWidth()I

    move-result v0

    return v0

    .line 2105
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_5

    .line 2107
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 2108
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0

    :cond_4
    const/4 v0, 0x1

    return v0

    .line 2112
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

    .line 2343
    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentCacheType:I

    return v0
.end method

.method public getCenterX()F
    .locals 3

    .line 2251
    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->imageX:F

    iget v1, p0, Lorg/telegram/messenger/ImageReceiver;->imageW:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public getCenterY()F
    .locals 3

    .line 2255
    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->imageY:F

    iget v1, p0, Lorg/telegram/messenger/ImageReceiver;->imageH:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public getCurrentAccount()I
    .locals 1

    .line 2436
    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentAccount:I

    return v0
.end method

.method public getCurrentAlpha()F
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1973
    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    return v0
.end method

.method public getDrawRegion()Landroid/graphics/RectF;
    .locals 1

    .line 2295
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->drawRegion:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1982
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    return-object v0

    .line 1984
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    return-object v0

    .line 1986
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    return-object v0

    .line 1988
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

    .line 2049
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    instance-of v1, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-nez v1, :cond_0

    instance-of v1, v0, Lorg/telegram/ui/Components/RLottieDrawable;

    if-nez v1, :cond_0

    .line 2051
    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaKey:Ljava/lang/String;

    goto :goto_1

    .line 2052
    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v3, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_1

    instance-of v3, v1, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-nez v3, :cond_1

    instance-of v3, v0, Lorg/telegram/ui/Components/RLottieDrawable;

    if-nez v3, :cond_1

    .line 2054
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageKey:Ljava/lang/String;

    :goto_0
    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_1

    .line 2055
    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v3, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_2

    instance-of v3, v1, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-nez v3, :cond_2

    instance-of v0, v0, Lorg/telegram/ui/Components/RLottieDrawable;

    if-nez v0, :cond_2

    .line 2057
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    goto :goto_0

    .line 2058
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

    .line 2062
    new-instance v2, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V

    :cond_4
    return-object v2
.end method

.method public getExt()Ljava/lang/String;
    .locals 1

    .line 2287
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentExt:Ljava/lang/String;

    return-object v0
.end method

.method public getFileLoadingPriority()I
    .locals 1

    .line 3007
    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->fileLoadingPriority:I

    return v0
.end method

.method public getImageAspectRatio()F
    .locals 2

    .line 2283
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

    .line 2335
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageFilter:Ljava/lang/String;

    return-object v0
.end method

.method public getImageHeight()F
    .locals 1

    .line 2279
    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->imageH:F

    return v0
.end method

.method public getImageKey()Ljava/lang/String;
    .locals 1

    .line 2303
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageKey:Ljava/lang/String;

    return-object v0
.end method

.method public getImageLocation()Lorg/telegram/messenger/ImageLocation;
    .locals 1

    .line 2323
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageLocation:Lorg/telegram/messenger/ImageLocation;

    return-object v0
.end method

.method public getImageWidth()F
    .locals 1

    .line 2275
    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->imageW:F

    return v0
.end method

.method public getImageX()F
    .locals 1

    .line 2259
    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->imageX:F

    return v0
.end method

.method public getImageX2()F
    .locals 2

    .line 2263
    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->imageX:F

    iget v1, p0, Lorg/telegram/messenger/ImageReceiver;->imageW:F

    add-float/2addr v0, v1

    return v0
.end method

.method public getImageY()F
    .locals 1

    .line 2267
    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->imageY:F

    return v0
.end method

.method public getImageY2()F
    .locals 2

    .line 2271
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

    .line 2951
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->loadingOperations:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;
    .locals 2

    .line 2547
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v1, :cond_0

    .line 2548
    check-cast v0, Lorg/telegram/ui/Components/RLottieDrawable;

    return-object v0

    .line 2549
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v1, :cond_1

    .line 2550
    check-cast v0, Lorg/telegram/ui/Components/RLottieDrawable;

    return-object v0

    .line 2551
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v1, :cond_2

    .line 2552
    check-cast v0, Lorg/telegram/ui/Components/RLottieDrawable;

    return-object v0

    .line 2553
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v1, :cond_3

    .line 2554
    check-cast v0, Lorg/telegram/ui/Components/RLottieDrawable;

    return-object v0

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMediaFilter()Ljava/lang/String;
    .locals 1

    .line 2331
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaFilter:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaKey()Ljava/lang/String;
    .locals 1

    .line 2307
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaKey:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaLocation()Lorg/telegram/messenger/ImageLocation;
    .locals 1

    .line 2319
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaLocation:Lorg/telegram/messenger/ImageLocation;

    return-object v0
.end method

.method public getNewGuid()I
    .locals 1

    .line 2299
    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentGuid:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentGuid:I

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .line 764
    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->imageOrientation:I

    return v0
.end method

.method public getParam()I
    .locals 1

    .line 2584
    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->param:I

    return v0
.end method

.method public getParentObject()Ljava/lang/Object;
    .locals 1

    .line 2404
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentParentObject:Ljava/lang/Object;

    return-object v0
.end method

.method public getParentPosition([I)V
    .locals 1

    .line 2157
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->parentView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 2160
    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->getLocationInWindow([I)V

    return-void
.end method

.method public getParentView()Landroid/view/View;
    .locals 1

    .line 2979
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->parentView:Landroid/view/View;

    return-object v0
.end method

.method public getPressed()Z
    .locals 1

    .line 736
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

    .line 2416
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->qulityThumbDocument:Lorg/telegram/tgnet/TLRPC$Document;

    return-object v0
.end method

.method public getRoundRadius()[I
    .locals 1

    .line 2400
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->roundRadius:[I

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .line 2315
    iget-wide v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentSize:J

    return-wide v0
.end method

.method public getStaticThumb()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 755
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getStrippedLocation()Lorg/telegram/messenger/ImageLocation;
    .locals 1

    .line 351
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->strippedLocation:Lorg/telegram/messenger/ImageLocation;

    return-object v0
.end method

.method protected getTag(I)I
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2561
    iget p1, p0, Lorg/telegram/messenger/ImageReceiver;->thumbTag:I

    return p1

    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 2563
    iget p1, p0, Lorg/telegram/messenger/ImageReceiver;->mediaTag:I

    return p1

    .line 2565
    :cond_1
    iget p1, p0, Lorg/telegram/messenger/ImageReceiver;->imageTag:I

    return p1
.end method

.method public getThumb()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 2068
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getThumbBitmap()Landroid/graphics/Bitmap;
    .locals 2

    .line 2072
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    .line 2073
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 2074
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_1

    .line 2075
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

    .line 2083
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2084
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2085
    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    goto :goto_0

    .line 2086
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_1

    .line 2087
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

    .line 2090
    new-instance v2, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;I)V

    :cond_2
    return-object v2
.end method

.method public getThumbFilter()Ljava/lang/String;
    .locals 1

    .line 2339
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbFilter:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbKey()Ljava/lang/String;
    .locals 1

    .line 2311
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbLocation()Lorg/telegram/messenger/ImageLocation;
    .locals 1

    .line 2327
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbLocation:Lorg/telegram/messenger/ImageLocation;

    return-object v0
.end method

.method public getUniqKeyPrefix()Ljava/lang/String;
    .locals 1

    .line 2943
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->uniqKeyPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public getVisible()Z
    .locals 1

    .line 2164
    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->isVisible:Z

    return v0
.end method

.method public hasBitmapImage()Z
    .locals 1

    .line 2186
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

    .line 2190
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

    .line 2182
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

    .line 2194
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

    .line 2198
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

    .line 1061
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v1, :cond_0

    goto :goto_1

    .line 1067
    :cond_0
    instance-of v0, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v0, :cond_1

    .line 1068
    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->bufferedFrame:I

    add-int/2addr p1, v0

    .line 1069
    iput p1, p0, Lorg/telegram/messenger/ImageReceiver;->bufferedFrame:I

    :goto_0
    if-eq v0, p1, :cond_1

    .line 1072
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

    .line 2146
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->parentView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 2149
    :cond_0
    iget-boolean v1, p0, Lorg/telegram/messenger/ImageReceiver;->invalidateAll:Z

    if-eqz v1, :cond_1

    .line 2150
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 2152
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

    .line 2500
    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->allowStartAnimation:Z

    return v0
.end method

.method public isAnimationRunning()Z
    .locals 1

    .line 2529
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2530
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

    .line 2206
    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->isAspectFit:Z

    return v0
.end method

.method public isAttachedToWindow()Z
    .locals 1

    .line 2983
    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->attachedToWindow:Z

    return v0
.end method

.method public isCrossfadingWithOldImage()Z
    .locals 1

    .line 2424
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

    .line 2432
    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentKeyQuality:Z

    return v0
.end method

.method public isForceLoding()Z
    .locals 1

    .line 339
    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->forceLoding:Z

    return v0
.end method

.method public isForcePreview()Z
    .locals 1

    .line 2355
    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->forcePreview:Z

    return v0
.end method

.method public isInsideImage(FF)Z
    .locals 2

    .line 2291
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

    .line 2428
    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->needsQualityThumb:Z

    return v0
.end method

.method public isShouldGenerateQualityThumb()Z
    .locals 1

    .line 2444
    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->shouldGenerateQualityThumb:Z

    return v0
.end method

.method public moveImageToFront()V
    .locals 2

    .line 2955
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageLoader;->moveToFront(Ljava/lang/String;)V

    .line 2956
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageLoader;->moveToFront(Ljava/lang/String;)V

    return-void
.end method

.method public moveLottieToFront()V
    .locals 5

    .line 2963
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lorg/telegram/ui/Components/RLottieDrawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2964
    move-object v2, v0

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 2965
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaKey:Ljava/lang/String;

    :goto_0
    move-object v4, v2

    move-object v2, v0

    move-object v0, v4

    goto :goto_1

    .line 2966
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v1, :cond_1

    .line 2967
    move-object v2, v0

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 2968
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageKey:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_1
    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 2971
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageLoader;->moveToFront(Ljava/lang/String;)V

    .line 2972
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/ImageLoader;->isInMemCache(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2973
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

    const/4 v0, 0x1

    .line 1079
    iput-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->attachedToWindow:Z

    .line 1080
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/NotificationCenter;->getCurrentHeavyOperationFlags()I

    move-result v1

    iput v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentOpenedLayerFlags:I

    .line 1081
    iget v2, p0, Lorg/telegram/messenger/ImageReceiver;->currentLayerNum:I

    not-int v2, v2

    and-int/2addr v1, v2

    iput v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentOpenedLayerFlags:I

    .line 1082
    iget-boolean v1, p0, Lorg/telegram/messenger/ImageReceiver;->ignoreNotifications:Z

    if-nez v1, :cond_0

    .line 1083
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->didReplacedPhotoInMemCache:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1084
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->stopAllHeavyOperations:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1085
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->startAllHeavyOperations:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1087
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->setBackupImage()Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 1090
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1092
    invoke-virtual {v1, p0}, Lorg/telegram/ui/Components/RLottieDrawable;->addParentView(Lorg/telegram/messenger/ImageReceiver;)V

    .line 1093
    iget-boolean v2, p0, Lorg/telegram/messenger/ImageReceiver;->allowLottieVibration:Z

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->setAllowVibration(Z)V

    :cond_2
    if-eqz v1, :cond_4

    .line 1095
    iget-boolean v2, p0, Lorg/telegram/messenger/ImageReceiver;->allowStartLottieAnimation:Z

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RLottieDrawable;->isHeavyDrawable()Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lorg/telegram/messenger/ImageReceiver;->currentOpenedLayerFlags:I

    if-nez v2, :cond_4

    .line 1096
    :cond_3
    invoke-virtual {v1}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    .line 1098
    :cond_4
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1100
    invoke-virtual {v1, p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->addParent(Lorg/telegram/messenger/ImageReceiver;)V

    :cond_5
    if-eqz v1, :cond_6

    .line 1102
    iget-boolean v2, p0, Lorg/telegram/messenger/ImageReceiver;->allowStartAnimation:Z

    if-eqz v2, :cond_6

    iget v2, p0, Lorg/telegram/messenger/ImageReceiver;->currentOpenedLayerFlags:I

    if-nez v2, :cond_6

    .line 1103
    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->checkRepeat()V

    .line 1104
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->invalidate()V

    .line 1106
    :cond_6
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/NotificationCenter;->isAnimationInProgress()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    .line 1107
    sget v1, Lorg/telegram/messenger/NotificationCenter;->stopAllHeavyOperations:I

    iget v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentAccount:I

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v4, 0x200

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v2

    invoke-virtual {p0, v1, v3, v0}, Lorg/telegram/messenger/ImageReceiver;->didReceivedNotification(II[Ljava/lang/Object;)V

    .line 1109
    :cond_7
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lorg/telegram/ui/Components/AttachableDrawable;

    if-eqz v1, :cond_8

    .line 1110
    check-cast v0, Lorg/telegram/ui/Components/AttachableDrawable;

    invoke-interface {v0, p0}, Lorg/telegram/ui/Components/AttachableDrawable;->onAttachedToWindow(Lorg/telegram/messenger/ImageReceiver;)V

    :cond_8
    return v2
.end method

.method public onDetachedFromWindow()V
    .locals 4

    const/4 v0, 0x0

    .line 994
    iput-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->attachedToWindow:Z

    .line 995
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageLocation:Lorg/telegram/messenger/ImageLocation;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaLocation:Lorg/telegram/messenger/ImageLocation;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbLocation:Lorg/telegram/messenger/ImageLocation;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 996
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    if-nez v0, :cond_1

    .line 997
    new-instance v0, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    invoke-direct {v0, v1}, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;-><init>(Lorg/telegram/messenger/ImageReceiver$1;)V

    iput-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    .line 999
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaLocation:Lorg/telegram/messenger/ImageLocation;

    iput-object v2, v0, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->mediaLocation:Lorg/telegram/messenger/ImageLocation;

    .line 1000
    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaFilter:Ljava/lang/String;

    iput-object v2, v0, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->mediaFilter:Ljava/lang/String;

    .line 1001
    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageLocation:Lorg/telegram/messenger/ImageLocation;

    iput-object v2, v0, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->imageLocation:Lorg/telegram/messenger/ImageLocation;

    .line 1002
    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageFilter:Ljava/lang/String;

    iput-object v2, v0, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->imageFilter:Ljava/lang/String;

    .line 1003
    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbLocation:Lorg/telegram/messenger/ImageLocation;

    iput-object v2, v0, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->thumbLocation:Lorg/telegram/messenger/ImageLocation;

    .line 1004
    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbFilter:Ljava/lang/String;

    iput-object v2, v0, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->thumbFilter:Ljava/lang/String;

    .line 1005
    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v2, v0, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->thumb:Landroid/graphics/drawable/Drawable;

    .line 1006
    iget-wide v2, p0, Lorg/telegram/messenger/ImageReceiver;->currentSize:J

    iput-wide v2, v0, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->size:J

    .line 1007
    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->currentExt:Ljava/lang/String;

    iput-object v2, v0, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->ext:Ljava/lang/String;

    .line 1008
    iget v2, p0, Lorg/telegram/messenger/ImageReceiver;->currentCacheType:I

    iput v2, v0, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->cacheType:I

    .line 1009
    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->currentParentObject:Ljava/lang/Object;

    iput-object v2, v0, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->parentObject:Ljava/lang/Object;

    .line 1011
    :cond_2
    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->ignoreNotifications:Z

    if-nez v0, :cond_3

    .line 1012
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->didReplacedPhotoInMemCache:I

    invoke-virtual {v0, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1013
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->stopAllHeavyOperations:I

    invoke-virtual {v0, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1014
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->startAllHeavyOperations:I

    invoke-virtual {v0, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1016
    :cond_3
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v2, v0, Lorg/telegram/ui/Components/AttachableDrawable;

    if-eqz v2, :cond_4

    .line 1017
    check-cast v0, Lorg/telegram/ui/Components/AttachableDrawable;

    invoke-interface {v0, p0}, Lorg/telegram/ui/Components/AttachableDrawable;->onDetachedFromWindow(Lorg/telegram/messenger/ImageReceiver;)V

    .line 1020
    :cond_4
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    .line 1021
    invoke-direct {p0, v1}, Lorg/telegram/messenger/ImageReceiver;->setStaticDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1022
    iput-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->thumbShader:Landroid/graphics/BitmapShader;

    .line 1023
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->roundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1025
    :cond_5
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->clearImage()V

    .line 1026
    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->isPressed:I

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 1027
    iput v0, p0, Lorg/telegram/messenger/ImageReceiver;->pressedProgress:F

    .line 1030
    :cond_6
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 1032
    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->removeParent(Lorg/telegram/messenger/ImageReceiver;)V

    .line 1034
    :cond_7
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 1036
    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/RLottieDrawable;->removeParentView(Lorg/telegram/messenger/ImageReceiver;)V

    :cond_8
    return-void
.end method

.method public setAllowDecodeSingleFrame(Z)V
    .locals 0

    .line 2464
    iput-boolean p1, p0, Lorg/telegram/messenger/ImageReceiver;->allowDecodeSingleFrame:Z

    return-void
.end method

.method public setAllowLoadingOnAttachedOnly(Z)V
    .locals 0

    .line 2991
    iput-boolean p1, p0, Lorg/telegram/messenger/ImageReceiver;->allowLoadingOnAttachedOnly:Z

    return-void
.end method

.method public setAllowLottieVibration(Z)V
    .locals 0

    .line 2452
    iput-boolean p1, p0, Lorg/telegram/messenger/ImageReceiver;->allowLottieVibration:Z

    return-void
.end method

.method public setAllowStartAnimation(Z)V
    .locals 0

    .line 2448
    iput-boolean p1, p0, Lorg/telegram/messenger/ImageReceiver;->allowStartAnimation:Z

    return-void
.end method

.method public setAllowStartLottieAnimation(Z)V
    .locals 0

    .line 2460
    iput-boolean p1, p0, Lorg/telegram/messenger/ImageReceiver;->allowStartLottieAnimation:Z

    return-void
.end method

.method public setAlpha(F)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 2169
    iput p1, p0, Lorg/telegram/messenger/ImageReceiver;->overrideAlpha:F

    return-void
.end method

.method public setAspectFit(Z)V
    .locals 0

    .line 2202
    iput-boolean p1, p0, Lorg/telegram/messenger/ImageReceiver;->isAspectFit:Z

    return-void
.end method

.method public setAutoRepeat(I)V
    .locals 1

    .line 2468
    iput p1, p0, Lorg/telegram/messenger/ImageReceiver;->autoRepeat:I

    .line 2469
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2471
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/RLottieDrawable;->setAutoRepeat(I)V

    :cond_0
    return-void
.end method

.method public setAutoRepeatCount(I)V
    .locals 1

    .line 2476
    iput p1, p0, Lorg/telegram/messenger/ImageReceiver;->autoRepeatCount:I

    .line 2477
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2478
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/RLottieDrawable;->setAutoRepeatCount(I)V

    goto :goto_0

    .line 2480
    :cond_0
    iput p1, p0, Lorg/telegram/messenger/ImageReceiver;->animatedFileDrawableRepeatMaxCount:I

    .line 2481
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2482
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

    .line 2488
    iput-wide p1, p0, Lorg/telegram/messenger/ImageReceiver;->autoRepeatTimeout:J

    .line 2489
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2491
    iget-wide v0, p0, Lorg/telegram/messenger/ImageReceiver;->autoRepeatTimeout:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setAutoRepeatTimeout(J)V

    :cond_0
    return-void
.end method

.method public setBackupImage()Z
    .locals 15

    .line 1041
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    if-eqz v0, :cond_3

    invoke-static {v0}, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->access$300(Lorg/telegram/messenger/ImageReceiver$SetImageBackup;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1042
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    const/4 v1, 0x0

    .line 1043
    iput-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    .line 1044
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

    .line 1045
    invoke-static {v0}, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->access$200(Lorg/telegram/messenger/ImageReceiver$SetImageBackup;)V

    .line 1046
    iput-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    .line 1047
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1049
    iget-boolean v1, p0, Lorg/telegram/messenger/ImageReceiver;->allowLottieVibration:Z

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setAllowVibration(Z)V

    :cond_0
    if-eqz v0, :cond_2

    .line 1051
    iget-boolean v1, p0, Lorg/telegram/messenger/ImageReceiver;->allowStartLottieAnimation:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->isHeavyDrawable()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentOpenedLayerFlags:I

    if-nez v1, :cond_2

    .line 1052
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

    .line 1626
    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->blendMode:Ljava/lang/Object;

    .line 1627
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->invalidate()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 724
    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->colorFilter:Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setCrossfadeAlpha(B)V
    .locals 0

    .line 2178
    iput-byte p1, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeAlpha:B

    return-void
.end method

.method public setCrossfadeByScale(F)V
    .locals 0

    .line 2856
    iput p1, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeByScale:F

    return-void
.end method

.method public setCrossfadeDuration(I)V
    .locals 0

    .line 2852
    iput p1, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeDuration:I

    return-void
.end method

.method public setCrossfadeWithOldImage(Z)V
    .locals 0

    .line 2420
    iput-boolean p1, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeWithOldImage:Z

    return-void
.end method

.method public setCurrentAccount(I)V
    .locals 0

    .line 2396
    iput p1, p0, Lorg/telegram/messenger/ImageReceiver;->currentAccount:I

    return-void
.end method

.method public setCurrentAlpha(F)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1978
    iput p1, p0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    return-void
.end method

.method public setCurrentTime(J)V
    .locals 0

    .line 2999
    iput-wide p1, p0, Lorg/telegram/messenger/ImageReceiver;->currentTime:J

    return-void
.end method

.method public setDelegate(Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;)V
    .locals 0

    .line 728
    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->delegate:Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;

    return-void
.end method

.method public setDrawInBackgroundThread(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;I)Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;
    .locals 3

    if-nez p1, :cond_0

    .line 3012
    new-instance p1, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;

    invoke-direct {p1}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;-><init>()V

    .line 3014
    :cond_0
    iput p2, p1, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->threadIndex:I

    .line 3015
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->access$602(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;Lorg/telegram/ui/Components/AnimatedFileDrawable;)Lorg/telegram/ui/Components/AnimatedFileDrawable;

    .line 3016
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->access$702(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;Lorg/telegram/ui/Components/RLottieDrawable;)Lorg/telegram/ui/Components/RLottieDrawable;

    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 3018
    invoke-static {p1}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->access$400(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)[I

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->roundRadius:[I

    aget v2, v2, v0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3020
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p1, v0}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->access$802(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 3021
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->mediaShader:Landroid/graphics/BitmapShader;

    invoke-static {p1, v0}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->access$902(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;Landroid/graphics/BitmapShader;)Landroid/graphics/BitmapShader;

    .line 3022
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p1, v0}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->access$1002(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 3023
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->imageShader:Landroid/graphics/BitmapShader;

    invoke-static {p1, v0}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->access$1102(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;Landroid/graphics/BitmapShader;)Landroid/graphics/BitmapShader;

    .line 3024
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p1, v0}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->access$1602(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 3025
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->thumbShader:Landroid/graphics/BitmapShader;

    invoke-static {p1, v0}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->access$1202(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;Landroid/graphics/BitmapShader;)Landroid/graphics/BitmapShader;

    .line 3026
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p1, v0}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->access$1702(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 3027
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeImage:Landroid/graphics/drawable/Drawable;

    invoke-static {p1, v0}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->access$1302(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 3028
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->colorFilter:Landroid/graphics/ColorFilter;

    iput-object v0, p1, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->colorFilter:Landroid/graphics/ColorFilter;

    .line 3029
    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadingWithThumb:Z

    invoke-static {p1, v0}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->access$1502(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;Z)Z

    .line 3030
    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeWithOldImage:Z

    invoke-static {p1, v0}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->access$1402(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;Z)Z

    .line 3031
    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    invoke-static {p1, v0}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->access$1802(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;F)F

    .line 3032
    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->previousAlpha:F

    invoke-static {p1, v0}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->access$1902(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;F)F

    .line 3033
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeShader:Landroid/graphics/BitmapShader;

    invoke-static {p1, v0}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->access$2002(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;Landroid/graphics/BitmapShader;)Landroid/graphics/BitmapShader;

    .line 3034
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

    .line 3035
    iget p2, p0, Lorg/telegram/messenger/ImageReceiver;->imageX:F

    iput p2, p1, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->imageX:F

    .line 3036
    iget p2, p0, Lorg/telegram/messenger/ImageReceiver;->imageY:F

    iput p2, p1, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->imageY:F

    .line 3037
    iget p2, p0, Lorg/telegram/messenger/ImageReceiver;->imageW:F

    iput p2, p1, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->imageW:F

    .line 3038
    iget p2, p0, Lorg/telegram/messenger/ImageReceiver;->imageH:F

    iput p2, p1, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->imageH:F

    .line 3039
    iget p2, p0, Lorg/telegram/messenger/ImageReceiver;->overrideAlpha:F

    iput p2, p1, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->overrideAlpha:F

    return-object p1
.end method

.method public setFileLoadingPriority(I)V
    .locals 0

    .line 3003
    iput p1, p0, Lorg/telegram/messenger/ImageReceiver;->fileLoadingPriority:I

    return-void
.end method

.method public setForUserOrChat(Lorg/telegram/tgnet/TLObject;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x0

    .line 375
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

    .line 378
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

    .line 385
    invoke-virtual {v13, v2}, Lorg/telegram/messenger/ImageReceiver;->setUseRoundForThumbDrawable(Z)V

    .line 391
    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$User;

    const/4 v14, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v3, :cond_c

    .line 392
    move-object v3, v0

    check-cast v3, Lorg/telegram/tgnet/TLRPC$User;

    .line 393
    iget-boolean v6, v3, Lorg/telegram/tgnet/TLRPC$User;->premium:Z

    .line 394
    iget-object v7, v3, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v7, :cond_b

    .line 395
    iget-object v8, v7, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->strippedBitmap:Landroid/graphics/drawable/BitmapDrawable;

    .line 396
    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->stripped_thumb:[B

    if-eqz v7, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    if-ne v1, v14, :cond_3

    .line 398
    iget v9, v13, Lorg/telegram/messenger/ImageReceiver;->currentAccount:I

    invoke-static {v9}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    iget-wide v14, v3, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v9, v14, v15}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 400
    iget-object v10, v3, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-boolean v10, v10, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->personal:Z

    if-eqz v10, :cond_2

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$UserFull;->personal_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    goto :goto_2

    :cond_2
    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$UserFull;->profile_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    :goto_2
    if-eqz v9, :cond_3

    .line 402
    invoke-static {v9}, Lorg/telegram/messenger/FileLoader;->getVectorMarkupVideoSize(Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/tgnet/TLRPC$VideoSize;

    move-result-object v9

    goto :goto_3

    :cond_3
    move-object v9, v4

    :goto_3
    if-nez v9, :cond_a

    if-eqz p4, :cond_a

    .line 406
    iget v10, v13, Lorg/telegram/messenger/ImageReceiver;->currentAccount:I

    invoke-static {v10}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v10

    invoke-virtual {v10, v3}, Lorg/telegram/messenger/MessagesController;->isPremiumUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v10

    if-eqz v10, :cond_a

    iget-object v10, v3, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-boolean v10, v10, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->has_video:Z

    if-eqz v10, :cond_a

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getLiteMode()Lorg/telegram/messenger/SharedConfig$LiteMode;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/messenger/SharedConfig$LiteMode;->enabled()Z

    move-result v10

    if-nez v10, :cond_a

    iget v10, v13, Lorg/telegram/messenger/ImageReceiver;->currentAccount:I

    invoke-static {v10}, Lorg/fork/controller/ForkCommonController;->getInstance(I)Lorg/fork/controller/ForkCommonController;

    move-result-object v10

    invoke-virtual {v10}, Lorg/fork/controller/ForkCommonController;->isPremiumAnimateAvatars()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 407
    iget v10, v13, Lorg/telegram/messenger/ImageReceiver;->currentAccount:I

    invoke-static {v10}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v10

    iget-wide v14, v3, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v10, v14, v15}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v10

    if-nez v10, :cond_4

    .line 409
    iget v10, v13, Lorg/telegram/messenger/ImageReceiver;->currentAccount:I

    invoke-static {v10}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v10

    iget v12, v13, Lorg/telegram/messenger/ImageReceiver;->currentGuid:I

    invoke-virtual {v10, v3, v12, v5}, Lorg/telegram/messenger/MessagesController;->loadFullUser(Lorg/telegram/tgnet/TLRPC$User;IZ)V

    goto :goto_6

    .line 411
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

    .line 413
    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getVectorMarkupVideoSize(Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/tgnet/TLRPC$VideoSize;

    move-result-object v9

    if-nez v9, :cond_a

    .line 415
    iget-object v10, v3, Lorg/telegram/tgnet/TLRPC$Photo;->video_sizes:Ljava/util/ArrayList;

    if-eqz v10, :cond_a

    .line 416
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_a

    const/16 v4, 0x64

    .line 417
    invoke-static {v10, v4}, Lorg/telegram/messenger/FileLoader;->getClosestVideoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$VideoSize;

    move-result-object v4

    .line 418
    :goto_5
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v5, v12, :cond_9

    .line 419
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/tgnet/TLRPC$VideoSize;

    .line 420
    iget-object v14, v12, Lorg/telegram/tgnet/TLRPC$VideoSize;->type:Ljava/lang/String;

    const-string v15, "p"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    move-object v4, v12

    .line 423
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

    .line 427
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

    .line 434
    :cond_c
    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v3, :cond_e

    .line 435
    move-object v3, v0

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 436
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    if-eqz v3, :cond_e

    .line 437
    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->strippedBitmap:Landroid/graphics/drawable/BitmapDrawable;

    .line 438
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->stripped_thumb:[B

    if-eqz v3, :cond_d

    const/4 v3, 0x1

    goto :goto_8

    :cond_d
    const/4 v3, 0x0

    :goto_8
    move-object v9, v4

    move-object v7, v6

    goto :goto_9

    :cond_e
    move-object v7, v4

    move-object v9, v7

    const/4 v3, 0x0

    :goto_9
    if-eqz v9, :cond_f

    if-eqz v1, :cond_f

    .line 442
    new-instance v0, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;

    invoke-direct {v0, v9, v5, v1}, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;-><init>(Lorg/telegram/tgnet/TLRPC$VideoSize;ZI)V

    .line 443
    invoke-virtual {v13, v0}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_a

    .line 445
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

    .line 448
    invoke-virtual/range {v0 .. v12}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    const/4 v0, 0x3

    .line 449
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

    .line 452
    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    goto :goto_a

    :cond_11
    if-eqz v3, :cond_12

    const/4 v1, 0x2

    .line 454
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

    .line 456
    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    :goto_a
    return-void
.end method

.method public setForceCrossfade(Z)V
    .locals 0

    .line 2351
    iput-boolean p1, p0, Lorg/telegram/messenger/ImageReceiver;->forceCrossfade:Z

    return-void
.end method

.method public setForceLoading(Z)V
    .locals 0

    .line 335
    iput-boolean p1, p0, Lorg/telegram/messenger/ImageReceiver;->forceLoding:Z

    return-void
.end method

.method public setForcePreview(Z)V
    .locals 0

    .line 2347
    iput-boolean p1, p0, Lorg/telegram/messenger/ImageReceiver;->forcePreview:Z

    return-void
.end method

.method public setGradientBitmap(Landroid/graphics/Bitmap;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 1632
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->gradientShader:Landroid/graphics/BitmapShader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->gradientBitmap:Landroid/graphics/Bitmap;

    if-eq v0, p1, :cond_1

    .line 1633
    :cond_0
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p1, v1, v1}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->gradientShader:Landroid/graphics/BitmapShader;

    .line 1634
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lorg/telegram/messenger/ImageReceiver;->updateDrawableRadius(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    const/4 v0, 0x1

    .line 1636
    iput-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->isRoundRect:Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 1638
    iput-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->gradientShader:Landroid/graphics/BitmapShader;

    .line 1639
    iput-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->composeShader:Landroid/graphics/ComposeShader;

    .line 1640
    iput-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->legacyShader:Landroid/graphics/BitmapShader;

    .line 1641
    iput-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->legacyCanvas:Landroid/graphics/Canvas;

    .line 1642
    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->legacyBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    .line 1643
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1644
    iput-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->legacyBitmap:Landroid/graphics/Bitmap;

    .line 1647
    :cond_3
    :goto_0
    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->gradientBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setIgnoreImageSet(Z)V
    .locals 0

    .line 347
    iput-boolean p1, p0, Lorg/telegram/messenger/ImageReceiver;->ignoreImageSet:Z

    return-void
.end method

.method public setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;J)V
    .locals 11

    .line 363
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

    .line 359
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

    .line 355
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

    .line 371
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

    .line 468
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

    .line 464
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

    .line 367
    invoke-virtual/range {v0 .. v10}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method

.method public setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V
    .locals 20

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

    .line 472
    iget-boolean v13, v0, Lorg/telegram/messenger/ImageReceiver;->allowLoadingOnAttachedOnly:Z

    const/4 v14, 0x0

    if-eqz v13, :cond_1

    iget-boolean v13, v0, Lorg/telegram/messenger/ImageReceiver;->attachedToWindow:Z

    if-nez v13, :cond_1

    .line 473
    iget-object v13, v0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    if-nez v13, :cond_0

    .line 474
    new-instance v13, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    invoke-direct {v13, v14}, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;-><init>(Lorg/telegram/messenger/ImageReceiver$1;)V

    iput-object v13, v0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    .line 476
    :cond_0
    iget-object v13, v0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    iput-object v1, v13, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->mediaLocation:Lorg/telegram/messenger/ImageLocation;

    .line 477
    iput-object v2, v13, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->mediaFilter:Ljava/lang/String;

    .line 478
    iput-object v3, v13, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->imageLocation:Lorg/telegram/messenger/ImageLocation;

    .line 479
    iput-object v4, v13, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->imageFilter:Ljava/lang/String;

    .line 480
    iput-object v5, v13, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->thumbLocation:Lorg/telegram/messenger/ImageLocation;

    .line 481
    iput-object v6, v13, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->thumbFilter:Ljava/lang/String;

    .line 482
    iput-object v7, v13, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->thumb:Landroid/graphics/drawable/Drawable;

    .line 483
    iput-wide v8, v13, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->size:J

    .line 484
    iput-object v10, v13, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->ext:Ljava/lang/String;

    .line 485
    iput v12, v13, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->cacheType:I

    .line 486
    iput-object v11, v13, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->parentObject:Ljava/lang/Object;

    return-void

    .line 489
    :cond_1
    iget-boolean v13, v0, Lorg/telegram/messenger/ImageReceiver;->ignoreImageSet:Z

    if-eqz v13, :cond_2

    return-void

    .line 492
    :cond_2
    iget-boolean v13, v0, Lorg/telegram/messenger/ImageReceiver;->crossfadeWithOldImage:Z

    if-eqz v13, :cond_3

    iget-object v13, v0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    if-eqz v13, :cond_3

    invoke-static {v13}, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->access$100(Lorg/telegram/messenger/ImageReceiver$SetImageBackup;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 493
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/ImageReceiver;->setBackupImage()Z

    .line 495
    :cond_3
    iget-object v13, v0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    if-eqz v13, :cond_4

    .line 496
    invoke-static {v13}, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->access$200(Lorg/telegram/messenger/ImageReceiver$SetImageBackup;)V

    :cond_4
    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-nez v3, :cond_c

    if-nez v5, :cond_c

    if-nez v1, :cond_c

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_5

    const/4 v2, 0x0

    .line 501
    invoke-direct {v0, v2, v1}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    .line 503
    iput-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->currentImageLocation:Lorg/telegram/messenger/ImageLocation;

    .line 504
    iput-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->currentImageFilter:Ljava/lang/String;

    .line 505
    iput-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->currentImageKey:Ljava/lang/String;

    .line 506
    iput-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->currentMediaLocation:Lorg/telegram/messenger/ImageLocation;

    .line 507
    iput-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->currentMediaFilter:Ljava/lang/String;

    .line 508
    iput-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->currentMediaKey:Ljava/lang/String;

    .line 509
    iput-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->currentThumbLocation:Lorg/telegram/messenger/ImageLocation;

    .line 510
    iput-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->currentThumbFilter:Ljava/lang/String;

    .line 511
    iput-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    .line 513
    iput-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->currentMediaDrawable:Landroid/graphics/drawable/Drawable;

    .line 514
    iput-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->mediaShader:Landroid/graphics/BitmapShader;

    .line 515
    iput-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->currentImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 516
    iput-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->imageShader:Landroid/graphics/BitmapShader;

    .line 517
    iput-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->composeShader:Landroid/graphics/ComposeShader;

    .line 518
    iput-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->thumbShader:Landroid/graphics/BitmapShader;

    .line 519
    iput-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->crossfadeShader:Landroid/graphics/BitmapShader;

    .line 520
    iput-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->legacyShader:Landroid/graphics/BitmapShader;

    .line 521
    iput-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->legacyCanvas:Landroid/graphics/Canvas;

    .line 522
    iget-object v1, v0, Lorg/telegram/messenger/ImageReceiver;->legacyBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_6

    .line 523
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 524
    iput-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->legacyBitmap:Landroid/graphics/Bitmap;

    .line 527
    :cond_6
    iput-object v10, v0, Lorg/telegram/messenger/ImageReceiver;->currentExt:Ljava/lang/String;

    .line 528
    iput-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->currentParentObject:Ljava/lang/Object;

    .line 529
    iput v15, v0, Lorg/telegram/messenger/ImageReceiver;->currentCacheType:I

    .line 530
    iget-object v1, v0, Lorg/telegram/messenger/ImageReceiver;->roundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 531
    invoke-direct {v0, v7}, Lorg/telegram/messenger/ImageReceiver;->setStaticDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 532
    iput v13, v0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    .line 533
    iput v13, v0, Lorg/telegram/messenger/ImageReceiver;->previousAlpha:F

    const-wide/16 v1, 0x0

    .line 534
    iput-wide v1, v0, Lorg/telegram/messenger/ImageReceiver;->currentSize:J

    .line 536
    iget-object v1, v0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v2, v1, Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    if-eqz v2, :cond_7

    .line 537
    check-cast v1, Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->setParent(Lorg/telegram/messenger/ImageReceiver;)V

    .line 539
    :cond_7
    iget-object v1, v0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->updateDrawableRadius(Landroid/graphics/drawable/Drawable;)V

    .line 541
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v1

    invoke-virtual {v1, v0, v14}, Lorg/telegram/messenger/ImageLoader;->cancelLoadingForImageReceiver(Lorg/telegram/messenger/ImageReceiver;Z)V

    .line 542
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/ImageReceiver;->invalidate()V

    .line 543
    iget-object v1, v0, Lorg/telegram/messenger/ImageReceiver;->delegate:Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;

    if-eqz v1, :cond_b

    .line 544
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
    const/4 v3, 0x0

    goto :goto_2

    :cond_9
    :goto_1
    const/4 v3, 0x1

    :goto_2
    if-nez v2, :cond_a

    iget-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->currentMediaDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_a

    goto :goto_3

    :cond_a
    const/4 v14, 0x0

    :goto_3
    invoke-interface {v1, v0, v3, v14, v15}, Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;->didSetImage(Lorg/telegram/messenger/ImageReceiver;ZZZ)V

    :cond_b
    return-void

    :cond_c
    if-eqz v3, :cond_d

    const/4 v13, 0x0

    .line 548
    invoke-virtual {v3, v11, v13, v15}, Lorg/telegram/messenger/ImageLocation;->getKey(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v16

    goto :goto_4

    :cond_d
    const/16 v16, 0x0

    :goto_4
    if-nez v16, :cond_e

    if-eqz v3, :cond_e

    const/4 v3, 0x0

    .line 552
    :cond_e
    iget v13, v0, Lorg/telegram/messenger/ImageReceiver;->autoRepeatCount:I

    invoke-static {v13, v15}, Ljava/lang/Math;->max(II)I

    move-result v13

    iput v13, v0, Lorg/telegram/messenger/ImageReceiver;->animatedFileDrawableRepeatMaxCount:I

    .line 553
    iput-boolean v15, v0, Lorg/telegram/messenger/ImageReceiver;->currentKeyQuality:Z

    if-nez v16, :cond_11

    .line 554
    iget-boolean v13, v0, Lorg/telegram/messenger/ImageReceiver;->needsQualityThumb:Z

    if-eqz v13, :cond_11

    instance-of v13, v11, Lorg/telegram/messenger/MessageObject;

    if-nez v13, :cond_f

    iget-object v13, v0, Lorg/telegram/messenger/ImageReceiver;->qulityThumbDocument:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v13, :cond_11

    .line 555
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

    .line 556
    iget v15, v13, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    if-eqz v15, :cond_11

    iget-wide v14, v13, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    const-wide/16 v17, 0x0

    cmp-long v19, v14, v17

    if-eqz v19, :cond_11

    .line 557
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

    .line 558
    iput-boolean v12, v0, Lorg/telegram/messenger/ImageReceiver;->currentKeyQuality:Z

    :cond_11
    move-object/from16 v12, v16

    const-string v13, "@"

    if-eqz v12, :cond_12

    if-eqz v4, :cond_12

    .line 562
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 565
    :cond_12
    iget-object v14, v0, Lorg/telegram/messenger/ImageReceiver;->uniqKeyPrefix:Ljava/lang/String;

    if-eqz v14, :cond_13

    .line 566
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

    .line 569
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

    .line 574
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 577
    :cond_16
    iget-object v14, v0, Lorg/telegram/messenger/ImageReceiver;->uniqKeyPrefix:Ljava/lang/String;

    if-eqz v14, :cond_17

    .line 578
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Lorg/telegram/messenger/ImageReceiver;->uniqKeyPrefix:Ljava/lang/String;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    :cond_17
    if-nez v15, :cond_18

    .line 581
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

    .line 582
    :cond_19
    iget-object v7, v0, Lorg/telegram/messenger/ImageReceiver;->delegate:Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;

    if-eqz v7, :cond_1d

    .line 583
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

    .line 585
    :cond_1d
    iget-boolean v7, v0, Lorg/telegram/messenger/ImageReceiver;->canceledLoading:Z

    if-nez v7, :cond_1e

    return-void

    .line 591
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

    .line 600
    invoke-virtual {v5, v11, v7, v8}, Lorg/telegram/messenger/ImageLocation;->getKey(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v7

    goto :goto_b

    :cond_22
    const/4 v7, 0x0

    :goto_b
    if-eqz v7, :cond_23

    if-eqz v6, :cond_23

    .line 602
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 605
    :cond_23
    iget-boolean v8, v0, Lorg/telegram/messenger/ImageReceiver;->crossfadeWithOldImage:Z

    const/4 v9, 0x3

    const/4 v13, 0x2

    if-eqz v8, :cond_2a

    .line 606
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

    .line 607
    iget-object v8, v0, Lorg/telegram/messenger/ImageReceiver;->currentParentObject:Ljava/lang/Object;

    move-object v14, v8

    check-cast v14, Lorg/telegram/messenger/MessageObject;

    check-cast v8, Lorg/telegram/messenger/MessageObject;

    iget-object v8, v8, Lorg/telegram/messenger/MessageObject;->lastGeoWebFileSet:Ljava/lang/Object;

    iput-object v8, v14, Lorg/telegram/messenger/MessageObject;->lastGeoWebFileLoaded:Ljava/lang/Object;

    .line 609
    :cond_24
    iget-object v8, v0, Lorg/telegram/messenger/ImageReceiver;->currentMediaDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_26

    .line 610
    instance-of v9, v8, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v9, :cond_25

    .line 611
    check-cast v8, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->stop()V

    .line 612
    iget-object v8, v0, Lorg/telegram/messenger/ImageReceiver;->currentMediaDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v8, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-virtual {v8, v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->removeParent(Lorg/telegram/messenger/ImageReceiver;)V

    :cond_25
    const/4 v8, 0x1

    .line 614
    invoke-direct {v0, v7, v8}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;I)V

    const/4 v8, 0x0

    .line 615
    invoke-direct {v0, v8, v13}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;I)V

    const/4 v9, 0x0

    .line 616
    invoke-direct {v0, v15, v9}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;I)V

    .line 617
    iget-object v13, v0, Lorg/telegram/messenger/ImageReceiver;->currentMediaDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v13, v0, Lorg/telegram/messenger/ImageReceiver;->crossfadeImage:Landroid/graphics/drawable/Drawable;

    .line 618
    iget-object v13, v0, Lorg/telegram/messenger/ImageReceiver;->mediaShader:Landroid/graphics/BitmapShader;

    iput-object v13, v0, Lorg/telegram/messenger/ImageReceiver;->crossfadeShader:Landroid/graphics/BitmapShader;

    .line 619
    iget-object v13, v0, Lorg/telegram/messenger/ImageReceiver;->currentImageKey:Ljava/lang/String;

    iput-object v13, v0, Lorg/telegram/messenger/ImageReceiver;->crossfadeKey:Ljava/lang/String;

    .line 620
    iput-boolean v9, v0, Lorg/telegram/messenger/ImageReceiver;->crossfadingWithThumb:Z

    .line 621
    iput-object v8, v0, Lorg/telegram/messenger/ImageReceiver;->currentMediaDrawable:Landroid/graphics/drawable/Drawable;

    .line 622
    iput-object v8, v0, Lorg/telegram/messenger/ImageReceiver;->currentMediaKey:Ljava/lang/String;

    goto :goto_c

    :cond_26
    const/4 v8, 0x0

    .line 623
    iget-object v14, v0, Lorg/telegram/messenger/ImageReceiver;->currentImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v14, :cond_27

    const/4 v14, 0x1

    .line 624
    invoke-direct {v0, v7, v14}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;I)V

    .line 625
    invoke-direct {v0, v8, v13}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;I)V

    .line 626
    invoke-direct {v0, v15, v9}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;I)V

    .line 627
    iget-object v9, v0, Lorg/telegram/messenger/ImageReceiver;->imageShader:Landroid/graphics/BitmapShader;

    iput-object v9, v0, Lorg/telegram/messenger/ImageReceiver;->crossfadeShader:Landroid/graphics/BitmapShader;

    .line 628
    iget-object v9, v0, Lorg/telegram/messenger/ImageReceiver;->currentImageDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v9, v0, Lorg/telegram/messenger/ImageReceiver;->crossfadeImage:Landroid/graphics/drawable/Drawable;

    .line 629
    iget-object v9, v0, Lorg/telegram/messenger/ImageReceiver;->currentImageKey:Ljava/lang/String;

    iput-object v9, v0, Lorg/telegram/messenger/ImageReceiver;->crossfadeKey:Ljava/lang/String;

    const/4 v14, 0x0

    .line 630
    iput-boolean v14, v0, Lorg/telegram/messenger/ImageReceiver;->crossfadingWithThumb:Z

    .line 631
    iput-object v8, v0, Lorg/telegram/messenger/ImageReceiver;->currentImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 632
    iput-object v8, v0, Lorg/telegram/messenger/ImageReceiver;->currentImageKey:Ljava/lang/String;

    :goto_c
    const/4 v9, 0x1

    goto :goto_d

    :cond_27
    const/4 v14, 0x0

    .line 633
    iget-object v9, v0, Lorg/telegram/messenger/ImageReceiver;->currentThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_28

    .line 634
    invoke-direct {v0, v12, v14}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;I)V

    .line 635
    invoke-direct {v0, v8, v13}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;I)V

    const/4 v9, 0x3

    .line 636
    invoke-direct {v0, v15, v9}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;I)V

    .line 637
    iget-object v9, v0, Lorg/telegram/messenger/ImageReceiver;->thumbShader:Landroid/graphics/BitmapShader;

    iput-object v9, v0, Lorg/telegram/messenger/ImageReceiver;->crossfadeShader:Landroid/graphics/BitmapShader;

    .line 638
    iget-object v9, v0, Lorg/telegram/messenger/ImageReceiver;->currentThumbDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v9, v0, Lorg/telegram/messenger/ImageReceiver;->crossfadeImage:Landroid/graphics/drawable/Drawable;

    .line 639
    iget-object v9, v0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    iput-object v9, v0, Lorg/telegram/messenger/ImageReceiver;->crossfadeKey:Ljava/lang/String;

    .line 640
    iput-boolean v14, v0, Lorg/telegram/messenger/ImageReceiver;->crossfadingWithThumb:Z

    .line 641
    iput-object v8, v0, Lorg/telegram/messenger/ImageReceiver;->currentThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 642
    iput-object v8, v0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    goto :goto_c

    .line 643
    :cond_28
    iget-object v9, v0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_29

    .line 644
    invoke-direct {v0, v12, v14}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;I)V

    const/4 v9, 0x1

    .line 645
    invoke-direct {v0, v7, v9}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;I)V

    .line 646
    invoke-direct {v0, v8, v13}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;I)V

    const/4 v9, 0x3

    .line 647
    invoke-direct {v0, v15, v9}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;I)V

    .line 648
    iget-object v9, v0, Lorg/telegram/messenger/ImageReceiver;->thumbShader:Landroid/graphics/BitmapShader;

    iput-object v9, v0, Lorg/telegram/messenger/ImageReceiver;->crossfadeShader:Landroid/graphics/BitmapShader;

    .line 649
    iget-object v9, v0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v9, v0, Lorg/telegram/messenger/ImageReceiver;->crossfadeImage:Landroid/graphics/drawable/Drawable;

    .line 650
    iput-boolean v14, v0, Lorg/telegram/messenger/ImageReceiver;->crossfadingWithThumb:Z

    .line 651
    iput-object v8, v0, Lorg/telegram/messenger/ImageReceiver;->crossfadeKey:Ljava/lang/String;

    .line 652
    iput-object v8, v0, Lorg/telegram/messenger/ImageReceiver;->currentThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 653
    iput-object v8, v0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    goto :goto_c

    .line 655
    :cond_29
    invoke-direct {v0, v12, v14}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;I)V

    const/4 v9, 0x1

    .line 656
    invoke-direct {v0, v7, v9}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;I)V

    .line 657
    invoke-direct {v0, v8, v13}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;I)V

    const/4 v13, 0x3

    .line 658
    invoke-direct {v0, v15, v13}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;I)V

    .line 659
    iput-object v8, v0, Lorg/telegram/messenger/ImageReceiver;->crossfadeShader:Landroid/graphics/BitmapShader;

    goto :goto_d

    :cond_2a
    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v14, 0x0

    .line 662
    invoke-direct {v0, v12, v14}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;I)V

    .line 663
    invoke-direct {v0, v7, v9}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;I)V

    .line 664
    invoke-direct {v0, v8, v13}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;I)V

    const/4 v13, 0x3

    .line 665
    invoke-direct {v0, v15, v13}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;I)V

    .line 666
    iput-object v8, v0, Lorg/telegram/messenger/ImageReceiver;->crossfadeShader:Landroid/graphics/BitmapShader;

    .line 669
    :goto_d
    iput-object v3, v0, Lorg/telegram/messenger/ImageReceiver;->currentImageLocation:Lorg/telegram/messenger/ImageLocation;

    .line 670
    iput-object v4, v0, Lorg/telegram/messenger/ImageReceiver;->currentImageFilter:Ljava/lang/String;

    .line 671
    iput-object v12, v0, Lorg/telegram/messenger/ImageReceiver;->currentImageKey:Ljava/lang/String;

    .line 672
    iput-object v1, v0, Lorg/telegram/messenger/ImageReceiver;->currentMediaLocation:Lorg/telegram/messenger/ImageLocation;

    .line 673
    iput-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->currentMediaFilter:Ljava/lang/String;

    .line 674
    iput-object v15, v0, Lorg/telegram/messenger/ImageReceiver;->currentMediaKey:Ljava/lang/String;

    .line 675
    iput-object v5, v0, Lorg/telegram/messenger/ImageReceiver;->currentThumbLocation:Lorg/telegram/messenger/ImageLocation;

    .line 676
    iput-object v6, v0, Lorg/telegram/messenger/ImageReceiver;->currentThumbFilter:Ljava/lang/String;

    .line 677
    iput-object v7, v0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    .line 679
    iput-object v11, v0, Lorg/telegram/messenger/ImageReceiver;->currentParentObject:Ljava/lang/Object;

    .line 680
    iput-object v10, v0, Lorg/telegram/messenger/ImageReceiver;->currentExt:Ljava/lang/String;

    move-wide/from16 v1, p8

    .line 681
    iput-wide v1, v0, Lorg/telegram/messenger/ImageReceiver;->currentSize:J

    move/from16 v1, p12

    .line 682
    iput v1, v0, Lorg/telegram/messenger/ImageReceiver;->currentCacheType:I

    move-object/from16 v1, p7

    .line 683
    invoke-direct {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setStaticDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x0

    .line 684
    iput-object v1, v0, Lorg/telegram/messenger/ImageReceiver;->imageShader:Landroid/graphics/BitmapShader;

    .line 685
    iput-object v1, v0, Lorg/telegram/messenger/ImageReceiver;->composeShader:Landroid/graphics/ComposeShader;

    .line 686
    iput-object v1, v0, Lorg/telegram/messenger/ImageReceiver;->thumbShader:Landroid/graphics/BitmapShader;

    .line 687
    iput-object v1, v0, Lorg/telegram/messenger/ImageReceiver;->mediaShader:Landroid/graphics/BitmapShader;

    .line 688
    iput-object v1, v0, Lorg/telegram/messenger/ImageReceiver;->legacyShader:Landroid/graphics/BitmapShader;

    .line 689
    iput-object v1, v0, Lorg/telegram/messenger/ImageReceiver;->legacyCanvas:Landroid/graphics/Canvas;

    .line 690
    iget-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->roundPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 691
    iget-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->legacyBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2b

    .line 692
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 693
    iput-object v1, v0, Lorg/telegram/messenger/ImageReceiver;->legacyBitmap:Landroid/graphics/Bitmap;

    :cond_2b
    const/high16 v1, 0x3f800000    # 1.0f

    .line 695
    iput v1, v0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    .line 696
    iput v1, v0, Lorg/telegram/messenger/ImageReceiver;->previousAlpha:F

    .line 698
    iget-object v1, v0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v2, v1, Lorg/telegram/ui/Components/ClipRoundedDrawable;

    if-eqz v2, :cond_2c

    .line 699
    check-cast v1, Lorg/telegram/ui/Components/ClipRoundedDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ClipRoundedDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v1, v1, Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    if-eqz v1, :cond_2d

    .line 700
    iget-object v1, v0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v1, Lorg/telegram/ui/Components/ClipRoundedDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ClipRoundedDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->setParent(Lorg/telegram/messenger/ImageReceiver;)V

    goto :goto_e

    .line 702
    :cond_2c
    instance-of v2, v1, Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    if-eqz v2, :cond_2d

    .line 703
    check-cast v1, Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->setParent(Lorg/telegram/messenger/ImageReceiver;)V

    .line 705
    :cond_2d
    :goto_e
    iget-object v1, v0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->updateDrawableRadius(Landroid/graphics/drawable/Drawable;)V

    .line 707
    iget-object v1, v0, Lorg/telegram/messenger/ImageReceiver;->delegate:Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;

    if-eqz v1, :cond_31

    .line 708
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
    const/4 v12, 0x1

    :goto_10
    if-nez v2, :cond_30

    iget-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->currentMediaDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_30

    const/4 v2, 0x1

    goto :goto_11

    :cond_30
    const/4 v2, 0x0

    :goto_11
    const/4 v3, 0x0

    invoke-interface {v1, v0, v12, v2, v3}, Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;->didSetImage(Lorg/telegram/messenger/ImageReceiver;ZZZ)V

    goto :goto_12

    :cond_31
    const/4 v3, 0x0

    .line 710
    :goto_12
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/ImageReceiver;->loadImage()V

    .line 711
    instance-of v1, v11, Lorg/telegram/messenger/MessageObject;

    if-eqz v1, :cond_32

    move-object v1, v11

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v1

    if-eqz v1, :cond_32

    const/4 v14, 0x1

    goto :goto_13

    :cond_32
    const/4 v14, 0x0

    :goto_13
    iput-boolean v14, v0, Lorg/telegram/messenger/ImageReceiver;->isRoundVideo:Z

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 776
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/drawable/Drawable;)V
    .locals 7

    .line 780
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/ImageLoader;->cancelLoadingForImageReceiver(Lorg/telegram/messenger/ImageReceiver;Z)V

    .line 782
    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeWithOldImage:Z

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_4

    .line 783
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-eqz v0, :cond_0

    .line 784
    invoke-direct {p0, v4, v1}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;I)V

    .line 785
    invoke-direct {p0, v4, v6}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;I)V

    .line 786
    invoke-direct {p0, v4, v5}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;I)V

    .line 787
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->imageShader:Landroid/graphics/BitmapShader;

    iput-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeShader:Landroid/graphics/BitmapShader;

    .line 788
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeImage:Landroid/graphics/drawable/Drawable;

    .line 789
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageKey:Ljava/lang/String;

    iput-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeKey:Ljava/lang/String;

    .line 790
    iput-boolean v1, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadingWithThumb:Z

    goto :goto_2

    .line 791
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 792
    invoke-direct {p0, v4, v3}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;I)V

    .line 793
    invoke-direct {p0, v4, v6}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;I)V

    .line 794
    invoke-direct {p0, v4, v5}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;I)V

    .line 795
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->thumbShader:Landroid/graphics/BitmapShader;

    iput-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeShader:Landroid/graphics/BitmapShader;

    .line 796
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeImage:Landroid/graphics/drawable/Drawable;

    .line 797
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    iput-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeKey:Ljava/lang/String;

    .line 798
    iput-boolean v1, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadingWithThumb:Z

    goto :goto_2

    .line 799
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 800
    invoke-direct {p0, v4, v3}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;I)V

    .line 801
    invoke-direct {p0, v4, v1}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;I)V

    .line 802
    invoke-direct {p0, v4, v6}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;I)V

    .line 803
    invoke-direct {p0, v4, v5}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;I)V

    .line 804
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->thumbShader:Landroid/graphics/BitmapShader;

    iput-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeShader:Landroid/graphics/BitmapShader;

    .line 805
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeImage:Landroid/graphics/drawable/Drawable;

    .line 806
    iput-boolean v1, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadingWithThumb:Z

    .line 807
    iput-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeKey:Ljava/lang/String;

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_3

    .line 810
    invoke-direct {p0, v4, v0}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 812
    :cond_3
    iput-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeShader:Landroid/graphics/BitmapShader;

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_5

    .line 816
    invoke-direct {p0, v4, v0}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 820
    :cond_5
    :goto_2
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v2, v0, Lorg/telegram/ui/Components/RecyclableDrawable;

    if-eqz v2, :cond_6

    .line 821
    check-cast v0, Lorg/telegram/ui/Components/RecyclableDrawable;

    .line 822
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclableDrawable;->recycle()V

    .line 824
    :cond_6
    instance-of v0, p1, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v0, :cond_b

    .line 825
    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    .line 826
    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->parentView:Landroid/view/View;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->setParentView(Landroid/view/View;)V

    .line 827
    iget-boolean v2, p0, Lorg/telegram/messenger/ImageReceiver;->attachedToWindow:Z

    if-eqz v2, :cond_7

    .line 828
    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->addParent(Lorg/telegram/messenger/ImageReceiver;)V

    .line 830
    :cond_7
    iget-boolean v2, p0, Lorg/telegram/messenger/ImageReceiver;->useSharedAnimationQueue:Z

    if-nez v2, :cond_9

    iget-boolean v2, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->isWebmSticker:Z

    if-eqz v2, :cond_8

    goto :goto_3

    :cond_8
    const/4 v2, 0x0

    goto :goto_4

    :cond_9
    :goto_3
    const/4 v2, 0x1

    :goto_4
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->setUseSharedQueue(Z)V

    .line 831
    iget-boolean v2, p0, Lorg/telegram/messenger/ImageReceiver;->allowStartAnimation:Z

    if-eqz v2, :cond_a

    iget v2, p0, Lorg/telegram/messenger/ImageReceiver;->currentOpenedLayerFlags:I

    if-nez v2, :cond_a

    .line 832
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->checkRepeat()V

    .line 834
    :cond_a
    iget-boolean v2, p0, Lorg/telegram/messenger/ImageReceiver;->allowDecodeSingleFrame:Z

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->setAllowDecodeSingleFrame(Z)V

    goto :goto_5

    .line 835
    :cond_b
    instance-of v0, p1, Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v0, :cond_10

    .line 836
    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Components/RLottieDrawable;

    .line 837
    iget-boolean v2, p0, Lorg/telegram/messenger/ImageReceiver;->attachedToWindow:Z

    if-eqz v2, :cond_c

    .line 838
    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/RLottieDrawable;->addParentView(Lorg/telegram/messenger/ImageReceiver;)V

    :cond_c
    if-eqz v0, :cond_d

    .line 841
    iget-boolean v2, p0, Lorg/telegram/messenger/ImageReceiver;->allowLottieVibration:Z

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->setAllowVibration(Z)V

    .line 843
    :cond_d
    iget-boolean v2, p0, Lorg/telegram/messenger/ImageReceiver;->allowStartLottieAnimation:Z

    if-eqz v2, :cond_f

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->isHeavyDrawable()Z

    move-result v2

    if-eqz v2, :cond_e

    iget v2, p0, Lorg/telegram/messenger/ImageReceiver;->currentOpenedLayerFlags:I

    if-nez v2, :cond_f

    .line 844
    :cond_e
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    .line 846
    :cond_f
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setAllowDecodeSingleFrame(Z)V

    .line 848
    :cond_10
    :goto_5
    iput-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->thumbShader:Landroid/graphics/BitmapShader;

    .line 849
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->roundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 850
    invoke-direct {p0, p1}, Lorg/telegram/messenger/ImageReceiver;->setStaticDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 852
    invoke-direct {p0, p1}, Lorg/telegram/messenger/ImageReceiver;->updateDrawableRadius(Landroid/graphics/drawable/Drawable;)V

    .line 853
    iput-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaLocation:Lorg/telegram/messenger/ImageLocation;

    .line 854
    iput-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaFilter:Ljava/lang/String;

    .line 855
    iget-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, p1, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v0, :cond_11

    .line 856
    check-cast p1, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->removeParent(Lorg/telegram/messenger/ImageReceiver;)V

    .line 858
    :cond_11
    iput-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaDrawable:Landroid/graphics/drawable/Drawable;

    .line 859
    iput-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaKey:Ljava/lang/String;

    .line 860
    iput-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->mediaShader:Landroid/graphics/BitmapShader;

    .line 862
    iput-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageLocation:Lorg/telegram/messenger/ImageLocation;

    .line 863
    iput-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageFilter:Ljava/lang/String;

    .line 864
    iput-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 865
    iput-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageKey:Ljava/lang/String;

    .line 866
    iput-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->imageShader:Landroid/graphics/BitmapShader;

    .line 867
    iput-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->composeShader:Landroid/graphics/ComposeShader;

    .line 868
    iput-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->legacyShader:Landroid/graphics/BitmapShader;

    .line 869
    iput-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->legacyCanvas:Landroid/graphics/Canvas;

    .line 870
    iget-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->legacyBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_12

    .line 871
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 872
    iput-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->legacyBitmap:Landroid/graphics/Bitmap;

    .line 875
    :cond_12
    iput-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbLocation:Lorg/telegram/messenger/ImageLocation;

    .line 876
    iput-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbFilter:Ljava/lang/String;

    .line 877
    iput-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    .line 879
    iput-boolean v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentKeyQuality:Z

    .line 880
    iput-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->currentExt:Ljava/lang/String;

    const-wide/16 v4, 0x0

    .line 881
    iput-wide v4, p0, Lorg/telegram/messenger/ImageReceiver;->currentSize:J

    .line 882
    iput v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentCacheType:I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 883
    iput p1, p0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    .line 884
    iput p1, p0, Lorg/telegram/messenger/ImageReceiver;->previousAlpha:F

    .line 886
    iget-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    if-eqz p1, :cond_13

    .line 887
    invoke-static {p1}, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->access$200(Lorg/telegram/messenger/ImageReceiver$SetImageBackup;)V

    .line 890
    :cond_13
    iget-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->delegate:Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;

    if-eqz p1, :cond_16

    .line 891
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_15

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_14

    goto :goto_6

    :cond_14
    const/4 v0, 0x0

    goto :goto_7

    :cond_15
    :goto_6
    const/4 v0, 0x1

    :goto_7
    invoke-interface {p1, p0, v0, v1, v3}, Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;->didSetImage(Lorg/telegram/messenger/ImageReceiver;ZZZ)V

    .line 893
    :cond_16
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->invalidate()V

    .line 894
    iget-boolean p1, p0, Lorg/telegram/messenger/ImageReceiver;->forceCrossfade:Z

    if-eqz p1, :cond_19

    iget-boolean p1, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeWithOldImage:Z

    if-eqz p1, :cond_19

    iget-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeImage:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_19

    const/4 p1, 0x0

    .line 895
    iput p1, p0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    .line 896
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/telegram/messenger/ImageReceiver;->lastUpdateAlphaTime:J

    .line 897
    iget-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_18

    iget-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_17

    goto :goto_8

    :cond_17
    const/4 v1, 0x0

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

    .line 2588
    iget v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentGuid:I

    if-eq v1, p5, :cond_0

    goto/16 :goto_11

    :cond_0
    const/4 p5, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    if-nez p3, :cond_12

    .line 2592
    iget-object p3, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageKey:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    return v0

    .line 2596
    :cond_1
    instance-of p2, p1, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-nez p2, :cond_3

    .line 2597
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageKey:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lorg/telegram/messenger/ImageLoader;->incrementUseCount(Ljava/lang/String;)V

    .line 2598
    iget-boolean p2, p0, Lorg/telegram/messenger/ImageReceiver;->videoThumbIsSame:Z

    if-eqz p2, :cond_5

    .line 2599
    iget-object p2, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, p2, :cond_2

    iget p2, p0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    cmpl-float p2, p2, v1

    if-ltz p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    goto :goto_1

    .line 2602
    :cond_3
    move-object p2, p1

    check-cast p2, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    .line 2603
    iget-wide v3, p0, Lorg/telegram/messenger/ImageReceiver;->startTime:J

    iget-wide v5, p0, Lorg/telegram/messenger/ImageReceiver;->endTime:J

    invoke-virtual {p2, v3, v4, v5, v6}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->setStartEndTime(JJ)V

    .line 2604
    iget-boolean p3, p2, Lorg/telegram/ui/Components/AnimatedFileDrawable;->isWebmSticker:Z

    if-eqz p3, :cond_4

    .line 2605
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object p3

    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageKey:Ljava/lang/String;

    invoke-virtual {p3, v3}, Lorg/telegram/messenger/ImageLoader;->incrementUseCount(Ljava/lang/String;)V

    .line 2607
    :cond_4
    iget-boolean p3, p0, Lorg/telegram/messenger/ImageReceiver;->videoThumbIsSame:Z

    if-eqz p3, :cond_5

    .line 2608
    invoke-virtual {p2}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->hasBitmap()Z

    move-result p2

    xor-int/2addr p2, v2

    goto :goto_1

    :cond_5
    :goto_0
    const/4 p2, 0x1

    .line 2611
    :goto_1
    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 2613
    instance-of p3, p1, Lorg/telegram/messenger/ExtendedBitmapDrawable;

    if-eqz p3, :cond_6

    .line 2614
    move-object p3, p1

    check-cast p3, Lorg/telegram/messenger/ExtendedBitmapDrawable;

    invoke-virtual {p3}, Lorg/telegram/messenger/ExtendedBitmapDrawable;->getOrientation()I

    move-result p3

    iput p3, p0, Lorg/telegram/messenger/ImageReceiver;->imageOrientation:I

    .line 2616
    :cond_6
    invoke-direct {p0, p1}, Lorg/telegram/messenger/ImageReceiver;->updateDrawableRadius(Landroid/graphics/drawable/Drawable;)V

    if-eqz p2, :cond_11

    .line 2618
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

    .line 2620
    iget-object p2, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaDrawable:Landroid/graphics/drawable/Drawable;

    instance-of p3, p2, Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz p3, :cond_a

    check-cast p2, Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/RLottieDrawable;->hasBitmap()Z

    move-result p2

    if-eqz p2, :cond_a

    :cond_9
    :goto_2
    const/4 p2, 0x0

    goto :goto_3

    .line 2622
    :cond_a
    iget-object p2, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaDrawable:Landroid/graphics/drawable/Drawable;

    instance-of p3, p2, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz p3, :cond_b

    check-cast p2, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->hasBitmap()Z

    move-result p2

    if-eqz p2, :cond_b

    goto :goto_2

    .line 2624
    :cond_b
    iget-object p2, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageDrawable:Landroid/graphics/drawable/Drawable;

    instance-of p2, p2, Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz p2, :cond_c

    .line 2625
    iget-object p2, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    instance-of p3, p2, Lorg/telegram/ui/Components/LoadingStickerDrawable;

    if-nez p3, :cond_c

    instance-of p3, p2, Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    if-nez p3, :cond_c

    instance-of p2, p2, Lorg/telegram/messenger/Emoji$EmojiDrawable;

    if-eqz p2, :cond_9

    :cond_c
    const/4 p2, 0x1

    :goto_3
    if-eqz p2, :cond_2c

    .line 2627
    iget-object p2, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_d

    iget-object p3, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p3, :cond_d

    iget-boolean p3, p0, Lorg/telegram/messenger/ImageReceiver;->forceCrossfade:Z

    if-eqz p3, :cond_2c

    :cond_d
    if-eqz p2, :cond_e

    .line 2628
    iget-object p2, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_e

    .line 2629
    iget p2, p0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    iput p2, p0, Lorg/telegram/messenger/ImageReceiver;->previousAlpha:F

    goto :goto_4

    .line 2631
    :cond_e
    iput v1, p0, Lorg/telegram/messenger/ImageReceiver;->previousAlpha:F

    .line 2633
    :goto_4
    iput p5, p0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    .line 2634
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iput-wide p2, p0, Lorg/telegram/messenger/ImageReceiver;->lastUpdateAlphaTime:J

    .line 2635
    iget-object p2, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeImage:Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_10

    iget-object p2, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_10

    iget-object p2, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_f

    goto :goto_5

    :cond_f
    const/4 p2, 0x0

    goto :goto_6

    :cond_10
    :goto_5
    const/4 p2, 0x1

    :goto_6
    iput-boolean p2, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeWithThumb:Z

    goto/16 :goto_c

    .line 2638
    :cond_11
    iput v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    .line 2639
    iput v1, p0, Lorg/telegram/messenger/ImageReceiver;->previousAlpha:F

    goto/16 :goto_c

    :cond_12
    const/4 v3, 0x3

    if-ne p3, v3, :cond_21

    .line 2642
    iget-object p3, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaKey:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_13

    return v0

    .line 2645
    :cond_13
    instance-of p2, p1, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-nez p2, :cond_14

    .line 2646
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaKey:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lorg/telegram/messenger/ImageLoader;->incrementUseCount(Ljava/lang/String;)V

    goto :goto_7

    .line 2648
    :cond_14
    move-object p2, p1

    check-cast p2, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    .line 2649
    iget-wide v3, p0, Lorg/telegram/messenger/ImageReceiver;->startTime:J

    iget-wide v5, p0, Lorg/telegram/messenger/ImageReceiver;->endTime:J

    invoke-virtual {p2, v3, v4, v5, v6}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->setStartEndTime(JJ)V

    .line 2650
    iget-boolean p3, p2, Lorg/telegram/ui/Components/AnimatedFileDrawable;->isWebmSticker:Z

    if-eqz p3, :cond_15

    .line 2651
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object p3

    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaKey:Ljava/lang/String;

    invoke-virtual {p3, v3}, Lorg/telegram/messenger/ImageLoader;->incrementUseCount(Ljava/lang/String;)V

    .line 2653
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

    .line 2655
    instance-of v5, p3, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v5, :cond_17

    .line 2656
    check-cast p3, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-virtual {p3}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getLastFrameTimestamp()J

    move-result-wide v3

    .line 2658
    :cond_17
    invoke-virtual {p2, v3, v4, v2, v2}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->seekTo(JZZ)V

    .line 2661
    :cond_18
    :goto_7
    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaDrawable:Landroid/graphics/drawable/Drawable;

    .line 2662
    invoke-direct {p0, p1}, Lorg/telegram/messenger/ImageReceiver;->updateDrawableRadius(Landroid/graphics/drawable/Drawable;)V

    .line 2664
    iget-object p2, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_2c

    if-nez p4, :cond_19

    .line 2666
    iget-boolean p2, p0, Lorg/telegram/messenger/ImageReceiver;->forcePreview:Z

    if-eqz p2, :cond_1a

    :cond_19
    iget-boolean p2, p0, Lorg/telegram/messenger/ImageReceiver;->forceCrossfade:Z

    if-eqz p2, :cond_20

    .line 2667
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

    .line 2668
    iget-object p2, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_1d

    .line 2669
    iget p2, p0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    iput p2, p0, Lorg/telegram/messenger/ImageReceiver;->previousAlpha:F

    goto :goto_8

    .line 2671
    :cond_1d
    iput v1, p0, Lorg/telegram/messenger/ImageReceiver;->previousAlpha:F

    .line 2673
    :goto_8
    iput p5, p0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    .line 2674
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iput-wide p2, p0, Lorg/telegram/messenger/ImageReceiver;->lastUpdateAlphaTime:J

    .line 2675
    iget-object p2, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeImage:Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_1f

    iget-object p2, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_1f

    iget-object p2, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_1e

    goto :goto_9

    :cond_1e
    const/4 p2, 0x0

    goto :goto_a

    :cond_1f
    :goto_9
    const/4 p2, 0x1

    :goto_a
    iput-boolean p2, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeWithThumb:Z

    goto/16 :goto_c

    .line 2678
    :cond_20
    iput v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    .line 2679
    iput v1, p0, Lorg/telegram/messenger/ImageReceiver;->previousAlpha:F

    goto/16 :goto_c

    :cond_21
    if-ne p3, v2, :cond_2c

    .line 2683
    iget-object p3, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p3, :cond_22

    return v0

    .line 2686
    :cond_22
    iget-boolean p3, p0, Lorg/telegram/messenger/ImageReceiver;->forcePreview:Z

    if-nez p3, :cond_26

    .line 2687
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object p3

    if-eqz p3, :cond_23

    .line 2688
    invoke-virtual {p3}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->hasBitmap()Z

    move-result p3

    if-eqz p3, :cond_23

    return v0

    .line 2691
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

    .line 2695
    :cond_26
    iget-object p3, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_27

    return v0

    .line 2698
    :cond_27
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lorg/telegram/messenger/ImageLoader;->incrementUseCount(Ljava/lang/String;)V

    .line 2700
    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 2701
    instance-of p2, p1, Lorg/telegram/messenger/ExtendedBitmapDrawable;

    if-eqz p2, :cond_28

    .line 2702
    move-object p2, p1

    check-cast p2, Lorg/telegram/messenger/ExtendedBitmapDrawable;

    invoke-virtual {p2}, Lorg/telegram/messenger/ExtendedBitmapDrawable;->getOrientation()I

    move-result p2

    iput p2, p0, Lorg/telegram/messenger/ImageReceiver;->thumbOrientation:I

    .line 2704
    :cond_28
    invoke-direct {p0, p1}, Lorg/telegram/messenger/ImageReceiver;->updateDrawableRadius(Landroid/graphics/drawable/Drawable;)V

    if-nez p4, :cond_2b

    .line 2706
    iget-byte p2, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeAlpha:B

    const/4 p3, 0x2

    if-eq p2, p3, :cond_2b

    .line 2707
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

    .line 2708
    iput v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    .line 2709
    iput v1, p0, Lorg/telegram/messenger/ImageReceiver;->previousAlpha:F

    goto :goto_c

    .line 2711
    :cond_29
    iput p5, p0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    .line 2712
    iput v1, p0, Lorg/telegram/messenger/ImageReceiver;->previousAlpha:F

    .line 2713
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iput-wide p2, p0, Lorg/telegram/messenger/ImageReceiver;->lastUpdateAlphaTime:J

    .line 2714
    iget-object p2, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_2a

    const/4 p2, 0x1

    goto :goto_b

    :cond_2a
    const/4 p2, 0x0

    :goto_b
    iput-boolean p2, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeWithThumb:Z

    goto :goto_c

    .line 2717
    :cond_2b
    iput v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    .line 2718
    iput v1, p0, Lorg/telegram/messenger/ImageReceiver;->previousAlpha:F

    .line 2721
    :cond_2c
    :goto_c
    iget-object p2, p0, Lorg/telegram/messenger/ImageReceiver;->delegate:Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;

    if-eqz p2, :cond_30

    .line 2722
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
    const/4 p5, 0x0

    goto :goto_e

    :cond_2e
    :goto_d
    const/4 p5, 0x1

    :goto_e
    if-nez p3, :cond_2f

    iget-object p3, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p3, :cond_2f

    const/4 p3, 0x1

    goto :goto_f

    :cond_2f
    const/4 p3, 0x0

    :goto_f
    invoke-interface {p2, p0, p5, p3, p4}, Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;->didSetImage(Lorg/telegram/messenger/ImageReceiver;ZZZ)V

    .line 2724
    :cond_30
    instance-of p2, p1, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz p2, :cond_33

    .line 2725
    check-cast p1, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    .line 2726
    iget-boolean p2, p0, Lorg/telegram/messenger/ImageReceiver;->useSharedAnimationQueue:Z

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->setUseSharedQueue(Z)V

    .line 2727
    iget-boolean p2, p0, Lorg/telegram/messenger/ImageReceiver;->attachedToWindow:Z

    if-eqz p2, :cond_31

    .line 2728
    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->addParent(Lorg/telegram/messenger/ImageReceiver;)V

    .line 2730
    :cond_31
    iget-boolean p2, p0, Lorg/telegram/messenger/ImageReceiver;->allowStartAnimation:Z

    if-eqz p2, :cond_32

    iget p2, p0, Lorg/telegram/messenger/ImageReceiver;->currentOpenedLayerFlags:I

    if-nez p2, :cond_32

    .line 2731
    invoke-virtual {p1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->checkRepeat()V

    .line 2733
    :cond_32
    iget-boolean p2, p0, Lorg/telegram/messenger/ImageReceiver;->allowDecodeSingleFrame:Z

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->setAllowDecodeSingleFrame(Z)V

    .line 2734
    iput-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->animationReadySent:Z

    .line 2735
    iget-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->parentView:Landroid/view/View;

    if-eqz p1, :cond_37

    .line 2736
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    goto :goto_10

    .line 2738
    :cond_33
    instance-of p2, p1, Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz p2, :cond_37

    .line 2739
    check-cast p1, Lorg/telegram/ui/Components/RLottieDrawable;

    .line 2740
    iget-boolean p2, p0, Lorg/telegram/messenger/ImageReceiver;->attachedToWindow:Z

    if-eqz p2, :cond_34

    .line 2741
    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/RLottieDrawable;->addParentView(Lorg/telegram/messenger/ImageReceiver;)V

    .line 2743
    :cond_34
    iget-boolean p2, p0, Lorg/telegram/messenger/ImageReceiver;->allowStartLottieAnimation:Z

    if-eqz p2, :cond_36

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieDrawable;->isHeavyDrawable()Z

    move-result p2

    if-eqz p2, :cond_35

    iget p2, p0, Lorg/telegram/messenger/ImageReceiver;->currentOpenedLayerFlags:I

    if-nez p2, :cond_36

    .line 2744
    :cond_35
    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    .line 2746
    :cond_36
    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->setAllowDecodeSingleFrame(Z)V

    .line 2747
    iget p2, p0, Lorg/telegram/messenger/ImageReceiver;->autoRepeat:I

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RLottieDrawable;->setAutoRepeat(I)V

    .line 2748
    iget p2, p0, Lorg/telegram/messenger/ImageReceiver;->autoRepeatCount:I

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RLottieDrawable;->setAutoRepeatCount(I)V

    .line 2749
    iget-wide p2, p0, Lorg/telegram/messenger/ImageReceiver;->autoRepeatTimeout:J

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/RLottieDrawable;->setAutoRepeatTimeout(J)V

    .line 2750
    iput-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->animationReadySent:Z

    .line 2752
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

    .line 2231
    iput p1, p0, Lorg/telegram/messenger/ImageReceiver;->imageX:F

    .line 2232
    iput p2, p0, Lorg/telegram/messenger/ImageReceiver;->imageY:F

    .line 2233
    iput p3, p0, Lorg/telegram/messenger/ImageReceiver;->imageW:F

    .line 2234
    iput p4, p0, Lorg/telegram/messenger/ImageReceiver;->imageH:F

    return-void
.end method

.method public setImageCoords(Landroid/graphics/Rect;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 2239
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/messenger/ImageReceiver;->imageX:F

    .line 2240
    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/messenger/ImageReceiver;->imageY:F

    .line 2241
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/messenger/ImageReceiver;->imageW:F

    .line 2242
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

    .line 2227
    iput p1, p0, Lorg/telegram/messenger/ImageReceiver;->imageW:F

    return-void
.end method

.method public setImageX(I)V
    .locals 0

    int-to-float p1, p1

    .line 2219
    iput p1, p0, Lorg/telegram/messenger/ImageReceiver;->imageX:F

    return-void
.end method

.method public setImageY(F)V
    .locals 0

    .line 2223
    iput p1, p0, Lorg/telegram/messenger/ImageReceiver;->imageY:F

    return-void
.end method

.method public setInvalidateAll(Z)V
    .locals 0

    .line 751
    iput-boolean p1, p0, Lorg/telegram/messenger/ImageReceiver;->invalidateAll:Z

    return-void
.end method

.method public setLayerNum(I)V
    .locals 1

    .line 768
    iput p1, p0, Lorg/telegram/messenger/ImageReceiver;->currentLayerNum:I

    .line 769
    iget-boolean p1, p0, Lorg/telegram/messenger/ImageReceiver;->attachedToWindow:Z

    if-eqz p1, :cond_0

    .line 770
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/NotificationCenter;->getCurrentHeavyOperationFlags()I

    move-result p1

    iput p1, p0, Lorg/telegram/messenger/ImageReceiver;->currentOpenedLayerFlags:I

    .line 771
    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentLayerNum:I

    not-int v0, v0

    and-int/2addr p1, v0

    iput p1, p0, Lorg/telegram/messenger/ImageReceiver;->currentOpenedLayerFlags:I

    :cond_0
    return-void
.end method

.method public setManualAlphaAnimator(Z)V
    .locals 0

    .line 1968
    iput-boolean p1, p0, Lorg/telegram/messenger/ImageReceiver;->manualAlphaAnimator:Z

    return-void
.end method

.method public setMediaStartEndTime(JJ)V
    .locals 2

    .line 2757
    iput-wide p1, p0, Lorg/telegram/messenger/ImageReceiver;->startTime:J

    .line 2758
    iput-wide p3, p0, Lorg/telegram/messenger/ImageReceiver;->endTime:J

    .line 2760
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v1, :cond_0

    .line 2761
    check-cast v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->setStartEndTime(JJ)V

    :cond_0
    return-void
.end method

.method public setNeedsQualityThumb(Z)V
    .locals 0

    .line 2408
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

    .line 746
    :cond_1
    iput p1, p0, Lorg/telegram/messenger/ImageReceiver;->thumbOrientation:I

    iput p1, p0, Lorg/telegram/messenger/ImageReceiver;->imageOrientation:I

    .line 747
    iput-boolean p2, p0, Lorg/telegram/messenger/ImageReceiver;->centerRotation:Z

    return-void
.end method

.method public setParam(I)V
    .locals 0

    .line 2580
    iput p1, p0, Lorg/telegram/messenger/ImageReceiver;->param:I

    return-void
.end method

.method public setParentView(Landroid/view/View;)V
    .locals 1

    .line 2211
    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->parentView:Landroid/view/View;

    .line 2212
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2213
    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->attachedToWindow:Z

    if-eqz v0, :cond_0

    .line 2214
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->parentView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->setParentView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setPressed(I)V
    .locals 0

    .line 732
    iput p1, p0, Lorg/telegram/messenger/ImageReceiver;->isPressed:I

    return-void
.end method

.method public setQualityThumbDocument(Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 0

    .line 2412
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

    .line 2359
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

    .line 2363
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius([I)V

    return-void
.end method

.method public setRoundRadius([I)V
    .locals 8

    const/4 v0, 0x0

    .line 2368
    aget v1, p1, v0

    const/4 v2, 0x1

    .line 2369
    iput-boolean v2, p0, Lorg/telegram/messenger/ImageReceiver;->isRoundRect:Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 2370
    :goto_0
    iget-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->roundRadius:[I

    array-length v6, v5

    if-ge v3, v6, :cond_2

    .line 2371
    aget v6, v5, v3

    aget v7, p1, v3

    if-eq v6, v7, :cond_0

    const/4 v4, 0x1

    .line 2374
    :cond_0
    aget v6, p1, v3

    if-eq v1, v6, :cond_1

    .line 2375
    iput-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->isRoundRect:Z

    .line 2377
    :cond_1
    aget v6, p1, v3

    aput v6, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-eqz v4, :cond_6

    .line 2380
    iget-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->imageShader:Landroid/graphics/BitmapShader;

    if-nez v0, :cond_3

    .line 2381
    invoke-direct {p0, p1}, Lorg/telegram/messenger/ImageReceiver;->updateDrawableRadius(Landroid/graphics/drawable/Drawable;)V

    .line 2383
    :cond_3
    iget-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->currentMediaDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_4

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->mediaShader:Landroid/graphics/BitmapShader;

    if-nez v0, :cond_4

    .line 2384
    invoke-direct {p0, p1}, Lorg/telegram/messenger/ImageReceiver;->updateDrawableRadius(Landroid/graphics/drawable/Drawable;)V

    .line 2386
    :cond_4
    iget-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_5

    .line 2387
    invoke-direct {p0, p1}, Lorg/telegram/messenger/ImageReceiver;->updateDrawableRadius(Landroid/graphics/drawable/Drawable;)V

    .line 2389
    :cond_5
    iget-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_6

    .line 2390
    invoke-direct {p0, p1}, Lorg/telegram/messenger/ImageReceiver;->updateDrawableRadius(Landroid/graphics/drawable/Drawable;)V

    :cond_6
    return-void
.end method

.method public setShouldGenerateQualityThumb(Z)V
    .locals 0

    .line 2440
    iput-boolean p1, p0, Lorg/telegram/messenger/ImageReceiver;->shouldGenerateQualityThumb:Z

    return-void
.end method

.method public setSideClip(F)V
    .locals 0

    .line 2247
    iput p1, p0, Lorg/telegram/messenger/ImageReceiver;->sideClip:F

    return-void
.end method

.method public setSkipUpdateFrame(Z)V
    .locals 0

    .line 2995
    iput-boolean p1, p0, Lorg/telegram/messenger/ImageReceiver;->skipUpdateFrame:Z

    return-void
.end method

.method public setStrippedLocation(Lorg/telegram/messenger/ImageLocation;)V
    .locals 0

    .line 343
    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->strippedLocation:Lorg/telegram/messenger/ImageLocation;

    return-void
.end method

.method protected setTag(II)V
    .locals 1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 2571
    iput p1, p0, Lorg/telegram/messenger/ImageReceiver;->thumbTag:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    .line 2573
    iput p1, p0, Lorg/telegram/messenger/ImageReceiver;->mediaTag:I

    goto :goto_0

    .line 2575
    :cond_1
    iput p1, p0, Lorg/telegram/messenger/ImageReceiver;->imageTag:I

    :goto_0
    return-void
.end method

.method public setUniqKeyPrefix(Ljava/lang/String;)V
    .locals 0

    .line 2939
    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->uniqKeyPrefix:Ljava/lang/String;

    return-void
.end method

.method public setUseRoundForThumbDrawable(Z)V
    .locals 0

    .line 1136
    iput-boolean p1, p0, Lorg/telegram/messenger/ImageReceiver;->useRoundForThumb:Z

    return-void
.end method

.method public setUseSharedAnimationQueue(Z)V
    .locals 0

    .line 2496
    iput-boolean p1, p0, Lorg/telegram/messenger/ImageReceiver;->useSharedAnimationQueue:Z

    return-void
.end method

.method public setVideoThumbIsSame(Z)V
    .locals 0

    .line 2987
    iput-boolean p1, p0, Lorg/telegram/messenger/ImageReceiver;->videoThumbIsSame:Z

    return-void
.end method

.method public setVisible(ZZ)V
    .locals 1

    .line 2136
    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->isVisible:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 2139
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/messenger/ImageReceiver;->isVisible:Z

    if-eqz p2, :cond_1

    .line 2141
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

    .line 2504
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2506
    iget-boolean v1, p0, Lorg/telegram/messenger/ImageReceiver;->useSharedAnimationQueue:Z

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->setUseSharedQueue(Z)V

    .line 2507
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->start()V

    goto :goto_0

    .line 2509
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2510
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->isRunning()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2511
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->restart()Z

    :cond_1
    :goto_0
    return-void
.end method

.method public startCrossfadeFromStaticThumb(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 2924
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/ImageReceiver;->startCrossfadeFromStaticThumb(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public startCrossfadeFromStaticThumb(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    const/4 v0, 0x0

    .line 2928
    iput-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    .line 2929
    iput-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 2930
    iput-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->thumbShader:Landroid/graphics/BitmapShader;

    .line 2931
    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->roundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 2932
    invoke-direct {p0, p1}, Lorg/telegram/messenger/ImageReceiver;->setStaticDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x1

    .line 2933
    iput-boolean p1, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeWithThumb:Z

    const/4 p1, 0x0

    .line 2934
    iput p1, p0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    .line 2935
    iget-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Lorg/telegram/messenger/ImageReceiver;->updateDrawableRadius(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public stopAnimation()V
    .locals 2

    .line 2517
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2519
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->stop()V

    goto :goto_0

    .line 2521
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2522
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->isRunning()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2523
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->stop()V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateThumbShaderMatrix()Z
    .locals 9

    .line 53
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

    .line 54
    invoke-virtual/range {v0 .. v7}, Lorg/telegram/messenger/ImageReceiver;->drawDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;ILandroid/graphics/BitmapShader;IILorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)V

    return v8

    .line 57
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

    .line 58
    invoke-virtual/range {v0 .. v7}, Lorg/telegram/messenger/ImageReceiver;->drawDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;ILandroid/graphics/BitmapShader;IILorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)V

    return v8

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
