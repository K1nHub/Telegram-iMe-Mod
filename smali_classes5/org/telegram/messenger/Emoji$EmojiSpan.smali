.class public Lorg/telegram/messenger/Emoji$EmojiSpan;
.super Landroid/text/style/ImageSpan;
.source "Emoji.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/Emoji;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmojiSpan"
.end annotation


# instance fields
.field public drawn:Z

.field public emoji:Ljava/lang/String;

.field public fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

.field public lastDrawX:F

.field public lastDrawY:F

.field public size:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;ILandroid/graphics/Paint$FontMetricsInt;)V
    .locals 0

    .line 566
    invoke-direct {p0, p1, p2}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    const/16 p1, 0x14

    .line 562
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    iput p2, p0, Lorg/telegram/messenger/Emoji$EmojiSpan;->size:I

    .line 567
    iput-object p3, p0, Lorg/telegram/messenger/Emoji$EmojiSpan;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    if-eqz p3, :cond_0

    .line 569
    iget p2, p3, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iget-object p3, p0, Lorg/telegram/messenger/Emoji$EmojiSpan;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget p3, p3, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    add-int/2addr p2, p3

    iput p2, p0, Lorg/telegram/messenger/Emoji$EmojiSpan;->size:I

    if-nez p2, :cond_0

    .line 571
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/messenger/Emoji$EmojiSpan;->size:I

    :cond_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 6

    .line 629
    iget v0, p0, Lorg/telegram/messenger/Emoji$EmojiSpan;->size:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    add-float/2addr v0, p5

    iput v0, p0, Lorg/telegram/messenger/Emoji$EmojiSpan;->lastDrawX:F

    int-to-float v0, p6

    sub-int v2, p8, p6

    int-to-float v2, v2

    div-float/2addr v2, v1

    add-float/2addr v0, v2

    .line 630
    iput v0, p0, Lorg/telegram/messenger/Emoji$EmojiSpan;->lastDrawY:F

    const/4 v0, 0x1

    .line 631
    iput-boolean v0, p0, Lorg/telegram/messenger/Emoji$EmojiSpan;->drawn:Z

    .line 634
    invoke-virtual {p9}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    const/16 v2, 0xff

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    sget-boolean v1, Lorg/telegram/messenger/Emoji;->emojiDrawingUseAlpha:Z

    if-eqz v1, :cond_0

    .line 636
    invoke-virtual {p0}, Landroid/text/style/ImageSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p9}, Landroid/graphics/Paint;->getAlpha()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 639
    :goto_0
    sget v4, Lorg/telegram/messenger/Emoji;->emojiDrawingYOffset:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_1

    .line 641
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 642
    sget v3, Lorg/telegram/messenger/Emoji;->emojiDrawingYOffset:F

    invoke-virtual {p1, v5, v3}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 644
    :goto_1
    invoke-super/range {p0 .. p9}, Landroid/text/style/ImageSpan;->draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V

    if-eqz v0, :cond_2

    .line 646
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    if-eqz v1, :cond_3

    .line 649
    invoke-virtual {p0}, Landroid/text/style/ImageSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_3
    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 7

    if-nez p5, :cond_0

    .line 594
    new-instance p5, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {p5}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    .line 597
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/Emoji$EmojiSpan;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    const/4 v6, 0x0

    if-nez v0, :cond_1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 598
    invoke-super/range {v0 .. v5}, Landroid/text/style/ImageSpan;->getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I

    move-result p1

    const/16 p2, 0x8

    .line 600
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    const/16 p3, 0xa

    .line 601
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p3

    neg-int p4, p3

    sub-int/2addr p4, p2

    .line 602
    iput p4, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr p3, p2

    .line 603
    iput p3, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 604
    iput p4, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 605
    iput v6, p5, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    .line 606
    iput p3, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    return p1

    .line 611
    :cond_1
    iget p1, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 612
    iget p1, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 614
    iget p1, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 615
    iget p1, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 617
    invoke-virtual {p0}, Landroid/text/style/ImageSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 618
    invoke-virtual {p0}, Landroid/text/style/ImageSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget p2, p0, Lorg/telegram/messenger/Emoji$EmojiSpan;->size:I

    invoke-virtual {p1, v6, v6, p2, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 620
    :cond_2
    iget p1, p0, Lorg/telegram/messenger/Emoji$EmojiSpan;->size:I

    return p1
.end method

.method public replaceFontMetrics(Landroid/graphics/Paint$FontMetricsInt;)V
    .locals 1

    .line 582
    iput-object p1, p0, Lorg/telegram/messenger/Emoji$EmojiSpan;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    if-eqz p1, :cond_0

    .line 584
    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget-object v0, p0, Lorg/telegram/messenger/Emoji$EmojiSpan;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    add-int/2addr p1, v0

    iput p1, p0, Lorg/telegram/messenger/Emoji$EmojiSpan;->size:I

    if-nez p1, :cond_0

    const/16 p1, 0x14

    .line 586
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/messenger/Emoji$EmojiSpan;->size:I

    :cond_0
    return-void
.end method

.method public replaceFontMetrics(Landroid/graphics/Paint$FontMetricsInt;I)V
    .locals 0

    .line 577
    iput-object p1, p0, Lorg/telegram/messenger/Emoji$EmojiSpan;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    .line 578
    iput p2, p0, Lorg/telegram/messenger/Emoji$EmojiSpan;->size:I

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 3

    .line 655
    invoke-virtual {p0}, Landroid/text/style/ImageSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/messenger/Emoji$EmojiDrawable;

    if-eqz v0, :cond_0

    .line 656
    invoke-virtual {p0}, Landroid/text/style/ImageSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/Emoji$EmojiDrawable;

    const v1, 0x10ffffff

    invoke-virtual {p1}, Landroid/text/TextPaint;->getColor()I

    move-result v2

    and-int/2addr v1, v2

    iput v1, v0, Lorg/telegram/messenger/Emoji$EmojiDrawable;->placeholderColor:I

    .line 658
    :cond_0
    invoke-super {p0, p1}, Landroid/text/style/ImageSpan;->updateDrawState(Landroid/text/TextPaint;)V

    return-void
.end method
