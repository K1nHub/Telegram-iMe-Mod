.class Lorg/telegram/ui/ArticleViewer$BlockTableCell$1;
.super Landroid/widget/HorizontalScrollView;
.source "ArticleViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ArticleViewer$BlockTableCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ArticleViewer$BlockTableCell;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ArticleViewer$BlockTableCell;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer;)V
    .locals 0

    .line 7809
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockTableCell$1;->this$1:Lorg/telegram/ui/ArticleViewer$BlockTableCell;

    invoke-direct {p0, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 7812
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    .line 7813
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockTableCell$1;->this$1:Lorg/telegram/ui/ArticleViewer$BlockTableCell;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->access$16400(Lorg/telegram/ui/ArticleViewer$BlockTableCell;)Lorg/telegram/ui/Components/TableLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result v1

    const/16 v2, 0x24

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_0

    if-eqz p1, :cond_0

    .line 7814
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockTableCell$1;->this$1:Lorg/telegram/ui/ArticleViewer$BlockTableCell;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$2300(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/ArticleViewer$WindowView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ArticleViewer$WindowView;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return p1
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 7848
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockTableCell$1;->this$1:Lorg/telegram/ui/ArticleViewer$BlockTableCell;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->access$16400(Lorg/telegram/ui/ArticleViewer$BlockTableCell;)Lorg/telegram/ui/Components/TableLayout;

    move-result-object v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Landroid/view/View;->measure(II)V

    .line 7849
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$BlockTableCell$1;->this$1:Lorg/telegram/ui/ArticleViewer$BlockTableCell;

    invoke-static {p2}, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->access$16400(Lorg/telegram/ui/ArticleViewer$BlockTableCell;)Lorg/telegram/ui/Components/TableLayout;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 0

    .line 7829
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    .line 7830
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockTableCell$1;->this$1:Lorg/telegram/ui/ArticleViewer$BlockTableCell;

    iget-object p1, p1, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer;->access$1100(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 7831
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockTableCell$1;->this$1:Lorg/telegram/ui/ArticleViewer$BlockTableCell;

    iget-object p1, p1, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lorg/telegram/ui/ArticleViewer;->access$1102(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$DrawingText;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    .line 7832
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockTableCell$1;->this$1:Lorg/telegram/ui/ArticleViewer$BlockTableCell;

    iget-object p1, p1, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p1, p2}, Lorg/telegram/ui/ArticleViewer;->access$4602(Lorg/telegram/ui/ArticleViewer;Landroid/view/View;)Landroid/view/View;

    .line 7834
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockTableCell$1;->this$1:Lorg/telegram/ui/ArticleViewer$BlockTableCell;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->access$16500(Lorg/telegram/ui/ArticleViewer$BlockTableCell;)V

    .line 7835
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockTableCell$1;->this$1:Lorg/telegram/ui/ArticleViewer$BlockTableCell;

    iget-object p1, p1, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object p1, p1, Lorg/telegram/ui/ArticleViewer;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->isInSelectionMode()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7836
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockTableCell$1;->this$1:Lorg/telegram/ui/ArticleViewer$BlockTableCell;

    iget-object p1, p1, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object p1, p1, Lorg/telegram/ui/ArticleViewer;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->invalidate()V

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 7821
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockTableCell$1;->this$1:Lorg/telegram/ui/ArticleViewer$BlockTableCell;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->access$16400(Lorg/telegram/ui/ArticleViewer$BlockTableCell;)Lorg/telegram/ui/Components/TableLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result v1

    const/16 v2, 0x24

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 7824
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected overScrollBy(IIIIIIIIZ)Z
    .locals 1

    .line 7842
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockTableCell$1;->this$1:Lorg/telegram/ui/ArticleViewer$BlockTableCell;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$16600(Lorg/telegram/ui/ArticleViewer;)V

    .line 7843
    invoke-super/range {p0 .. p9}, Landroid/widget/HorizontalScrollView;->overScrollBy(IIIIIIIIZ)Z

    move-result p1

    return p1
.end method
