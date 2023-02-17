.class public Lorg/telegram/ui/Components/Premium/LimitPreviewView;
.super Landroid/widget/LinearLayout;
.source "LimitPreviewView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;
    }
.end annotation


# instance fields
.field animationCanPlay:Z

.field defaultCount:Landroid/widget/TextView;

.field public gradientTotalHeight:I

.field gradientYOffset:I

.field icon:I

.field inc:Z

.field limitIcon:Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;

.field limitsContainer:Landroid/widget/LinearLayout;

.field private parentVideForGradient:Landroid/view/View;

.field private position:F

.field premiumCount:Landroid/widget/TextView;

.field private premiumLocked:Z

.field progress:F

.field staticGradient:Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;

.field wasAnimation:Z

.field wasHaptic:Z


# direct methods
.method public static synthetic $r8$lambda$1pp17UYVGjrVu8k8GHeQ_euWV3k(Lorg/telegram/ui/Components/Premium/LimitPreviewView;FFFFLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->lambda$onLayout$0(FFFFLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;III)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 66
    invoke-direct/range {p0 .. p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 60
    iput-boolean v3, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->animationCanPlay:Z

    .line 67
    iput v2, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->icon:I

    .line 68
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v3, 0x0

    .line 69
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    .line 70
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    const/16 v4, 0x10

    if-eqz v2, :cond_0

    .line 72
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-virtual {v0, v3, v5, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 73
    new-instance v5, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;

    invoke-direct {v5, v0, v1}, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;-><init>(Lorg/telegram/ui/Components/Premium/LimitPreviewView;Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->limitIcon:Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;

    move/from16 v5, p3

    .line 75
    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->setIconValue(I)V

    .line 77
    iget-object v5, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->limitIcon:Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;

    const/16 v6, 0x18

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    const/4 v8, 0x6

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    const/16 v9, 0xe

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    invoke-virtual {v5, v7, v8, v6, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 78
    iget-object v5, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->limitIcon:Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;

    const/4 v6, 0x0

    const/4 v7, 0x3

    const/4 v8, -0x2

    invoke-static {v8, v8, v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFI)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    :cond_0
    new-instance v5, Lorg/telegram/ui/Components/Premium/LimitPreviewView$1;

    invoke-direct {v5, v0, v1}, Lorg/telegram/ui/Components/Premium/LimitPreviewView$1;-><init>(Lorg/telegram/ui/Components/Premium/LimitPreviewView;Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->limitsContainer:Landroid/widget/LinearLayout;

    .line 119
    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 121
    new-instance v5, Landroid/widget/FrameLayout;

    invoke-direct {v5, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 123
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v7, "fonts/rmedium.ttf"

    .line 124
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 125
    sget v8, Lorg/telegram/messenger/R$string;->LimitFree:I

    const-string v9, "LimitFree"

    invoke-static {v9, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setGravity(I)V

    const-string/jumbo v8, "windowBackgroundWhiteBlackText"

    .line 127
    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v9, 0xc

    .line 128
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    invoke-virtual {v6, v10, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 130
    new-instance v10, Landroid/widget/TextView;

    invoke-direct {v10, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v10, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->defaultCount:Landroid/widget/TextView;

    .line 131
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 132
    iget-object v10, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->defaultCount:Landroid/widget/TextView;

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v10, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->defaultCount:Landroid/widget/TextView;

    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 134
    iget-object v10, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->defaultCount:Landroid/widget/TextView;

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v11, -0x1

    const/16 v12, 0x1e

    const/4 v13, 0x3

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x24

    const/16 v17, 0x0

    .line 136
    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    iget-object v6, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->defaultCount:Landroid/widget/TextView;

    const/4 v10, -0x2

    const/16 v11, 0x1e

    const/4 v12, 0x5

    const/4 v13, 0x0

    const/16 v15, 0xc

    const/16 v16, 0x0

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    iget-object v6, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->limitsContainer:Landroid/widget/LinearLayout;

    const/16 v8, 0x1e

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v3, v8, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v6, v5, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    new-instance v5, Landroid/widget/FrameLayout;

    invoke-direct {v5, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 143
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 144
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 145
    sget v11, Lorg/telegram/messenger/R$string;->LimitPremium:I

    const-string v12, "LimitPremium"

    invoke-static {v12, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v11, -0x1

    .line 147
    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 148
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    invoke-virtual {v6, v12, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 150
    new-instance v12, Landroid/widget/TextView;

    invoke-direct {v12, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v12, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->premiumCount:Landroid/widget/TextView;

    .line 151
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 152
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->premiumCount:Landroid/widget/TextView;

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->premiumCount:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 154
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->premiumCount:Landroid/widget/TextView;

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v12, -0x1

    const/16 v13, 0x1e

    const/4 v14, 0x3

    const/4 v15, 0x0

    const/16 v17, 0x24

    const/16 v18, 0x0

    .line 156
    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v5, v6, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->premiumCount:Landroid/widget/TextView;

    const/4 v11, -0x2

    const/16 v12, 0x1e

    const/4 v13, 0x5

    const/4 v14, 0x0

    const/16 v16, 0xc

    const/16 v17, 0x0

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v5, v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->limitsContainer:Landroid/widget/LinearLayout;

    invoke-static {v3, v8, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->limitsContainer:Landroid/widget/LinearLayout;

    const/4 v10, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0xe

    if-nez v2, :cond_1

    const/4 v15, 0x0

    goto :goto_0

    :cond_1
    const/16 v15, 0xc

    :goto_0
    const/16 v16, 0xe

    const/16 v17, 0x0

    invoke-static/range {v10 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/Premium/LimitPreviewView;)Landroid/view/View;
    .locals 0

    .line 42
    iget-object p0, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->parentVideForGradient:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/Premium/LimitPreviewView;)F
    .locals 0

    .line 42
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->getGlobalXOffset()F

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/Premium/LimitPreviewView;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->premiumLocked:Z

    return p0
.end method

.method private getGlobalXOffset()F
    .locals 3

    .line 172
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    const v1, 0x3dcccccd    # 0.1f

    mul-float v0, v0, v1

    iget v1, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->progress:F

    mul-float v0, v0, v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3e4ccccd    # 0.2f

    mul-float v1, v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method private synthetic lambda$onLayout$0(FFFFLandroid/animation/ValueAnimator;)V
    .locals 4

    .line 219
    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Float;

    invoke-virtual {p5}, Ljava/lang/Float;->floatValue()F

    move-result p5

    const/high16 v0, 0x3f800000    # 1.0f

    .line 220
    invoke-static {v0, p5}, Ljava/lang/Math;->min(FF)F

    move-result v1

    cmpl-float v2, p5, v0

    if-lez v2, :cond_1

    .line 222
    iget-boolean v2, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->wasHaptic:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    .line 223
    iput-boolean v2, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->wasHaptic:Z

    .line 224
    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->limitIcon:Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 226
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->limitIcon:Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;

    sub-float/2addr p5, v0

    const/high16 v3, 0x42700000    # 60.0f

    mul-float p5, p5, v3

    invoke-virtual {v2, p5}, Landroid/view/View;->setRotation(F)V

    goto :goto_0

    .line 228
    :cond_1
    iget-object p5, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->limitIcon:Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;

    const/4 v2, 0x0

    invoke-virtual {p5, v2}, Landroid/view/View;->setRotation(F)V

    .line 230
    :goto_0
    iget-object p5, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->limitIcon:Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;

    sub-float v2, v0, v1

    mul-float p1, p1, v2

    mul-float p2, p2, v1

    add-float/2addr p1, p2

    invoke-virtual {p5, p1}, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->setTranslationX(F)V

    mul-float p3, p3, v2

    mul-float p4, p4, v1

    add-float/2addr p3, p4

    .line 232
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->limitIcon:Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->setArrowCenter(F)V

    const/high16 p1, 0x40000000    # 2.0f

    mul-float v1, v1, p1

    .line 233
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 234
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->limitIcon:Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setScaleX(F)V

    .line 235
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->limitIcon:Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setScaleY(F)V

    .line 236
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->limitIcon:Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    int-to-float p2, p2

    mul-float p2, p2, p3

    invoke-virtual {p1, p2}, Landroid/view/View;->setPivotX(F)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 177
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->staticGradient:Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;

    if-nez v0, :cond_2

    .line 178
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->inc:Z

    const v1, 0x3c83126f    # 0.016f

    if-eqz v0, :cond_0

    .line 179
    iget v0, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->progress:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->progress:F

    const/high16 v1, 0x40400000    # 3.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 181
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->inc:Z

    goto :goto_0

    .line 184
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->progress:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->progress:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    const/4 v0, 0x1

    .line 186
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->inc:Z

    .line 189
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 191
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 15

    move-object v6, p0

    .line 196
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 197
    iget-boolean v0, v6, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->wasAnimation:Z

    const-wide/16 v7, 0xc8

    const/4 v9, 0x1

    const/high16 v1, 0x3f000000    # 0.5f

    const/16 v2, 0xe

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    if-nez v0, :cond_1

    iget-object v0, v6, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->limitIcon:Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;

    if-eqz v0, :cond_1

    iget-boolean v0, v6, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->animationCanPlay:Z

    if-eqz v0, :cond_1

    iget-boolean v0, v6, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->premiumLocked:Z

    if-nez v0, :cond_1

    .line 198
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v2, v0

    .line 200
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v11

    mul-int/lit8 v12, v0, 0x2

    sub-int/2addr v11, v12

    int-to-float v11, v11

    iget v12, v6, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->position:F

    mul-float v11, v11, v12

    add-float/2addr v2, v11

    iget-object v11, v6, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->limitIcon:Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v11, v3

    sub-float/2addr v2, v11

    const/high16 v11, 0x3f000000    # 0.5f

    .line 203
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v12

    sub-int/2addr v12, v0

    iget-object v13, v6, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->limitIcon:Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    sub-int/2addr v12, v13

    int-to-float v12, v12

    cmpl-float v12, v2, v12

    if-lez v12, :cond_0

    .line 204
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v1, v0

    iget-object v0, v6, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->limitIcon:Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr v1, v0

    int-to-float v0, v1

    move v12, v0

    const/high16 v13, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    move v12, v2

    const/high16 v13, 0x3f000000    # 0.5f

    .line 207
    :goto_0
    iget-object v0, v6, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->limitIcon:Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;

    invoke-virtual {v0, v10}, Landroid/view/View;->setAlpha(F)V

    .line 208
    iget-object v0, v6, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->limitIcon:Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->setTranslationX(F)V

    .line 209
    iget-object v0, v6, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->limitIcon:Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 210
    iget-object v0, v6, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->limitIcon:Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 211
    iget-object v0, v6, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->limitIcon:Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;

    invoke-virtual {v0, v5}, Landroid/view/View;->setScaleX(F)V

    .line 212
    iget-object v0, v6, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->limitIcon:Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;

    invoke-virtual {v0, v5}, Landroid/view/View;->setScaleY(F)V

    .line 213
    iget-object v0, v6, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->limitIcon:Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->createAnimationLayouts()V

    new-array v0, v4, [F

    .line 215
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v10

    .line 218
    new-instance v14, Lorg/telegram/ui/Components/Premium/LimitPreviewView$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    move-object v0, v14

    move-object v1, p0

    move v3, v12

    move v4, v11

    move v5, v13

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/Premium/LimitPreviewView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/Premium/LimitPreviewView;FFFF)V

    invoke-virtual {v10, v14}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 239
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v0}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v10, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0x3e8

    .line 240
    invoke-virtual {v10, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 241
    invoke-virtual {v10, v7, v8}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 242
    invoke-virtual {v10}, Landroid/animation/ValueAnimator;->start()V

    .line 244
    iput-boolean v9, v6, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->wasAnimation:Z

    goto/16 :goto_2

    .line 245
    :cond_1
    iget-boolean v0, v6, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->premiumLocked:Z

    if-eqz v0, :cond_4

    .line 246
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v2, v0

    .line 247
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v11

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr v11, v0

    int-to-float v0, v11

    mul-float v0, v0, v1

    add-float/2addr v2, v0

    iget-object v0, v6, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->limitIcon:Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v3

    sub-float/2addr v2, v0

    .line 248
    iget-boolean v0, v6, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->wasAnimation:Z

    if-nez v0, :cond_2

    iget-boolean v1, v6, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->animationCanPlay:Z

    if-eqz v1, :cond_2

    .line 249
    iput-boolean v9, v6, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->wasAnimation:Z

    .line 250
    iget-object v0, v6, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->limitIcon:Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    :cond_2
    if-nez v0, :cond_3

    .line 252
    iget-object v0, v6, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->limitIcon:Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;

    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    .line 253
    iget-object v0, v6, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->limitIcon:Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;

    invoke-virtual {v0, v5}, Landroid/view/View;->setScaleX(F)V

    .line 254
    iget-object v0, v6, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->limitIcon:Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;

    invoke-virtual {v0, v5}, Landroid/view/View;->setScaleY(F)V

    goto :goto_1

    .line 256
    :cond_3
    iget-object v0, v6, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->limitIcon:Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;

    invoke-virtual {v0, v10}, Landroid/view/View;->setAlpha(F)V

    .line 257
    iget-object v0, v6, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->limitIcon:Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;

    invoke-virtual {v0, v10}, Landroid/view/View;->setScaleX(F)V

    .line 258
    iget-object v0, v6, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->limitIcon:Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;

    invoke-virtual {v0, v10}, Landroid/view/View;->setScaleY(F)V

    .line 260
    :goto_1
    iget-object v0, v6, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->limitIcon:Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->setTranslationX(F)V

    goto :goto_2

    .line 261
    :cond_4
    iget-object v0, v6, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->limitIcon:Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;

    if-eqz v0, :cond_5

    .line 262
    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    :cond_5
    :goto_2
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setBagePosition(F)V
    .locals 0

    .line 279
    iput p1, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->position:F

    return-void
.end method

.method public setDelayedAnimation()V
    .locals 1

    const/4 v0, 0x0

    .line 291
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->animationCanPlay:Z

    return-void
.end method

.method public setIconValue(I)V
    .locals 5

    .line 165
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    const-string v1, "d "

    .line 166
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/ColoredImageSpan;

    iget v3, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->icon:I

    invoke-direct {v2, v3}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(I)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 167
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 168
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->limitIcon:Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setParentViewForGradien(Landroid/view/ViewGroup;)V
    .locals 0

    .line 283
    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->parentVideForGradient:Landroid/view/View;

    return-void
.end method

.method public setPremiumLocked()V
    .locals 5

    .line 300
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->limitsContainer:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 301
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->limitIcon:Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;

    const/16 v1, 0x18

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    const/4 v3, 0x3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v0, v2, v4, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    const/4 v0, 0x1

    .line 302
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->premiumLocked:Z

    return-void
.end method

.method public setStaticGradinet(Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;)V
    .locals 0

    .line 287
    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->staticGradient:Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;

    return-void
.end method

.method public setType(I)V
    .locals 5

    const/4 v0, 0x6

    if-ne p1, v0, :cond_2

    .line 268
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->limitIcon:Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;

    const-string v0, "4 GB"

    if-eqz p1, :cond_1

    .line 269
    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1}, Landroid/text/SpannableStringBuilder;-><init>()V

    const-string v1, "d "

    .line 270
    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/ColoredImageSpan;

    iget v3, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->icon:I

    invoke-direct {v2, v3}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(I)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 271
    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    const-string v1, "2 GB"

    :goto_0
    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 272
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->limitIcon:Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->premiumCount:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public startDelayedAnimation()V
    .locals 1

    const/4 v0, 0x1

    .line 295
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->animationCanPlay:Z

    .line 296
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method
