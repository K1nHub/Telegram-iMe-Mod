.class public Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;
.super Lorg/telegram/ui/ActionBar/BottomSheet;
.source "PremiumFeatureBottomSheet.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;
    }
.end annotation


# instance fields
.field actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

.field private final baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private buttonContainer:Landroid/widget/FrameLayout;

.field closeLayout:Landroid/widget/FrameLayout;

.field containerViewsForward:Z

.field containerViewsProgress:F

.field content:Landroid/widget/FrameLayout;

.field contentHeight:I

.field enterAnimationIsRunning:Z

.field private forceAbout:Z

.field private gradientAlpha:I

.field private final onlySelectedType:Z

.field private premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

.field premiumFeatures:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;",
            ">;"
        }
    .end annotation
.end field

.field progressToFullscreenView:F

.field private selectedTier:Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;

.field private final startType:I

.field svgIcon:Lorg/telegram/messenger/SvgHelper$SvgDrawable;

.field topCurrentOffset:I

.field topGlobalOffset:I

.field viewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public static synthetic $r8$lambda$gcSgyJKbyZsaQCNHjPZC8vC8yrU(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->lambda$new$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$m1M_rsyCRnr8ySk7NJlESORxEYI(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;Lorg/telegram/ui/ActionBar/BaseFragment;ZLorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->lambda$new$1(Lorg/telegram/ui/ActionBar/BaseFragment;ZLorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rE2rZS9KuTjqXLJAKTMz0SLoxvg(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V
    .locals 1

    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;IZLorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;IZLorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;)V
    .locals 7

    .line 82
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;IIZLorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;IIZ)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 86
    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;IIZLorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;IIZLorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    move/from16 v3, p5

    const/4 v4, 0x0

    move-object/from16 v5, p2

    .line 90
    invoke-direct {v0, v5, v4}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;Z)V

    .line 54
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->premiumFeatures:Ljava/util/ArrayList;

    const/16 v5, 0xff

    .line 72
    iput v5, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->gradientAlpha:I

    .line 91
    iput-object v1, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v1, :cond_5

    move-object/from16 v5, p6

    .line 95
    iput-object v5, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->selectedTier:Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;

    .line 97
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar()V

    .line 98
    iput v2, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->startType:I

    .line 99
    iput-boolean v3, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->onlySelectedType:Z

    const/4 v5, 0x0

    .line 101
    sget v6, Lorg/telegram/messenger/R$raw;->star_loader:I

    invoke-static {v5, v6}, Lorg/telegram/ui/Components/RLottieDrawable;->readRes(Ljava/io/File;I)Ljava/lang/String;

    move-result-object v5

    .line 102
    invoke-static {v5}, Lorg/telegram/messenger/SvgHelper;->getDrawable(Ljava/lang/String;)Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    move-result-object v5

    iput-object v5, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->svgIcon:Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    .line 103
    new-instance v5, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$1;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v0, v6}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$1;-><init>(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;Landroid/content/Context;)V

    .line 116
    iget-object v6, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->premiumFeatures:Ljava/util/ArrayList;

    move/from16 v7, p3

    invoke-static {v6, v7}, Lorg/telegram/ui/PremiumPreviewFragment;->fillPremiumFeaturesList(Ljava/util/ArrayList;I)V

    move v6, v4

    .line 119
    :goto_0
    iget-object v8, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->premiumFeatures:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v6, v8, :cond_1

    .line 125
    iget-object v8, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->premiumFeatures:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;

    iget v8, v8, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;->type:I

    if-ne v8, v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    move v6, v4

    :goto_1
    if-eqz v3, :cond_2

    .line 132
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->premiumFeatures:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;

    .line 133
    iget-object v6, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->premiumFeatures:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 134
    iget-object v6, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->premiumFeatures:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v6, v4

    .line 138
    :cond_2
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->premiumFeatures:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;

    .line 140
    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->setApplyTopPadding(Z)V

    .line 141
    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->setApplyBottomPadding(Z)V

    .line 142
    iput-boolean v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->useBackgroundTopPadding:Z

    .line 143
    new-instance v8, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradientBottomSheet1:I

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradientBottomSheet2:I

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradientBottomSheet3:I

    const/4 v12, -0x1

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;-><init>(IIII)V

    const/4 v9, 0x0

    .line 144
    iput v9, v8, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->x1:F

    const v9, 0x3f8ccccd    # 1.1f

    .line 145
    iput v9, v8, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->y1:F

    const/high16 v9, 0x3fc00000    # 1.5f

    .line 146
    iput v9, v8, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->x2:F

    const v9, -0x41b33333    # -0.2f

    .line 147
    iput v9, v8, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->y2:F

    const/4 v9, 0x1

    .line 148
    iput-boolean v9, v8, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->exactly:Z

    .line 149
    new-instance v10, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$2;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v10, v0, v11, v8}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$2;-><init>(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;Landroid/content/Context;Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;)V

    iput-object v10, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->content:Landroid/widget/FrameLayout;

    .line 170
    new-instance v8, Landroid/widget/FrameLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v8, v10}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v8, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->closeLayout:Landroid/widget/FrameLayout;

    .line 171
    new-instance v8, Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v8, v10}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 172
    sget v10, Lorg/telegram/messenger/R$drawable;->msg_close:I

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    const/16 v10, 0xc

    .line 173
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    const/16 v11, 0x28

    invoke-static {v12, v11}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v11

    const/16 v13, 0x64

    invoke-static {v12, v13}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v13

    invoke-static {v10, v11, v13}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 174
    iget-object v10, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->closeLayout:Landroid/widget/FrameLayout;

    const/16 v11, 0x11

    const/16 v13, 0x18

    invoke-static {v13, v13, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v10, v8, v11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 175
    iget-object v8, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->closeLayout:Landroid/widget/FrameLayout;

    new-instance v10, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$$ExternalSyntheticLambda1;

    invoke-direct {v10, v0}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;)V

    invoke-virtual {v8, v10}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    iget-object v8, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->content:Landroid/widget/FrameLayout;

    const/4 v13, -0x1

    const/4 v14, -0x2

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x10

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v5, v8, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    new-instance v8, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$3;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v8, v0, v10}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$3;-><init>(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;Landroid/content/Context;)V

    iput-object v8, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->viewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v10, 0x2

    .line 207
    invoke-virtual {v8, v10}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    .line 208
    iget-object v8, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v8, v4}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 209
    new-instance v8, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$4;

    invoke-direct {v8, v0}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$4;-><init>(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;)V

    .line 235
    iget-object v10, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v10, v8}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 236
    iget-object v8, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v8, v6}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 237
    iget-object v6, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->viewPager:Landroidx/viewpager/widget/ViewPager;

    const/16 v14, 0x64

    const/4 v15, 0x0

    const/16 v17, 0x12

    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 239
    iget-object v6, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->closeLayout:Landroid/widget/FrameLayout;

    const/16 v13, 0x34

    const/16 v14, 0x34

    const/16 v15, 0x35

    const/16 v17, 0x18

    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 240
    new-instance v6, Lorg/telegram/ui/Components/BottomPagesView;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-object v10, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->viewPager:Landroidx/viewpager/widget/ViewPager;

    iget-object v11, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->premiumFeatures:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-direct {v6, v8, v10, v11}, Lorg/telegram/ui/Components/BottomPagesView;-><init>(Landroid/content/Context;Landroidx/viewpager/widget/ViewPager;I)V

    .line 241
    iget-object v8, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->viewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v10, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5;

    invoke-direct {v10, v0, v6}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5;-><init>(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;Lorg/telegram/ui/Components/BottomPagesView;)V

    invoke-virtual {v8, v10}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 306
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v8, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 307
    invoke-virtual {v8, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 308
    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 309
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_chats_unreadCounterMuted:I

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionBackground:I

    invoke-virtual {v6, v5, v10}, Lorg/telegram/ui/Components/BottomPagesView;->setColor(II)V

    if-nez v3, :cond_3

    .line 311
    iget-object v5, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->premiumFeatures:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    mul-int/lit8 v13, v5, 0xb

    const/4 v14, 0x5

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0xa

    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v8, v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 313
    :cond_3
    new-instance v5, Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6, v9}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;-><init>(Landroid/content/Context;Z)V

    iput-object v5, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    .line 314
    iget-object v5, v5, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->buttonLayout:Landroid/widget/FrameLayout;

    new-instance v6, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$$ExternalSyntheticLambda2;

    invoke-direct {v6, v0, v1, v3, v2}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;Lorg/telegram/ui/ActionBar/BaseFragment;ZLorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;)V

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 338
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    iget-object v1, v1, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->overlayTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    new-instance v2, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 341
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->buttonContainer:Landroid/widget/FrameLayout;

    .line 343
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    const/4 v13, -0x1

    const/16 v14, 0x30

    const/16 v15, 0x10

    const/16 v16, 0x10

    const/16 v17, 0x0

    const/16 v18, 0x10

    const/16 v19, 0x0

    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 344
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->buttonContainer:Landroid/widget/FrameLayout;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 345
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->buttonContainer:Landroid/widget/FrameLayout;

    const/16 v2, 0x44

    const/16 v3, 0x50

    invoke-static {v12, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 347
    invoke-static/range {p3 .. p3}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 348
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    sget v2, Lorg/telegram/messenger/R$string;->OK:I

    const-string v3, "OK"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v4}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->setOverlayText(Ljava/lang/String;ZZ)V

    .line 351
    :cond_4
    new-instance v1, Landroid/widget/ScrollView;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 352
    invoke-virtual {v1, v8}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 353
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setCustomView(Landroid/view/View;)V

    .line 355
    invoke-static/range {p3 .. p3}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MediaDataController;->preloadPremiumPreviewStickers()V

    .line 356
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->setButtonText()V

    const/16 v2, 0x53

    .line 357
    iput v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->customViewGravity:I

    .line 359
    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->header_shadow:I

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 361
    new-instance v3, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$6;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v0, v5, v1, v2}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$6;-><init>(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;Landroid/content/Context;Landroid/widget/ScrollView;Landroid/graphics/drawable/Drawable;)V

    iput-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    .line 426
    iget v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    iget v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    sub-int/2addr v2, v9

    invoke-virtual {v3, v1, v2, v1, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    return-void

    .line 93
    :cond_5
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "fragmnet can\'t be null"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->isPortrait:Z

    return p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;)I
    .locals 0

    .line 50
    iget p0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->gradientAlpha:I

    return p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->onlySelectedType:Z

    return p0
