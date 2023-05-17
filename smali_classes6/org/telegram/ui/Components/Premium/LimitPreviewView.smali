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
    .locals 6

    const/high16 v5, 0x3f000000    # 0.5f

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 66
    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;-><init>(Landroid/content/Context;IIIF)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIIF)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 71
    invoke-direct/range {p0 .. p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 61
    iput-boolean v3, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->animationCanPlay:Z

    const v4, 0x3dcccccd    # 0.1f

    const v5, 0x3f666666    # 0.9f

    move/from16 v6, p5

    .line 72
    invoke-static {v6, v4, v5}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v4

    .line 73
    iput v2, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->icon:I

    .line 74
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v5, 0x0

    .line 75
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    .line 76
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    const/16 v6, 0x10

    if-eqz v2, :cond_0

    .line 78
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-virtual {v0, v5, v7, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 79
    new-instance v7, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;

    invoke-direct {v7, v0, v1}, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;-><init>(Lorg/telegram/ui/Components/Premium/LimitPreviewView;Landroid/content/Context;)V

    iput-object v7, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->limitIcon:Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;

    move/from16 v7, p3

    .line 81
    invoke-virtual {v0, v7}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->setIconValue(I)V

    .line 83
    iget-object v7, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->limitIcon:Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;

    const/16 v8, 0x18

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    const/4 v10, 0x6

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    const/16 v11, 0xe

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    invoke-virtual {v7, v9, v10, v8, v11}, Landroid/view/View;->setPadding(IIII)V

    .line 84
    iget-object v7, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->limitIcon:Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;

    const/4 v8, 0x0

    const/4 v9, 0x3

    const/4 v10, -0x2

    invoke-static {v10, v10, v8, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFI)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    :cond_0
    new-instance v7, Lorg/telegram/ui/Components/Premium/LimitPreviewView$1;

    invoke-direct {v7, v0, v1, v4}, Lorg/telegram/ui/Components/Premium/LimitPreviewView$1;-><init>(Lorg/telegram/ui/Components/Premium/LimitPreviewView;Landroid/content/Context;F)V

    iput-object v7, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->limitsContainer:Landroid/widget/LinearLayout;

    .line 125
    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 127
    new-instance v7, Landroid/widget/FrameLayout;

    invoke-direct {v7, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 129
    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v9, "fonts/rmedium.ttf"

    .line 130
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 131
    sget v10, Lorg/telegram/messenger/R$string;->LimitFree:I

    const-string v11, "LimitFree"

    invoke-static {v11, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 133
    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v11

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v11, 0xc

    .line 134
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    invoke-virtual {v8, v12, v5, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 136
    new-instance v12, Landroid/widget/TextView;

    invoke-direct {v12, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v12, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->defaultCount:Landroid/widget/TextView;

    .line 137
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 138
    iget-object v12, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->defaultCount:Landroid/widget/TextView;

    new-array v13, v3, [Ljava/lang/Object;

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v5

    const-string v14, "%d"

    invoke-static {v14, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v12, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->defaultCount:Landroid/widget/TextView;

    invoke-virtual {v12, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 140
    iget-object v12, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->defaultCount:Landroid/widget/TextView;

    invoke-static {v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v10

    invoke-virtual {v12, v10}, Landroid/widget/TextView;->setTextColor(I)V

    const v10, 0x3e99999a    # 0.3f

    cmpl-float v10, v4, v10

    if-lez v10, :cond_2

    .line 143
    sget-boolean v10, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v10, :cond_1

    const/4 v15, -0x1

    const/16 v16, 0x1e

    const/16 v17, 0x5

    const/16 v18, 0x24

    const/16 v19, 0x0

    const/16 v20, 0xc

    const/16 v21, 0x0

    .line 144
    invoke-static/range {v15 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v7, v8, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    iget-object v8, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->defaultCount:Landroid/widget/TextView;

    const/4 v15, -0x2

    const/16 v17, 0x3

    const/16 v18, 0xc

    const/16 v20, 0x0

    invoke-static/range {v15 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v7, v8, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_1
    const/4 v15, -0x1

    const/16 v16, 0x1e

    const/16 v17, 0x3

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x24

    const/16 v21, 0x0

    .line 147
    invoke-static/range {v15 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v7, v8, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    iget-object v8, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->defaultCount:Landroid/widget/TextView;

    const/4 v15, -0x2

    const/16 v17, 0x5

    const/16 v20, 0xc

    invoke-static/range {v15 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v7, v8, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    :cond_2
    :goto_0
    iget-object v8, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->limitsContainer:Landroid/widget/LinearLayout;

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float/2addr v10, v4

    const/high16 v12, 0x40000000    # 2.0f

    mul-float/2addr v10, v12

    const/4 v13, -0x1

    const/16 v15, 0x1e

    invoke-static {v13, v15, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v8, v7, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    new-instance v7, Landroid/widget/FrameLayout;

    invoke-direct {v7, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 156
    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 157
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 158
    sget v10, Lorg/telegram/messenger/R$string;->LimitPremium:I

    const-string v15, "LimitPremium"

    invoke-static {v15, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 160
    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 161
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    invoke-virtual {v8, v10, v5, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 163
    new-instance v10, Landroid/widget/TextView;

    invoke-direct {v10, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v10, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->premiumCount:Landroid/widget/TextView;

    .line 164
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 165
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->premiumCount:Landroid/widget/TextView;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v3, v5

    invoke-static {v14, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->premiumCount:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 167
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->premiumCount:Landroid/widget/TextView;

    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setTextColor(I)V

    const v1, 0x3f333333    # 0.7f

    cmpg-float v1, v4, v1

    if-gez v1, :cond_4

    .line 170
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_3

    const/4 v14, -0x1

    const/16 v15, 0x1e

    const/16 v16, 0x5

    const/16 v17, 0x24

    const/16 v18, 0x0

    const/16 v19, 0xc

    const/16 v20, 0x0

    .line 171
    invoke-static/range {v14 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v7, v8, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->premiumCount:Landroid/widget/TextView;

    const/4 v14, -0x2

    const/16 v16, 0x3

    const/16 v17, 0xc

    const/16 v19, 0x0

    invoke-static/range {v14 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v7, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_3
    const/4 v14, -0x1

    const/16 v15, 0x1e

    const/16 v16, 0x3

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x24

    const/16 v20, 0x0

    .line 174
    invoke-static/range {v14 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v7, v8, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 175
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->premiumCount:Landroid/widget/TextView;

    const/4 v14, -0x2

    const/16 v16, 0x5

    const/16 v19, 0xc

    invoke-static/range {v14 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v7, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    :cond_4
    :goto_1
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->limitsContainer:Landroid/widget/LinearLayout;

    mul-float/2addr v4, v12

    const/16 v3, 0x1e

    invoke-static {v13, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v7, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 181
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->limitsContainer:Landroid/widget/LinearLayout;

    const/4 v12, -0x1

    const/4 v13, -0x2

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0xe

    if-nez v2, :cond_5

    move/from16 v17, v5

    goto :goto_2

    :cond_5
    move/from16 v17, v11

    :goto_2
    const/16 v18, 0xe

    const/16 v19, 0x0

    invoke-static/range {v12 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/Premium/LimitPreviewView;)Landroid/view/View;
    .locals 0

    .line 43
    iget-object p0, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->parentVideForGradient:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/Premium/LimitPreviewView;)F
    .locals 0

    .line 43
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->getGlobalXOffset()F

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/Premium/LimitPreviewView;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->premiumLocked:Z

    return p0
.end method

.method private getGlobalXOffset()F
    .locals 3

    .line 192
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    const v1, 0x3dcccccd    # 0.1f

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->progress:F

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3e4ccccd    # 0.2f

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method private synthetic lambda$onLayout$0(FFFFLandroid/animation/ValueAnimator;)V
    .locals 4

    .line 239
    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Float;

    invoke-virtual {p5}, Ljava/lang/Float;->floatValue()F

    move-result p5

    const/high16 v0, 0x3f800000    # 1.0f

    .line 240
    invoke-static {v0, p5}, Ljava/lang/Math;->min(FF)F

    move-result v1

    cmpl-float v2, p5, v0

    if-lez v2, :cond_1

    .line 242
    iget-boolean v2, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->wasHaptic:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    .line 243
    iput-boolean v2, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->wasHaptic:Z

    .line 244
    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->limitIcon:Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 246
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->limitIcon:Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;

    sub-float/2addr p5, v0

    const/high16 v3, 0x42700000    # 60.0f

    mul-float/2addr p5, v3

    invoke-virtual {v2, p5}, Landroid/view/View;->setRotation(F)V

    goto :goto_0

    .line 248
    :cond_1
    iget-object p5, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->limitIcon:Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;

    const/4 v2, 0x0

    invoke-virtual {p5, v2}, Landroid/view/View;->setRotation(F)V

    .line 250
    :goto_0
    iget-object p5, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->limitIcon:Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;

    sub-float v2, v0, v1

    mul-float/2addr p1, v2

    mul-float/2addr p2, v1

    add-float/2addr p1, p2

    invoke-virtual {p5, p1}, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->setTranslationX(F)V

    mul-float/2addr p3, v2

    mul-float/2addr p4, v1

    add-float/2addr p3, p4

    .line 252
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->limitIcon:Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->setArrowCenter(F)V

    const/high16 p1, 0x40000000    # 2.0f

    mul-float/2addr v1, p1

    .line 253
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 254
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->limitIcon:Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setScaleX(F)V

    .line 255
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->limitIcon:Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setScaleY(F)V

    .line 256
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->limitIcon:Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p2, p3

    invoke-virtual {p1, p2}, Landroid/view/View;->setPivotX(F)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 197
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->staticGradient:Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;

    if-nez v0, :cond_2

    .line 198
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->inc:Z

    const v1, 0x3c83126f    # 0.016f

    if-eqz v0, :cond_0

    .line 199
    iget v0, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->progress:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->progress:F

    const/high16 v1, 0x40400000    # 3.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 201
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->inc:Z

    goto :goto_0

    .line 204
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->progress:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->progress:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    const/4 v0, 0x1

    .line 206
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->inc:Z

    .line 209
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 211
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 15

    move-object v6, p0

    .line 216
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 217
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

    .line 218
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v2, v0

    .line 220
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v11

    mul-int/lit8 v12, v0, 0x2

    sub-int/2addr v11, v12

    int-to-float v11, v11

    iget v12, v6, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->position:F

    mul-float/2addr v11, v12

    add-float/2addr v2, v11

    iget-object v11, v6, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->limitIcon:Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v11, v3

    sub-float/2addr v2, v11

    const/high16 v11, 0x3f000000    # 0.5f

    .line 223
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

    .line 224
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v1, v0

    iget-object v0, v6, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->limitIcon:Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr v1, v0

    int-to-float v0, v1

    move v12, v0

    move v13, v10

    goto :goto_0

    :cond_0
    move v13, v1

    move v12, v2

    .line 227
    :goto_0
    iget-object v0, v6, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->limitIcon:Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;

    invoke-virtual {v0, v10}, Landroid/view/View;->setAlpha(F)V

    .line 228
    iget-object v0, v6, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->limitIcon:Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->setTranslationX(F)V

    .line 229
    iget-object v0, v6, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->limitIcon:Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 230
    iget-object v0, v6, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->limitIcon:Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 231
    iget-object v0, v6, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->limitIcon:Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;

    invoke-virtual {v0, v5}, Landroid/view/View;->setScaleX(F)V

    .line 232
    iget-object v0, v6, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->limitIcon:Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;

    invoke-virtual {v0, v5}, Landroid/view/View;->setScaleY(F)V

    .line 233
    iget-object v0, v6, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->limitIcon:Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->createAnimationLayouts()V

    new-array v0, v4, [F

    .line 235
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v10

    .line 238
    new-instance v14, Lorg/telegram/ui/Components/Premium/LimitPreviewView$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    move-object v0, v14

    move-object v1, p0

    move v3, v12

    move v4, v11

    move v5, v13

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/Premium/LimitPreviewView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/Premium/LimitPreviewView;FFFF)V

    invoke-virtual {v10, v14}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 259
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v0}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v10, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0x3e8

    .line 260
    invoke-virtual {v10, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 261
    invoke-virtual {v10, v7, v8}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 262
    invoke-virtual {v10}, Landroid/animation/ValueAnimator;->start()V

    .line 264
    iput-boolean v9, v6, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->wasAnimation:Z

    goto/16 :goto_2

    .line 265
    :cond_1
    iget-boolean v0, v6, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->premiumLocked:Z

    if-eqz v0, :cond_4

    .line 266
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v2, v0

    .line 267
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v11

    mul-int/2addr v0, v4

    sub-int/2addr v11, v0

    int-to-float v0, v11

    mul-float/2addr v0, v1

    add-float/2addr v2, v0

    iget-object v0, v6, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->limitIcon:Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v3

    sub-float/2addr v2, v0

    .line 268
    iget-boolean v0, v6, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->wasAnimation:Z

    if-nez v0, :cond_2

    iget-boolean v1, v6, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->animationCanPlay:Z

    if-eqz v1, :cond_2

    .line 269
    iput-boolean v9, v6, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->wasAnimation:Z

    .line 270
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

    .line 272
    iget-object v0, v6, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->limitIcon:Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;

    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    .line 273
    iget-object v0, v6, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->limitIcon:Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;

    invoke-virtual {v0, v5}, Landroid/view/View;->setScaleX(F)V

    .line 274
    iget-object v0, v6, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->limitIcon:Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;

    invoke-virtual {v0, v5}, Landroid/view/View;->setScaleY(F)V

    goto :goto_1

    .line 276
    :cond_3
    iget-object v0, v6, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->limitIcon:Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;

    invoke-virtual {v0, v10}, Landroid/view/View;->setAlpha(F)V

    .line 277
    iget-object v0, v6, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->limitIcon:Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;

    invoke-virtual {v0, v10}, Landroid/view/View;->setScaleX(F)V

    .line 278
    iget-object v0, v6, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->limitIcon:Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;

    invoke-virtual {v0, v10}, Landroid/view/View;->setScaleY(F)V

    .line 280
    :goto_1
    iget-object v0, v6, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->limitIcon:Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->setTranslationX(F)V

    goto :goto_2

    .line 281
    :cond_4
    iget-object v0, v6, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->limitIcon:Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;

    if-eqz v0, :cond_5

    .line 282
    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    :cond_5
    :goto_2
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setBagePosition(F)V
    .locals 2

    const v0, 0x3dcccccd    # 0.1f

    const v1, 0x3f666666    # 0.9f

    .line 306
    invoke-static {p1, v0, v1}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->position:F

    return-void
.end method

.method public setDelayedAnimation()V
    .locals 1

    const/4 v0, 0x0

    .line 318
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->animationCanPlay:Z

    return-void
.end method

.method public setIconValue(I)V
    .locals 5

    .line 185
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    const-string v1, "d "

    .line 186
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/ColoredImageSpan;

    iget v3, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->icon:I

    invoke-direct {v2, v3}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(I)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 187
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 188
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->limitIcon:Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setParentViewForGradien(Landroid/view/ViewGroup;)V
    .locals 0

    .line 310
    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->parentVideForGradient:Landroid/view/View;

    return-void
.end method

.method public setPremiumLocked()V
    .locals 5

    .line 327
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->limitsContainer:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 328
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

    .line 329
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->premiumLocked:Z

    return-void
.end method

.method public setStaticGradinet(Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;)V
    .locals 0

    .line 314
    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->staticGradient:Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;

    return-void
.end method

.method public setType(I)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x6

    if-ne p1, v2, :cond_2

    .line 288
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->limitIcon:Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;

    const-string v2, "4 GB"

    if-eqz p1, :cond_1

    .line 289
    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1}, Landroid/text/SpannableStringBuilder;-><init>()V

    const-string v3, "d "

    .line 290
    invoke-virtual {p1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/Components/ColoredImageSpan;

    iget v5, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->icon:I

    invoke-direct {v4, v5}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(I)V

    invoke-virtual {v3, v4, v1, v0, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 291
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_0
    const-string v0, "2 GB"

    :goto_0
    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 292
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->limitIcon:Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->premiumCount:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    const/16 v2, 0xb

    if-ne p1, v2, :cond_4

    .line 296
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->limitIcon:Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;

    if-eqz p1, :cond_3

    .line 297
    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1}, Landroid/text/SpannableStringBuilder;-><init>()V

    const-string v2, "d"

    .line 298
    invoke-virtual {p1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Components/ColoredImageSpan;

    iget v4, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->icon:I

    invoke-direct {v3, v4}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(I)V

    invoke-virtual {v2, v3, v1, v0, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 299
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->limitIcon:Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Premium/LimitPreviewView$CounterView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->premiumCount:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public startDelayedAnimation()V
    .locals 1

    const/4 v0, 0x1

    .line 322
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->animationCanPlay:Z

    .line 323
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method
