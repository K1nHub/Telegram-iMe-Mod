.class public Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "PeerColorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/PeerColorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PeerColorDrawable"
.end annotation


# instance fields
.field private final clipCirclePath:Landroid/graphics/Path;

.field private final color1Paint:Landroid/graphics/Paint;

.field private final color2Paint:Landroid/graphics/Paint;

.field private final color2Path:Landroid/graphics/Path;

.field private final color3Paint:Landroid/graphics/Paint;

.field private final diameter:I

.field private final hasColor3:Z

.field private final radius:I


# direct methods
.method public constructor <init>(III)V
    .locals 8

    .line 1489
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const v0, 0x41aaa9fc    # 21.333f

    .line 1479
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;->diameter:I

    .line 1480
    div-int/lit8 v1, v0, 0x2

    iput v1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;->radius:I

    .line 1483
    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;->color1Paint:Landroid/graphics/Paint;

    .line 1484
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v4, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;->color2Paint:Landroid/graphics/Paint;

    .line 1485
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v5, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;->color3Paint:Landroid/graphics/Paint;

    .line 1486
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    iput-object v6, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;->color2Path:Landroid/graphics/Path;

    .line 1487
    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    iput-object v7, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;->clipCirclePath:Landroid/graphics/Path;

    if-eq p3, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 1490
    :goto_0
    iput-boolean v3, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;->hasColor3:Z

    .line 1491
    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1492
    invoke-virtual {v4, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1493
    invoke-virtual {v5, p3}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float p1, v1

    int-to-float p2, v1

    int-to-float p3, v1

    .line 1495
    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v7, p1, p2, p3, v1}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    int-to-float p1, v0

    const/4 p2, 0x0

    .line 1496
    invoke-virtual {v6, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float p1, v0

    int-to-float p3, v0

    .line 1497
    invoke-virtual {v6, p1, p3}, Landroid/graphics/Path;->lineTo(FF)V

    int-to-float p1, v0

    .line 1498
    invoke-virtual {v6, p2, p1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1499
    invoke-virtual {v6}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method public static from(II)Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;
    .locals 3

    const/4 v0, 0x7

    if-ge p1, v0, :cond_0

    .line 1465
    new-instance p0, Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;

    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_nameInMessage:[I

    aget v0, v0, p1

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_nameInMessage:[I

    aget v1, v1, p1

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_nameInMessage:[I

    aget p1, v2, p1

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;-><init>(III)V

    return-object p0

    .line 1467
    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    iget-object p0, p0, Lorg/telegram/messenger/MessagesController;->peerColors:Lorg/telegram/messenger/MessagesController$PeerColors;

    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    .line 1468
    :cond_1
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MessagesController$PeerColors;->getColor(I)Lorg/telegram/messenger/MessagesController$PeerColor;

    move-result-object p0

    .line 1469
    :goto_0
    invoke-static {p0}, Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;->from(Lorg/telegram/messenger/MessagesController$PeerColor;)Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;

    move-result-object p0

    return-object p0
.end method

.method public static from(Lorg/telegram/messenger/MessagesController$PeerColor;)Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;
    .locals 3

    if-nez p0, :cond_0

    .line 1474
    new-instance p0, Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0}, Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;-><init>(III)V

    return-object p0

    .line 1476
    :cond_0
    new-instance v0, Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;

    invoke-virtual {p0}, Lorg/telegram/messenger/MessagesController$PeerColor;->getColor1()I

    move-result v1

    invoke-virtual {p0}, Lorg/telegram/messenger/MessagesController$PeerColor;->getColor2()I

    move-result v2

    invoke-virtual {p0}, Lorg/telegram/messenger/MessagesController$PeerColor;->getColor3()I

    move-result p0

    invoke-direct {v0, v1, v2, p0}, Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;-><init>(III)V

    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1504
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1505
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;->radius:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    iget v2, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;->radius:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1506
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;->clipCirclePath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 1507
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;->color1Paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 1508
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;->color2Path:Landroid/graphics/Path;

    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;->color2Paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1509
    iget-boolean v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;->hasColor3:Z

    if-eqz v0, :cond_0

    .line 1510
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget v1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;->radius:I

    const v2, 0x406a3d71    # 3.66f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    iget v3, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;->radius:I

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;->radius:I

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;->radius:I

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v5, v2

    int-to-float v2, v5

    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/graphics/RectF;->set(FFFF)V

    const/high16 v1, 0x42340000    # 45.0f

    .line 1511
    iget v2, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;->radius:I

    int-to-float v3, v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v3, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    const v1, 0x40151eb8    # 2.33f

    .line 1512
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;->color3Paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1514
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 1530
    iget v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;->diameter:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 1535
    iget v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;->diameter:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
