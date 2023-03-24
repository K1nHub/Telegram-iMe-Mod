.class Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;
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
    name = "BlockAuthorDateCell"
.end annotation


# instance fields
.field private currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockAuthorDate;

.field private parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

.field private textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

.field private textX:I

.field private textY:I

.field final synthetic this$0:Lorg/telegram/ui/ArticleViewer;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)V
    .locals 0

    .line 10773
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    .line 10774
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x8

    .line 10767
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;->textY:I

    .line 10775
    iput-object p3, p0, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

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

    .line 10869
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_0

    .line 10870
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 10846
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockAuthorDate;

    if-nez v0, :cond_0

    return-void

    .line 10849
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_1

    .line 10850
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 10851
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;->textX:I

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;->textY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 10852
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0, p1, p0}, Lorg/telegram/ui/ArticleViewer;->access$14700(Lorg/telegram/ui/ArticleViewer;Landroid/graphics/Canvas;Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;)V

    .line 10853
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v0, p1, p0}, Lorg/telegram/ui/ArticleViewer$DrawingText;->draw(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 10854
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 10860
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const/4 v0, 0x1

    .line 10861
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 10862
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-nez v0, :cond_0

    return-void

    .line 10864
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 13

    .line 10790
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 10793
    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockAuthorDate;

    const/4 p2, 0x1

    if-eqz v5, :cond_6

    .line 10795
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    iget-object v4, v5, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAuthorDate;->author:Lorg/telegram/tgnet/TLRPC$RichText;

    move-object v2, p0

    move-object v3, v4

    move v6, p1

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/ArticleViewer;->access$20500(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Landroid/view/View;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 10798
    instance-of v1, v0, Landroid/text/Spannable;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 10799
    move-object v2, v0

    check-cast v2, Landroid/text/Spannable;

    .line 10800
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const-class v4, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {v2, v3, v1, v4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/MetricAffectingSpan;

    move-object v12, v2

    move-object v2, v1

    move-object v1, v12

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 10805
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockAuthorDate;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAuthorDate;->published_date:I

    const-wide/16 v5, 0x3e8

    if-eqz v4, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 10806
    sget v4, Lorg/telegram/messenger/R$string;->ArticleDateByAuthor:I

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v8

    iget-object v8, v8, Lorg/telegram/messenger/LocaleController;->chatFullDate:Lorg/telegram/messenger/time/FastDateFormat;

    iget-object v9, p0, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockAuthorDate;

    iget v9, v9, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAuthorDate;->published_date:I

    int-to-long v9, v9

    mul-long/2addr v9, v5

    invoke-virtual {v8, v9, v10}, Lorg/telegram/messenger/time/FastDateFormat;->format(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v3

    aput-object v0, v7, p2

    const-string p2, "ArticleDateByAuthor"

    invoke-static {p2, v4, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 10807
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 10808
    sget v4, Lorg/telegram/messenger/R$string;->ArticleByAuthor:I

    new-array p2, p2, [Ljava/lang/Object;

    aput-object v0, p2, v3

    const-string v5, "ArticleByAuthor"

    invoke-static {v5, v4, p2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 10810
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/messenger/LocaleController;->chatFullDate:Lorg/telegram/messenger/time/FastDateFormat;

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockAuthorDate;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAuthorDate;->published_date:I

    int-to-long v7, v4

    mul-long/2addr v7, v5

    invoke-virtual {p2, v7, v8}, Lorg/telegram/messenger/time/FastDateFormat;->format(J)Ljava/lang/String;

    move-result-object p2

    :goto_1
    if-eqz v2, :cond_3

    .line 10813
    :try_start_0
    array-length v4, v2

    if-lez v4, :cond_3

    .line 10814
    invoke-static {p2, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_3

    .line 10816
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object p2

    move v4, v3

    .line 10818
    :goto_2
    array-length v5, v2

    if-ge v4, v5, :cond_3

    .line 10819
    aget-object v5, v2, v4

    aget-object v6, v2, v4

    invoke-interface {v1, v6}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    add-int/2addr v6, v0

    aget-object v7, v2, v4

    invoke-interface {v1, v7}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    add-int/2addr v7, v0

    const/16 v8, 0x21

    invoke-interface {p2, v5, v6, v7, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    .line 10824
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_3
    move-object v6, p2

    .line 10826
    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    const/4 v7, 0x0

    const/16 p2, 0x24

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    sub-int v8, p1, p2

    iget v9, p0, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;->textY:I

    iget-object v10, p0, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockAuthorDate;

    iget-object v11, p0, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    move-object v5, p0

    invoke-static/range {v4 .. v11}, Lorg/telegram/ui/ArticleViewer;->access$13600(Lorg/telegram/ui/ArticleViewer;Landroid/view/View;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;IILorg/telegram/tgnet/TLRPC$PageBlock;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz p2, :cond_5

    const/16 p2, 0x10

    .line 10828
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v1}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, v3

    .line 10829
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$7100(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Z

    move-result v1

    if-eqz v1, :cond_4

    int-to-float v1, p1

    .line 10830
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getLineWidth(I)F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    int-to-float p2, p2

    sub-float/2addr v1, p2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int p2, v1

    iput p2, p0, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;->textX:I

    goto :goto_3

    :cond_4
    const/16 p2, 0x12

    .line 10832
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    iput p2, p0, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;->textX:I

    .line 10834
    :goto_3
    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    iget v1, p0, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;->textX:I

    iput v1, p2, Lorg/telegram/ui/ArticleViewer$DrawingText;->x:I

    .line 10835
    iget v1, p0, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;->textY:I

    iput v1, p2, Lorg/telegram/ui/ArticleViewer$DrawingText;->y:I

    move p2, v0

    goto :goto_4

    :cond_5
    move p2, v3

    .line 10841
    :cond_6
    :goto_4
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 10785
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    iget v5, p0, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;->textX:I

    iget v6, p0, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;->textY:I

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

.method public setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockAuthorDate;)V
    .locals 0

    .line 10779
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockAuthorDate;

    .line 10780
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
