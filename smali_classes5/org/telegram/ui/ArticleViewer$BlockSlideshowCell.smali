.class Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;
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
    name = "BlockSlideshowCell"
.end annotation


# instance fields
.field private captionLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

.field private creditLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

.field private creditOffset:I

.field private currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;

.field private currentPage:I

.field private dotsContainer:Landroid/view/View;

.field private innerAdapter:Landroidx/viewpager/widget/PagerAdapter;

.field private innerListView:Landroidx/viewpager/widget/ViewPager;

.field private pageOffset:F

.field private parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

.field private textX:I

.field private textY:I

.field final synthetic this$0:Lorg/telegram/ui/ArticleViewer;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)V
    .locals 1

    .line 8698
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    .line 8699
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x12

    .line 8689
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->textX:I

    .line 8700
    iput-object p3, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    .line 8702
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->access$17900()Landroid/graphics/Paint;

    move-result-object p3

    if-nez p3, :cond_0

    .line 8703
    new-instance p3, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p3, v0}, Landroid/graphics/Paint;-><init>(I)V

    invoke-static {p3}, Lorg/telegram/ui/ArticleViewer;->access$17902(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    .line 8704
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->access$17900()Landroid/graphics/Paint;

    move-result-object p3

    const/4 v0, -0x1

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 8707
    :cond_0
    new-instance p3, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$1;

    invoke-direct {p3, p0, p2, p1}, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$1;-><init>(Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer;)V

    iput-object p3, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->innerListView:Landroidx/viewpager/widget/ViewPager;

    .line 8720
    new-instance v0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$2;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$2;-><init>(Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {p3, v0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 8742
    iget-object p3, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->innerListView:Landroidx/viewpager/widget/ViewPager;

    new-instance v0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$3;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$3;-><init>(Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;Lorg/telegram/ui/ArticleViewer;)V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->innerAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {p3, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 8801
    iget-object p3, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->innerListView:Landroidx/viewpager/widget/ViewPager;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-static {p3, v0}, Lorg/telegram/messenger/AndroidUtilities;->setViewPagerEdgeEffectColor(Landroidx/viewpager/widget/ViewPager;I)V

    .line 8802
    iget-object p3, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->innerListView:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 8804
    new-instance p3, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$4;

    invoke-direct {p3, p0, p2, p1}, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$4;-><init>(Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer;)V

    iput-object p3, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->dotsContainer:Landroid/view/View;

    .line 8838
    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 8840
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    return-void
.end method

.method static synthetic access$18000(Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;)Landroidx/viewpager/widget/ViewPager;
    .locals 0

    .line 8680
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->innerListView:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method static synthetic access$18100(Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;)F
    .locals 0

    .line 8680
    iget p0, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->pageOffset:F

    return p0
.end method

.method static synthetic access$18102(Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;F)F
    .locals 0

    .line 8680
    iput p1, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->pageOffset:F

    return p1
.end method

.method static synthetic access$18200(Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;)I
    .locals 0

    .line 8680
    iget p0, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->currentPage:I

    return p0
.end method

.method static synthetic access$18202(Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;I)I
    .locals 0

    .line 8680
    iput p1, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->currentPage:I

    return p1
.end method

.method static synthetic access$18300(Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;)Landroid/view/View;
    .locals 0

    .line 8680
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->dotsContainer:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$18400(Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;
    .locals 0

    .line 8680
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;

    return-object p0
.end method

.method static synthetic access$18700(Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;)Lorg/telegram/ui/ArticleViewer$WebpageAdapter;
    .locals 0

    .line 8680
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    return-object p0
.end method

.method static synthetic access$18800(Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;)Landroidx/viewpager/widget/PagerAdapter;
    .locals 0

    .line 8680
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->innerAdapter:Landroidx/viewpager/widget/PagerAdapter;

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

    .line 8925
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->captionLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_0

    .line 8926
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8928
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->creditLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_1

    .line 8929
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 8903
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 8907
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->captionLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v1, :cond_1

    .line 8908
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 8909
    iget v1, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->textX:I

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->textY:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 8910
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    const/4 v2, 0x1

    invoke-static {v1, p1, p0, v0}, Lorg/telegram/ui/ArticleViewer;->access$14100(Lorg/telegram/ui/ArticleViewer;Landroid/graphics/Canvas;Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;I)V

    .line 8911
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->captionLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v0, p1, p0}, Lorg/telegram/ui/ArticleViewer$DrawingText;->draw(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 8912
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    move v0, v2

    .line 8914
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->creditLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v1, :cond_2

    .line 8915
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 8916
    iget v1, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->textX:I

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->textY:I

    iget v3, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->creditOffset:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 8917
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v1, p1, p0, v0}, Lorg/telegram/ui/ArticleViewer;->access$14100(Lorg/telegram/ui/ArticleViewer;Landroid/graphics/Canvas;Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;I)V

    .line 8918
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->creditLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v0, p1, p0}, Lorg/telegram/ui/ArticleViewer$DrawingText;->draw(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 8919
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 8896
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->innerListView:Landroidx/viewpager/widget/ViewPager;

    const/16 p2, 0x8

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p3

    iget-object p4, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->innerListView:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p4}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p4

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    iget-object p5, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->innerListView:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p5}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p5

    add-int/2addr p2, p5

    const/4 p5, 0x0

    invoke-virtual {p1, p5, p3, p4, p2}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 8897
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->innerListView:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getBottom()I

    move-result p1

    const/16 p2, 0x17

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    sub-int/2addr p1, p2

    .line 8898
    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->dotsContainer:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    iget-object p4, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->dotsContainer:Landroid/view/View;

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    add-int/2addr p4, p1

    invoke-virtual {p2, p5, p1, p3, p4}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 12

    .line 8859
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 8862
    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;

    if-eqz p2, :cond_3

    const/16 p2, 0x136

    .line 8863
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    .line 8864
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->innerListView:Landroidx/viewpager/widget/ViewPager;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->measure(II)V

    .line 8865
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8866
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->dotsContainer:Landroid/view/View;

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    const/16 v3, 0xa

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v3, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    const/16 v0, 0x24

    .line 8868
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sub-int v0, p1, v0

    const/16 v10, 0x10

    .line 8869
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int v6, p2, v1

    iput v6, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->textY:I

    .line 8870
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    const/4 v3, 0x0

    iget-object v7, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;

    iget-object v2, v7, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    iget-object v8, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    move-object v2, p0

    move v5, v0

    invoke-static/range {v1 .. v8}, Lorg/telegram/ui/ArticleViewer;->access$13800(Lorg/telegram/ui/ArticleViewer;Landroid/view/View;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;IILorg/telegram/tgnet/TLRPC$PageBlock;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->captionLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    const/4 v11, 0x4

    if-eqz v1, :cond_0

    .line 8872
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->captionLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v2}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->creditOffset:I

    .line 8873
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr p2, v1

    .line 8874
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->captionLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    iget v2, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->textX:I

    iput v2, v1, Lorg/telegram/ui/ArticleViewer$DrawingText;->x:I

    .line 8875
    iget v2, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->textY:I

    iput v2, v1, Lorg/telegram/ui/ArticleViewer$DrawingText;->y:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 8877
    iput v1, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->creditOffset:I

    .line 8879
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    const/4 v3, 0x0

    iget-object v7, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;

    iget-object v2, v7, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->credit:Lorg/telegram/tgnet/TLRPC$RichText;

    iget v2, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->textY:I

    iget v5, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->creditOffset:I

    add-int v6, v2, v5

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$7100(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lorg/telegram/ui/Components/StaticLayoutEx;->ALIGN_RIGHT()Landroid/text/Layout$Alignment;

    move-result-object v2

    goto :goto_1

    :cond_1
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    :goto_1
    move-object v8, v2

    iget-object v9, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    move-object v2, p0

    move v5, v0

    invoke-static/range {v1 .. v9}, Lorg/telegram/ui/ArticleViewer;->access$13900(Lorg/telegram/ui/ArticleViewer;Landroid/view/View;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;IILorg/telegram/tgnet/TLRPC$PageBlock;Landroid/text/Layout$Alignment;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->creditLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_2

    .line 8881
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->creditLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v1}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr p2, v0

    .line 8882
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->creditLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    iget v1, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->textX:I

    iput v1, v0, Lorg/telegram/ui/ArticleViewer$DrawingText;->x:I

    .line 8883
    iget v1, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->textY:I

    iget v2, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->creditOffset:I

    add-int/2addr v1, v2

    iput v1, v0, Lorg/telegram/ui/ArticleViewer$DrawingText;->y:I

    .line 8886
    :cond_2
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    add-int/2addr p2, v0

    goto :goto_2

    :cond_3
    const/4 p2, 0x1

    .line 8891
    :goto_2
    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 8853
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->captionLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    iget v5, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->textX:I

    iget v6, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->textY:I

    move-object v2, p1

    move-object v3, p0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/ArticleViewer;->access$8900(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Landroid/view/MotionEvent;Landroid/view/View;Lorg/telegram/ui/ArticleViewer$DrawingText;II)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->creditLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    iget v6, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->textX:I

    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->textY:I

    iget v3, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->creditOffset:I

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

.method public setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;)V
    .locals 1

    .line 8844
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;

    .line 8845
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->innerAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {p1}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 8846
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->innerListView:Landroidx/viewpager/widget/ViewPager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    .line 8847
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->innerListView:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->forceLayout()V

    .line 8848
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method
