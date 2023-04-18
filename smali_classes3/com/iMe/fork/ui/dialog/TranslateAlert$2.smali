.class Lcom/iMe/fork/ui/dialog/TranslateAlert$2;
.super Landroid/widget/FrameLayout;
.source "TranslateAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/fork/ui/dialog/TranslateAlert;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;ILorg/telegram/tgnet/TLRPC$InputPeer;ILjava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;ZLcom/iMe/fork/ui/dialog/TranslateAlert$OnLinkPress;Ljava/lang/Runnable;Lcom/iMe/model/translation/TranslationArgs;Lcom/iMe/fork/ui/dialog/TranslateAlert$TranslatorActionsDelegate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private containerRect:Landroid/graphics/RectF;

.field private contentHeight:I

.field final synthetic this$0:Lcom/iMe/fork/ui/dialog/TranslateAlert;

.field final synthetic val$containerPaint:Landroid/graphics/Paint;


# direct methods
.method constructor <init>(Lcom/iMe/fork/ui/dialog/TranslateAlert;Landroid/content/Context;Landroid/graphics/Paint;)V
    .locals 0

    .line 742
    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$2;->this$0:Lcom/iMe/fork/ui/dialog/TranslateAlert;

    iput-object p3, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$2;->val$containerPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const p1, 0x7fffffff

    .line 743
    iput p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$2;->contentHeight:I

    .line 777
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    .line 778
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$2;->containerRect:Landroid/graphics/RectF;

    .line 779
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 783
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$2;->this$0:Lcom/iMe/fork/ui/dialog/TranslateAlert;

    invoke-static {v2}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->access$500(Lcom/iMe/fork/ui/dialog/TranslateAlert;)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v2, v3, v2

    const/high16 v4, 0x41400000    # 12.0f

    mul-float/2addr v2, v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/4 v4, 0x0

    .line 784
    invoke-virtual {p1, v4, v4, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 786
    iget-object v4, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$2;->containerRect:Landroid/graphics/RectF;

    int-to-float v0, v0

    add-int v5, v1, v2

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v6, v0, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 788
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$2;->this$0:Lcom/iMe/fork/ui/dialog/TranslateAlert;

    invoke-static {v0}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->access$700(Lcom/iMe/fork/ui/dialog/TranslateAlert;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 789
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$2;->this$0:Lcom/iMe/fork/ui/dialog/TranslateAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getSheetContainer()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v4, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$2;->this$0:Lcom/iMe/fork/ui/dialog/TranslateAlert;

    invoke-static {v4}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->access$800(Lcom/iMe/fork/ui/dialog/TranslateAlert;)F

    move-result v4

    sub-float/2addr v3, v4

    int-to-float v1, v1

    mul-float/2addr v3, v1

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setTranslationY(F)V

    goto :goto_0

    .line 791
    :cond_0
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$2;->this$0:Lcom/iMe/fork/ui/dialog/TranslateAlert;

    invoke-static {v0}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->access$800(Lcom/iMe/fork/ui/dialog/TranslateAlert;)F

    move-result v0

    sub-float/2addr v3, v0

    int-to-float v0, v1

    mul-float/2addr v3, v0

    invoke-virtual {p1, v6, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 793
    :goto_0
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$2;->containerRect:Landroid/graphics/RectF;

    int-to-float v1, v2

    iget-object v2, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$2;->val$containerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 794
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 773
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 774
    iget p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$2;->contentHeight:I

    sub-int/2addr p5, p3

    invoke-static {p1, p5}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$2;->contentHeight:I

    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 747
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 748
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 749
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$2;->this$0:Lcom/iMe/fork/ui/dialog/TranslateAlert;

    invoke-static {v1}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->access$100(Lcom/iMe/fork/ui/dialog/TranslateAlert;)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 750
    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$2;->this$0:Lcom/iMe/fork/ui/dialog/TranslateAlert;

    invoke-static {v1}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->access$200(Lcom/iMe/fork/ui/dialog/TranslateAlert;)Lcom/iMe/fork/ui/dialog/TranslateAlert$TextBlocksLayout;

    move-result-object v1

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$2;->this$0:Lcom/iMe/fork/ui/dialog/TranslateAlert;

    invoke-static {v1}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->access$200(Lcom/iMe/fork/ui/dialog/TranslateAlert;)Lcom/iMe/fork/ui/dialog/TranslateAlert$TextBlocksLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    if-gtz v1, :cond_0

    .line 751
    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$2;->this$0:Lcom/iMe/fork/ui/dialog/TranslateAlert;

    invoke-static {v1}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->access$200(Lcom/iMe/fork/ui/dialog/TranslateAlert;)Lcom/iMe/fork/ui/dialog/TranslateAlert$TextBlocksLayout;

    move-result-object v1

    .line 752
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    iget-object v4, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$2;->this$0:Lcom/iMe/fork/ui/dialog/TranslateAlert;

    invoke-static {v4}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->access$200(Lcom/iMe/fork/ui/dialog/TranslateAlert;)Lcom/iMe/fork/ui/dialog/TranslateAlert$TextBlocksLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$2;->this$0:Lcom/iMe/fork/ui/dialog/TranslateAlert;

    invoke-static {v4}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->access$200(Lcom/iMe/fork/ui/dialog/TranslateAlert;)Lcom/iMe/fork/ui/dialog/TranslateAlert$TextBlocksLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$2;->this$0:Lcom/iMe/fork/ui/dialog/TranslateAlert;

    invoke-static {v4}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->access$300(Lcom/iMe/fork/ui/dialog/TranslateAlert;)Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$2;->this$0:Lcom/iMe/fork/ui/dialog/TranslateAlert;

    invoke-static {v4}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->access$300(Lcom/iMe/fork/ui/dialog/TranslateAlert;)Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    const/4 v4, 0x0

    .line 751
    invoke-virtual {v1, v3, v4}, Landroid/view/ViewGroup;->measure(II)V

    .line 756
    :cond_0
    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$2;->this$0:Lcom/iMe/fork/ui/dialog/TranslateAlert;

    invoke-static {v1}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->access$400(Lcom/iMe/fork/ui/dialog/TranslateAlert;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v1, v0

    .line 757
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v3, v0

    int-to-float v0, v3

    iget-object v3, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$2;->this$0:Lcom/iMe/fork/ui/dialog/TranslateAlert;

    invoke-static {v3}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->access$500(Lcom/iMe/fork/ui/dialog/TranslateAlert;)F

    move-result v3

    mul-float/2addr v0, v3

    add-float/2addr v1, v0

    float-to-int v0, v1

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int/2addr v0, v1

    .line 758
    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$2;->this$0:Lcom/iMe/fork/ui/dialog/TranslateAlert;

    invoke-static {v1}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->access$600(Lcom/iMe/fork/ui/dialog/TranslateAlert;)V

    int-to-float v1, p2

    const v3, 0x3f4ccccd    # 0.8f

    mul-float/2addr v1, v3

    const/16 v3, 0x1e0

    .line 761
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    int-to-float p2, p2

    invoke-static {v1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    float-to-int p2, p2

    .line 762
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    .line 760
    invoke-static {p2, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 764
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 759
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method
