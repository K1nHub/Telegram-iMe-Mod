.class public Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleTextSelectionHelper;
.super Lorg/telegram/ui/Cells/TextSelectionHelper;
.source "TextSelectionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Cells/TextSelectionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleTextSelectionHelper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/telegram/ui/Cells/TextSelectionHelper<",
        "Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleSelectabeleView;",
        ">;"
    }
.end annotation


# instance fields
.field selectabeleView:Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleSelectabeleView;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleSelectabeleView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 1804
    invoke-direct {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper;-><init>()V

    .line 1805
    iput-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleTextSelectionHelper;->selectabeleView:Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleSelectabeleView;

    .line 1806
    iput-object p2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1896
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleTextSelectionHelper;->selectabeleView:Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleSelectabeleView;

    invoke-interface {v0}, Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleSelectabeleView;->getStaticTextLayout()Landroid/text/Layout;

    move-result-object v3

    .line 1897
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_textSelectBackground:I

    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    .line 1898
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1899
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionHandlePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1900
    iget v4, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionStart:I

    iget v5, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionEnd:I

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/ui/Cells/TextSelectionHelper;->drawSelection(Landroid/graphics/Canvas;Landroid/text/Layout;IIZZ)V

    return-void
.end method

.method protected fillLayoutForOffset(ILorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;Z)V
    .locals 0

    .line 1858
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleTextSelectionHelper;->selectabeleView:Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleSelectabeleView;

    invoke-interface {p1}, Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleSelectabeleView;->getStaticTextLayout()Landroid/text/Layout;

    move-result-object p1

    iput-object p1, p2, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->layout:Landroid/text/Layout;

    const/4 p1, 0x0

    .line 1859
    iput p1, p2, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->yOffset:F

    iput p1, p2, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->xOffset:F

    const/4 p1, 0x0

    .line 1860
    iput p1, p2, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->charOffset:I

    return-void
.end method

.method protected bridge synthetic getCharOffsetFromCord(IIIILorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;Z)I
    .locals 0

    .line 1800
    check-cast p5, Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleSelectabeleView;

    invoke-virtual/range {p0 .. p6}, Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleTextSelectionHelper;->getCharOffsetFromCord(IIIILorg/telegram/ui/Cells/TextSelectionHelper$SimpleSelectabeleView;Z)I

    move-result p1

    return p1
.end method

.method protected getCharOffsetFromCord(IIIILorg/telegram/ui/Cells/TextSelectionHelper$SimpleSelectabeleView;Z)I
    .locals 2

    const/4 p3, 0x1

    if-gez p2, :cond_0

    move p2, p3

    :cond_0
    const/4 p6, 0x0

    .line 1824
    invoke-interface {p5}, Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleSelectabeleView;->getStaticTextLayout()Landroid/text/Layout;

    move-result-object p5

    int-to-float v0, p2

    .line 1825
    invoke-virtual {p5}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    sub-int/2addr v1, p3

    invoke-virtual {p5, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, p6

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 1826
    invoke-virtual {p5}, Landroid/text/Layout;->getLineCount()I

    move-result p2

    sub-int/2addr p2, p3

    invoke-virtual {p5, p2}, Landroid/text/Layout;->getLineBottom(I)I

    move-result p2

    int-to-float p2, p2

    add-float/2addr p2, p6

    const/high16 p3, 0x3f800000    # 1.0f

    sub-float/2addr p2, p3

    float-to-int p2, p2

    .line 1829
    :cond_1
    iget-object p3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->layoutBlock:Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;

    iget-object p5, p3, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->layout:Landroid/text/Layout;

    const/4 p6, -0x1

    if-nez p5, :cond_2

    return p6

    :cond_2
    int-to-float p1, p1

    .line 1834
    iget p3, p3, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->xOffset:F

    sub-float/2addr p1, p3

    float-to-int p1, p1

    const/4 p3, 0x0

    .line 1837
    :goto_0
    invoke-virtual {p5}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    if-ge p3, v0, :cond_4

    .line 1838
    invoke-virtual {p5, p3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    add-int/2addr v0, p4

    if-le p2, v0, :cond_3

    invoke-virtual {p5, p3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v0

    add-int/2addr v0, p4

    if-ge p2, v0, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_4
    move p3, p6

    :goto_1
    if-ltz p3, :cond_5

    .line 1845
    :try_start_0
    iget-object p2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->layoutBlock:Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;

    iget p2, p2, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->charOffset:I

    int-to-float p1, p1

    invoke-virtual {p5, p3, p1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr p2, p1

    return p2

    :catch_0
    move-exception p1

    .line 1848
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_5
    return p6
.end method

.method protected getLineHeight()I
    .locals 3

    .line 1865
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleTextSelectionHelper;->selectabeleView:Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleSelectabeleView;

    invoke-interface {v0}, Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleSelectabeleView;->getStaticTextLayout()Landroid/text/Layout;

    move-result-object v0

    const/4 v1, 0x0

    .line 1866
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    sub-int/2addr v2, v0

    return v2
.end method

.method protected bridge synthetic getText(Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;Z)Ljava/lang/CharSequence;
    .locals 0

    .line 1800
    check-cast p1, Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleSelectabeleView;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleTextSelectionHelper;->getText(Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleSelectabeleView;Z)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method protected getText(Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleSelectabeleView;Z)Ljava/lang/CharSequence;
    .locals 0

    .line 1815
    invoke-interface {p1}, Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleSelectabeleView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public isCurrent(Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleSelectabeleView;)Z
    .locals 1

    .line 1904
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleTextSelectionHelper;->selectabeleView:Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleSelectabeleView;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected bridge synthetic onTextSelected(Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;)V
    .locals 0

    .line 1800
    check-cast p1, Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleSelectabeleView;

    check-cast p2, Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleSelectabeleView;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleTextSelectionHelper;->onTextSelected(Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleSelectabeleView;Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleSelectabeleView;)V

    return-void
.end method

.method protected onTextSelected(Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleSelectabeleView;Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleSelectabeleView;)V
    .locals 0

    return-void
.end method

.method public setSelectabeleView(Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleSelectabeleView;)V
    .locals 0

    .line 1810
    iput-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleTextSelectionHelper;->selectabeleView:Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleSelectabeleView;

    return-void
.end method

.method public update(FF)V
    .locals 5

    .line 1876
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleTextSelectionHelper;->selectabeleView:Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleSelectabeleView;

    invoke-interface {v0}, Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleSelectabeleView;->getStaticTextLayout()Landroid/text/Layout;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1878
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->textArea:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    const/4 p1, 0x0

    .line 1879
    iput-object p1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->maybeSelectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    goto :goto_0

    .line 1881
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleTextSelectionHelper;->selectabeleView:Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleSelectabeleView;

    iput-object v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->maybeSelectedView:Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    float-to-int v1, p1

    .line 1882
    iput v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->maybeTextX:I

    float-to-int v2, p2

    .line 1883
    iput v2, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->maybeTextY:I

    .line 1884
    iget-object v3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->layoutBlock:Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;

    iput-object v0, v3, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->layout:Landroid/text/Layout;

    .line 1885
    iput p1, v3, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->xOffset:F

    .line 1886
    iput p2, v3, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->yOffset:F

    const/4 v4, 0x0

    .line 1887
    iput v4, v3, Lorg/telegram/ui/Cells/TextSelectionHelper$LayoutBlock;->charOffset:I

    .line 1888
    iget-object v3, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->textArea:Landroid/graphics/Rect;

    .line 1890
    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr p1, v4

    float-to-int p1, p1

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p2, v0

    float-to-int p2, p2

    .line 1888
    invoke-virtual {v3, v1, v2, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    return-void
.end method
