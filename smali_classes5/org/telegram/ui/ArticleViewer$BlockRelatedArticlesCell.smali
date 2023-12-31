.class Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;
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
    name = "BlockRelatedArticlesCell"
.end annotation


# instance fields
.field private currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesChild;

.field private divider:Z

.field private drawImage:Z

.field private imageView:Lorg/telegram/messenger/ImageReceiver;

.field private parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

.field private textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

.field private textLayout2:Lorg/telegram/ui/ArticleViewer$DrawingText;

.field private textOffset:I

.field private textX:I

.field private textY:I

.field final synthetic this$0:Lorg/telegram/ui/ArticleViewer;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)V
    .locals 0

    .line 9624
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    .line 9625
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x12

    .line 9618
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->textX:I

    const/16 p1, 0xa

    .line 9619
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->textY:I

    .line 9626
    iput-object p3, p0, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    .line 9628
    new-instance p1, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {p1, p0}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    const/4 p2, 0x6

    .line 9629
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    return-void
.end method

.method static synthetic access$22900(Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;)Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesChild;
    .locals 0

    .line 9607
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesChild;

    return-object p0
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

    .line 9745
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_0

    .line 9746
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9748
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->textLayout2:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_1

    .line 9749
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 9719
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesChild;

    if-nez v0, :cond_0

    return-void

    .line 9722
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->drawImage:Z

    if-eqz v0, :cond_1

    .line 9723
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 9726
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 9727
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->textX:I

    int-to-float v0, v0

    const/16 v1, 0xa

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 9728
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 9729
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0, p1, p0, v1}, Lorg/telegram/ui/ArticleViewer;->access$14100(Lorg/telegram/ui/ArticleViewer;Landroid/graphics/Canvas;Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;I)V

    .line 9730
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v0, p1, p0}, Lorg/telegram/ui/ArticleViewer$DrawingText;->draw(Landroid/graphics/Canvas;Landroid/view/View;)V

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 9732
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->textLayout2:Lorg/telegram/ui/ArticleViewer$DrawingText;

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 9733
    iget v3, p0, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->textOffset:I

    int-to-float v3, v3

    invoke-virtual {p1, v4, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 9734
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v3, p1, p0, v0}, Lorg/telegram/ui/ArticleViewer;->access$14100(Lorg/telegram/ui/ArticleViewer;Landroid/graphics/Canvas;Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;I)V

    .line 9735
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->textLayout2:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v0, p1, p0}, Lorg/telegram/ui/ArticleViewer$DrawingText;->draw(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 9737
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 9738
    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->divider:Z

    if-eqz v0, :cond_6

    .line 9739
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$7100(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Z

    move-result v0

    const/16 v3, 0x11

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v4, v0

    :goto_1
    move v6, v4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr v0, v2

    int-to-float v7, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v4}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$7100(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    :cond_5
    sub-int/2addr v0, v1

    int-to-float v8, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr v0, v2

    int-to-float v9, v0

    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->access$8000()Landroid/graphics/Paint;

    move-result-object v10

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_6
    return-void
.end method

.method protected onMeasure(II)V
    .locals 27

    move-object/from16 v10, p0

    .line 9640
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    .line 9642
    iget-object v0, v10, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesChild;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesChild;->access$8500(Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesChild;)I

    move-result v0

    iget-object v1, v10, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesChild;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesChild;->access$8600(Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesChild;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockRelatedArticles;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockRelatedArticles;->articles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v12, 0x1

    sub-int/2addr v1, v12

    const/4 v13, 0x0

    if-eq v0, v1, :cond_0

    move v0, v12

    goto :goto_0

    :cond_0
    move v0, v13

    :goto_0
    iput-boolean v0, v10, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->divider:Z

    .line 9643
    iget-object v0, v10, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesChild;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesChild;->access$8600(Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesChild;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockRelatedArticles;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockRelatedArticles;->articles:Ljava/util/ArrayList;

    iget-object v1, v10, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesChild;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesChild;->access$8500(Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesChild;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lorg/telegram/tgnet/TLRPC$TL_pageRelatedArticle;

    .line 9645
    sget v0, Lorg/telegram/messenger/SharedConfig;->ivFontSize:I

    add-int/lit8 v0, v0, -0x10

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    .line 9647
    iget-wide v0, v14, Lorg/telegram/tgnet/TLRPC$TL_pageRelatedArticle;->photo_id:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v2, v10, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v2, v0, v1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$14800(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;J)Lorg/telegram/tgnet/TLRPC$Photo;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v3

    :goto_1
    if-eqz v0, :cond_3

    .line 9649
    iput-boolean v12, v10, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->drawImage:Z

    .line 9650
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v2

    invoke-static {v1, v2}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v1

    .line 9651
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    const/16 v4, 0x50

    invoke-static {v2, v4, v12}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v2

    if-ne v1, v2, :cond_2

    goto :goto_2

    :cond_2
    move-object v3, v2

    .line 9655
    :goto_2
    iget-object v2, v10, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {v1, v0}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v17

    invoke-static {v3, v0}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v19

    iget v0, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    int-to-long v0, v0

    const/16 v23, 0x0

    iget-object v3, v10, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v3}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$000(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object v24

    const/16 v25, 0x1

    const-string v18, "64_64"

    const-string v20, "64_64_b"

    move-object/from16 v16, v2

    move-wide/from16 v21, v0

    invoke-virtual/range {v16 .. v25}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Object;I)V

    goto :goto_3

    .line 9657
    :cond_3
    iput-boolean v13, v10, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->drawImage:Z

    :goto_3
    const/16 v0, 0x3c

    .line 9660
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    const/16 v0, 0x24

    .line 9661
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sub-int v0, v11, v0

    .line 9662
    iget-boolean v1, v10, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->drawImage:Z

    const/16 v16, 0x6

    if-eqz v1, :cond_4

    const/16 v1, 0x2c

    .line 9663
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    .line 9664
    iget-object v2, v10, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    sub-int v3, v11, v1

    const/16 v4, 0x8

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    sub-int/2addr v3, v5

    int-to-float v3, v3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    int-to-float v1, v1

    invoke-virtual {v2, v3, v4, v1, v1}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    int-to-float v0, v0

    .line 9665
    iget-object v1, v10, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()F

    move-result v1

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    :cond_4
    move/from16 v17, v0

    const/16 v0, 0x12

    .line 9668
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v18

    .line 9671
    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$TL_pageRelatedArticle;->title:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 9672
    iget-object v0, v10, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    const/4 v3, 0x0

    iget v5, v10, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->textY:I

    iget-object v6, v10, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesChild;

    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/4 v8, 0x3

    iget-object v4, v10, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    move-object/from16 v1, p0

    move-object/from16 v19, v4

    move/from16 v4, v17

    move/from16 v26, v9

    move-object/from16 v9, v19

    invoke-static/range {v0 .. v9}, Lorg/telegram/ui/ArticleViewer;->access$14900(Lorg/telegram/ui/ArticleViewer;Landroid/view/View;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;IILorg/telegram/tgnet/TLRPC$PageBlock;Landroid/text/Layout$Alignment;ILorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object v0

    iput-object v0, v10, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    goto :goto_4

    :cond_5
    move/from16 v26, v9

    :goto_4
    const/4 v0, 0x4

    .line 9675
    iget-object v1, v10, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v1, :cond_8

    .line 9676
    invoke-virtual {v1}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getLineCount()I

    move-result v0

    rsub-int/lit8 v1, v0, 0x4

    .line 9678
    iget-object v2, v10, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v2}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getHeight()I

    move-result v2

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v2, v15

    iput v2, v10, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->textOffset:I

    .line 9679
    iget-object v2, v10, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v2}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getHeight()I

    move-result v2

    add-int v18, v18, v2

    move v2, v13

    :goto_5
    if-ge v2, v0, :cond_7

    .line 9681
    iget-object v3, v10, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getLineLeft(I)F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_6

    move v0, v12

    goto :goto_6

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_7
    move v0, v13

    .line 9686
    :goto_6
    iget-object v2, v10, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    iget v3, v10, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->textX:I

    iput v3, v2, Lorg/telegram/ui/ArticleViewer$DrawingText;->x:I

    .line 9687
    iget v3, v10, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->textY:I

    iput v3, v2, Lorg/telegram/ui/ArticleViewer$DrawingText;->y:I

    move v8, v1

    goto :goto_7

    .line 9689
    :cond_8
    iput v13, v10, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->textOffset:I

    move v8, v0

    move v0, v13

    .line 9692
    :goto_7
    iget v1, v14, Lorg/telegram/tgnet/TLRPC$TL_pageRelatedArticle;->published_date:I

    const-wide/16 v2, 0x3e8

    if-eqz v1, :cond_9

    iget-object v1, v14, Lorg/telegram/tgnet/TLRPC$TL_pageRelatedArticle;->author:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 9693
    sget v1, Lorg/telegram/messenger/R$string;->ArticleDateByAuthor:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/messenger/LocaleController;->chatFullDate:Lorg/telegram/messenger/time/FastDateFormat;

    iget v6, v14, Lorg/telegram/tgnet/TLRPC$TL_pageRelatedArticle;->published_date:I

    int-to-long v6, v6

    mul-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Lorg/telegram/messenger/time/FastDateFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v13

    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$TL_pageRelatedArticle;->author:Ljava/lang/String;

    aput-object v2, v4, v12

    const-string v2, "ArticleDateByAuthor"

    invoke-static {v2, v1, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    .line 9694
    :cond_9
    iget-object v1, v14, Lorg/telegram/tgnet/TLRPC$TL_pageRelatedArticle;->author:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 9695
    sget v1, Lorg/telegram/messenger/R$string;->ArticleByAuthor:I

    new-array v2, v12, [Ljava/lang/Object;

    iget-object v3, v14, Lorg/telegram/tgnet/TLRPC$TL_pageRelatedArticle;->author:Ljava/lang/String;

    aput-object v3, v2, v13

    const-string v3, "ArticleByAuthor"

    invoke-static {v3, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_8
    move-object v2, v1

    goto :goto_9

    .line 9696
    :cond_a
    iget v1, v14, Lorg/telegram/tgnet/TLRPC$TL_pageRelatedArticle;->published_date:I

    if-eqz v1, :cond_b

    .line 9697
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/LocaleController;->chatFullDate:Lorg/telegram/messenger/time/FastDateFormat;

    iget v4, v14, Lorg/telegram/tgnet/TLRPC$TL_pageRelatedArticle;->published_date:I

    int-to-long v4, v4

    mul-long/2addr v4, v2

    invoke-virtual {v1, v4, v5}, Lorg/telegram/messenger/time/FastDateFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    .line 9698
    :cond_b
    iget-object v1, v14, Lorg/telegram/tgnet/TLRPC$TL_pageRelatedArticle;->description:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 9699
    iget-object v1, v14, Lorg/telegram/tgnet/TLRPC$TL_pageRelatedArticle;->description:Ljava/lang/String;

    goto :goto_8

    .line 9701
    :cond_c
    iget-object v1, v14, Lorg/telegram/tgnet/TLRPC$TL_pageRelatedArticle;->url:Ljava/lang/String;

    goto :goto_8

    .line 9703
    :goto_9
    iget-object v1, v10, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    const/4 v3, 0x0

    iget v4, v10, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->textY:I

    iget v5, v10, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->textOffset:I

    add-int/2addr v5, v4

    iget-object v6, v10, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesChild;

    iget-object v4, v10, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v4}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$7100(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Z

    move-result v4

    if-nez v4, :cond_e

    if-eqz v0, :cond_d

    goto :goto_a

    :cond_d
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_b

    :cond_e
    :goto_a
    invoke-static {}, Lorg/telegram/ui/Components/StaticLayoutEx;->ALIGN_RIGHT()Landroid/text/Layout$Alignment;

    move-result-object v0

    :goto_b
    move-object v7, v0

    iget-object v9, v10, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    move-object v0, v1

    move-object/from16 v1, p0

    move/from16 v4, v17

    invoke-static/range {v0 .. v9}, Lorg/telegram/ui/ArticleViewer;->access$14900(Lorg/telegram/ui/ArticleViewer;Landroid/view/View;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;IILorg/telegram/tgnet/TLRPC$PageBlock;Landroid/text/Layout$Alignment;ILorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object v0

    iput-object v0, v10, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->textLayout2:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_10

    .line 9705
    invoke-virtual {v0}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getHeight()I

    move-result v0

    add-int v18, v18, v0

    .line 9706
    iget-object v0, v10, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_f

    .line 9707
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    add-int/2addr v0, v15

    add-int v18, v18, v0

    .line 9709
    :cond_f
    iget-object v0, v10, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->textLayout2:Lorg/telegram/ui/ArticleViewer$DrawingText;

    iget v1, v10, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->textX:I

    iput v1, v0, Lorg/telegram/ui/ArticleViewer$DrawingText;->x:I

    .line 9710
    iget v1, v10, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->textY:I

    iget v2, v10, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->textOffset:I

    add-int/2addr v1, v2

    iput v1, v0, Lorg/telegram/ui/ArticleViewer$DrawingText;->y:I

    :cond_10
    move/from16 v0, v18

    move/from16 v1, v26

    .line 9712
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 9714
    iget-boolean v1, v10, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->divider:Z

    add-int/2addr v0, v1

    invoke-virtual {v10, v11, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setBlock(Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesChild;)V
    .locals 0

    .line 9633
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesChild;

    .line 9634
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
