.class Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;
.super Landroid/view/View;
.source "ArticleViewer.java"

# interfaces
.implements Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ArticleViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BlockPullquoteCell"
.end annotation


# instance fields
.field private currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockPullquote;

.field private parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

.field private textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

.field private textLayout2:Lorg/telegram/ui/ArticleViewer$DrawingText;

.field private textX:I

.field private textY:I

.field private textY2:I

.field final synthetic this$0:Lorg/telegram/ui/ArticleViewer;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)V
    .locals 0

    .line 9913
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    .line 9914
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x12

    .line 9906
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;->textX:I

    const/16 p1, 0x8

    .line 9907
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;->textY:I

    .line 9915
    iput-object p3, p0, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

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

    .line 9981
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_0

    .line 9982
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9984
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;->textLayout2:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_1

    .line 9985
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 9959
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockPullquote;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 9963
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v1, :cond_1

    .line 9964
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 9965
    iget v1, p0, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;->textX:I

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;->textY:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 9966
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    const/4 v2, 0x1

    invoke-static {v1, p1, p0, v0}, Lorg/telegram/ui/ArticleViewer;->access$14100(Lorg/telegram/ui/ArticleViewer;Landroid/graphics/Canvas;Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;I)V

    .line 9967
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v0, p1, p0}, Lorg/telegram/ui/ArticleViewer$DrawingText;->draw(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 9968
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    move v0, v2

    .line 9970
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;->textLayout2:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v1, :cond_2

    .line 9971
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 9972
    iget v1, p0, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;->textX:I

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;->textY2:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 9973
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v1, p1, p0, v0}, Lorg/telegram/ui/ArticleViewer;->access$14100(Lorg/telegram/ui/ArticleViewer;Landroid/graphics/Canvas;Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;I)V

    .line 9974
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;->textLayout2:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v0, p1, p0}, Lorg/telegram/ui/ArticleViewer$DrawingText;->draw(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 9975
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 11

    .line 9930
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 9933
    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockPullquote;

    if-eqz p2, :cond_2

    .line 9934
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    const/4 v2, 0x0

    iget-object v3, p2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPullquote;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    const/16 p2, 0x24

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int v4, p1, v1

    iget v5, p0, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;->textY:I

    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockPullquote;

    iget-object v7, p0, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    move-object v1, p0

    invoke-static/range {v0 .. v7}, Lorg/telegram/ui/ArticleViewer;->access$13800(Lorg/telegram/ui/ArticleViewer;Landroid/view/View;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;IILorg/telegram/tgnet/TLRPC$PageBlock;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 9936
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v3}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getHeight()I

    move-result v3

    add-int/2addr v0, v3

    add-int/2addr v2, v0

    .line 9937
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    iget v3, p0, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;->textX:I

    iput v3, v0, Lorg/telegram/ui/ArticleViewer$DrawingText;->x:I

    .line 9938
    iget v3, p0, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;->textY:I

    iput v3, v0, Lorg/telegram/ui/ArticleViewer$DrawingText;->y:I

    :cond_0
    const/4 v0, 0x2

    .line 9940
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    add-int/2addr v0, v2

    iput v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;->textY2:I

    .line 9941
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    const/4 v5, 0x0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockPullquote;

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPullquote;->caption:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    sub-int v7, p1, p2

    iget v8, p0, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;->textY2:I

    iget-object v9, p0, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockPullquote;

    iget-object v10, p0, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    move-object v4, p0

    invoke-static/range {v3 .. v10}, Lorg/telegram/ui/ArticleViewer;->access$13800(Lorg/telegram/ui/ArticleViewer;Landroid/view/View;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;IILorg/telegram/tgnet/TLRPC$PageBlock;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;->textLayout2:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz p2, :cond_1

    .line 9943
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;->textLayout2:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v0}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getHeight()I

    move-result v0

    add-int/2addr p2, v0

    add-int/2addr v2, p2

    .line 9944
    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;->textLayout2:Lorg/telegram/ui/ArticleViewer$DrawingText;

    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;->textX:I

    iput v0, p2, Lorg/telegram/ui/ArticleViewer$DrawingText;->x:I

    .line 9945
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;->textY2:I

    iput v0, p2, Lorg/telegram/ui/ArticleViewer$DrawingText;->y:I

    :cond_1
    if-eqz v2, :cond_3

    .line 9948
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    add-int/2addr v2, p2

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    .line 9954
    :cond_3
    :goto_0
    invoke-virtual {p0, p1, v2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 9925
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    iget v5, p0, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;->textX:I

    iget v6, p0, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;->textY:I

    move-object v2, p1

    move-object v3, p0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/ArticleViewer;->access$8900(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Landroid/view/MotionEvent;Landroid/view/View;Lorg/telegram/ui/ArticleViewer$DrawingText;II)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;->textLayout2:Lorg/telegram/ui/ArticleViewer$DrawingText;

    iget v6, p0, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;->textX:I

    iget v7, p0, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;->textY2:I

    move-object v3, p1

    move-object v4, p0

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/ArticleViewer;->access$8900(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Landroid/view/MotionEvent;Landroid/view/View;Lorg/telegram/ui/ArticleViewer$DrawingText;II)Z

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

.method public setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockPullquote;)V
    .locals 0

    .line 9919
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockPullquote;

    .line 9920
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
