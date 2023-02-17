.class public Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;
.super Landroid/view/View;
.source "ArticleViewer.java"

# interfaces
.implements Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ArticleViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BlockParagraphCell"
.end annotation


# instance fields
.field private currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;

.field private parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

.field public textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

.field public textX:I

.field public textY:I

.field final synthetic this$0:Lorg/telegram/ui/ArticleViewer;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)V
    .locals 0

    .line 7106
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    .line 7107
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 7108
    iput-object p3, p0, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    return-void
.end method


# virtual methods
.method public fillTextLayoutBlocks(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Cells/TextSelectionHelper$TextLayoutBlock;",
            ">;)V"
        }
    .end annotation

    .line 7182
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_0

    .line 7183
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 7156
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;

    if-nez v0, :cond_0

    return-void

    .line 7159
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_1

    .line 7160
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 7161
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->textX:I

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->textY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 7162
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0, p1, p0}, Lorg/telegram/ui/ArticleViewer;->access$14700(Lorg/telegram/ui/ArticleViewer;Landroid/graphics/Canvas;Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;)V

    .line 7163
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v0, p1, p0}, Lorg/telegram/ui/ArticleViewer$DrawingText;->draw(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 7164
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 7166
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$PageBlock;->level:I

    if-lez v0, :cond_3

    const/16 v0, 0x12

    .line 7167
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v2, v0

    const/4 v3, 0x0

    const/16 v0, 0x14

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$PageBlock;->bottom:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x6

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    sub-int/2addr v0, v1

    int-to-float v5, v0

    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->access$14000()Landroid/graphics/Paint;

    move-result-object v6

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_3
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 7173
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const/4 v0, 0x1

    .line 7174
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 7175
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-nez v0, :cond_0

    return-void

    .line 7177
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 13

    .line 7124
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 7127
    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    .line 7128
    iget p2, p2, Lorg/telegram/tgnet/TLRPC$PageBlock;->level:I

    const/16 v1, 0x8

    const/16 v2, 0x12

    if-nez p2, :cond_0

    .line 7129
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    iput p2, p0, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->textY:I

    .line 7130
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    iput p2, p0, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->textX:I

    goto :goto_0

    .line 7132
    :cond_0
    iput v0, p0, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->textY:I

    mul-int/lit8 p2, p2, 0xe

    add-int/2addr p2, v2

    .line 7133
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    iput p2, p0, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->textX:I

    .line 7135
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    const/4 v5, 0x0

    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;

    iget-object v6, p2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    sub-int p2, p1, p2

    iget v2, p0, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->textX:I

    sub-int v7, p2, v2

    iget v8, p0, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->textY:I

    iget-object v9, p0, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;

    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {p2}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$7100(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {}, Lorg/telegram/ui/Components/StaticLayoutEx;->ALIGN_RIGHT()Landroid/text/Layout$Alignment;

    move-result-object p2

    goto :goto_1

    :cond_1
    sget-object p2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    :goto_1
    move-object v10, p2

    const/4 v11, 0x0

    iget-object v12, p0, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    move-object v4, p0

    invoke-static/range {v3 .. v12}, Lorg/telegram/ui/ArticleViewer;->access$14600(Lorg/telegram/ui/ArticleViewer;Landroid/view/View;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;IILorg/telegram/tgnet/TLRPC$PageBlock;Landroid/text/Layout$Alignment;ILorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz p2, :cond_4

    .line 7137
    invoke-virtual {p2}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getHeight()I

    move-result p2

    .line 7138
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$PageBlock;->level:I

    if-lez v0, :cond_2

    .line 7139
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    goto :goto_2

    :cond_2
    const/16 v0, 0x10

    .line 7141
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    :goto_2
    add-int/2addr p2, v0

    move v0, p2

    .line 7143
    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    iget v1, p0, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->textX:I

    iput v1, p2, Lorg/telegram/ui/ArticleViewer$DrawingText;->x:I

    .line 7144
    iget v1, p0, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->textY:I

    iput v1, p2, Lorg/telegram/ui/ArticleViewer$DrawingText;->y:I

    goto :goto_3

    :cond_3
    const/4 v0, 0x1

    .line 7151
    :cond_4
    :goto_3
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 7118
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    iget v5, p0, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->textX:I

    iget v6, p0, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->textY:I

    move-object v2, p1

    move-object v3, p0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/ArticleViewer;->access$8900(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Landroid/view/MotionEvent;Landroid/view/View;Lorg/telegram/ui/ArticleViewer$DrawingText;II)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;)V
    .locals 0

    .line 7112
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;

    .line 7113
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
