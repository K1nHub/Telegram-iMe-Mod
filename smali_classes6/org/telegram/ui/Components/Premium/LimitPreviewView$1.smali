.class Lorg/telegram/ui/Components/Premium/LimitPreviewView$1;
.super Landroid/widget/LinearLayout;
.source "LimitPreviewView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Premium/LimitPreviewView;-><init>(Landroid/content/Context;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field grayPaint:Landroid/graphics/Paint;

.field final synthetic this$0:Lorg/telegram/ui/Components/Premium/LimitPreviewView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Premium/LimitPreviewView;Landroid/content/Context;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$1;->this$0:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 82
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$1;->grayPaint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 86
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$1;->grayPaint:Landroid/graphics/Paint;

    const-string v1, "windowBackgroundGray"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 87
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    const/4 v1, 0x6

    .line 88
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$1;->grayPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 90
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 91
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v0, v3, v2, v4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 92
    invoke-static {}, Lorg/telegram/ui/Components/Premium/PremiumGradient;->getInstance()Lorg/telegram/ui/Components/Premium/PremiumGradient;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Premium/PremiumGradient;->getMainGradientPaint()Landroid/graphics/Paint;

    move-result-object v0

    .line 93
    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$1;->this$0:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    invoke-static {v2}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->access$000(Lorg/telegram/ui/Components/Premium/LimitPreviewView;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 94
    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$1;->this$0:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    invoke-static {v2}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->access$000(Lorg/telegram/ui/Components/Premium/LimitPreviewView;)Landroid/view/View;

    move-result-object v2

    .line 95
    iget-object v4, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$1;->this$0:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    iget-object v5, v4, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->staticGradient:Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;

    if-eqz v5, :cond_0

    .line 96
    iget-object v0, v5, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->paint:Landroid/graphics/Paint;

    .line 97
    iget v2, v4, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->gradientTotalHeight:I

    int-to-float v2, v2

    iget v3, v4, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->gradientYOffset:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v5, v2, v3}, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->gradientMatrixLinear(FF)V

    goto :goto_1

    :cond_0
    move-object v4, p0

    :goto_0
    if-eq v4, v2, :cond_1

    .line 102
    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v5

    add-float/2addr v3, v5

    .line 103
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    goto :goto_0

    .line 105
    :cond_1
    invoke-static {}, Lorg/telegram/ui/Components/Premium/PremiumGradient;->getInstance()Lorg/telegram/ui/Components/Premium/PremiumGradient;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$1;->this$0:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    invoke-static {v2}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->access$100(Lorg/telegram/ui/Components/Premium/LimitPreviewView;)F

    move-result v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v4

    int-to-float v4, v4

    sub-float v10, v2, v4

    neg-float v11, v3

    invoke-virtual/range {v5 .. v11}, Lorg/telegram/ui/Components/Premium/PremiumGradient;->updateMainGradientMatrix(IIIIFF)V

    goto :goto_1

    .line 109
    :cond_2
    invoke-static {}, Lorg/telegram/ui/Components/Premium/PremiumGradient;->getInstance()Lorg/telegram/ui/Components/Premium/PremiumGradient;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$1;->this$0:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$1;->this$0:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v6

    iget-object v7, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$1;->this$0:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    invoke-static {v7}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->access$100(Lorg/telegram/ui/Components/Premium/LimitPreviewView;)F

    move-result v7

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTop()I

    move-result v8

    neg-int v8, v8

    int-to-float v8, v8

    invoke-virtual/range {v2 .. v8}, Lorg/telegram/ui/Components/Premium/PremiumGradient;->updateMainGradientMatrix(IIIIFF)V

    .line 111
    :goto_1
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v2, v3, v1, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 112
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 113
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$1;->this$0:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->staticGradient:Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;

    if-nez v0, :cond_3

    .line 114
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 116
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method
