.class public Lorg/telegram/ui/Components/LoadingSpan;
.super Landroid/text/style/ReplacementSpan;
.source "LoadingSpan.java"


# instance fields
.field private drawable:Lorg/telegram/ui/Components/LoadingDrawable;

.field private size:I

.field private view:Landroid/view/View;

.field public yOffset:I


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x2

    .line 23
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/ui/Components/LoadingSpan;-><init>(Landroid/view/View;II)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;II)V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/telegram/ui/Components/LoadingSpan;->view:Landroid/view/View;

    .line 28
    iput p2, p0, Lorg/telegram/ui/Components/LoadingSpan;->size:I

    .line 29
    iput p3, p0, Lorg/telegram/ui/Components/LoadingSpan;->yOffset:I

    .line 30
    new-instance p1, Lorg/telegram/ui/Components/LoadingDrawable;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/LoadingDrawable;-><init>(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/LoadingSpan;->drawable:Lorg/telegram/ui/Components/LoadingDrawable;

    const/high16 p2, 0x40800000    # 4.0f

    .line 31
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/LoadingDrawable;->setRadiiDp(F)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 0

    .line 68
    iget-object p2, p0, Lorg/telegram/ui/Components/LoadingSpan;->drawable:Lorg/telegram/ui/Components/LoadingDrawable;

    float-to-int p3, p5

    iget p4, p0, Lorg/telegram/ui/Components/LoadingSpan;->yOffset:I

    add-int/2addr p6, p4

    iget p4, p0, Lorg/telegram/ui/Components/LoadingSpan;->size:I

    add-int/2addr p4, p3

    const/4 p5, 0x2

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p5

    sub-int/2addr p8, p5

    iget p5, p0, Lorg/telegram/ui/Components/LoadingSpan;->yOffset:I

    add-int/2addr p8, p5

    invoke-virtual {p2, p3, p6, p4, p8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 69
    iget-object p2, p0, Lorg/telegram/ui/Components/LoadingSpan;->drawable:Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/LoadingDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 70
    iget-object p1, p0, Lorg/telegram/ui/Components/LoadingSpan;->view:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 71
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 0

    if-eqz p1, :cond_0

    .line 57
    iget-object p2, p0, Lorg/telegram/ui/Components/LoadingSpan;->drawable:Lorg/telegram/ui/Components/LoadingDrawable;

    .line 58
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result p3

    const p4, 0x3dcccccd    # 0.1f

    invoke-static {p3, p4}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result p3

    .line 59
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result p4

    const/high16 p5, 0x3e800000    # 0.25f

    invoke-static {p4, p5}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result p4

    .line 57
    invoke-virtual {p2, p3, p4}, Lorg/telegram/ui/Components/LoadingDrawable;->setColors(II)V

    .line 61
    iget-object p2, p0, Lorg/telegram/ui/Components/LoadingSpan;->drawable:Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getAlpha()I

    move-result p1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/LoadingDrawable;->setAlpha(I)V

    .line 63
    :cond_0
    iget p1, p0, Lorg/telegram/ui/Components/LoadingSpan;->size:I

    return p1
.end method

.method public setColors(II)V
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/telegram/ui/Components/LoadingSpan;->drawable:Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Lorg/telegram/ui/Components/LoadingDrawable;->color1:Ljava/lang/Integer;

    .line 47
    iget-object p1, p0, Lorg/telegram/ui/Components/LoadingSpan;->drawable:Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p1, Lorg/telegram/ui/Components/LoadingDrawable;->color2:Ljava/lang/Integer;

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lorg/telegram/ui/Components/LoadingSpan;->view:Landroid/view/View;

    return-void
.end method
