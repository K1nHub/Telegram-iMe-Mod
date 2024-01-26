.class Lorg/telegram/ui/Components/Premium/LimitPreviewView$1;
.super Landroid/widget/FrameLayout;
.source "LimitPreviewView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Premium/LimitPreviewView;-><init>(Landroid/content/Context;IIIFLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field grayPaint:Landroid/graphics/Paint;

.field final synthetic this$0:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

.field final synthetic val$defaultLayout:Landroid/widget/FrameLayout;

.field final synthetic val$premiumLayout:Landroid/widget/FrameLayout;

.field final synthetic val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Premium/LimitPreviewView;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$1;->this$0:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    iput-object p3, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$1;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iput-object p4, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$1;->val$defaultLayout:Landroid/widget/FrameLayout;

    iput-object p5, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$1;->val$premiumLayout:Landroid/widget/FrameLayout;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 154
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$1;->grayPaint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 158
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$1;->this$0:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    invoke-static {v0}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->access$000(Lorg/telegram/ui/Components/Premium/LimitPreviewView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$1;->this$0:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    iget-boolean v0, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->isStatistic:Z

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$1;->grayPaint:Landroid/graphics/Paint;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$1;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 162
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$1;->grayPaint:Landroid/graphics/Paint;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_graySection:I

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$1;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 165
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$1;->grayPaint:Landroid/graphics/Paint;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$1;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 167
    :goto_0
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    const/4 v1, 0x6

    .line 168
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$1;->grayPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 170
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 171
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$1;->this$0:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    invoke-static {v0}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->access$000(Lorg/telegram/ui/Components/Premium/LimitPreviewView;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 172
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$1;->this$0:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    iget v0, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->width1:I

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {p1, v0, v2, v4, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 174
    :cond_2
    invoke-static {}, Lorg/telegram/ui/Components/Premium/PremiumGradient;->getInstance()Lorg/telegram/ui/Components/Premium/PremiumGradient;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Premium/PremiumGradient;->getMainGradientPaint()Landroid/graphics/Paint;

    move-result-object v0

    .line 175
    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$1;->this$0:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    invoke-static {v2}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->access$100(Lorg/telegram/ui/Components/Premium/LimitPreviewView;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 176
    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$1;->this$0:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    invoke-static {v2}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->access$100(Lorg/telegram/ui/Components/Premium/LimitPreviewView;)Landroid/view/View;

    move-result-object v2

    .line 177
    iget-object v4, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$1;->this$0:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    iget-object v5, v4, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->staticGradient:Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;

    if-eqz v5, :cond_3

    .line 178
    iget-object v0, v5, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->paint:Landroid/graphics/Paint;

    .line 179
    iget v2, v4, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->gradientTotalHeight:I

    int-to-float v2, v2

    iget v4, v4, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->gradientYOffset:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v5, v2, v4}, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->gradientMatrixLinear(FF)V

    goto :goto_2

    :cond_3
    move-object v4, p0

    move v5, v3

    :goto_1
    if-eq v4, v2, :cond_4

    .line 184
    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v6

    add-float/2addr v5, v6

    .line 185
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    goto :goto_1

    .line 187
    :cond_4
    invoke-static {}, Lorg/telegram/ui/Components/Premium/PremiumGradient;->getInstance()Lorg/telegram/ui/Components/Premium/PremiumGradient;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$1;->this$0:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    invoke-static {v2}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->access$200(Lorg/telegram/ui/Components/Premium/LimitPreviewView;)F

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v4

    int-to-float v4, v4

    sub-float v11, v2, v4

    neg-float v12, v5

    invoke-virtual/range {v6 .. v12}, Lorg/telegram/ui/Components/Premium/PremiumGradient;->updateMainGradientMatrix(IIIIFF)V

    goto :goto_2

    .line 191
    :cond_5
    invoke-static {}, Lorg/telegram/ui/Components/Premium/PremiumGradient;->getInstance()Lorg/telegram/ui/Components/Premium/PremiumGradient;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$1;->this$0:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v7

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$1;->this$0:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v8

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$1;->this$0:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    invoke-static {v2}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->access$200(Lorg/telegram/ui/Components/Premium/LimitPreviewView;)F

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v9

    int-to-float v9, v9

    sub-float v9, v2, v9

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTop()I

    move-result v2

    neg-int v2, v2

    int-to-float v10, v2

    invoke-virtual/range {v4 .. v10}, Lorg/telegram/ui/Components/Premium/PremiumGradient;->updateMainGradientMatrix(IIIIFF)V

    .line 193
    :goto_2
    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$1;->this$0:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    invoke-static {v2}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->access$000(Lorg/telegram/ui/Components/Premium/LimitPreviewView;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 194
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v4, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$1;->this$0:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    iget v4, v4, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->width1:I

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v2, v3, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 196
    :cond_6
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v2, v3, v1, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 197
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 198
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$1;->this$0:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->staticGradient:Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;

    if-nez v1, :cond_7

    iget-boolean v0, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->invalidationEnabled:Z

    if-eqz v0, :cond_7

    .line 199
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 201
    :cond_7
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .line 255
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    .line 256
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    .line 257
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 258
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr p5, p3

    .line 259
    invoke-virtual {v0, p1, p1, v2, p5}, Landroid/view/View;->layout(IIII)V

    sub-int/2addr p4, p2

    .line 260
    invoke-virtual {v1, v2, p1, p4, p5}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 262
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    .line 206
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 207
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 208
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 209
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$1;->val$defaultLayout:Landroid/widget/FrameLayout;

    const/high16 v1, -0x80000000

    .line 210
    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    .line 211
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 209
    invoke-virtual {v0, v2, v4}, Landroid/widget/FrameLayout;->measure(II)V

    .line 213
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$1;->val$defaultLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    const/16 v2, 0x18

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$1;->this$0:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    invoke-static {v5}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->access$300(Lorg/telegram/ui/Components/Premium/LimitPreviewView;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$1;->this$0:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    iget-object v5, v5, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->defaultCount:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getVisibility()I

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_0

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    iget-object v7, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$1;->this$0:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    iget-object v7, v7, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->defaultCount:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v5, v7

    goto :goto_0

    :cond_0
    move v5, v6

    :goto_0
    add-int/2addr v4, v5

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 214
    iget-object v4, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$1;->val$premiumLayout:Landroid/widget/FrameLayout;

    .line 215
    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 216
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 214
    invoke-virtual {v4, v1, v5}, Landroid/widget/FrameLayout;->measure(II)V

    .line 218
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$1;->this$0:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    invoke-static {v1}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->access$000(Lorg/telegram/ui/Components/Premium/LimitPreviewView;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 219
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$1;->this$0:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    invoke-static {v0}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->access$400(Lorg/telegram/ui/Components/Premium/LimitPreviewView;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 220
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$1;->this$0:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    iput v6, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->width1:I

    .line 221
    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->premiumCount:Landroid/widget/TextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$1;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 222
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$1;->this$0:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    invoke-static {v0}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->access$300(Lorg/telegram/ui/Components/Premium/LimitPreviewView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$1;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 223
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$1;->this$0:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    invoke-static {v0}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->access$400(Lorg/telegram/ui/Components/Premium/LimitPreviewView;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    const/4 v1, -0x1

    if-gez v0, :cond_2

    .line 224
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$1;->val$defaultLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    const/16 v2, 0x8

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v0, v0

    .line 225
    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$1;->val$premiumLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr v3, v2

    int-to-float v2, v3

    int-to-float v3, p1

    sub-float/2addr v3, v0

    sub-float/2addr v3, v2

    .line 227
    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$1;->this$0:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    invoke-static {v2}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->access$400(Lorg/telegram/ui/Components/Premium/LimitPreviewView;)F

    move-result v4

    mul-float/2addr v3, v4

    add-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, v2, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->width1:I

    .line 228
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$1;->this$0:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->premiumCount:Landroid/widget/TextView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$1;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 229
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$1;->this$0:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    invoke-static {v0}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->access$300(Lorg/telegram/ui/Components/Premium/LimitPreviewView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 231
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$1;->this$0:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    iput p1, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->width1:I

    .line 232
    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->premiumCount:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 233
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$1;->this$0:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    invoke-static {v0}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->access$300(Lorg/telegram/ui/Components/Premium/LimitPreviewView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 236
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$1;->val$premiumLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$1;->this$0:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    invoke-static {v5}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->access$500(Lorg/telegram/ui/Components/Premium/LimitPreviewView;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$1;->this$0:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    iget-object v5, v5, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->premiumCount:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iget-object v5, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$1;->this$0:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    iget-object v5, v5, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->premiumCount:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    add-int v6, v2, v5

    :cond_4
    add-int/2addr v4, v6

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 237
    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$1;->this$0:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    int-to-float v4, p1

    invoke-static {v2}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->access$400(Lorg/telegram/ui/Components/Premium/LimitPreviewView;)F

    move-result v5

    mul-float/2addr v4, v5

    sub-int v1, p1, v1

    int-to-float v1, v1

    int-to-float v0, v0

    invoke-static {v4, v1, v0}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v0

    float-to-int v0, v0

    iput v0, v2, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->width1:I

    .line 238
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$1;->val$defaultLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$1;->this$0:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    iget v1, v1, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->width1:I

    .line 239
    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 240
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 238
    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->measure(II)V

    .line 242
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$1;->val$premiumLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$1;->this$0:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    iget v1, v1, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->width1:I

    sub-int v1, p1, v1

    .line 243
    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 244
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 242
    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->measure(II)V

    .line 247
    :goto_1
    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    goto :goto_2

    .line 249
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    :goto_2
    return-void
.end method
