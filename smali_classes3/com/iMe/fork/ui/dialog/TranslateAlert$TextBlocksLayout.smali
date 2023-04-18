.class public Lcom/iMe/fork/ui/dialog/TranslateAlert$TextBlocksLayout;
.super Landroid/view/ViewGroup;
.source "TranslateAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/fork/ui/dialog/TranslateAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextBlocksLayout"
.end annotation


# static fields
.field private static final gap:I


# instance fields
.field private final fontSize:I

.field private final textColor:I

.field private wholeTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1541
    sget v0, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->paddingVertical:I

    neg-int v0, v0

    mul-int/lit8 v0, v0, 0x4

    const v1, 0x3ef5c28f    # 0.48f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v0, v1

    sput v0, Lcom/iMe/fork/ui/dialog/TranslateAlert$TextBlocksLayout;->gap:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILandroid/widget/TextView;)V
    .locals 0

    .line 1491
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 1493
    iput p2, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$TextBlocksLayout;->fontSize:I

    .line 1494
    iput p3, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$TextBlocksLayout;->textColor:I

    if-eqz p4, :cond_0

    .line 1497
    sget p1, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->paddingHorizontal:I

    sget p2, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->paddingVertical:I

    invoke-virtual {p4, p1, p2, p1, p2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1498
    iput-object p4, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$TextBlocksLayout;->wholeTextView:Landroid/widget/TextView;

    invoke-virtual {p0, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addBlock(Ljava/lang/CharSequence;)Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;
    .locals 8

    .line 1510
    new-instance v6, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/iMe/fork/ui/dialog/TranslateAlert$TextBlocksLayout;->getBlocksCount()I

    move-result v0

    const/4 v7, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, v7

    :goto_0
    iget v4, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$TextBlocksLayout;->fontSize:I

    iget v5, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$TextBlocksLayout;->textColor:I

    move-object v0, v6

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;ZII)V

    .line 1511
    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 1512
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1513
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$TextBlocksLayout;->wholeTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 1514
    invoke-virtual {p1}, Landroid/widget/TextView;->bringToFront()V

    :cond_1
    return-object v6
.end method

.method public getBlockAt(I)Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;
    .locals 1

    .line 1524
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 1525
    instance-of v0, p1, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;

    if-eqz v0, :cond_0

    .line 1526
    check-cast p1, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getBlocksCount()I
    .locals 2

    .line 1520
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$TextBlocksLayout;->wholeTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sub-int/2addr v0, v1

    return v0
.end method

.method public getFirstUnloadedBlock()Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;
    .locals 4

    .line 1532
    invoke-virtual {p0}, Lcom/iMe/fork/ui/dialog/TranslateAlert$TextBlocksLayout;->getBlocksCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 1534
    invoke-virtual {p0, v1}, Lcom/iMe/fork/ui/dialog/TranslateAlert$TextBlocksLayout;->getBlockAt(I)Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1535
    iget-boolean v3, v2, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->loaded:Z

    if-nez v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public height()I
    .locals 4

    .line 1545
    invoke-virtual {p0}, Lcom/iMe/fork/ui/dialog/TranslateAlert$TextBlocksLayout;->getBlocksCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1547
    invoke-virtual {p0, v1}, Lcom/iMe/fork/ui/dialog/TranslateAlert$TextBlocksLayout;->getBlockAt(I)Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->height()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1549
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method protected onHeightUpdated(I)V
    .locals 0

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 10

    .line 1591
    invoke-virtual {p0}, Lcom/iMe/fork/ui/dialog/TranslateAlert$TextBlocksLayout;->getBlocksCount()I

    move-result p1

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    if-ge v1, p1, :cond_2

    .line 1593
    invoke-virtual {p0, v1}, Lcom/iMe/fork/ui/dialog/TranslateAlert$TextBlocksLayout;->getBlockAt(I)Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;

    move-result-object v3

    .line 1594
    invoke-virtual {v3}, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->height()I

    move-result v4

    if-lez v1, :cond_0

    .line 1595
    sget v5, Lcom/iMe/fork/ui/dialog/TranslateAlert$TextBlocksLayout;->gap:I

    goto :goto_1

    :cond_0
    move v5, v0

    .line 1596
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v7

    add-int/2addr v7, v2

    add-int/2addr v7, v5

    sub-int v8, p4, p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v9

    add-int/2addr v9, v2

    add-int/2addr v9, v4

    add-int/2addr v9, v5

    invoke-virtual {v3, v6, v7, v8, v9}, Landroid/view/ViewGroup;->layout(IIII)V

    add-int/2addr v2, v4

    if-lez v1, :cond_1

    add-int/lit8 v3, p1, -0x1

    if-ge v1, v3, :cond_1

    .line 1599
    sget v3, Lcom/iMe/fork/ui/dialog/TranslateAlert$TextBlocksLayout;->gap:I

    add-int/2addr v2, v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1603
    :cond_2
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$TextBlocksLayout;->wholeTextView:Landroid/widget/TextView;

    sub-int/2addr p4, p2

    .line 1604
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p2

    sub-int p2, p4, p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v0

    sub-int/2addr p2, v0

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    sub-int/2addr p5, p3

    .line 1605
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p3

    sub-int/2addr p5, p3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p5, p3

    invoke-static {p5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    .line 1603
    invoke-virtual {p1, p2, p3}, Landroid/widget/TextView;->measure(II)V

    .line 1607
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$TextBlocksLayout;->wholeTextView:Landroid/widget/TextView;

    .line 1608
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p2

    .line 1609
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p3

    .line 1610
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p5

    sub-int/2addr p4, p5

    .line 1611
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p5

    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$TextBlocksLayout;->wholeTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    add-int/2addr p5, v0

    .line 1607
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/widget/TextView;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 1576
    invoke-virtual {p0}, Lcom/iMe/fork/ui/dialog/TranslateAlert$TextBlocksLayout;->getBlocksCount()I

    move-result p2

    .line 1578
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1579
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 1577
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    .line 1582
    invoke-virtual {p0, v1}, Lcom/iMe/fork/ui/dialog/TranslateAlert$TextBlocksLayout;->getBlockAt(I)Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;

    move-result-object v2

    .line 1583
    invoke-static {}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->access$1500()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/view/ViewGroup;->measure(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1585
    :cond_0
    invoke-virtual {p0}, Lcom/iMe/fork/ui/dialog/TranslateAlert$TextBlocksLayout;->height()I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    return-void
.end method

.method public setWholeText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1505
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$TextBlocksLayout;->wholeTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearFocus()V

    .line 1506
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$TextBlocksLayout;->wholeTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateHeight()V
    .locals 4

    .line 1557
    invoke-virtual {p0}, Lcom/iMe/fork/ui/dialog/TranslateAlert$TextBlocksLayout;->height()I

    move-result v0

    .line 1559
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 1561
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v1, v3, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    goto :goto_1

    .line 1564
    :cond_0
    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v3, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 1565
    :goto_0
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_1
    if-eqz v2, :cond_2

    .line 1569
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1570
    invoke-virtual {p0, v0}, Lcom/iMe/fork/ui/dialog/TranslateAlert$TextBlocksLayout;->onHeightUpdated(I)V

    :cond_2
    return-void
.end method
