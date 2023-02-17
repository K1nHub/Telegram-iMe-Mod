.class public Lorg/telegram/ui/ArticleViewer$DrawingText;
.super Ljava/lang/Object;
.source "ArticleViewer.java"

# interfaces
.implements Lorg/telegram/ui/Cells/TextSelectionHelper$TextLayoutBlock;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ArticleViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DrawingText"
.end annotation


# instance fields
.field public latestParentView:Landroid/view/View;

.field public markPath:Lorg/telegram/ui/Components/LinkPath;

.field public parentBlock:Lorg/telegram/tgnet/TLRPC$PageBlock;

.field public parentText:Ljava/lang/Object;

.field public prefix:Ljava/lang/CharSequence;

.field public row:I

.field public searchIndex:I

.field public searchPath:Lorg/telegram/ui/Components/LinkPath;

.field public textLayout:Landroid/text/StaticLayout;

.field public textPath:Lorg/telegram/ui/Components/LinkPath;

.field final synthetic this$0:Lorg/telegram/ui/ArticleViewer;

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ArticleViewer;)V
    .locals 0

    .line 434
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$DrawingText;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 441
    iput p1, p0, Lorg/telegram/ui/ArticleViewer$DrawingText;->searchIndex:I

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/view/View;)V
    .locals 9

    .line 450
    iput-object p2, p0, Lorg/telegram/ui/ArticleViewer$DrawingText;->latestParentView:Landroid/view/View;

    .line 452
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$DrawingText;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$100(Lorg/telegram/ui/ArticleViewer;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v0, :cond_2

    .line 453
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$DrawingText;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$100(Lorg/telegram/ui/ArticleViewer;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer$DrawingText;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v6}, Lorg/telegram/ui/ArticleViewer;->access$200(Lorg/telegram/ui/ArticleViewer;)I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ArticleViewer$SearchResult;

    .line 454
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$SearchResult;->access$300(Lorg/telegram/ui/ArticleViewer$SearchResult;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/ArticleViewer$DrawingText;->parentBlock:Lorg/telegram/tgnet/TLRPC$PageBlock;

    if-ne v6, v7, :cond_1

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$SearchResult;->access$400(Lorg/telegram/ui/ArticleViewer$SearchResult;)Ljava/lang/Object;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/ArticleViewer$DrawingText;->parentText:Ljava/lang/Object;

    if-eq v6, v7, :cond_0

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$SearchResult;->access$400(Lorg/telegram/ui/ArticleViewer$SearchResult;)Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Ljava/lang/String;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer$DrawingText;->parentText:Ljava/lang/Object;

    if-nez v6, :cond_1

    .line 455
    :cond_0
    iget v2, p0, Lorg/telegram/ui/ArticleViewer$DrawingText;->searchIndex:I

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$SearchResult;->access$500(Lorg/telegram/ui/ArticleViewer$SearchResult;)I

    move-result v3

    if-eq v2, v3, :cond_3

    .line 456
    new-instance v2, Lorg/telegram/ui/Components/LinkPath;

    invoke-direct {v2, v4}, Lorg/telegram/ui/Components/LinkPath;-><init>(Z)V

    iput-object v2, p0, Lorg/telegram/ui/ArticleViewer$DrawingText;->searchPath:Lorg/telegram/ui/Components/LinkPath;

    .line 457
    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/LinkPath;->setAllowReset(Z)V

    .line 458
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$DrawingText;->searchPath:Lorg/telegram/ui/Components/LinkPath;

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$DrawingText;->textLayout:Landroid/text/StaticLayout;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$SearchResult;->access$500(Lorg/telegram/ui/ArticleViewer$SearchResult;)I

    move-result v6

    invoke-virtual {v2, v3, v6, v1}, Lorg/telegram/ui/Components/LinkPath;->setCurrentLayout(Landroid/text/Layout;IF)V

    .line 459
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$DrawingText;->searchPath:Lorg/telegram/ui/Components/LinkPath;

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/LinkPath;->setBaselineShift(I)V

    .line 460
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$DrawingText;->textLayout:Landroid/text/StaticLayout;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$SearchResult;->access$500(Lorg/telegram/ui/ArticleViewer$SearchResult;)I

    move-result v3

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$SearchResult;->access$500(Lorg/telegram/ui/ArticleViewer$SearchResult;)I

    move-result v0

    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer$DrawingText;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v6}, Lorg/telegram/ui/ArticleViewer;->access$600(Lorg/telegram/ui/ArticleViewer;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v0, v6

    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer$DrawingText;->searchPath:Lorg/telegram/ui/Components/LinkPath;

    invoke-virtual {v2, v3, v0, v6}, Landroid/text/StaticLayout;->getSelectionPath(IILandroid/graphics/Path;)V

    .line 461
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$DrawingText;->searchPath:Lorg/telegram/ui/Components/LinkPath;

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/LinkPath;->setAllowReset(Z)V

    goto :goto_0

    .line 464
    :cond_1
    iput v3, p0, Lorg/telegram/ui/ArticleViewer$DrawingText;->searchIndex:I

    .line 465
    iput-object v2, p0, Lorg/telegram/ui/ArticleViewer$DrawingText;->searchPath:Lorg/telegram/ui/Components/LinkPath;

    goto :goto_0

    .line 468
    :cond_2
    iput v3, p0, Lorg/telegram/ui/ArticleViewer$DrawingText;->searchIndex:I

    .line 469
    iput-object v2, p0, Lorg/telegram/ui/ArticleViewer$DrawingText;->searchPath:Lorg/telegram/ui/Components/LinkPath;

    .line 471
    :cond_3
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$DrawingText;->searchPath:Lorg/telegram/ui/Components/LinkPath;

    if-eqz v0, :cond_4

    .line 472
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->access$700()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 474
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$DrawingText;->textPath:Lorg/telegram/ui/Components/LinkPath;

    if-eqz v0, :cond_5

    .line 475
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->access$800()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 477
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$DrawingText;->markPath:Lorg/telegram/ui/Components/LinkPath;

    if-eqz v0, :cond_6

    .line 478
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->access$900()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 480
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$DrawingText;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$1000(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->draw(Landroid/graphics/Canvas;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 481
    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    .line 483
    :cond_7
    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$DrawingText;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p2}, Lorg/telegram/ui/ArticleViewer;->access$1100(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object p2

    if-ne p2, p0, :cond_9

    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$DrawingText;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p2}, Lorg/telegram/ui/ArticleViewer;->access$1200(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/Components/LinkSpanDrawable;

    move-result-object p2

    if-nez p2, :cond_9

    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$DrawingText;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p2}, Lorg/telegram/ui/ArticleViewer;->access$1300(Lorg/telegram/ui/ArticleViewer;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 486
    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getLineCount()I

    move-result p2

    if-ne p2, v4, :cond_8

    .line 487
    invoke-virtual {p0, v5}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getLineWidth(I)F

    move-result p2

    .line 488
    invoke-virtual {p0, v5}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getLineLeft(I)F

    move-result v1

    goto :goto_1

    .line 490
    :cond_8
    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getWidth()I

    move-result p2

    int-to-float p2, p2

    :goto_1
    const/4 v0, 0x2

    .line 493
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    add-float v4, v2, v1

    const/4 v5, 0x0

    add-float/2addr v1, p2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    int-to-float p2, p2

    add-float v6, v1, p2

    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getHeight()I

    move-result p2

    int-to-float v7, p2

    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->access$1400()Landroid/graphics/Paint;

    move-result-object v8

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 495
    :cond_9
    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$DrawingText;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {p2, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getHeight()I
    .locals 1

    .line 519
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$DrawingText;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    return v0
.end method

.method public getLayout()Landroid/text/StaticLayout;
    .locals 1

    .line 528
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$DrawingText;->textLayout:Landroid/text/StaticLayout;

    return-object v0
.end method

.method public getLineAscent(I)I
    .locals 1

    .line 507
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$DrawingText;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->getLineAscent(I)I

    move-result p1

    return p1
.end method

.method public getLineCount()I
    .locals 1

    .line 503
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$DrawingText;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    return v0
.end method

.method public getLineLeft(I)F
    .locals 1

    .line 511
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$DrawingText;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result p1

    return p1
.end method

.method public getLineWidth(I)F
    .locals 1

    .line 515
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$DrawingText;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result p1

    return p1
.end method

.method public getPrefix()Ljava/lang/CharSequence;
    .locals 1

    .line 548
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$DrawingText;->prefix:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getRow()I
    .locals 1

    .line 543
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$DrawingText;->row:I

    return v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .line 499
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$DrawingText;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 523
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$DrawingText;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getWidth()I

    move-result v0

    return v0
.end method

.method public getX()I
    .locals 1

    .line 533
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$DrawingText;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    .line 538
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$DrawingText;->y:I

    return v0
.end method
