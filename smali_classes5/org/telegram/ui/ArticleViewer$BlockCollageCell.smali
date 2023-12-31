.class Lorg/telegram/ui/ArticleViewer$BlockCollageCell;
.super Landroid/widget/FrameLayout;
.source "ArticleViewer.java"

# interfaces
.implements Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ArticleViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BlockCollageCell"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ArticleViewer$BlockCollageCell$GroupedMessages;
    }
.end annotation


# instance fields
.field private captionLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

.field private creditLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

.field private creditOffset:I

.field private currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;

.field private group:Lorg/telegram/ui/ArticleViewer$BlockCollageCell$GroupedMessages;

.field private inLayout:Z

.field private innerAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field private innerListView:Lorg/telegram/ui/Components/RecyclerListView;

.field private listX:I

.field private parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

.field private textX:I

.field private textY:I

.field final synthetic this$0:Lorg/telegram/ui/ArticleViewer;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)V
    .locals 8

    .line 8418
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    .line 8419
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 8084
    new-instance v0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell$GroupedMessages;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ArticleViewer$BlockCollageCell$GroupedMessages;-><init>(Lorg/telegram/ui/ArticleViewer$BlockCollageCell;)V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->group:Lorg/telegram/ui/ArticleViewer$BlockCollageCell$GroupedMessages;

    .line 8420
    iput-object p3, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    .line 8422
    new-instance p3, Lorg/telegram/ui/ArticleViewer$BlockCollageCell$1;

    invoke-direct {p3, p0, p2, p1}, Lorg/telegram/ui/ArticleViewer$BlockCollageCell$1;-><init>(Lorg/telegram/ui/ArticleViewer$BlockCollageCell;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer;)V

    iput-object p3, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->innerListView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 8431
    new-instance v0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell$2;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/ArticleViewer$BlockCollageCell$2;-><init>(Lorg/telegram/ui/ArticleViewer$BlockCollageCell;Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 8469
    new-instance p3, Lorg/telegram/ui/ArticleViewer$BlockCollageCell$3;

    const/16 v4, 0x3e8

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v1, p3

    move-object v2, p0

    move-object v3, p2

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/ArticleViewer$BlockCollageCell$3;-><init>(Lorg/telegram/ui/ArticleViewer$BlockCollageCell;Landroid/content/Context;IIZLorg/telegram/ui/ArticleViewer;)V

    .line 8500
    new-instance p2, Lorg/telegram/ui/ArticleViewer$BlockCollageCell$4;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/ArticleViewer$BlockCollageCell$4;-><init>(Lorg/telegram/ui/ArticleViewer$BlockCollageCell;Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 8508
    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->innerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 8509
    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->innerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance p3, Lorg/telegram/ui/ArticleViewer$BlockCollageCell$5;

    invoke-direct {p3, p0, p1}, Lorg/telegram/ui/ArticleViewer$BlockCollageCell$5;-><init>(Lorg/telegram/ui/ArticleViewer$BlockCollageCell;Lorg/telegram/ui/ArticleViewer;)V

    iput-object p3, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->innerAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 8565
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->innerListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 p2, -0x1

    const/4 p3, -0x2

    invoke-static {p2, p3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    .line 8566
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    return-void
.end method

.method static synthetic access$17100(Lorg/telegram/ui/ArticleViewer$BlockCollageCell;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;
    .locals 0

    .line 8070
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;

    return-object p0
.end method

.method static synthetic access$17200(Lorg/telegram/ui/ArticleViewer$BlockCollageCell;)Lorg/telegram/ui/ArticleViewer$WebpageAdapter;
    .locals 0

    .line 8070
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    return-object p0
.end method

.method static synthetic access$17300(Lorg/telegram/ui/ArticleViewer$BlockCollageCell;)Z
    .locals 0

    .line 8070
    iget-boolean p0, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->inLayout:Z

    return p0
.end method

.method static synthetic access$17500(Lorg/telegram/ui/ArticleViewer$BlockCollageCell;)Lorg/telegram/ui/ArticleViewer$BlockCollageCell$GroupedMessages;
    .locals 0

    .line 8070
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->group:Lorg/telegram/ui/ArticleViewer$BlockCollageCell$GroupedMessages;

    return-object p0
.end method

.method static synthetic access$22300(Lorg/telegram/ui/ArticleViewer$BlockCollageCell;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 8070
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->innerListView:Lorg/telegram/ui/Components/RecyclerListView;

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

    .line 8669
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->captionLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_0

    .line 8670
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8672
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->creditLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_1

    .line 8673
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 8643
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;

    if-nez v0, :cond_0

    return-void

    .line 8647
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->captionLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 8648
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 8649
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->textX:I

    int-to-float v0, v0

    iget v2, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->textY:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 8650
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    const/4 v2, 0x1

    invoke-static {v0, p1, p0, v1}, Lorg/telegram/ui/ArticleViewer;->access$14100(Lorg/telegram/ui/ArticleViewer;Landroid/graphics/Canvas;Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;I)V

    .line 8651
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->captionLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v0, p1, p0}, Lorg/telegram/ui/ArticleViewer$DrawingText;->draw(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 8652
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    :cond_1
    move v2, v1

    .line 8654
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->creditLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_2

    .line 8655
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 8656
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->textX:I

    int-to-float v0, v0

    iget v3, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->textY:I

    iget v4, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->creditOffset:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 8657
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0, p1, p0, v2}, Lorg/telegram/ui/ArticleViewer;->access$14100(Lorg/telegram/ui/ArticleViewer;Landroid/graphics/Canvas;Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;I)V

    .line 8658
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->creditLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v0, p1, p0}, Lorg/telegram/ui/ArticleViewer$DrawingText;->draw(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 8659
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 8661
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$PageBlock;->level:I

    if-lez v0, :cond_4

    const/16 v0, 0x12

    .line 8662
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v3, v0

    const/4 v4, 0x0

    const/16 v0, 0x14

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$PageBlock;->bottom:Z

    if-eqz v2, :cond_3

    const/4 v1, 0x6

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    :cond_3
    sub-int/2addr v0, v1

    int-to-float v6, v0

    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->access$14200()Landroid/graphics/Paint;

    move-result-object v7

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_4
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 8638
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->innerListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget p2, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->listX:I

    const/16 p3, 0x8

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p4

    iget p5, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->listX:I

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->innerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    add-int/2addr p5, v0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->innerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p3

    add-int/2addr v0, p3

    invoke-virtual {p1, p2, p4, p5, v0}, Landroid/view/ViewGroup;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 13

    const/4 p2, 0x1

    .line 8587
    iput-boolean p2, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->inLayout:Z

    .line 8588
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 8591
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 8594
    iget p2, v0, Lorg/telegram/tgnet/TLRPC$PageBlock;->level:I

    const/16 v0, 0x12

    if-lez p2, :cond_0

    mul-int/lit8 p2, p2, 0xe

    .line 8595
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr p2, v2

    iput p2, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->listX:I

    iput p2, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->textX:I

    .line 8596
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    add-int/2addr p2, v0

    sub-int p2, p1, p2

    move v0, p2

    goto :goto_0

    .line 8599
    :cond_0
    iput v1, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->listX:I

    .line 8600
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    iput p2, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->textX:I

    const/16 p2, 0x24

    .line 8601
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    sub-int p2, p1, p2

    move v0, p2

    move p2, p1

    .line 8604
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->innerListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v2, p2, v3}, Landroid/view/ViewGroup;->measure(II)V

    .line 8605
    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->innerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p2

    const/16 v11, 0x8

    .line 8607
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int v7, p2, v2

    iput v7, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->textY:I

    .line 8608
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    const/4 v4, 0x0

    iget-object v8, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;

    iget-object v3, v8, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    iget-object v9, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    move-object v3, p0

    move v6, v0

    invoke-static/range {v2 .. v9}, Lorg/telegram/ui/ArticleViewer;->access$13800(Lorg/telegram/ui/ArticleViewer;Landroid/view/View;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;IILorg/telegram/tgnet/TLRPC$PageBlock;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->captionLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    const/4 v12, 0x4

    if-eqz v2, :cond_1

    .line 8610
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->captionLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v3}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->creditOffset:I

    .line 8611
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr p2, v2

    .line 8612
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->captionLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    iget v3, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->textX:I

    iput v3, v2, Lorg/telegram/ui/ArticleViewer$DrawingText;->x:I

    .line 8613
    iget v3, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->textY:I

    iput v3, v2, Lorg/telegram/ui/ArticleViewer$DrawingText;->y:I

    goto :goto_1

    .line 8615
    :cond_1
    iput v1, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->creditOffset:I

    .line 8617
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    const/4 v4, 0x0

    iget-object v8, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;

    iget-object v3, v8, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->credit:Lorg/telegram/tgnet/TLRPC$RichText;

    iget v3, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->textY:I

    iget v6, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->creditOffset:I

    add-int v7, v3, v6

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v3}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$7100(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lorg/telegram/ui/Components/StaticLayoutEx;->ALIGN_RIGHT()Landroid/text/Layout$Alignment;

    move-result-object v3

    goto :goto_2

    :cond_2
    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    :goto_2
    move-object v9, v3

    iget-object v10, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    move-object v3, p0

    move v6, v0

    invoke-static/range {v2 .. v10}, Lorg/telegram/ui/ArticleViewer;->access$13900(Lorg/telegram/ui/ArticleViewer;Landroid/view/View;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;IILorg/telegram/tgnet/TLRPC$PageBlock;Landroid/text/Layout$Alignment;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->creditLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_3

    .line 8619
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->creditLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v2}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr p2, v0

    .line 8620
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->creditLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    iget v2, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->textX:I

    iput v2, v0, Lorg/telegram/ui/ArticleViewer$DrawingText;->x:I

    .line 8621
    iget v2, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->textY:I

    iget v3, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->creditOffset:I

    add-int/2addr v2, v3

    iput v2, v0, Lorg/telegram/ui/ArticleViewer$DrawingText;->y:I

    :cond_3
    const/16 v0, 0x10

    .line 8624
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    add-int/2addr p2, v0

    .line 8625
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$PageBlock;->level:I

    if-lez v2, :cond_4

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$PageBlock;->bottom:Z

    if-nez v0, :cond_4

    .line 8626
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    add-int/2addr p2, v0

    .line 8632
    :cond_4
    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    .line 8633
    iput-boolean v1, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->inLayout:Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 8581
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->captionLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    iget v5, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->textX:I

    iget v6, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->textY:I

    move-object v2, p1

    move-object v3, p0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/ArticleViewer;->access$8900(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Landroid/view/MotionEvent;Landroid/view/View;Lorg/telegram/ui/ArticleViewer$DrawingText;II)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->creditLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    iget v6, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->textX:I

    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->textY:I

    iget v3, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->creditOffset:I

    add-int v7, v0, v3

    move-object v3, p1

    move-object v4, p0

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/ArticleViewer;->access$8900(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Landroid/view/MotionEvent;Landroid/view/View;Lorg/telegram/ui/ArticleViewer$DrawingText;II)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

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

.method public setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;)V
    .locals 1

    .line 8570
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;

    if-eq v0, p1, :cond_0

    .line 8571
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;

    .line 8572
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->group:Lorg/telegram/ui/ArticleViewer$BlockCollageCell$GroupedMessages;

    invoke-virtual {p1}, Lorg/telegram/ui/ArticleViewer$BlockCollageCell$GroupedMessages;->calculate()V

    .line 8574
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->innerAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 8575
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->innerListView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setGlowColor(I)V

    .line 8576
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method
