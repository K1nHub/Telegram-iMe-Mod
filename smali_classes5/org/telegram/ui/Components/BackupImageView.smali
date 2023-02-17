.class public Lorg/telegram/ui/Components/BackupImageView;
.super Landroid/view/View;
.source "BackupImageView.java"


# instance fields
.field public animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

.field attached:Z

.field private avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field protected blurAllowed:Z

.field protected blurImageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field protected hasBlur:Z

.field protected height:I

.field protected imageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field roundRadiusAnimator:Landroid/animation/ValueAnimator;

.field protected width:I


# direct methods
.method public static synthetic $r8$lambda$OfQ3EVC9RdfTAT3n3R8nzoXlGWw(Lorg/telegram/ui/Components/BackupImageView;Lorg/telegram/messenger/ImageReceiver;ZZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/BackupImageView;->lambda$new$0(Lorg/telegram/messenger/ImageReceiver;ZZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 54
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 44
    iput p1, p0, Lorg/telegram/ui/Components/BackupImageView;->width:I

    .line 45
    iput p1, p0, Lorg/telegram/ui/Components/BackupImageView;->height:I

    .line 55
    new-instance p1, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {p1, p0}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/BackupImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 57
    new-instance v0, Lorg/telegram/ui/Components/BackupImageView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/BackupImageView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/BackupImageView;)V

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/ImageReceiver;->setDelegate(Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 44
    iput p1, p0, Lorg/telegram/ui/Components/BackupImageView;->width:I

    .line 45
    iput p1, p0, Lorg/telegram/ui/Components/BackupImageView;->height:I

    .line 37
    new-instance p1, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {p1, p0}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/BackupImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    return-void
.end method

.method private checkCreateBlurredImage()V
    .locals 2

    .line 99
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

    .line 100
    iget-object v0, p0, Lorg/telegram/ui/Components/BackupImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 102
    iget-object v1, p0, Lorg/telegram/ui/Components/BackupImageView;->blurImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {v0}, Lorg/telegram/messenger/Utilities;->stackBlurBitmapMax(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 103
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$0(Lorg/telegram/messenger/ImageReceiver;ZZZ)V
    .locals 0

    if-eqz p2, :cond_0

    if-nez p3, :cond_0

    .line 59
    invoke-direct {p0}, Lorg/telegram/ui/Components/BackupImageView;->checkCreateBlurredImage()V

    :cond_0
    return-void
.end method

.method private onNewImageSet()V
    .locals 2

    .line 89
    iget-boolean v0, p0, Lorg/telegram/ui/Components/BackupImageView;->hasBlur:Z

    if-eqz v0, :cond_1

    .line 90
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

    .line 91
    iget-object v0, p0, Lorg/telegram/ui/Components/BackupImageView;->blurImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 93
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/BackupImageView;->blurImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 94
    invoke-direct {p0}, Lorg/telegram/ui/Components/BackupImageView;->checkCreateBlurredImage()V

    :cond_1
    return-void
.end method


# virtual methods
.method public animateToRoundRadius(I)V
    .locals 3

    .line 341
    invoke-virtual {p0}, Lorg/telegram/ui/Components/BackupImageView;->getRoundRadius()[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    if-eq v0, p1, :cond_1

    .line 342
    iget-object v0, p0, Lorg/telegram/ui/Components/BackupImageView;->roundRadiusAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 343
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 345
    invoke-virtual {p0}, Lorg/telegram/ui/Components/BackupImageView;->getRoundRadius()[I

    move-result-object v2

    aget v2, v2, v1

    aput v2, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/BackupImageView;->roundRadiusAnimator:Landroid/animation/ValueAnimator;

    .line 346
    new-instance v0, Lorg/telegram/ui/Components/BackupImageView$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/BackupImageView$1;-><init>(Lorg/telegram/ui/Components/BackupImageView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 352
    iget-object p1, p0, Lorg/telegram/ui/Components/BackupImageView;->roundRadiusAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 353
    iget-object p1, p0, Lorg/telegram/ui/Components/BackupImageView;->roundRadiusAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    return-void
.end method

.method public getAvatarDrawable()Lorg/telegram/ui/Components/AvatarDrawable;
    .locals 1

    .line 265
    iget-object v0, p0, Lorg/telegram/ui/Components/BackupImageView;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    if-nez v0, :cond_0

    .line 266
    new-instance v0, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/BackupImageView;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 268
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/BackupImageView;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    return-object v0
.end method

.method public getImageReceiver()Lorg/telegram/messenger/ImageReceiver;
    .locals 1

    .line 255
    iget-object v0, p0, Lorg/telegram/ui/Components/BackupImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    return-object v0
.end method

.method public getRoundRadius()[I
    .locals 1

    .line 247
    iget-object v0, p0, Lorg/telegram/ui/Components/BackupImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getRoundRadius()[I

    move-result-object v0

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 286
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 287
    iput-boolean v0, p0, Lorg/telegram/ui/Components/BackupImageView;->attached:Z

    .line 288
    iget-object v0, p0, Lorg/telegram/ui/Components/BackupImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    .line 289
    iget-boolean v0, p0, Lorg/telegram/ui/Components/BackupImageView;->blurAllowed:Z

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lorg/telegram/ui/Components/BackupImageView;->blurImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    .line 292
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/BackupImageView;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v0, :cond_1

    .line 293
    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->addView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 273
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 274
    iput-boolean v0, p0, Lorg/telegram/ui/Components/BackupImageView;->attached:Z

    .line 275
    iget-object v0, p0, Lorg/telegram/ui/Components/BackupImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    .line 276
    iget-boolean v0, p0, Lorg/telegram/ui/Components/BackupImageView;->blurAllowed:Z

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lorg/telegram/ui/Components/BackupImageView;->blurImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    .line 279
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/BackupImageView;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v0, :cond_1

    .line 280
    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->removeView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 299
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

    .line 303
    :cond_1
    iget v1, p0, Lorg/telegram/ui/Components/BackupImageView;->width:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    iget v1, p0, Lorg/telegram/ui/Components/BackupImageView;->height:I

    if-eq v1, v2, :cond_2

    .line 304
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

    .line 305
    iget-boolean v1, p0, Lorg/telegram/ui/Components/BackupImageView;->blurAllowed:Z

    if-eqz v1, :cond_3

    .line 306
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

    .line 309
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 310
    iget-boolean v1, p0, Lorg/telegram/ui/Components/BackupImageView;->blurAllowed:Z

    if-eqz v1, :cond_3

    .line 311
    iget-object v1, p0, Lorg/telegram/ui/Components/BackupImageView;->blurImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v3, v3, v2, v4}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 314
    :cond_3
    :goto_1
    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 315
    iget-boolean v0, p0, Lorg/telegram/ui/Components/BackupImageView;->blurAllowed:Z

    if-eqz v0, :cond_4

    .line 316
    iget-object v0, p0, Lorg/telegram/ui/Components/BackupImageView;->blurImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    :cond_4
    return-void
.end method

.method public setAnimatedEmojiDrawable(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)V
    .locals 2

    .line 325
    iget-object v0, p0, Lorg/telegram/ui/Components/BackupImageView;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-ne v0, p1, :cond_0

    return-void

    .line 328
    :cond_0
    iget-boolean v1, p0, Lorg/telegram/ui/Components/BackupImageView;->attached:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 329
    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->removeView(Landroid/view/View;)V

    .line 331
    :cond_1
    iput-object p1, p0, Lorg/telegram/ui/Components/BackupImageView;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    .line 332
    iget-boolean v0, p0, Lorg/telegram/ui/Components/BackupImageView;->attached:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 333
    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->addView(Landroid/view/View;)V

    .line 335
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setAspectFit(Z)V
    .locals 1

    .line 251
    iget-object v0, p0, Lorg/telegram/ui/Components/BackupImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->setAspectFit(Z)V

    return-void
.end method

.method public setBlurAllowed(Z)V
    .locals 1

    .line 65
    iget-boolean v0, p0, Lorg/telegram/ui/Components/BackupImageView;->attached:Z

    if-nez v0, :cond_1

    .line 68
    iput-boolean p1, p0, Lorg/telegram/ui/Components/BackupImageView;->blurAllowed:Z

    if-eqz p1, :cond_0

    .line 70
    new-instance p1, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {p1}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/BackupImageView;->blurImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    :cond_0
    return-void

    .line 66
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "You should call setBlurAllowed(...) only when detached!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 321
    iget-object v0, p0, Lorg/telegram/ui/Components/BackupImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V
    .locals 1

    .line 147
    iget-object v0, p0, Lorg/telegram/ui/Components/BackupImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/ImageReceiver;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Landroid/graphics/drawable/Drawable;)V

    .line 148
    invoke-direct {p0}, Lorg/telegram/ui/Components/BackupImageView;->onNewImageSet()V

    return-void
.end method

.method public setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;Ljava/lang/Object;)V
    .locals 1

    .line 152
    iget-object v0, p0, Lorg/telegram/ui/Components/BackupImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/messenger/ImageReceiver;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    .line 153
    invoke-direct {p0}, Lorg/telegram/ui/Components/BackupImageView;->onNewImageSet()V

    return-void
.end method

.method public setHasBlur(Z)V
    .locals 1

    if-eqz p1, :cond_1

    .line 75
    iget-boolean v0, p0, Lorg/telegram/ui/Components/BackupImageView;->blurAllowed:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 76
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "You should call setBlurAllowed(...) before calling setHasBlur(true)!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 78
    :cond_1
    :goto_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/BackupImageView;->hasBlur:Z

    if-nez p1, :cond_3

    .line 80
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

    .line 81
    iget-object p1, p0, Lorg/telegram/ui/Components/BackupImageView;->blurImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 83
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/BackupImageView;->blurImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 85
    :cond_3
    invoke-direct {p0}, Lorg/telegram/ui/Components/BackupImageView;->checkCreateBlurredImage()V

    return-void
.end method

.method public setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 10

    .line 170
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

    .line 174
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

    .line 134
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

    .line 121
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

    .line 117
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

    .line 166
    invoke-virtual/range {v0 .. v9}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 14

    move-object/from16 v0, p6

    if-eqz v0, :cond_0

    .line 179
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object v0, p0

    move-object v8, v1

    goto :goto_0

    :cond_0
    move-object v0, p0

    move-object/from16 v8, p5

    .line 181
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

    .line 182
    invoke-direct {p0}, Lorg/telegram/ui/Components/BackupImageView;->onNewImageSet()V

    return-void
.end method

.method public setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V
    .locals 14

    move-object v0, p0

    .line 125
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

    .line 126
    invoke-direct {p0}, Lorg/telegram/ui/Components/BackupImageView;->onNewImageSet()V

    return-void
.end method

.method public setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Ljava/lang/String;JILjava/lang/Object;)V
    .locals 12

    move-object v0, p0

    .line 186
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

    .line 187
    invoke-direct {p0}, Lorg/telegram/ui/Components/BackupImageView;->onNewImageSet()V

    return-void
.end method

.method public setImage(Lorg/telegram/messenger/SecureDocument;Ljava/lang/String;)V
    .locals 10

    .line 113
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

    .line 200
    iget-object v0, p0, Lorg/telegram/ui/Components/BackupImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 201
    invoke-direct {p0}, Lorg/telegram/ui/Components/BackupImageView;->onNewImageSet()V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 222
    iget-object v0, p0, Lorg/telegram/ui/Components/BackupImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    .line 223
    invoke-direct {p0}, Lorg/telegram/ui/Components/BackupImageView;->onNewImageSet()V

    return-void
.end method

.method public setImageMedia(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/Bitmap;IILjava/lang/Object;)V
    .locals 16

    move-object/from16 v0, p5

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 159
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    move-object v10, v2

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    move-object v10, v1

    .line 161
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

    .line 162
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/BackupImageView;->onNewImageSet()V

    return-void
.end method

.method public setImageMedia(Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_0

    .line 192
    iget-object v2, v0, Lorg/telegram/ui/Components/BackupImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 194
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

    .line 196
    :goto_0
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/BackupImageView;->onNewImageSet()V

    return-void
.end method

.method public setImageResource(I)V
    .locals 1

    .line 205
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 206
    iget-object v0, p0, Lorg/telegram/ui/Components/BackupImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    .line 207
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 208
    invoke-direct {p0}, Lorg/telegram/ui/Components/BackupImageView;->onNewImageSet()V

    return-void
.end method

.method public setLayerNum(I)V
    .locals 1

    .line 227
    iget-object v0, p0, Lorg/telegram/ui/Components/BackupImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->setLayerNum(I)V

    return-void
.end method

.method public setOrientation(IZ)V
    .locals 1

    .line 109
    iget-object v0, p0, Lorg/telegram/ui/Components/BackupImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/ImageReceiver;->setOrientation(IZ)V

    return-void
.end method

.method public setRoundRadius(I)V
    .locals 1

    .line 231
    iget-object v0, p0, Lorg/telegram/ui/Components/BackupImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 232
    iget-boolean v0, p0, Lorg/telegram/ui/Components/BackupImageView;->blurAllowed:Z

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lorg/telegram/ui/Components/BackupImageView;->blurImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 235
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setRoundRadius(IIII)V
    .locals 1

    .line 239
    iget-object v0, p0, Lorg/telegram/ui/Components/BackupImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(IIII)V

    .line 240
    iget-boolean v0, p0, Lorg/telegram/ui/Components/BackupImageView;->blurAllowed:Z

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lorg/telegram/ui/Components/BackupImageView;->blurImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(IIII)V

    .line 243
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setSize(II)V
    .locals 0

    .line 259
    iput p1, p0, Lorg/telegram/ui/Components/BackupImageView;->width:I

    .line 260
    iput p2, p0, Lorg/telegram/ui/Components/BackupImageView;->height:I

    .line 261
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
