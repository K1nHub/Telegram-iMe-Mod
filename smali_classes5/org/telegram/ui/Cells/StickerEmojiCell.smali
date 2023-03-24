.class public Lorg/telegram/ui/Cells/StickerEmojiCell;
.super Landroid/widget/FrameLayout;
.source "StickerEmojiCell.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
.implements Lorg/telegram/ui/Components/ListView/RecyclerListViewWithOverlayDraw$OverlayView;


# static fields
.field private static interpolator:Landroid/view/animation/AccelerateInterpolator;


# instance fields
.field private alpha:F

.field private changingAlpha:Z

.field private currentAccount:I

.field private currentEmoji:Ljava/lang/String;

.field private drawInParentView:Z

.field private emojiTextView:Landroid/widget/TextView;

.field private fromEmojiPanel:Z

.field private imageView:Lorg/telegram/messenger/ImageReceiver;

.field private isPremiumSticker:Z

.field private lastUpdateTime:J

.field private parentObject:Ljava/lang/Object;

.field private premiumAlpha:F

.field private premiumIconView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

.field private recent:Z

.field private scale:F

.field private scaled:Z

.field private showPremiumLock:Z

.field private sticker:Lorg/telegram/tgnet/TLRPC$Document;

.field private stickerPath:Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;

.field private time:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 60
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {v0, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Lorg/telegram/ui/Cells/StickerEmojiCell;->interpolator:Landroid/view/animation/AccelerateInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 8

    .line 73
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 53
    iput v0, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->alpha:F

    .line 61
    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v1, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->currentAccount:I

    .line 64
    iput v0, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->premiumAlpha:F

    .line 75
    iput-boolean p2, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->fromEmojiPanel:Z

    .line 77
    new-instance p2, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {p2}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    const/4 v0, 0x1

    .line 78
    invoke-virtual {p2, v0}, Lorg/telegram/messenger/ImageReceiver;->setAspectFit(Z)V

    .line 79
    iget-object p2, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p2, v0}, Lorg/telegram/messenger/ImageReceiver;->setLayerNum(I)V

    .line 81
    new-instance p2, Landroid/widget/TextView;

    invoke-direct {p2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->emojiTextView:Landroid/widget/TextView;

    const/high16 v1, 0x41800000    # 16.0f

    .line 82
    invoke-virtual {p2, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 85
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    const-string v1, "featuredStickers_addButton"

    .line 86
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 88
    new-instance p2, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    sget v1, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->TYPE_STICKERS_PREMIUM_LOCKED:I

    invoke-direct {p2, p1, v1}, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->premiumIconView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    .line 89
    iget-object p1, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->setImageReceiver(Lorg/telegram/messenger/ImageReceiver;)V

    .line 90
    iget-object p1, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->premiumIconView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    const/4 p2, 0x4

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    invoke-virtual {p1, v1, v2, v3, p2}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 91
    iget-object p1, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->premiumIconView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    iget-object p2, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->setImageReceiver(Lorg/telegram/messenger/ImageReceiver;)V

    .line 92
    iget-object p1, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->premiumIconView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    const/16 v1, 0x18

    const/16 v2, 0x18

    const/16 v3, 0x51

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    return-void
.end method

.method private drawInternal(Landroid/view/View;Landroid/graphics/Canvas;)V
    .locals 7

    .line 370
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->changingAlpha:Z

    const v1, 0x3f4ccccd    # 0.8f

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->scaled:Z

    if-eqz v0, :cond_0

    iget v3, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->scale:F

    cmpl-float v3, v3, v1

    if-nez v3, :cond_1

    :cond_0
    if-nez v0, :cond_7

    iget v0, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->scale:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_7

    .line 371
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 372
    iget-wide v5, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->lastUpdateTime:J

    sub-long v5, v3, v5

    .line 373
    iput-wide v3, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->lastUpdateTime:J

    .line 374
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->changingAlpha:Z

    if-eqz v0, :cond_4

    .line 375
    iget-wide v0, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->time:J

    add-long/2addr v0, v5

    iput-wide v0, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->time:J

    const-wide/16 v3, 0x41a

    cmp-long v0, v0, v3

    if-lez v0, :cond_2

    .line 377
    iput-wide v3, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->time:J

    .line 379
    :cond_2
    sget-object v0, Lorg/telegram/ui/Cells/StickerEmojiCell;->interpolator:Landroid/view/animation/AccelerateInterpolator;

    iget-wide v3, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->time:J

    long-to-float v1, v3

    const/high16 v3, 0x43160000    # 150.0f

    div-float/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    add-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->alpha:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_3

    const/4 v0, 0x0

    .line 381
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->changingAlpha:Z

    .line 382
    iput v2, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->alpha:F

    .line 384
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    iget v1, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->alpha:F

    iget v3, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->premiumAlpha:F

    mul-float/2addr v1, v3

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    goto :goto_0

    .line 385
    :cond_4
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->scaled:Z

    const/high16 v3, 0x43c80000    # 400.0f

    if-eqz v0, :cond_5

    iget v0, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->scale:F

    cmpl-float v4, v0, v1

    if-eqz v4, :cond_5

    long-to-float v4, v5

    div-float/2addr v4, v3

    sub-float/2addr v0, v4

    .line 386
    iput v0, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->scale:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_6

    .line 388
    iput v1, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->scale:F

    goto :goto_0

    .line 391
    :cond_5
    iget v0, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->scale:F

    long-to-float v1, v5

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->scale:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_6

    .line 393
    iput v2, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->scale:F

    .line 396
    :cond_6
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_7
    const/16 p1, 0x42

    .line 398
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 399
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    shr-int/lit8 v0, v0, 0x1

    .line 400
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    shr-int/lit8 v1, v1, 0x1

    .line 401
    iget-object v3, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    int-to-float v0, v0

    int-to-float p1, p1

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, p1, v4

    sub-float v5, v0, v4

    int-to-float v1, v1

    sub-float v4, v1, v4

    invoke-virtual {v3, v5, v4, p1, p1}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 402
    iget-object p1, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    iget v3, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->alpha:F

    iget v4, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->premiumAlpha:F

    mul-float/2addr v3, v4

    invoke-virtual {p1, v3}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 403
    iget p1, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->scale:F

    cmpl-float p1, p1, v2

    if-eqz p1, :cond_8

    .line 404
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 405
    iget p1, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->scale:F

    invoke-virtual {p2, p1, p1, v0, v1}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 406
    iget-object p1, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 407
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1

    .line 409
    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    :goto_1
    return-void
.end method

.method private updatePremiumStatus(Z)V
    .locals 6

    .line 235
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->isPremiumSticker:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 236
    iput-boolean v2, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->showPremiumLock:Z

    goto :goto_0

    .line 238
    :cond_0
    iput-boolean v1, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->showPremiumLock:Z

    .line 240
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->premiumIconView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 241
    iget v3, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v3

    const/16 v4, 0x8

    if-nez v3, :cond_1

    const/16 v3, 0x18

    .line 242
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v3, 0x51

    .line 243
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 244
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 245
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 246
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->premiumIconView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    const/4 v1, 0x4

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {v0, v3, v4, v5, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    goto :goto_1

    :cond_1
    const/16 v1, 0x10

    .line 248
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v1, 0x55

    .line 249
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 250
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 251
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 252
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->premiumIconView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 254
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->premiumIconView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    iget v1, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->setLocked(Z)V

    .line 255
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->premiumIconView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    iget-boolean v1, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->showPremiumLock:Z

    const v2, 0x3f666666    # 0.9f

    invoke-static {v0, v1, v2, p1}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 256
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/StickerEmojiCell;->invalidate()V

    return-void
.end method


# virtual methods
.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    .line 349
    sget p2, Lorg/telegram/messenger/NotificationCenter;->currentUserPremiumStatusChanged:I

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    .line 350
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/StickerEmojiCell;->updatePremiumStatus(Z)V

    :cond_0
    return-void
.end method

.method public disable()V
    .locals 3

    const/4 v0, 0x1

    .line 260
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->changingAlpha:Z

    const/high16 v0, 0x3f000000    # 0.5f

    .line 261
    iput v0, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->alpha:F

    const-wide/16 v1, 0x0

    .line 262
    iput-wide v1, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->time:J

    .line 263
    iget-object v1, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    iget v2, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->premiumAlpha:F

    mul-float/2addr v0, v2

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 264
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->invalidate()V

    .line 265
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->lastUpdateTime:J

    .line 266
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/StickerEmojiCell;->invalidate()V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 356
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->drawInParentView:Z

    if-nez v0, :cond_0

    .line 357
    invoke-direct {p0, p0, p1}, Lorg/telegram/ui/Cells/StickerEmojiCell;->drawInternal(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 359
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getEmoji()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->currentEmoji:Ljava/lang/String;

    return-object v0
.end method

.method public getImageView()Lorg/telegram/messenger/ImageReceiver;
    .locals 1

    .line 284
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    return-object v0
.end method

.method public getParentObject()Ljava/lang/Object;
    .locals 1

    .line 109
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->parentObject:Ljava/lang/Object;

    return-object v0
.end method

.method public getSendAnimationData()Lorg/telegram/messenger/MessageObject$SendAnimationData;
    .locals 5

    .line 129
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    .line 130
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->hasNotThumb()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 133
    :cond_0
    new-instance v1, Lorg/telegram/messenger/MessageObject$SendAnimationData;

    invoke-direct {v1}, Lorg/telegram/messenger/MessageObject$SendAnimationData;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 135
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->getLocationInWindow([I)V

    .line 136
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getCenterX()F

    move-result v3

    const/4 v4, 0x0

    aget v4, v2, v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, v1, Lorg/telegram/messenger/MessageObject$SendAnimationData;->x:F

    .line 137
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getCenterY()F

    move-result v3

    const/4 v4, 0x1

    aget v2, v2, v4

    int-to-float v2, v2

    add-float/2addr v3, v2

    iput v3, v1, Lorg/telegram/messenger/MessageObject$SendAnimationData;->y:F

    .line 138
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()F

    move-result v2

    iput v2, v1, Lorg/telegram/messenger/MessageObject$SendAnimationData;->width:F

    .line 139
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()F

    move-result v0

    iput v0, v1, Lorg/telegram/messenger/MessageObject$SendAnimationData;->height:F

    return-object v1
.end method

.method public getSticker()Lorg/telegram/tgnet/TLRPC$Document;
    .locals 1

    .line 97
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->sticker:Lorg/telegram/tgnet/TLRPC$Document;

    return-object v0
.end method

.method public getStickerPath()Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;
    .locals 2

    .line 101
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->stickerPath:Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;->validated:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public invalidate()V
    .locals 1

    .line 289
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->drawInParentView:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 290
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 292
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->emojiTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 293
    invoke-super {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public isDisabled()Z
    .locals 1

    .line 276
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->changingAlpha:Z

    return v0
.end method

.method public isRecent()Z
    .locals 1

    .line 113
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->recent:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 329
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 330
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->drawInParentView:Z

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setInvalidateAll(Z)V

    .line 332
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    goto :goto_0

    .line 334
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    .line 336
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    .line 337
    iget v0, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->currentUserPremiumStatusChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 342
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 343
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    .line 344
    iget v0, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->currentUserPremiumStatusChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 7

    .line 299
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 300
    sget v0, Lorg/telegram/messenger/R$string;->AttachSticker:I

    const-string v1, "AttachSticker"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 301
    iget-object v1, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->sticker:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    move v2, v1

    .line 302
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->sticker:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 303
    iget-object v3, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->sticker:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 304
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;

    if-eqz v4, :cond_0

    .line 305
    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->alt:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 306
    iget-object v2, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->emojiTextView:Landroid/widget/TextView;

    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->alt:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {v5}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-static {v4, v5, v6, v1}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->alt:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 313
    :cond_1
    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 314
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    return-void
.end method

.method public preDraw(Landroid/view/View;Landroid/graphics/Canvas;)V
    .locals 1

    .line 364
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->drawInParentView:Z

    if-eqz v0, :cond_0

    .line 365
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Cells/StickerEmojiCell;->drawInternal(Landroid/view/View;Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public setRecent(Z)V
    .locals 0

    .line 117
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->recent:Z

    return-void
.end method

.method public setScaled(Z)V
    .locals 2

    .line 270
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->scaled:Z

    .line 271
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->lastUpdateTime:J

    .line 272
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/StickerEmojiCell;->invalidate()V

    return-void
.end method

.method public setSticker(Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;)V
    .locals 6

    .line 125
    iget-object v4, p1, Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;->emoji:Ljava/lang/String;

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v5, v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Cells/StickerEmojiCell;->setSticker(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;Ljava/lang/Object;Ljava/lang/String;Z)V

    return-void
.end method

.method public setSticker(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;Z)V
    .locals 6

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v5, p3

    .line 121
    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Cells/StickerEmojiCell;->setSticker(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;Ljava/lang/Object;Ljava/lang/String;Z)V

    return-void
.end method

.method public setSticker(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;Ljava/lang/Object;Ljava/lang/String;Z)V
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    .line 144
    iput-object v3, v0, Lorg/telegram/ui/Cells/StickerEmojiCell;->currentEmoji:Ljava/lang/String;

    .line 145
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isPremiumSticker(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v4

    iput-boolean v4, v0, Lorg/telegram/ui/Cells/StickerEmojiCell;->isPremiumSticker:Z

    const/4 v4, 0x0

    .line 157
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 146
    iput-boolean v4, v0, Lorg/telegram/ui/Cells/StickerEmojiCell;->drawInParentView:Z

    .line 147
    iget-object v5, v0, Lorg/telegram/ui/Cells/StickerEmojiCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/ImageReceiver;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 148
    iget-boolean v5, v0, Lorg/telegram/ui/Cells/StickerEmojiCell;->isPremiumSticker:Z

    if-eqz v5, :cond_0

    .line 149
    iget-object v5, v0, Lorg/telegram/ui/Cells/StickerEmojiCell;->premiumIconView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    const-string v7, "windowBackgroundWhite"

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v7}, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->setColor(I)V

    .line 150
    iget-object v5, v0, Lorg/telegram/ui/Cells/StickerEmojiCell;->premiumIconView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->setWaitingImage()V

    :cond_0
    const/4 v15, 0x4

    const/high16 v5, 0x3f800000    # 1.0f

    const/16 v16, 0x10

    const/4 v13, 0x1

    if-eqz v2, :cond_5

    .line 153
    iput-object v2, v0, Lorg/telegram/ui/Cells/StickerEmojiCell;->stickerPath:Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;

    .line 154
    iget-boolean v1, v2, Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;->validated:Z

    const-string v7, "tgs"

    const-string v8, "dialogBackgroundGray"

    if-eqz v1, :cond_2

    .line 155
    iget-object v1, v0, Lorg/telegram/ui/Cells/StickerEmojiCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    iget-object v9, v2, Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;->path:Ljava/lang/String;

    invoke-static {v9}, Lorg/telegram/messenger/ImageLocation;->getForPath(Ljava/lang/String;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v8, v5}, Lorg/telegram/messenger/DocumentObject;->getSvgRectThumb(Ljava/lang/String;F)Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    move-result-object v12

    const-wide/16 v17, 0x0

    iget-boolean v2, v2, Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;->animated:Z

    if-eqz v2, :cond_1

    move-object v2, v7

    goto :goto_0

    :cond_1
    move-object v2, v6

    :goto_0
    const/16 v19, 0x1

    const-string v7, "80_80"

    move-object v5, v1

    move-object v6, v9

    move-object v8, v10

    move-object v9, v11

    move-object v10, v12

    move-wide/from16 v11, v17

    move v1, v13

    move-object v13, v2

    move v2, v15

    move/from16 v15, v19

    invoke-virtual/range {v5 .. v15}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto :goto_2

    :cond_2
    move v1, v13

    .line 157
    iget-object v9, v0, Lorg/telegram/ui/Cells/StickerEmojiCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v8, v5}, Lorg/telegram/messenger/DocumentObject;->getSvgRectThumb(Ljava/lang/String;F)Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    move-result-object v17

    const-wide/16 v18, 0x0

    iget-boolean v2, v2, Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;->animated:Z

    if-eqz v2, :cond_3

    move-object v2, v7

    goto :goto_1

    :cond_3
    move-object v2, v6

    :goto_1
    const/16 v20, 0x1

    move-object v5, v9

    move-object v6, v10

    move-object v7, v11

    move-object v8, v12

    move-object v9, v13

    move-object/from16 v10, v17

    move-wide/from16 v11, v18

    move-object v13, v2

    move v2, v15

    move/from16 v15, v20

    invoke-virtual/range {v5 .. v15}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    :goto_2
    if-eqz v3, :cond_4

    .line 160
    iget-object v2, v0, Lorg/telegram/ui/Cells/StickerEmojiCell;->emojiTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {v5}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v5

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-static {v3, v5, v6, v4}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v2, v0, Lorg/telegram/ui/Cells/StickerEmojiCell;->emojiTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 163
    :cond_4
    iget-object v3, v0, Lorg/telegram/ui/Cells/StickerEmojiCell;->emojiTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3
    move v6, v1

    goto/16 :goto_9

    :cond_5
    move v6, v13

    move v2, v15

    if-eqz v1, :cond_16

    .line 166
    iput-object v1, v0, Lorg/telegram/ui/Cells/StickerEmojiCell;->sticker:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v7, p3

    .line 167
    iput-object v7, v0, Lorg/telegram/ui/Cells/StickerEmojiCell;->parentObject:Ljava/lang/Object;

    .line 169
    iget-object v7, v1, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    const/16 v8, 0x5a

    invoke-static {v7, v8}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v7

    .line 170
    iget-boolean v8, v0, Lorg/telegram/ui/Cells/StickerEmojiCell;->fromEmojiPanel:Z

    if-eqz v8, :cond_6

    const-string v9, "emptyListPlaceholder"

    goto :goto_4

    :cond_6
    const-string v9, "windowBackgroundGray"

    :goto_4
    if-eqz v8, :cond_7

    const v5, 0x3e4ccccd    # 0.2f

    :cond_7
    invoke-static {v1, v9, v5}, Lorg/telegram/messenger/DocumentObject;->getSvgThumb(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;F)Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    move-result-object v5

    .line 171
    iget-boolean v8, v0, Lorg/telegram/ui/Cells/StickerEmojiCell;->fromEmojiPanel:Z

    if-eqz v8, :cond_8

    const-string v8, "66_66_pcache_compress"

    goto :goto_5

    :cond_8
    const-string v8, "66_66"

    :goto_5
    move-object v11, v8

    .line 172
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isTextColorEmoji(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 173
    iget-object v8, v0, Lorg/telegram/ui/Cells/StickerEmojiCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->chat_animatedEmojiTextColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v8, v9}, Lorg/telegram/messenger/ImageReceiver;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 175
    :cond_9
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->canAutoplayAnimatedSticker(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 176
    iget-boolean v8, v0, Lorg/telegram/ui/Cells/StickerEmojiCell;->fromEmojiPanel:Z

    if-eqz v8, :cond_a

    .line 177
    iput-boolean v6, v0, Lorg/telegram/ui/Cells/StickerEmojiCell;->drawInParentView:Z

    :cond_a
    if-eqz v5, :cond_b

    .line 180
    iget-object v8, v0, Lorg/telegram/ui/Cells/StickerEmojiCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v18

    invoke-static {v7, v1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v20

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-wide/16 v25, 0x0

    const/16 v27, 0x0

    iget-object v7, v0, Lorg/telegram/ui/Cells/StickerEmojiCell;->parentObject:Ljava/lang/Object;

    const/16 v29, 0x1

    move-object/from16 v17, v8

    move-object/from16 v19, v11

    move-object/from16 v24, v5

    move-object/from16 v28, v7

    invoke-virtual/range {v17 .. v29}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto/16 :goto_6

    :cond_b
    if-eqz v7, :cond_c

    .line 183
    iget-object v5, v0, Lorg/telegram/ui/Cells/StickerEmojiCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v18

    invoke-static {v7, v1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v20

    const/16 v21, 0x0

    const/16 v22, 0x0

    iget-object v7, v0, Lorg/telegram/ui/Cells/StickerEmojiCell;->parentObject:Ljava/lang/Object;

    const/16 v24, 0x1

    move-object/from16 v17, v5

    move-object/from16 v19, v11

    move-object/from16 v23, v7

    invoke-virtual/range {v17 .. v24}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)V

    goto :goto_6

    .line 185
    :cond_c
    iget-object v9, v0, Lorg/telegram/ui/Cells/StickerEmojiCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v10

    const/4 v12, 0x0

    const/4 v13, 0x0

    iget-object v14, v0, Lorg/telegram/ui/Cells/StickerEmojiCell;->parentObject:Ljava/lang/Object;

    const/4 v15, 0x1

    invoke-virtual/range {v9 .. v15}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    goto :goto_6

    :cond_d
    if-eqz v5, :cond_f

    if-eqz v7, :cond_e

    .line 190
    iget-object v8, v0, Lorg/telegram/ui/Cells/StickerEmojiCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {v7, v1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v18

    iget-object v7, v0, Lorg/telegram/ui/Cells/StickerEmojiCell;->parentObject:Ljava/lang/Object;

    const/16 v23, 0x1

    const-string v21, "webp"

    move-object/from16 v17, v8

    move-object/from16 v19, v11

    move-object/from16 v20, v5

    move-object/from16 v22, v7

    invoke-virtual/range {v17 .. v23}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    goto :goto_6

    .line 192
    :cond_e
    iget-object v7, v0, Lorg/telegram/ui/Cells/StickerEmojiCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v18

    iget-object v8, v0, Lorg/telegram/ui/Cells/StickerEmojiCell;->parentObject:Ljava/lang/Object;

    const/16 v23, 0x1

    const-string v21, "webp"

    move-object/from16 v17, v7

    move-object/from16 v19, v11

    move-object/from16 v20, v5

    move-object/from16 v22, v8

    invoke-virtual/range {v17 .. v23}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    goto :goto_6

    :cond_f
    if-eqz v7, :cond_10

    .line 195
    iget-object v9, v0, Lorg/telegram/ui/Cells/StickerEmojiCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {v7, v1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v10

    const/4 v12, 0x0

    iget-object v14, v0, Lorg/telegram/ui/Cells/StickerEmojiCell;->parentObject:Ljava/lang/Object;

    const/4 v15, 0x1

    const-string v13, "webp"

    invoke-virtual/range {v9 .. v15}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    goto :goto_6

    .line 197
    :cond_10
    iget-object v9, v0, Lorg/telegram/ui/Cells/StickerEmojiCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v10

    const/4 v12, 0x0

    iget-object v14, v0, Lorg/telegram/ui/Cells/StickerEmojiCell;->parentObject:Ljava/lang/Object;

    const/4 v15, 0x1

    const-string v13, "webp"

    invoke-virtual/range {v9 .. v15}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    :goto_6
    if-eqz v3, :cond_11

    .line 202
    iget-object v1, v0, Lorg/telegram/ui/Cells/StickerEmojiCell;->emojiTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {v3, v2, v5, v4}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v1, v0, Lorg/telegram/ui/Cells/StickerEmojiCell;->emojiTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_9

    :cond_11
    if-eqz p5, :cond_15

    move v2, v4

    .line 206
    :goto_7
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_13

    .line 207
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 208
    instance-of v5, v3, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;

    if-eqz v5, :cond_12

    .line 209
    iget-object v1, v3, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->alt:Ljava/lang/String;

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_13

    .line 210
    iget-object v1, v0, Lorg/telegram/ui/Cells/StickerEmojiCell;->emojiTextView:Landroid/widget/TextView;

    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->alt:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {v2, v3, v5, v4}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v13, v6

    goto :goto_8

    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_13
    move v13, v4

    :goto_8
    if-nez v13, :cond_14

    .line 217
    iget-object v1, v0, Lorg/telegram/ui/Cells/StickerEmojiCell;->emojiTextView:Landroid/widget/TextView;

    iget v2, v0, Lorg/telegram/ui/Cells/StickerEmojiCell;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/Cells/StickerEmojiCell;->sticker:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v7, v3, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-virtual {v2, v7, v8}, Lorg/telegram/messenger/MediaDataController;->getEmojiForSticker(J)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/Cells/StickerEmojiCell;->emojiTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {v2, v3, v5, v4}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    :cond_14
    iget-object v1, v0, Lorg/telegram/ui/Cells/StickerEmojiCell;->emojiTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_9

    .line 221
    :cond_15
    iget-object v1, v0, Lorg/telegram/ui/Cells/StickerEmojiCell;->emojiTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 224
    :cond_16
    :goto_9
    invoke-direct {v0, v4}, Lorg/telegram/ui/Cells/StickerEmojiCell;->updatePremiumStatus(Z)V

    .line 225
    iget-object v1, v0, Lorg/telegram/ui/Cells/StickerEmojiCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    iget v2, v0, Lorg/telegram/ui/Cells/StickerEmojiCell;->alpha:F

    iget v3, v0, Lorg/telegram/ui/Cells/StickerEmojiCell;->premiumAlpha:F

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 226
    iget-boolean v1, v0, Lorg/telegram/ui/Cells/StickerEmojiCell;->drawInParentView:Z

    if-eqz v1, :cond_17

    .line 227
    iget-object v1, v0, Lorg/telegram/ui/Cells/StickerEmojiCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v6}, Lorg/telegram/messenger/ImageReceiver;->setInvalidateAll(Z)V

    .line 228
    iget-object v1, v0, Lorg/telegram/ui/Cells/StickerEmojiCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    goto :goto_a

    .line 230
    :cond_17
    iget-object v1, v0, Lorg/telegram/ui/Cells/StickerEmojiCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    :goto_a
    return-void
.end method

.method public showingBitmap()Z
    .locals 1

    .line 280
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
