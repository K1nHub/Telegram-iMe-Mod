.class Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;
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
    name = "BlockPreformattedCell"
.end annotation


# instance fields
.field private currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockPreformatted;

.field private parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

.field private scrollView:Landroid/widget/HorizontalScrollView;

.field private textContainer:Landroid/view/View;

.field private textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

.field final synthetic this$0:Lorg/telegram/ui/ArticleViewer;


# direct methods
.method public static synthetic $r8$lambda$L30MvMG7j7YWClLEtxZv94ZNPBo(Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;Landroid/view/View;IIII)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;->lambda$new$0(Landroid/view/View;IIII)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)V
    .locals 4

    .line 11287
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    .line 11288
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 11289
    iput-object p3, p0, Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    .line 11291
    new-instance p3, Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell$1;

    invoke-direct {p3, p0, p2, p1}, Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell$1;-><init>(Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer;)V

    iput-object p3, p0, Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;->scrollView:Landroid/widget/HorizontalScrollView;

    const/16 v0, 0x8

    .line 11309
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {p3, v2, v1, v2, v0}, Landroid/widget/HorizontalScrollView;->setPadding(IIII)V

    .line 11310
    iget-object p3, p0, Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;->scrollView:Landroid/widget/HorizontalScrollView;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p0, p3, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 11312
    new-instance p3, Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell$2;

    invoke-direct {p3, p0, p2, p1}, Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell$2;-><init>(Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer;)V

    iput-object p3, p0, Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;->textContainer:Landroid/view/View;

    .line 11349
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v1, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 p2, 0x10

    .line 11350
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    const/16 p2, 0xc

    .line 11351
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 11352
    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;->scrollView:Landroid/widget/HorizontalScrollView;

    iget-object p3, p0, Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;->textContainer:Landroid/view/View;

    invoke-virtual {p2, p3, p1}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 11354
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x17

    if-lt p1, p2, :cond_0

    .line 11355
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;->scrollView:Landroid/widget/HorizontalScrollView;

    new-instance p2, Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;)V

    invoke-virtual {p1, p2}, Landroid/widget/HorizontalScrollView;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    .line 11362
    :cond_0
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    return-void
.end method

.method static synthetic access$21000(Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;)Landroid/view/View;
    .locals 0

    .line 11277
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;->textContainer:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$21100(Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockPreformatted;
    .locals 0

    .line 11277
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockPreformatted;

    return-object p0
.end method

.method static synthetic access$21200(Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;)Lorg/telegram/ui/ArticleViewer$DrawingText;
    .locals 0

    .line 11277
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    return-object p0
.end method

.method static synthetic access$21202(Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;Lorg/telegram/ui/ArticleViewer$DrawingText;)Lorg/telegram/ui/ArticleViewer$DrawingText;
    .locals 0

    .line 11277
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    return-object p1
.end method

.method static synthetic access$21300(Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;)Lorg/telegram/ui/ArticleViewer$WebpageAdapter;
    .locals 0

    .line 11277
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    return-object p0
.end method

.method private synthetic lambda$new$0(Landroid/view/View;IIII)V
    .locals 0

    .line 11356
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object p1, p1, Lorg/telegram/ui/ArticleViewer;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->isInSelectionMode()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 11357
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object p1, p1, Lorg/telegram/ui/ArticleViewer;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->invalidate()V

    :cond_0
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

    .line 11388
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_0

    .line 11389
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public invalidate()V
    .locals 1

    .line 11395
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;->textContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 11396
    invoke-super {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 11380
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockPreformatted;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    const/16 v0, 0x8

    .line 11383
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v3, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sub-int/2addr v1, v0

    int-to-float v5, v1

    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->access$21400()Landroid/graphics/Paint;

    move-result-object v6

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 11373
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 11374
    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;->scrollView:Landroid/widget/HorizontalScrollView;

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/widget/HorizontalScrollView;->measure(II)V

    .line 11375
    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;->scrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {p2}, Landroid/widget/HorizontalScrollView;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockPreformatted;)V
    .locals 1

    .line 11366
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockPreformatted;

    .line 11367
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;->scrollView:Landroid/widget/HorizontalScrollView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/HorizontalScrollView;->setScrollX(I)V

    .line 11368
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;->textContainer:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method
