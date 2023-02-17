.class public Lorg/telegram/ui/Cells/WallpaperCell;
.super Landroid/widget/FrameLayout;
.source "WallpaperCell.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Cells/WallpaperCell$WallpaperView;
    }
.end annotation


# instance fields
.field private backgroundPaint:Landroid/graphics/Paint;

.field private checkDrawable:Landroid/graphics/drawable/Drawable;

.field private circlePaint:Landroid/graphics/Paint;

.field private currentType:I

.field private framePaint:Landroid/graphics/Paint;

.field private isBottom:Z

.field private isTop:Z

.field private spanCount:I

.field private wallpaperViews:[Lorg/telegram/ui/Cells/WallpaperCell$WallpaperView;


# direct methods
.method public static synthetic $r8$lambda$Mq3thSYHSTYh6Sd1fyWSQe9tcFA(Lorg/telegram/ui/Cells/WallpaperCell;Lorg/telegram/ui/Cells/WallpaperCell$WallpaperView;ILandroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Cells/WallpaperCell;->lambda$new$1(Lorg/telegram/ui/Cells/WallpaperCell$WallpaperView;ILandroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$pNXXEJ65_mtsVj8t3X0g1O06Q9Q(Lorg/telegram/ui/Cells/WallpaperCell;Lorg/telegram/ui/Cells/WallpaperCell$WallpaperView;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Cells/WallpaperCell;->lambda$new$0(Lorg/telegram/ui/Cells/WallpaperCell$WallpaperView;ILandroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 310
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x3

    .line 300
    iput v0, p0, Lorg/telegram/ui/Cells/WallpaperCell;->spanCount:I

    const/4 v0, 0x5

    new-array v0, v0, [Lorg/telegram/ui/Cells/WallpaperCell$WallpaperView;

    .line 312
    iput-object v0, p0, Lorg/telegram/ui/Cells/WallpaperCell;->wallpaperViews:[Lorg/telegram/ui/Cells/WallpaperCell$WallpaperView;

    const/4 v0, 0x0

    .line 313
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Cells/WallpaperCell;->wallpaperViews:[Lorg/telegram/ui/Cells/WallpaperCell$WallpaperView;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 314
    new-instance v2, Lorg/telegram/ui/Cells/WallpaperCell$WallpaperView;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/Cells/WallpaperCell$WallpaperView;-><init>(Lorg/telegram/ui/Cells/WallpaperCell;Landroid/content/Context;)V

    aput-object v2, v1, v0

    .line 316
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 317
    new-instance v1, Lorg/telegram/ui/Cells/WallpaperCell$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v2, v0}, Lorg/telegram/ui/Cells/WallpaperCell$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Cells/WallpaperCell;Lorg/telegram/ui/Cells/WallpaperCell$WallpaperView;I)V

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    new-instance v1, Lorg/telegram/ui/Cells/WallpaperCell$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v2, v0}, Lorg/telegram/ui/Cells/WallpaperCell$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Cells/WallpaperCell;Lorg/telegram/ui/Cells/WallpaperCell$WallpaperView;I)V

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 321
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/WallpaperCell;->framePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x33000000

    .line 322
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 324
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/WallpaperCell;->circlePaint:Landroid/graphics/Paint;

    .line 326
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$drawable;->background_selected:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Cells/WallpaperCell;->checkDrawable:Landroid/graphics/drawable/Drawable;

    .line 328
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Cells/WallpaperCell;->backgroundPaint:Landroid/graphics/Paint;

    const-string v0, "sharedMedia_photoPlaceholder"

    .line 329
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/Cells/WallpaperCell;)Landroid/graphics/Paint;
    .locals 0

    .line 45
    iget-object p0, p0, Lorg/telegram/ui/Cells/WallpaperCell;->framePaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Cells/WallpaperCell;)Landroid/graphics/Paint;
    .locals 0

    .line 45
    iget-object p0, p0, Lorg/telegram/ui/Cells/WallpaperCell;->circlePaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Cells/WallpaperCell;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 45
    iget-object p0, p0, Lorg/telegram/ui/Cells/WallpaperCell;->checkDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Cells/WallpaperCell;)Landroid/graphics/Paint;
    .locals 0

    .line 45
    iget-object p0, p0, Lorg/telegram/ui/Cells/WallpaperCell;->backgroundPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method private synthetic lambda$new$0(Lorg/telegram/ui/Cells/WallpaperCell$WallpaperView;ILandroid/view/View;)V
    .locals 0

    .line 317
    invoke-static {p1}, Lorg/telegram/ui/Cells/WallpaperCell$WallpaperView;->access$000(Lorg/telegram/ui/Cells/WallpaperCell$WallpaperView;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Cells/WallpaperCell;->onWallpaperClick(Ljava/lang/Object;I)V

    return-void
.end method

.method private synthetic lambda$new$1(Lorg/telegram/ui/Cells/WallpaperCell$WallpaperView;ILandroid/view/View;)Z
    .locals 0

    .line 318
    invoke-static {p1}, Lorg/telegram/ui/Cells/WallpaperCell$WallpaperView;->access$000(Lorg/telegram/ui/Cells/WallpaperCell$WallpaperView;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Cells/WallpaperCell;->onWallpaperLongClick(Ljava/lang/Object;I)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public invalidate()V
    .locals 2

    .line 392
    invoke-super {p0}, Landroid/widget/FrameLayout;->invalidate()V

    const/4 v0, 0x0

    .line 393
    :goto_0
    iget v1, p0, Lorg/telegram/ui/Cells/WallpaperCell;->spanCount:I

    if-ge v0, v1, :cond_0

    .line 394
    iget-object v1, p0, Lorg/telegram/ui/Cells/WallpaperCell;->wallpaperViews:[Lorg/telegram/ui/Cells/WallpaperCell$WallpaperView;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/WallpaperCell$WallpaperView;->invalidate()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    const/16 p1, 0xe

    .line 356
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    .line 357
    iget-boolean p3, p0, Lorg/telegram/ui/Cells/WallpaperCell;->isTop:Z

    const/4 p4, 0x0

    if-eqz p3, :cond_0

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 358
    :goto_0
    iget p3, p0, Lorg/telegram/ui/Cells/WallpaperCell;->spanCount:I

    if-ge p4, p3, :cond_1

    .line 359
    iget-object p3, p0, Lorg/telegram/ui/Cells/WallpaperCell;->wallpaperViews:[Lorg/telegram/ui/Cells/WallpaperCell$WallpaperView;

    aget-object p3, p3, p4

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p3

    .line 360
    iget-object p5, p0, Lorg/telegram/ui/Cells/WallpaperCell;->wallpaperViews:[Lorg/telegram/ui/Cells/WallpaperCell$WallpaperView;

    aget-object v0, p5, p4

    add-int v1, p2, p3

    aget-object p5, p5, p4

    invoke-virtual {p5}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p5

    add-int/2addr p5, p1

    invoke-virtual {v0, p2, p1, v1, p5}, Landroid/widget/FrameLayout;->layout(IIII)V

    const/4 p5, 0x6

    .line 361
    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p5

    add-int/2addr p3, p5

    add-int/2addr p2, p3

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    .line 342
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 343
    iget p2, p0, Lorg/telegram/ui/Cells/WallpaperCell;->spanCount:I

    add-int/lit8 p2, p2, -0x1

    const/4 v0, 0x6

    mul-int/lit8 p2, p2, 0x6

    add-int/lit8 p2, p2, 0x1c

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    sub-int p2, p1, p2

    .line 344
    iget v1, p0, Lorg/telegram/ui/Cells/WallpaperCell;->spanCount:I

    div-int v1, p2, v1

    .line 345
    iget v2, p0, Lorg/telegram/ui/Cells/WallpaperCell;->currentType:I

    if-nez v2, :cond_0

    const/16 v2, 0xb4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v1

    .line 346
    :goto_0
    iget-boolean v3, p0, Lorg/telegram/ui/Cells/WallpaperCell;->isTop:Z

    const/16 v4, 0xe

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    add-int/2addr v3, v2

    iget-boolean v6, p0, Lorg/telegram/ui/Cells/WallpaperCell;->isBottom:Z

    if-eqz v6, :cond_2

    const/16 v0, 0xe

    :cond_2
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    add-int/2addr v3, v0

    invoke-virtual {p0, p1, v3}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    .line 348
    :goto_2
    iget p1, p0, Lorg/telegram/ui/Cells/WallpaperCell;->spanCount:I

    if-ge v5, p1, :cond_4

    .line 349
    iget-object v0, p0, Lorg/telegram/ui/Cells/WallpaperCell;->wallpaperViews:[Lorg/telegram/ui/Cells/WallpaperCell$WallpaperView;

    aget-object v0, v0, v5

    add-int/lit8 p1, p1, -0x1

    if-ne v5, p1, :cond_3

    move p1, p2

    goto :goto_3

    :cond_3
    move p1, v1

    :goto_3
    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {p1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v0, p1, v3}, Landroid/widget/FrameLayout;->measure(II)V

    sub-int/2addr p2, v1

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method protected onWallpaperClick(Ljava/lang/Object;I)V
    .locals 0

    return-void
.end method

.method protected onWallpaperLongClick(Ljava/lang/Object;I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setChecked(IZZ)V
    .locals 1

    .line 387
    iget-object v0, p0, Lorg/telegram/ui/Cells/WallpaperCell;->wallpaperViews:[Lorg/telegram/ui/Cells/WallpaperCell$WallpaperView;

    aget-object p1, v0, p1

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Cells/WallpaperCell$WallpaperView;->setChecked(ZZ)V

    return-void
.end method

.method public setParams(IZZ)V
    .locals 2

    .line 366
    iput p1, p0, Lorg/telegram/ui/Cells/WallpaperCell;->spanCount:I

    .line 367
    iput-boolean p2, p0, Lorg/telegram/ui/Cells/WallpaperCell;->isTop:Z

    .line 368
    iput-boolean p3, p0, Lorg/telegram/ui/Cells/WallpaperCell;->isBottom:Z

    const/4 p2, 0x0

    const/4 p3, 0x0

    .line 369
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/WallpaperCell;->wallpaperViews:[Lorg/telegram/ui/Cells/WallpaperCell$WallpaperView;

    array-length v1, v0

    if-ge p3, v1, :cond_1

    .line 370
    aget-object v0, v0, p3

    if-ge p3, p1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :cond_0
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 371
    iget-object v0, p0, Lorg/telegram/ui/Cells/WallpaperCell;->wallpaperViews:[Lorg/telegram/ui/Cells/WallpaperCell$WallpaperView;

    aget-object v0, v0, p3

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/WallpaperCell$WallpaperView;->clearAnimation()V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setWallpaper(IILjava/lang/Object;Ljava/lang/Object;Landroid/graphics/drawable/Drawable;Z)V
    .locals 1

    .line 376
    iput p1, p0, Lorg/telegram/ui/Cells/WallpaperCell;->currentType:I

    if-nez p3, :cond_0

    .line 378
    iget-object p1, p0, Lorg/telegram/ui/Cells/WallpaperCell;->wallpaperViews:[Lorg/telegram/ui/Cells/WallpaperCell$WallpaperView;

    aget-object p1, p1, p2

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 379
    iget-object p1, p0, Lorg/telegram/ui/Cells/WallpaperCell;->wallpaperViews:[Lorg/telegram/ui/Cells/WallpaperCell$WallpaperView;

    aget-object p1, p1, p2

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/WallpaperCell$WallpaperView;->clearAnimation()V

    goto :goto_0

    .line 381
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Cells/WallpaperCell;->wallpaperViews:[Lorg/telegram/ui/Cells/WallpaperCell$WallpaperView;

    aget-object p1, p1, p2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 382
    iget-object p1, p0, Lorg/telegram/ui/Cells/WallpaperCell;->wallpaperViews:[Lorg/telegram/ui/Cells/WallpaperCell$WallpaperView;

    aget-object p1, p1, p2

    invoke-virtual {p1, p3, p4, p5, p6}, Lorg/telegram/ui/Cells/WallpaperCell$WallpaperView;->setWallpaper(Ljava/lang/Object;Ljava/lang/Object;Landroid/graphics/drawable/Drawable;Z)V

    :goto_0
    return-void
.end method
