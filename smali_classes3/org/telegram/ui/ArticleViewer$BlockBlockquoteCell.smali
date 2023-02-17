.class Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;
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
    name = "BlockBlockquoteCell"
.end annotation


# instance fields
.field private currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockBlockquote;

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

    .line 9862
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    .line 9863
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x8

    .line 9856
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->textY:I

    .line 9864
    iput-object p3, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

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

    .line 9961
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_0

    .line 9962
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9964
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->textLayout2:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_1

    .line 9965
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 9930
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockBlockquote;

    if-nez v0, :cond_0

    return-void

    .line 9934
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 9935
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 9936
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->textX:I

    int-to-float v0, v0

    iget v2, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->textY:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 9937
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    const/4 v2, 0x1

    invoke-static {v0, p1, p0, v1}, Lorg/telegram/ui/ArticleViewer;->access$13900(Lorg/telegram/ui/ArticleViewer;Landroid/graphics/Canvas;Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;I)V

    .line 9938
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v0, p1, p0}, Lorg/telegram/ui/ArticleViewer$DrawingText;->draw(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 9939
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 9941
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->textLayout2:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_2

    .line 9942
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 9943
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->textX:I

    int-to-float v0, v0

    iget v3, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->textY2:I

    int-to-float v3, v3

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 9944
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0, p1, p0, v2}, Lorg/telegram/ui/ArticleViewer;->access$13900(Lorg/telegram/ui/ArticleViewer;Landroid/graphics/Canvas;Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;I)V

    .line 9945
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->textLayout2:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v0, p1, p0}, Lorg/telegram/ui/ArticleViewer$DrawingText;->draw(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 9946
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 9948
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$7100(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Z

    move-result v0

    const/16 v2, 0x12

    const/16 v3, 0x14

    const/4 v4, 0x6

    if-eqz v0, :cond_3

    .line 9949
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    sub-int/2addr v0, v5

    int-to-float v6, v0

    .line 9950
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v7, v5

    const/4 v5, 0x2

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v0, v5

    int-to-float v8, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    sub-int/2addr v0, v5

    int-to-float v9, v0

    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->access$14000()Landroid/graphics/Paint;

    move-result-object v10

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 9952
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockBlockquote;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$PageBlock;->level:I

    mul-int/lit8 v0, v0, 0xe

    add-int/2addr v0, v2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v6, v0

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v7, v0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockBlockquote;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$PageBlock;->level:I

    mul-int/lit8 v0, v0, 0xe

    add-int/2addr v0, v3

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v8, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    sub-int/2addr v0, v5

    int-to-float v9, v0

    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->access$14000()Landroid/graphics/Paint;

    move-result-object v10

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 9954
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockBlockquote;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$PageBlock;->level:I

    if-lez v0, :cond_5

    .line 9955
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v6, v0

    const/4 v7, 0x0

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v8, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockBlockquote;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$PageBlock;->bottom:Z

    if-eqz v2, :cond_4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    :cond_4
    sub-int/2addr v0, v1

    int-to-float v9, v0

    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->access$14000()Landroid/graphics/Paint;

    move-result-object v10

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_5
    return-void
.end method

.method protected onMeasure(II)V
    .locals 11

    .line 9879
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 9882
    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockBlockquote;

    if-eqz p2, :cond_8

    const/16 p2, 0x32

    .line 9883
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    sub-int p2, p1, p2

    .line 9884
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockBlockquote;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$PageBlock;->level:I

    const/16 v1, 0xe

    if-lez v0, :cond_0

    mul-int/lit8 v0, v0, 0xe

    .line 9885
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sub-int/2addr p2, v0

    .line 9887
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    const/4 v4, 0x0

    iget-object v8, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockBlockquote;

    iget-object v5, v8, Lorg/telegram/tgnet/TLRPC$TL_pageBlockBlockquote;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    iget v7, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->textY:I

    iget-object v9, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    move-object v3, p0

    move v6, p2

    invoke-static/range {v2 .. v9}, Lorg/telegram/ui/ArticleViewer;->access$13600(Lorg/telegram/ui/ArticleViewer;Landroid/view/View;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;IILorg/telegram/tgnet/TLRPC$PageBlock;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    const/16 v10, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 9889
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v3}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getHeight()I

    move-result v3

    add-int/2addr v0, v3

    add-int/2addr v2, v0

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 9891
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockBlockquote;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$PageBlock;->level:I

    const/16 v3, 0x20

    if-lez v2, :cond_3

    .line 9892
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$7100(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 9893
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockBlockquote;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$PageBlock;->level:I

    mul-int/lit8 v2, v2, 0xe

    add-int/2addr v2, v1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->textX:I

    goto :goto_1

    .line 9895
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockBlockquote;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$PageBlock;->level:I

    mul-int/lit8 v2, v2, 0xe

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->textX:I

    goto :goto_1

    .line 9898
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$7100(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 9899
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->textX:I

    goto :goto_1

    .line 9901
    :cond_4
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->textX:I

    .line 9904
    :goto_1
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int v7, v0, v1

    iput v7, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->textY2:I

    .line 9905
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    const/4 v4, 0x0

    iget-object v8, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockBlockquote;

    iget-object v5, v8, Lorg/telegram/tgnet/TLRPC$TL_pageBlockBlockquote;->caption:Lorg/telegram/tgnet/TLRPC$RichText;

    iget-object v9, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    move-object v3, p0

    move v6, p2

    invoke-static/range {v2 .. v9}, Lorg/telegram/ui/ArticleViewer;->access$13600(Lorg/telegram/ui/ArticleViewer;Landroid/view/View;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;IILorg/telegram/tgnet/TLRPC$PageBlock;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->textLayout2:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz p2, :cond_5

    .line 9907
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->textLayout2:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v1}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getHeight()I

    move-result v1

    add-int/2addr p2, v1

    add-int/2addr v0, p2

    :cond_5
    if-eqz v0, :cond_6

    .line 9910
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    add-int/2addr v0, p2

    .line 9912
    :cond_6
    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz p2, :cond_7

    .line 9913
    iget v1, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->textX:I

    iput v1, p2, Lorg/telegram/ui/ArticleViewer$DrawingText;->x:I

    .line 9914
    iget v1, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->textY:I

    iput v1, p2, Lorg/telegram/ui/ArticleViewer$DrawingText;->y:I

    .line 9917
    :cond_7
    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->textLayout2:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz p2, :cond_9

    .line 9918
    iget v1, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->textX:I

    iput v1, p2, Lorg/telegram/ui/ArticleViewer$DrawingText;->x:I

    .line 9919
    iget v1, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->textY2:I

    iput v1, p2, Lorg/telegram/ui/ArticleViewer$DrawingText;->y:I

    goto :goto_2

    :cond_8
    const/4 v0, 0x1

    .line 9925
    :cond_9
    :goto_2
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 9874
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    iget v5, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->textX:I

    iget v6, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->textY:I

    move-object v2, p1

    move-object v3, p0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/ArticleViewer;->access$8900(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Landroid/view/MotionEvent;Landroid/view/View;Lorg/telegram/ui/ArticleViewer$DrawingText;II)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->textLayout2:Lorg/telegram/ui/ArticleViewer$DrawingText;

    iget v6, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->textX:I

    iget v7, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->textY2:I

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

.method public setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockBlockquote;)V
    .locals 0

    .line 9868
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockBlockquote;

    .line 9869
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
