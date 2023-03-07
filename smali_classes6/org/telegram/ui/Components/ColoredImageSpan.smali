.class public Lorg/telegram/ui/Components/ColoredImageSpan;
.super Landroid/text/style/ReplacementSpan;
.source "ColoredImageSpan.java"


# instance fields
.field colorKey:Ljava/lang/String;

.field drawable:Landroid/graphics/drawable/Drawable;

.field drawableColor:I

.field private size:I

.field private topOffset:I

.field usePaintColor:Z

.field private final verticalAlignment:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 43
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;I)V
    .locals 3

    .line 46
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ColoredImageSpan;->usePaintColor:Z

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lorg/telegram/ui/Components/ColoredImageSpan;->topOffset:I

    .line 47
    iput-object p1, p0, Lorg/telegram/ui/Components/ColoredImageSpan;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 49
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 51
    :cond_0
    iput p2, p0, Lorg/telegram/ui/Components/ColoredImageSpan;->verticalAlignment:I

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 0

    .line 67
    iget-boolean p2, p0, Lorg/telegram/ui/Components/ColoredImageSpan;->usePaintColor:Z

    if-eqz p2, :cond_0

    .line 68
    invoke-virtual {p9}, Landroid/graphics/Paint;->getColor()I

    move-result p2

    goto :goto_0

    .line 70
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Components/ColoredImageSpan;->colorKey:Ljava/lang/String;

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p2

    .line 72
    :goto_0
    iget p3, p0, Lorg/telegram/ui/Components/ColoredImageSpan;->drawableColor:I

    if-eq p3, p2, :cond_1

    .line 73
    iput p2, p0, Lorg/telegram/ui/Components/ColoredImageSpan;->drawableColor:I

    .line 74
    iget-object p2, p0, Lorg/telegram/ui/Components/ColoredImageSpan;->drawable:Landroid/graphics/drawable/Drawable;

    new-instance p3, Landroid/graphics/PorterDuffColorFilter;

    iget p4, p0, Lorg/telegram/ui/Components/ColoredImageSpan;->drawableColor:I

    sget-object p7, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p3, p4, p7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 77
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 78
    iget-object p2, p0, Lorg/telegram/ui/Components/ColoredImageSpan;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :cond_2
    move p2, p8

    :goto_1
    sub-int p2, p8, p2

    .line 79
    iget p3, p0, Lorg/telegram/ui/Components/ColoredImageSpan;->verticalAlignment:I

    const/4 p4, 0x1

    if-ne p3, p4, :cond_3

    .line 80
    invoke-virtual {p9}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p3

    iget p3, p3, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    sub-int/2addr p2, p3

    goto :goto_4

    :cond_3
    const/4 p4, 0x2

    if-ne p3, p4, :cond_5

    sub-int/2addr p8, p6

    .line 82
    div-int/2addr p8, p4

    add-int/2addr p6, p8

    iget-object p2, p0, Lorg/telegram/ui/Components/ColoredImageSpan;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    div-int/2addr p2, p4

    goto :goto_2

    :cond_4
    const/4 p2, 0x0

    :goto_2
    sub-int p2, p6, p2

    goto :goto_4

    :cond_5
    if-nez p3, :cond_7

    sub-int/2addr p8, p6

    .line 85
    iget p2, p0, Lorg/telegram/ui/Components/ColoredImageSpan;->size:I

    if-eqz p2, :cond_6

    goto :goto_3

    :cond_6
    iget-object p2, p0, Lorg/telegram/ui/Components/ColoredImageSpan;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p2

    :goto_3
    sub-int/2addr p8, p2

    .line 86
    div-int/2addr p8, p4

    add-int/2addr p6, p8

    .line 87
    iget p2, p0, Lorg/telegram/ui/Components/ColoredImageSpan;->topOffset:I

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    add-int/2addr p2, p6

    :cond_7
    :goto_4
    int-to-float p2, p2

    .line 89
    invoke-virtual {p1, p5, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 90
    iget-object p2, p0, Lorg/telegram/ui/Components/ColoredImageSpan;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_8

    .line 91
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 93
    :cond_8
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 0

    .line 61
    iget p1, p0, Lorg/telegram/ui/Components/ColoredImageSpan;->size:I

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ColoredImageSpan;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    :goto_0
    return p1
.end method

.method public setColorKey(Ljava/lang/String;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lorg/telegram/ui/Components/ColoredImageSpan;->colorKey:Ljava/lang/String;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 98
    :goto_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ColoredImageSpan;->usePaintColor:Z

    return-void
.end method

.method public setSize(I)V
    .locals 2

    .line 55
    iput p1, p0, Lorg/telegram/ui/Components/ColoredImageSpan;->size:I

    .line 56
    iget-object v0, p0, Lorg/telegram/ui/Components/ColoredImageSpan;->drawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method public setTopOffset(I)V
    .locals 0

    .line 102
    iput p1, p0, Lorg/telegram/ui/Components/ColoredImageSpan;->topOffset:I

    return-void
.end method
