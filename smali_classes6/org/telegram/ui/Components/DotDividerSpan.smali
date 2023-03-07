.class public Lorg/telegram/ui/Components/DotDividerSpan;
.super Landroid/text/style/ReplacementSpan;
.source "DotDividerSpan.java"


# instance fields
.field color:I

.field p:Landroid/graphics/Paint;

.field topPadding:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 12
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 14
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/DotDividerSpan;->p:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 0

    .line 25
    iget p2, p0, Lorg/telegram/ui/Components/DotDividerSpan;->color:I

    invoke-virtual {p9}, Landroid/graphics/Paint;->getColor()I

    move-result p3

    if-eq p2, p3, :cond_0

    .line 26
    iget-object p2, p0, Lorg/telegram/ui/Components/DotDividerSpan;->p:Landroid/graphics/Paint;

    invoke-virtual {p9}, Landroid/graphics/Paint;->getColor()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    const/high16 p2, 0x40400000    # 3.0f

    .line 28
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result p2

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p2, p3

    add-float/2addr p5, p2

    sub-int/2addr p8, p6

    .line 29
    div-int/lit8 p8, p8, 0x2

    iget p3, p0, Lorg/telegram/ui/Components/DotDividerSpan;->topPadding:I

    add-int/2addr p8, p3

    int-to-float p3, p8

    iget-object p4, p0, Lorg/telegram/ui/Components/DotDividerSpan;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, p5, p3, p2, p4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 0

    const/4 p1, 0x3

    .line 20
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    return p1
.end method

.method public setTopPadding(I)V
    .locals 0

    .line 33
    iput p1, p0, Lorg/telegram/ui/Components/DotDividerSpan;->topPadding:I

    return-void
.end method
