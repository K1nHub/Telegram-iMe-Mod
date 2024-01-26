.class public Lorg/telegram/ui/Cells/ShareDialogCell$RepostStoryDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ShareDialogCell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Cells/ShareDialogCell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RepostStoryDrawable"
.end annotation


# instance fields
.field alpha:I

.field private final drawable:Landroid/graphics/drawable/Drawable;

.field private final gradient:Landroid/graphics/LinearGradient;

.field private final lottieDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

.field private final paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 11

    .line 424
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 419
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ShareDialogCell$RepostStoryDrawable;->paint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    .line 443
    iput v2, p0, Lorg/telegram/ui/Cells/ShareDialogCell$RepostStoryDrawable;->alpha:I

    .line 425
    new-instance v2, Landroid/graphics/LinearGradient;

    const/16 v3, 0x38

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v6, v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v7, v3

    const/4 v3, 0x2

    new-array v8, v3, [I

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_stories_circle1:I

    .line 426
    invoke-static {v4, p4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    const/4 v5, 0x0

    aput v4, v8, v5

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_stories_circle2:I

    .line 427
    invoke-static {v4, p4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p4

    aput p4, v8, v1

    new-array v9, v3, [F

    fill-array-data v9, :array_0

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v2, p0, Lorg/telegram/ui/Cells/ShareDialogCell$RepostStoryDrawable;->gradient:Landroid/graphics/LinearGradient;

    .line 429
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/4 p4, 0x0

    if-eqz p3, :cond_0

    .line 432
    new-instance p1, Lorg/telegram/ui/Components/RLottieDrawable;

    sget v1, Lorg/telegram/messenger/R$raw;->story_repost:I

    const/16 p3, 0x2a

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v2, "story_repost"

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(ILjava/lang/String;IIZ[I)V

    iput-object p1, p0, Lorg/telegram/ui/Cells/ShareDialogCell$RepostStoryDrawable;->lottieDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    .line 433
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RLottieDrawable;->setMasterParent(Landroid/view/View;)V

    .line 434
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lorg/telegram/ui/Cells/ShareDialogCell$RepostStoryDrawable$$ExternalSyntheticLambda0;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Cells/ShareDialogCell$RepostStoryDrawable$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/RLottieDrawable;)V

    const-wide/16 v0, 0x1c2

    invoke-static {p2, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 435
    iput-object p4, p0, Lorg/telegram/ui/Cells/ShareDialogCell$RepostStoryDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 437
    :cond_0
    iput-object p4, p0, Lorg/telegram/ui/Cells/ShareDialogCell$RepostStoryDrawable;->lottieDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    .line 438
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$drawable;->large_repost_story:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Cells/ShareDialogCell$RepostStoryDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    .line 439
    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    const/4 p3, -0x1

    sget-object p4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p3, p4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 446
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 447
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 448
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 449
    iget-object v1, p0, Lorg/telegram/ui/Cells/ShareDialogCell$RepostStoryDrawable;->paint:Landroid/graphics/Paint;

    iget v2, p0, Lorg/telegram/ui/Cells/ShareDialogCell$RepostStoryDrawable;->alpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 450
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/Cells/ShareDialogCell$RepostStoryDrawable;->alpha:I

    int-to-float v2, v2

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    .line 451
    iget-object v2, p0, Lorg/telegram/ui/Cells/ShareDialogCell$RepostStoryDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 452
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 454
    iget-object v0, p0, Lorg/telegram/ui/Cells/ShareDialogCell$RepostStoryDrawable;->lottieDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    goto :goto_0

    :cond_0
    const/16 v0, 0xf

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    .line 455
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    .line 456
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    sub-int/2addr v2, v0

    .line 457
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    sub-int/2addr v3, v0

    .line 458
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    add-int/2addr v4, v0

    .line 459
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    add-int/2addr v5, v0

    .line 455
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 461
    iget-object v0, p0, Lorg/telegram/ui/Cells/ShareDialogCell$RepostStoryDrawable;->lottieDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Cells/ShareDialogCell$RepostStoryDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    :cond_1
    if-eqz v0, :cond_2

    .line 463
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 464
    iget v1, p0, Lorg/telegram/ui/Cells/ShareDialogCell$RepostStoryDrawable;->alpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 465
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    const/16 v0, 0x38

    .line 486
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    const/16 v0, 0x38

    .line 481
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    .line 471
    iput p1, p0, Lorg/telegram/ui/Cells/ShareDialogCell$RepostStoryDrawable;->alpha:I

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
