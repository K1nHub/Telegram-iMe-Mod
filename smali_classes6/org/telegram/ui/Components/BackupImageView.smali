.class public Lorg/telegram/ui/Components/BackupImageView;
.super Landroid/view/View;
.source "BackupImageView.java"


# instance fields
.field public animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

.field attached:Z

.field private avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field protected blurAllowed:Z

.field protected blurImageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field public drawFromStart:Z

.field protected hasBlur:Z

.field protected height:I

.field protected imageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field roundRadiusAnimator:Landroid/animation/ValueAnimator;

.field public shouldResetBackGroundOnLoaded:Z

.field protected width:I


# direct methods
.method public static synthetic $r8$lambda$OfQ3EVC9RdfTAT3n3R8nzoXlGWw(Lorg/telegram/ui/Components/BackupImageView;Lorg/telegram/messenger/ImageReceiver;ZZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/BackupImageView;->lambda$new$0(Lorg/telegram/messenger/ImageReceiver;ZZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$xs9q7wE2xPfJscd-jWpVir1q6gU(Lorg/telegram/ui/Components/BackupImageView;Lorg/telegram/messenger/ImageReceiver;ZZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/BackupImageView;->lambda$new$1(Lorg/telegram/messenger/ImageReceiver;ZZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 77
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 39
    iput-boolean p1, p0, Lorg/telegram/ui/Components/BackupImageView;->shouldResetBackGroundOnLoaded:Z

    const/4 p1, -0x1

    .line 66
    iput p1, p0, Lorg/telegram/ui/Components/BackupImageView;->width:I

    .line 67
    iput p1, p0, Lorg/telegram/ui/Components/BackupImageView;->height:I

    .line 78
    invoke-virtual {p0}, Lorg/telegram/ui/Components/BackupImageView;->createImageReciever()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/BackupImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v0, 0x1

    .line 79
    invoke-virtual {p1, v0}, Lorg/telegram/messenger/ImageReceiver;->setAllowLoadingOnAttachedOnly(Z)V

    .line 80
    iget-object p1, p0, Lorg/telegram/ui/Components/BackupImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    new-instance v0, Lorg/telegram/ui/Components/BackupImageView$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/BackupImageView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/BackupImageView;)V

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/ImageReceiver;->setDelegate(Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 39
    iput-boolean p1, p0, Lorg/telegram/ui/Components/BackupImageView;->shouldResetBackGroundOnLoaded:Z

    const/4 p1, -0x1

    .line 66
    iput p1, p0, Lorg/telegram/ui/Components/BackupImageView;->width:I

    .line 67
    iput p1, p0, Lorg/telegram/ui/Components/BackupImageView;->height:I

    .line 43
    new-instance p1, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {p1, p0}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/BackupImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 44
    new-instance p2, Lorg/telegram/ui/Components/BackupImageView$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/BackupImageView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/BackupImageView;)V

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/ImageReceiver;->setDelegate(Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;)V

    return-void
.end method

.method private checkCreateBlurredImage()V
    .locals 2

    .line 126
    iget-boolean v0, p0, Lorg/telegram/ui/Components/BackupImageView;->hasBlur:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/BackupImageView;->blurImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/BackupImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lorg/telegram/ui/Components/BackupImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 129
    iget-object v1, p0, Lorg/telegram/ui/Components/BackupImageView;->blurImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {v0}, Lorg/telegram/messenger/Utilities;->stackBlurBitmapMax(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 130
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$0(Lorg/telegram/messenger/ImageReceiver;ZZZ)V
    .locals 0

    .line 45
    iget-boolean p1, p0, Lorg/telegram/ui/Components/BackupImageView;->shouldResetBackGroundOnLoaded:Z

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_0

    const/4 p1, 0x0

    .line 46
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$1(Lorg/telegram/messenger/ImageReceiver;ZZZ)V
    .locals 0

    if-eqz p2, :cond_0

    if-nez p3, :cond_0

    .line 82
    invoke-direct {p0}, Lorg/telegram/ui/Components/BackupImageView;->checkCreateBlurredImage()V

    :cond_0
    return-void
.end method


# virtual methods
.method public animateToRoundRadius(I)V
    .locals 3

    .line 383
    invoke-virtual {p0}, Lorg/telegram/ui/Components/BackupImageView;->getRoundRadius()[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    if-eq v0, p1, :cond_1

    .line 384
    iget-object v0, p0, Lorg/telegram/ui/Components/BackupImageView;->roundRadiusAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 385
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 387
    invoke-virtual {p0}, Lorg/telegram/ui/Components/BackupImageView;->getRoundRadius()[I

    move-result-object v2

    aget v2, v2, v1

    aput v2, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/BackupImageView;->roundRadiusAnimator:Landroid/animation/ValueAnimator;

    .line 388
    new-instance v0, Lorg/telegram/ui/Components/BackupImageView$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/BackupImageView$1;-><init>(Lorg/telegram/ui/Components/BackupImageView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 394
    iget-object p1, p0, Lorg/telegram/ui/Components/BackupImageView;->roundRadiusAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 395
    iget-object p1, p0, Lorg/telegram/ui/Components/BackupImageView;->roundRadiusAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    return-void
.end method

.method public clearImage()V
    .locals 1

    .line 178
    iget-object v0, p0, Lorg/telegram/ui/Components/BackupImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->clearImage()V

    return-void
.end method

.method protected createImageReciever()Lorg/telegram/messenger/ImageReceiver;
    .locals 1

    .line 88
    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public getAvatarDrawable()Lorg/telegram/ui/Components/AvatarDrawable;
    .locals 1

    .line 300
    iget-object v0, p0, Lorg/telegram/ui/Components/BackupImageView;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    if-nez v0, :cond_0

    .line 301
    new-instance v0, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/BackupImageView;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 303
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/BackupImageView;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    return-object v0
.end method

.method public getImageReceiver()Lorg/telegram/messenger/ImageReceiver;
    .locals 1

    .line 290
    iget-object v0, p0, Lorg/telegram/ui/Components/BackupImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    return-object v0
.end method

.method public getRoundRadius()[I
    .locals 1

    .line 282
    iget-object v0, p0, Lorg/telegram/ui/Components/BackupImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getRoundRadius()[I

    move-result-object v0

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 321
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 322
    iput-boolean v0, p0, Lorg/telegram/ui/Components/BackupImageView;->attached:Z

    .line 323
    iget-object v0, p0, Lorg/telegram/ui/Components/BackupImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    .line 324
    iget-boolean v0, p0, Lorg/telegram/ui/Components/BackupImageView;->blurAllowed:Z

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lorg/telegram/ui/Components/BackupImageView;->blurImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    .line 327
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/BackupImageView;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v0, :cond_1

    .line 328
    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->addView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 308
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 309
    iput-boolean v0, p0, Lorg/telegram/ui/Components/BackupImageView;->attached:Z

    .line 310
    iget-object v0, p0, Lorg/telegram/ui/Components/BackupImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    .line 311
    iget-boolean v0, p0, Lorg/telegram/ui/Components/BackupImageView;->blurAllowed:Z

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lorg/telegram/ui/Components/BackupImageView;->blurImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    .line 314
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/BackupImageView;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v0, :cond_1

    .line 315
    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->removeView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 334
    iget-object v0, p0, Lorg/telegram/ui/Components/BackupImageView;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/BackupImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 338
    :cond_1
    iget v1, p0, Lorg/telegram/ui/Components/BackupImageView;->width:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_3

    iget v4, p0, Lorg/telegram/ui/Components/BackupImageView;->height:I

    if-eq v4, v2, :cond_3

    .line 339
    iget-boolean v2, p0, Lorg/telegram/ui/Components/BackupImageView;->drawFromStart:Z

    if-eqz v2, :cond_2

    int-to-float v1, v1

    int-to-float v2, v4

    .line 340
    invoke-virtual {v0, v3, v3, v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 341
    iget-boolean v1, p0, Lorg/telegram/ui/Components/BackupImageView;->blurAllowed:Z

    if-eqz v1, :cond_4

    .line 342
    iget-object v1, p0, Lorg/telegram/ui/Components/BackupImageView;->blurImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget v2, p0, Lorg/telegram/ui/Components/BackupImageView;->width:I

    int-to-float v2, v2

    iget v4, p0, Lorg/telegram/ui/Components/BackupImageView;->height:I

    int-to-float v4, v4

    invoke-virtual {v1, v3, v3, v2, v4}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    goto :goto_1

    .line 345
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    iget v2, p0, Lorg/telegram/ui/Components/BackupImageView;->width:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    iget v3, p0, Lorg/telegram/ui/Components/BackupImageView;->height:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v4, p0, Lorg/telegram/ui/Components/BackupImageView;->width:I

    int-to-float v4, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v4, v3}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 346
    iget-boolean v1, p0, Lorg/telegram/ui/Components/BackupImageView;->blurAllowed:Z

    if-eqz v1, :cond_4

    .line 347
    iget-object v1, p0, Lorg/telegram/ui/Components/BackupImageView;->blurImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    iget v3, p0, Lorg/telegram/ui/Components/BackupImageView;->width:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    iget v4, p0, Lorg/telegram/ui/Components/BackupImageView;->height:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v5, p0, Lorg/telegram/ui/Components/BackupImageView;->width:I

    int-to-float v5, v5

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v5, v4}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    goto :goto_1

    .line 351
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v3, v3, v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 352
    iget-boolean v1, p0, Lorg/telegram/ui/Components/BackupImageView;->blurAllowed:Z

    if-eqz v1, :cond_4

    .line 353
    iget-object v1, p0, Lorg/telegram/ui/Components/BackupImageView;->blurImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v3, v3, v2, v4}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 356
    :cond_4
    :goto_1
    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 357
    iget-boolean v0, p0, Lorg/telegram/ui/Components/BackupImageView;->blurAllowed:Z

    if-eqz v0, :cond_5

    .line 358
    iget-object v0, p0, Lorg/telegram/ui/Components/BackupImageView;->blurImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    :cond_5
    return-void
.end method

.method public onNewImageSet()V
    .locals 2

    .line 116
    iget-boolean v0, p0, Lorg/telegram/ui/Components/BackupImageView;->hasBlur:Z

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lorg/telegram/ui/Components/BackupImageView;->blurImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/BackupImageView;->blurImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    iget-object v0, p0, Lorg/telegram/ui/Components/BackupImageView;->blurImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 120
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/BackupImageView;->blurImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 121
    invoke-direct {p0}, Lorg/telegram/ui/Components/BackupImageView;->checkCreateBlurredImage()V

    :cond_1
    return-void
.end method

.method public setAnimatedEmojiDrawable(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)V
    .locals 2

    .line 367
    iget-object v0, p0, Lorg/telegram/ui/Components/BackupImageView;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-ne v0, p1, :cond_0

    return-void

    .line 370
    :cond_0
    iget-boolean v1, p0, Lorg/telegram/ui/Components/BackupImageView;->attached:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 371
    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->removeView(Landroid/view/View;)V

    .line 373
    :cond_1
    iput-object p1, p0, Lorg/telegram/ui/Components/BackupImageView;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    .line 374
    iget-boolean v0, p0, Lorg/telegram/ui/Components/BackupImageView;->attached:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 375
    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->addView(Landroid/view/View;)V

    .line 377
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setAspectFit(Z)V
    .locals 1

    .line 286
    iget-object v0, p0, Lorg/telegram/ui/Components/BackupImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->setAspectFit(Z)V

    return-void
.end method

.method public setBlurAllowed(Z)V
    .locals 1

    .line 92
    iget-boolean v0, p0, Lorg/telegram/ui/Components/BackupImageView;->attached:Z

    if-nez v0, :cond_1

    .line 95
    iput-boolean p1, p0, Lorg/telegram/ui/Components/BackupImageView;->blurAllowed:Z

    if-eqz p1, :cond_0

    .line 97
    new-instance p1, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {p1}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/BackupImageView;->blurImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    :cond_0
    return-void

    .line 93
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "You should call setBlurAllowed(...) only when detached!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 363
    iget-object v0, p0, Lorg/telegram/ui/Components/BackupImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V
    .locals 1

    .line 182
    iget-object v0, p0, Lorg/telegram/ui/Components/BackupImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/ImageReceiver;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Landroid/graphics/drawable/Drawable;)V

    .line 183
    invoke-virtual {p0}, Lorg/telegram/ui/Components/BackupImageView;->onNewImageSet()V

    return-void
.end method

.method public setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;Ljava/lang/Object;)V
    .locals 1

    .line 187
    iget-object v0, p0, Lorg/telegram/ui/Components/BackupImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/messenger/ImageReceiver;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    .line 188
    invoke-virtual {p0}, Lorg/telegram/ui/Components/BackupImageView;->onNewImageSet()V

    return-void
.end method

.method public setHasBlur(Z)V
    .locals 1

    if-eqz p1, :cond_1

    .line 102
    iget-boolean v0, p0, Lorg/telegram/ui/Components/BackupImageView;->blurAllowed:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 103
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "You should call setBlurAllowed(...) before calling setHasBlur(true)!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 105
    :cond_1
    :goto_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/BackupImageView;->hasBlur:Z

    if-nez p1, :cond_3

    .line 107
    iget-object p1, p0, Lorg/telegram/ui/Components/BackupImageView;->blurImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/BackupImageView;->blurImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_2

    .line 108
    iget-object p1, p0, Lorg/telegram/ui/Components/BackupImageView;->blurImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 110
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/BackupImageView;->blurImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 112
    :cond_3
    invoke-direct {p0}, Lorg/telegram/ui/Components/BackupImageView;->checkCreateBlurredImage()V

    return-void
.end method

.method public setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 10

    .line 205
    invoke-static {p1}, Lorg/telegram/messenger/ImageLocation;->getForPath(Ljava/lang/String;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public setImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 209
    invoke-static {p1}, Lorg/telegram/messenger/ImageLocation;->getForPath(Ljava/lang/String;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v1

    invoke-static {p3}, Lorg/telegram/messenger/ImageLocation;->getForPath(Ljava/lang/String;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ILjava/lang/Object;)V
    .locals 10

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move v8, p4

    move-object v9, p5

    .line 165
    invoke-virtual/range {v0 .. v9}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V
    .locals 10

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v9, p4

    .line 152
    invoke-virtual/range {v0 .. v9}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V
    .locals 10

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p4

    move-object v7, p3

    move-object v9, p5

    .line 148
    invoke-virtual/range {v0 .. v9}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 10

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v8, p5

    move-object/from16 v9, p6

    .line 201
    invoke-virtual/range {v0 .. v9}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 14

    move-object/from16 v0, p6

    if-eqz v0, :cond_0

    .line 214
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object v0, p0

    move-object v8, v1

    goto :goto_0

    :cond_0
    move-object v0, p0

    move-object/from16 v8, p5

    .line 216
    :goto_0
    iget-object v3, v0, Lorg/telegram/ui/Components/BackupImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    move/from16 v1, p8

    int-to-long v9, v1

    const/4 v13, 0x0

    move-object v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v11, p7

    move-object/from16 v12, p9

    invoke-virtual/range {v3 .. v13}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    .line 217
    invoke-virtual {p0}, Lorg/telegram/ui/Components/BackupImageView;->onNewImageSet()V

    return-void
.end method

.method public setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V
    .locals 14

    move-object v0, p0

    .line 156
    iget-object v1, v0, Lorg/telegram/ui/Components/BackupImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x1

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v8, p5

    move-object/from16 v12, p6

    invoke-virtual/range {v1 .. v13}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    .line 157
    invoke-virtual {p0}, Lorg/telegram/ui/Components/BackupImageView;->onNewImageSet()V

    return-void
.end method

.method public setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Ljava/lang/String;JILjava/lang/Object;)V
    .locals 12

    move-object v0, p0

    .line 221
    iget-object v1, v0, Lorg/telegram/ui/Components/BackupImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v7, p6

    move-object/from16 v9, p5

    move-object/from16 v10, p9

    move/from16 v11, p8

    invoke-virtual/range {v1 .. v11}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    .line 222
    invoke-virtual {p0}, Lorg/telegram/ui/Components/BackupImageView;->onNewImageSet()V

    return-void
.end method

.method public setImage(Lorg/telegram/messenger/SecureDocument;Ljava/lang/String;)V
    .locals 10

    .line 144
    invoke-static {p1}, Lorg/telegram/messenger/ImageLocation;->getForSecureDocument(Lorg/telegram/messenger/SecureDocument;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v2, p2

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 235
    iget-object v0, p0, Lorg/telegram/ui/Components/BackupImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 236
    invoke-virtual {p0}, Lorg/telegram/ui/Components/BackupImageView;->onNewImageSet()V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 257
    iget-object v0, p0, Lorg/telegram/ui/Components/BackupImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    .line 258
    invoke-virtual {p0}, Lorg/telegram/ui/Components/BackupImageView;->onNewImageSet()V

    return-void
.end method

.method public setImageMedia(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/Bitmap;IILjava/lang/Object;)V
    .locals 16

    move-object/from16 v0, p5

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 194
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    move-object v10, v2

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    move-object v10, v1

    .line 196
    :goto_0
    iget-object v3, v0, Lorg/telegram/ui/Components/BackupImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move/from16 v1, p6

    int-to-long v11, v1

    const/4 v13, 0x0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v14, p8

    move/from16 v15, p7

    invoke-virtual/range {v3 .. v15}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    .line 197
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/BackupImageView;->onNewImageSet()V

    return-void
.end method

.method public setImageMedia(Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_0

    .line 227
    iget-object v2, v0, Lorg/telegram/ui/Components/BackupImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 229
    :cond_0
    iget-object v3, v0, Lorg/telegram/ui/Components/BackupImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v10, 0x0

    move/from16 v1, p9

    int-to-long v11, v1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v13, p8

    move-object/from16 v14, p11

    move/from16 v15, p10

    invoke-virtual/range {v3 .. v15}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    .line 231
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/BackupImageView;->onNewImageSet()V

    return-void
.end method

.method public setImageResource(I)V
    .locals 1

    .line 240
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 241
    iget-object v0, p0, Lorg/telegram/ui/Components/BackupImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    .line 242
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 243
    invoke-virtual {p0}, Lorg/telegram/ui/Components/BackupImageView;->onNewImageSet()V

    return-void
.end method

.method public setImageResource(II)V
    .locals 2

    .line 247
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 249
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p2, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 251
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Components/BackupImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p2, p1}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    .line 252
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 253
    invoke-virtual {p0}, Lorg/telegram/ui/Components/BackupImageView;->onNewImageSet()V

    return-void
.end method

.method public setLayerNum(I)V
    .locals 1

    .line 262
    iget-object v0, p0, Lorg/telegram/ui/Components/BackupImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->setLayerNum(I)V

    return-void
.end method

.method public setOrientation(IIZ)V
    .locals 1

    .line 140
    iget-object v0, p0, Lorg/telegram/ui/Components/BackupImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/messenger/ImageReceiver;->setOrientation(IIZ)V

    return-void
.end method

.method public setOrientation(IZ)V
    .locals 1

    .line 136
    iget-object v0, p0, Lorg/telegram/ui/Components/BackupImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/ImageReceiver;->setOrientation(IZ)V

    return-void
.end method

.method public setRoundRadius(I)V
    .locals 1

    .line 266
    iget-object v0, p0, Lorg/telegram/ui/Components/BackupImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 267
    iget-boolean v0, p0, Lorg/telegram/ui/Components/BackupImageView;->blurAllowed:Z

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lorg/telegram/ui/Components/BackupImageView;->blurImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 270
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setRoundRadius(IIII)V
    .locals 1

    .line 274
    iget-object v0, p0, Lorg/telegram/ui/Components/BackupImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(IIII)V

    .line 275
    iget-boolean v0, p0, Lorg/telegram/ui/Components/BackupImageView;->blurAllowed:Z

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lorg/telegram/ui/Components/BackupImageView;->blurImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(IIII)V

    .line 278
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setSize(II)V
    .locals 0

    .line 294
    iput p1, p0, Lorg/telegram/ui/Components/BackupImageView;->width:I

    .line 295
    iput p2, p0, Lorg/telegram/ui/Components/BackupImageView;->height:I

    .line 296
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setUser(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 3

    .line 54
    iget-object v0, p0, Lorg/telegram/ui/Components/BackupImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$dimen;->telegram_avatar_size_medium:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 55
    new-instance v0, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 56
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundInProfileBlue:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->setColor(I)V

    .line 57
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    return-void
.end method
