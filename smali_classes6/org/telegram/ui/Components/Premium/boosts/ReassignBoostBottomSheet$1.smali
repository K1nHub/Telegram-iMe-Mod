.class Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$1;
.super Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;
.source "ReassignBoostBottomSheet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/tl/TL_stories$TL_premium_myBoosts;Lorg/telegram/tgnet/TLRPC$Chat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private incGradient:Z

.field private progress:F

.field private final rect:Landroid/graphics/RectF;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 100
    invoke-direct {p0, p2, p3, p4}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 102
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$1;->rect:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 108
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$1;->incGradient:Z

    const v1, 0x3c83126f    # 0.016f

    if-eqz v0, :cond_0

    .line 109
    iget v0, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$1;->progress:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$1;->progress:F

    const/high16 v1, 0x40400000    # 3.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 111
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$1;->incGradient:Z

    goto :goto_0

    .line 114
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$1;->progress:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$1;->progress:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    const/4 v0, 0x1

    .line 116
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$1;->incGradient:Z

    .line 119
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$1;->rect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 120
    invoke-static {}, Lorg/telegram/ui/Components/Premium/PremiumGradient;->getInstance()Lorg/telegram/ui/Components/Premium/PremiumGradient;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v8

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    const v1, 0x3dcccccd    # 0.1f

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$1;->progress:F

    mul-float v9, v0, v1

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Lorg/telegram/ui/Components/Premium/PremiumGradient;->updateMainGradientMatrix(IIIIFF)V

    .line 121
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$1;->rect:Landroid/graphics/RectF;

    const/16 v1, 0x8

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Lorg/telegram/ui/Components/Premium/PremiumGradient;->getInstance()Lorg/telegram/ui/Components/Premium/PremiumGradient;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/Premium/PremiumGradient;->getMainGradientPaint()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 122
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 123
    invoke-super {p0, p1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method