.end method

.method static synthetic access$102(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;I)I
    .locals 0

    .line 50
    iput p1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->gradientAlpha:I

    return p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->isPortrait:Z

    return p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->isPortrait:Z

    return p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;)I
    .locals 0

    .line 50
    iget p0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->startType:I

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;F)V
    .locals 0

    .line 50
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->onContainerTranslationYChanged(F)V

    return-void
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;)I
    .locals 0

    .line 50
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;)I
    .locals 0

    .line 50
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 50
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 50
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;)I
    .locals 0

    .line 50
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;)Landroid/view/ViewGroup;
    .locals 0

    .line 50
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->updateStatusBar()V

    return-void
.end method

.method private isLightStatusBar()Z
    .locals 4

    .line 766
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-static {v0}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v0

    const-wide v2, 0x3fe6666660000000L    # 0.699999988079071

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    .line 175
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->dismiss()V

    return-void
.end method

.method private synthetic lambda$new$1(Lorg/telegram/ui/ActionBar/BaseFragment;ZLorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;Landroid/view/View;)V
    .locals 3

    .line 315
    instance-of p4, p1, Lorg/telegram/ui/ChatActivity;

    if-eqz p4, :cond_0

    .line 316
    move-object p4, p1

    check-cast p4, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p4}, Lorg/telegram/ui/ChatActivity;->closeMenu()V

    .line 317
    iget-object p4, p4, Lorg/telegram/ui/ChatActivity;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    if-eqz p4, :cond_0

    const/4 v0, 0x1

    .line 318
    invoke-virtual {p4, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss(Z)V

    .line 321
    :cond_0
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p4

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_4

    if-nez v0, :cond_1

    move-object v1, p1

    goto :goto_1

    :cond_1
    move-object v1, p4

    :goto_1
    if-eqz v1, :cond_2

    .line 324
    iget-object v2, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/StoryViewer;->isShown()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 325
    iget-object v2, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/StoryViewer;->dismissVisibleDialogs()V

    :cond_2
    if-eqz v1, :cond_3

    .line 327
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getVisibleDialog()Landroid/app/Dialog;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 328
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getVisibleDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    if-nez p2, :cond_5

    .line 331
    iget-boolean p2, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->forceAbout:Z

    if-eqz p2, :cond_6

    :cond_5
    if-eqz p1, :cond_6

    .line 332
    new-instance p2, Lorg/telegram/ui/PremiumPreviewFragment;

    iget p3, p3, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;->type:I

    invoke-static {p3}, Lorg/telegram/ui/PremiumPreviewFragment;->featureTypeToServerString(I)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Lorg/telegram/ui/PremiumPreviewFragment;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_2

    .line 334
    :cond_6
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->selectedTier:Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;

    iget p3, p3, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;->type:I

    invoke-static {p3}, Lorg/telegram/ui/PremiumPreviewFragment;->featureTypeToServerString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lorg/telegram/ui/PremiumPreviewFragment;->buyPremium(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;Ljava/lang/String;)V

    .line 336
    :goto_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->dismiss()V

    return-void
.end method

.method private synthetic lambda$new$2(Landroid/view/View;)V
    .locals 0

    .line 339
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->dismiss()V

    return-void
.end method

.method private setButtonText()V
    .locals 3

    .line 437
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->forceAbout:Z

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->buttonTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    sget v1, Lorg/telegram/messenger/R$string;->AboutTelegramPremium:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 439
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->onlySelectedType:Z

    if-eqz v0, :cond_4

    .line 440
    iget v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->startType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 441
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->buttonTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    sget v1, Lorg/telegram/messenger/R$string;->UnlockPremiumReactions:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 442
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    sget v1, Lorg/telegram/messenger/R$raw;->unlock_icon:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->setIcon(I)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/16 v1, 0x9

    if-eq v0, v1, :cond_3

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    const/16 v1, 0xa

    if-ne v0, v1, :cond_5

    .line 446
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->buttonTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    sget v1, Lorg/telegram/messenger/R$string;->UnlockPremiumIcons:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 447
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    sget v1, Lorg/telegram/messenger/R$raw;->unlock_icon:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->setIcon(I)V

    goto :goto_1

    .line 444
    :cond_3
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->buttonTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    sget v1, Lorg/telegram/messenger/R$string;->AboutTelegramPremium:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 450
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->buttonTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->selectedTier:Lorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;

    invoke-static {v1, v2}, Lorg/telegram/ui/PremiumPreviewFragment;->getPremiumButtonText(ILorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_1
    return-void
.end method

.method private updateStatusBar()V
    .locals 2

    .line 758
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 759
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->isLightStatusBar()Z

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->setLightStatusBar(Landroid/view/Window;Z)V

    goto :goto_0

    .line 760
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v0, :cond_1

    .line 761
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->isLightStatusBar()Z

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->setLightStatusBar(Landroid/view/Window;Z)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method checkTopOffset()V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    .line 713
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 714
    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;

    iget-object v2, v2, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;->topView:Landroid/view/View;

    instance-of v2, v2, Lorg/telegram/ui/Components/Premium/DoubleLimitsPageView;

    if-eqz v2, :cond_1

    .line 715
    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;

    iget-object v1, v1, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;->topView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Components/Premium/DoubleLimitsPageView;

    .line 716
    iget-object v1, v1, Lorg/telegram/ui/Components/Premium/DoubleLimitsPageView;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_1
    move v1, v0

    goto :goto_2

    .line 720
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    if-gez v1, :cond_3

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    :cond_3
    :goto_2
    const/high16 v2, 0x3f800000    # 1.0f

    if-ltz v1, :cond_4

    int-to-float v1, v1

    .line 730
    iget v3, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->progressToFullscreenView:F

    mul-float/2addr v1, v3

    iget v4, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->topGlobalOffset:I

    int-to-float v4, v4

    sub-float v3, v2, v3

    mul-float/2addr v4, v3

    add-float/2addr v1, v4

    float-to-int v1, v1

    goto :goto_3

    .line 732
    :cond_4
    iget v1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->topGlobalOffset:I

    .line 734
    :goto_3
    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->closeLayout:Landroid/widget/FrameLayout;

    iget v4, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->progressToFullscreenView:F

    sub-float v4, v2, v4

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 735
    iget v3, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->progressToFullscreenView:F

    cmpl-float v3, v3, v2

    if-nez v3, :cond_5

    .line 736
    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->closeLayout:Landroid/widget/FrameLayout;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_4

    .line 738
    :cond_5
    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->closeLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 740
    :goto_4
    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->content:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->progressToFullscreenView:F

    mul-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 741
    iget v3, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->topCurrentOffset:I

    if-eq v1, v3, :cond_9

    .line 742
    iput v1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->topCurrentOffset:I

    move v1, v0

    .line 743
    :goto_5
    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_7

    .line 744
    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;

    iget-boolean v3, v3, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;->topViewOnFullHeight:Z

    if-nez v3, :cond_6

    .line 745
    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget v4, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->topCurrentOffset:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationY(F)V

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 749
    :cond_7
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->content:Landroid/widget/FrameLayout;

    iget v3, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->topCurrentOffset:I

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 750
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->closeLayout:Landroid/widget/FrameLayout;

    iget v3, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->topCurrentOffset:I

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 751
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->invalidate()V

    .line 752
    iget v1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->topCurrentOffset:I

    const/16 v3, 0x1e

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    const/4 v4, 0x1

    if-ge v1, v3, :cond_8

    move v0, v4

    .line 753
    :cond_8
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-static {v1, v0, v2, v4}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    :cond_9
    return-void
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 1

    .line 516
    sget p2, Lorg/telegram/messenger/NotificationCenter;->billingProductDetailsUpdated:I

    if-eq p1, p2, :cond_2

    sget p2, Lorg/telegram/messenger/NotificationCenter;->premiumPromoUpdated:I

    if-ne p1, p2, :cond_0

    goto :goto_0

    .line 518
    :cond_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->currentUserPremiumStatusChanged:I

    if-ne p1, p2, :cond_3

    .line 519
    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 520
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    sget p2, Lorg/telegram/messenger/R$string;->OK:I

    const-string p3, "OK"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1, p2, p3, v0}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->setOverlayText(Ljava/lang/String;ZZ)V

    goto :goto_1

    .line 522
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->clearOverlayText()V

    goto :goto_1

    .line 517
    :cond_2
    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->setButtonText()V

    :cond_3
    :goto_1
    return-void
.end method

.method public dismiss()V
    .locals 5

    .line 505
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    .line 507
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->billingProductDetailsUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 508
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->premiumPromoUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 509
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->currentUserPremiumStatusChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 511
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->startAllHeavyOperations:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/16 v3, 0x10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method getViewForPosition(Landroid/content/Context;I)Landroid/view/View;
    .locals 3

    .line 651
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->premiumFeatures:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;

    .line 652
    iget v0, p2, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;->type:I

    if-nez v0, :cond_0

    .line 653
    new-instance p2, Lorg/telegram/ui/Components/Premium/DoubleLimitsPageView;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/Premium/DoubleLimitsPageView;-><init>(Landroid/content/Context;)V

    .line 654
    iget-object p1, p2, Lorg/telegram/ui/Components/Premium/DoubleLimitsPageView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$9;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$9;-><init>(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-object p2

    :cond_0
    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 664
    new-instance p2, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$10;

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-direct {p2, p0, p1, v0}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$10;-><init>(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;Landroid/content/Context;I)V

    return-object p2

    :cond_1
    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    .line 673
    new-instance p2, Lorg/telegram/ui/Components/Premium/PremiumAppIconsPreviewView;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/Premium/PremiumAppIconsPreviewView;-><init>(Landroid/content/Context;)V

    return-object p2

    .line 675
    :cond_2
    new-instance v0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->svgIcon:Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    iget v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    iget p2, p2, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;->type:I

    invoke-direct {v0, p1, v1, v2, p2}, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;-><init>(Landroid/content/Context;Lorg/telegram/messenger/SvgHelper$SvgDrawable;II)V

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    .line 462
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->onCreate(Landroid/os/Bundle;)V

    .line 464
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->billingProductDetailsUpdated:I

    invoke-virtual {p1, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 465
    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->premiumPromoUpdated:I

    invoke-virtual {p1, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 466
    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->currentUserPremiumStatusChanged:I

    invoke-virtual {p1, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 468
    new-instance p1, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$7;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$7;-><init>(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;Landroid/content/Context;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 483
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 484
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    .line 485
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefaultSelector:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 486
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefaultIcon:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 488
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setCastShadows(Z)V

    .line 489
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v0, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 490
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v0, Lorg/telegram/messenger/R$string;->DoubledLimits:I

    const-string v2, "DoubledLimits"

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 491
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$8;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$8;-><init>(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 499
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    neg-int v7, v2

    const/4 v3, -0x1

    const/4 v4, -0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 500
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    return-void
.end method

.method protected onCustomOpenAnimation()Z
    .locals 5

    .line 681
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 682
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->viewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;

    .line 683
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;->topView:Landroid/view/View;

    instance-of v3, v2, Lorg/telegram/ui/Components/Premium/PremiumAppIconsPreviewView;

    if-eqz v3, :cond_0

    .line 684
    check-cast v2, Lorg/telegram/ui/Components/Premium/PremiumAppIconsPreviewView;

    const/4 v3, 0x2

    new-array v3, v3, [F

    .line 685
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    aput v4, v3, v1

    const/4 v1, 0x0

    const/4 v4, 0x1

    aput v1, v3, v4

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 686
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/Premium/PremiumAppIconsPreviewView;->setOffset(F)V

    .line 687
    iput-boolean v4, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->enterAnimationIsRunning:Z

    .line 688
    new-instance v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$11;

    invoke-direct {v0, p0, v2}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$11;-><init>(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;Lorg/telegram/ui/Components/Premium/PremiumAppIconsPreviewView;)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 694
    new-instance v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$12;

    invoke-direct {v0, p0, v2}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$12;-><init>(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;Lorg/telegram/ui/Components/Premium/PremiumAppIconsPreviewView;)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v2, 0x1f4

    .line 702
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x64

    .line 703
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 704
    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 705
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 708
    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->onCustomOpenAnimation()Z

    move-result v0

    return v0
.end method

.method public setForceAbout()Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;
    .locals 1

    const/4 v0, 0x1

    .line 430
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->forceAbout:Z

    .line 431
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->clearOverlayText()V

    .line 432
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->setButtonText()V

    return-object p0
.end method

.method public show()V
    .locals 5

    .line 456
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    .line 457
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->stopAllHeavyOperations:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/16 v3, 0x10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method
