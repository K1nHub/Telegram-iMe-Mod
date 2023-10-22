.class public Lorg/telegram/ui/Cells/ReactedUserHolderView;
.super Landroid/widget/FrameLayout;
.source "ReactedUserHolderView.java"


# static fields
.field public static STYLE_DEFAULT:I = 0x0

.field public static STYLE_STORY:I = 0x1

.field public static final reactDrawable:Lorg/telegram/ui/Components/MessageSeenCheckDrawable;

.field public static final seenDrawable:Lorg/telegram/ui/Components/MessageSeenCheckDrawable;


# instance fields
.field private alphaAnimator:Landroid/animation/ValueAnimator;

.field private alphaInternal:F

.field avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field public avatarView:Lorg/telegram/ui/Components/BackupImageView;

.field currentAccount:I

.field public dialogId:J

.field public drawDivider:Z

.field overlaySelectorView:Landroid/view/View;

.field public params:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

.field reactView:Lorg/telegram/ui/Components/BackupImageView;

.field resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field statusBadgeComponent:Lorg/telegram/ui/Components/StatusBadgeComponent;

.field style:I

.field subtitleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;


# direct methods
.method public static synthetic $r8$lambda$cqB_QQ5ZS55XtmndiqZ00TKjTjQ(Lorg/telegram/ui/Cells/ReactedUserHolderView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/ReactedUserHolderView;->lambda$animateAlpha$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 8

    .line 75
    new-instance v0, Lorg/telegram/ui/Components/MessageSeenCheckDrawable;

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_mini_checks:I

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-direct {v0, v1, v4}, Lorg/telegram/ui/Components/MessageSeenCheckDrawable;-><init>(II)V

    sput-object v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->seenDrawable:Lorg/telegram/ui/Components/MessageSeenCheckDrawable;

    .line 76
    new-instance v0, Lorg/telegram/ui/Components/MessageSeenCheckDrawable;

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_reactions:I

    const/16 v5, 0x10

    const/16 v6, 0x10

    const v7, 0x40b51eb8    # 5.66f

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/Components/MessageSeenCheckDrawable;-><init>(IIIIF)V

    sput-object v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->reactDrawable:Lorg/telegram/ui/Components/MessageSeenCheckDrawable;

    return-void
.end method

.method public constructor <init>(IILandroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 79
    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Cells/ReactedUserHolderView;-><init>(IILandroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)V

    return-void
.end method

.method public constructor <init>(IILandroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)V
    .locals 24

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    .line 83
    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 61
    new-instance v4, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v4}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object v4, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/high16 v4, 0x3f800000    # 1.0f

    .line 299
    iput v4, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->alphaInternal:F

    .line 84
    iput v1, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->style:I

    move/from16 v4, p2

    .line 85
    iput v4, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->currentAccount:I

    .line 86
    iput-object v3, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 87
    new-instance v4, Lorg/telegram/ui/Cells/ReactedUserHolderView$1;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5, v3}, Lorg/telegram/ui/Cells/ReactedUserHolderView$1;-><init>(Lorg/telegram/ui/Cells/ReactedUserHolderView;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v4, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->params:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    .line 93
    new-instance v4, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/16 v6, 0x32

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    const/4 v7, -0x1

    invoke-direct {v4, v7, v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    sget v4, Lorg/telegram/ui/Cells/ReactedUserHolderView;->STYLE_STORY:I

    if-ne v1, v4, :cond_0

    const/16 v4, 0x30

    goto :goto_0

    :cond_0
    const/16 v4, 0x22

    .line 96
    :goto_0
    new-instance v6, Lorg/telegram/ui/Cells/ReactedUserHolderView$2;

    invoke-direct {v6, v0, v2, v1}, Lorg/telegram/ui/Cells/ReactedUserHolderView$2;-><init>(Lorg/telegram/ui/Cells/ReactedUserHolderView;Landroid/content/Context;I)V

    iput-object v6, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->avatarView:Lorg/telegram/ui/Components/BackupImageView;

    .line 112
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    invoke-virtual {v6, v8}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 113
    iget-object v6, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->avatarView:Lorg/telegram/ui/Components/BackupImageView;

    int-to-float v9, v4

    const v10, 0x800013

    const/high16 v11, 0x41200000    # 10.0f

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move v8, v9

    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameRelatively(FFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v6, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    sget v4, Lorg/telegram/ui/Cells/ReactedUserHolderView;->STYLE_STORY:I

    if-ne v1, v4, :cond_1

    .line 115
    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 117
    :cond_1
    new-instance v4, Lorg/telegram/ui/Cells/ReactedUserHolderView$3;

    invoke-direct {v4, v0, v2}, Lorg/telegram/ui/Cells/ReactedUserHolderView$3;-><init>(Lorg/telegram/ui/Cells/ReactedUserHolderView;Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    .line 124
    invoke-static {v4}, Lorg/telegram/messenger/NotificationCenter;->listenEmojiLoading(Landroid/view/View;)V

    .line 125
    iget-object v4, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v6, 0x10

    invoke-virtual {v4, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 126
    iget-object v4, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    invoke-static {v6, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v6

    invoke-virtual {v4, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 127
    iget-object v4, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setEllipsizeByGradient(Z)V

    .line 128
    iget-object v4, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v8, 0x2

    invoke-virtual {v4, v8}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 129
    iget-object v4, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v9, 0x1e

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    invoke-virtual {v4, v10}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightPadding(I)V

    .line 130
    iget-object v4, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-boolean v10, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v11, 0x0

    if-eqz v10, :cond_2

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    goto :goto_1

    :cond_2
    move v10, v11

    :goto_1
    invoke-virtual {v4, v10}, Landroid/view/View;->setTranslationX(F)V

    .line 131
    iget-object v4, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v4, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawableOutside(Z)V

    .line 132
    sget v4, Lorg/telegram/ui/Cells/ReactedUserHolderView;->STYLE_STORY:I

    if-ne v1, v4, :cond_3

    const v10, 0x40f51eb8    # 7.66f

    goto :goto_2

    :cond_3
    const v10, 0x40aa8f5c    # 5.33f

    :goto_2
    move/from16 v16, v10

    if-ne v1, v4, :cond_4

    const/high16 v4, 0x42920000    # 73.0f

    goto :goto_3

    :cond_4
    const/high16 v4, 0x425c0000    # 55.0f

    :goto_3
    move/from16 v20, v4

    .line 134
    iget-object v4, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/high16 v12, -0x40800000    # -1.0f

    const/high16 v13, -0x40000000    # -2.0f

    const/16 v14, 0x37

    const/high16 v17, 0x41400000    # 12.0f

    const/16 v18, 0x0

    move/from16 v15, v20

    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameRelatively(FFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v0, v4, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    new-instance v4, Lorg/telegram/ui/Components/StatusBadgeComponent;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Components/StatusBadgeComponent;-><init>(Landroid/view/View;)V

    iput-object v4, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->statusBadgeComponent:Lorg/telegram/ui/Components/StatusBadgeComponent;

    .line 137
    iget-object v4, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v10, 0x3

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    invoke-virtual {v4, v10}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setDrawablePadding(I)V

    .line 138
    iget-object v4, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v10, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->statusBadgeComponent:Lorg/telegram/ui/Components/StatusBadgeComponent;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/StatusBadgeComponent;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v4, v10}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 140
    new-instance v4, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v4, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->subtitleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v10, 0xd

    .line 141
    invoke-virtual {v4, v10}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 142
    iget-object v4, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->subtitleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-static {v10, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v4, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 143
    iget-object v3, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->subtitleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v3, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setEllipsizeByGradient(Z)V

    .line 144
    iget-object v3, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->subtitleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v3, v8}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 145
    iget-object v3, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->subtitleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_5

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v11, v4

    :cond_5
    invoke-virtual {v3, v11}, Landroid/view/View;->setTranslationX(F)V

    .line 146
    sget v3, Lorg/telegram/ui/Cells/ReactedUserHolderView;->STYLE_STORY:I

    if-ne v1, v3, :cond_6

    const/high16 v1, 0x41c00000    # 24.0f

    goto :goto_4

    :cond_6
    const/high16 v1, 0x41980000    # 19.0f

    :goto_4
    move/from16 v21, v1

    .line 147
    iget-object v1, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->subtitleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/high16 v17, -0x40800000    # -1.0f

    const/high16 v18, -0x40000000    # -2.0f

    const/16 v19, 0x37

    const/high16 v22, 0x41a00000    # 20.0f

    const/16 v23, 0x0

    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameRelatively(FFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    new-instance v1, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->reactView:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v8, 0x41c00000    # 24.0f

    const/high16 v9, 0x41c00000    # 24.0f

    const v10, 0x800015

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/high16 v13, 0x41400000    # 12.0f

    const/4 v14, 0x0

    .line 150
    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameRelatively(FFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p5, :cond_7

    .line 153
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->overlaySelectorView:Landroid/view/View;

    .line 154
    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 155
    iget-object v1, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->overlaySelectorView:Landroid/view/View;

    invoke-static {v7, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7
    return-void
.end method

.method static synthetic access$002(Lorg/telegram/ui/Cells/ReactedUserHolderView;F)F
    .locals 0

    .line 50
    iput p1, p0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->alphaInternal:F

    return p1
.end method

.method private synthetic lambda$animateAlpha$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 309
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->alphaInternal:F

    .line 310
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method


# virtual methods
.method public animateAlpha(FZ)V
    .locals 2

    .line 302
    iget-object v0, p0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->alphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 303
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 304
    iput-object v0, p0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->alphaAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    if-eqz p2, :cond_1

    const/4 p2, 0x2

    new-array p2, p2, [F

    const/4 v0, 0x0

    .line 307
    iget v1, p0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->alphaInternal:F

    aput v1, p2, v0

    const/4 v0, 0x1

    aput p1, p2, v0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->alphaAnimator:Landroid/animation/ValueAnimator;

    .line 308
    new-instance v0, Lorg/telegram/ui/Cells/ReactedUserHolderView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Cells/ReactedUserHolderView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Cells/ReactedUserHolderView;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 312
    iget-object p2, p0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->alphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Cells/ReactedUserHolderView$4;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Cells/ReactedUserHolderView$4;-><init>(Lorg/telegram/ui/Cells/ReactedUserHolderView;F)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 319
    iget-object p1, p0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->alphaAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 320
    iget-object p1, p0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->alphaAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x1a4

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 321
    iget-object p1, p0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->alphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 323
    :cond_1
    iput p1, p0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->alphaInternal:F

    .line 324
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :goto_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 335
    iget v0, p0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->alphaInternal:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    const/4 v1, 0x1

    if-gez v0, :cond_0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 336
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    int-to-float v6, v0

    const/high16 v0, 0x437f0000    # 255.0f

    iget v2, p0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->alphaInternal:F

    mul-float/2addr v2, v0

    float-to-int v7, v2

    const/16 v8, 0x1f

    move-object v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 339
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 340
    iget-boolean v2, p0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->drawDivider:Z

    if-eqz v2, :cond_3

    .line 341
    iget v2, p0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->style:I

    sget v3, Lorg/telegram/ui/Cells/ReactedUserHolderView;->STYLE_STORY:I

    if-ne v2, v3, :cond_1

    const/16 v2, 0x49

    goto :goto_1

    :cond_1
    const/16 v2, 0x37

    :goto_1
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v4, v2

    .line 342
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const-string v3, "paintDivider"

    if-eqz v2, :cond_2

    const/4 v6, 0x0

    .line 343
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v2, v1

    int-to-float v7, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float v8, v2, v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v2, v1

    int-to-float v9, v2

    iget-object v1, p0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v3, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemePaint(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/graphics/Paint;

    move-result-object v10

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 345
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v2, v1

    int-to-float v5, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    int-to-float v6, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v2, v1

    int-to-float v7, v2

    iget-object v1, p0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v3, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemePaint(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/graphics/Paint;

    move-result-object v8

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_3
    :goto_2
    if-eqz v0, :cond_4

    .line 349
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_4
    return-void
.end method

.method public getAlphaInternal()F
    .locals 1

    .line 329
    iget v0, p0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->alphaInternal:F

    return v0
.end method

.method public getResourcesProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 1

    .line 354
    iget-object v0, p0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 284
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 285
    iget-object v0, p0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->statusBadgeComponent:Lorg/telegram/ui/Components/StatusBadgeComponent;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/StatusBadgeComponent;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 290
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 291
    iget-object v0, p0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->statusBadgeComponent:Lorg/telegram/ui/Components/StatusBadgeComponent;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/StatusBadgeComponent;->onDetachedFromWindow()V

    .line 292
    iget-object v0, p0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->params:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->onDetachFromWindow()V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 278
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const/4 v0, 0x1

    .line 279
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 272
    iget p2, p0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->style:I

    sget v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->STYLE_DEFAULT:I

    if-ne p2, v0, :cond_0

    const/16 p2, 0x32

    goto :goto_0

    :cond_0
    const/16 p2, 0x3a

    .line 273
    :goto_0
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public openStory(JLjava/lang/Runnable;)V
    .locals 0

    return-void
.end method

.method public setUserReaction(Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;)V
    .locals 13

    if-nez p1, :cond_0

    return-void

    .line 261
    :cond_0
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-lez v2, :cond_1

    .line 263
    iget v2, p0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    move-object v5, v0

    move-object v6, v3

    goto :goto_0

    .line 265
    :cond_1
    iget v2, p0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    neg-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    move-object v6, v0

    move-object v5, v3

    .line 267
    :goto_0
    iget-object v7, p1, Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    const/4 v8, 0x0

    iget v0, p1, Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;->date:I

    int-to-long v9, v0

    iget-boolean v11, p1, Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;->dateIsSeen:Z

    const/4 v12, 0x0

    move-object v4, p0

    invoke-virtual/range {v4 .. v12}, Lorg/telegram/ui/Cells/ReactedUserHolderView;->setUserReaction(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$Reaction;ZJZZ)V

    return-void
.end method

.method public setUserReaction(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$Reaction;ZJZZ)V
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    if-nez v1, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    move-object v3, v1

    :goto_0
    if-nez v3, :cond_1

    return-void

    .line 168
    :cond_1
    iget v4, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->style:I

    sget v5, Lorg/telegram/ui/Cells/ReactedUserHolderView;->STYLE_STORY:I

    if-ne v4, v5, :cond_2

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    goto :goto_1

    :cond_2
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chats_verifiedBackground:I

    :goto_1
    iget-object v5, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    .line 169
    iget-object v5, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->statusBadgeComponent:Lorg/telegram/ui/Components/StatusBadgeComponent;

    const/4 v6, 0x0

    invoke-virtual {v5, p1, v2, v4, v6}, Lorg/telegram/ui/Components/StatusBadgeComponent;->updateDrawable(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;IZ)Landroid/graphics/drawable/Drawable;

    .line 171
    iget-object v4, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v4, v3}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLObject;)V

    if-eqz v1, :cond_3

    .line 173
    iget-wide v4, v1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iput-wide v4, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->dialogId:J

    .line 174
    iget-object v4, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {p1}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    goto :goto_2

    .line 176
    :cond_3
    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    iput-wide v4, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->dialogId:J

    .line 177
    iget-object v4, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 180
    :goto_2
    iget-object v4, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    if-eqz v1, :cond_4

    .line 182
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v1, :cond_5

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->strippedBitmap:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_5

    goto :goto_3

    .line 186
    :cond_4
    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    if-eqz v1, :cond_5

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->strippedBitmap:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_5

    :goto_3
    move-object v4, v1

    .line 190
    :cond_5
    iget-object v1, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->avatarView:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v2, 0x1

    invoke-static {v3, v2}, Lorg/telegram/messenger/ImageLocation;->getForUserOrChat(Lorg/telegram/tgnet/TLObject;I)Lorg/telegram/messenger/ImageLocation;

    move-result-object v5

    const-string v7, "50_50"

    invoke-virtual {v1, v5, v7, v4, v3}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz p4, :cond_6

    .line 195
    iget-object v5, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->reactView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v5, v4}, Lorg/telegram/ui/Components/BackupImageView;->setAnimatedEmojiDrawable(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)V

    .line 197
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$drawable;->media_like_active:I

    invoke-static {v4, v5}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 198
    iget-object v5, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->reactView:Lorg/telegram/ui/Components/BackupImageView;

    new-instance v7, Landroid/graphics/PorterDuffColorFilter;

    const v8, -0xd1c8

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v8, v9}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v7}, Lorg/telegram/ui/Components/BackupImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 199
    iget-object v5, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->reactView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v5, v4}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 200
    sget v4, Lorg/telegram/messenger/R$string;->AccDescrLike:I

    new-array v5, v6, [Ljava/lang/Object;

    const-string v7, "AccDescrLike"

    invoke-static {v7, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move v7, v2

    goto/16 :goto_7

    :cond_6
    if-eqz p3, :cond_a

    .line 202
    invoke-static/range {p3 .. p3}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromTLReaction(Lorg/telegram/tgnet/TLRPC$Reaction;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object v5

    .line 203
    iget-object v7, v5, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    if-eqz v7, :cond_8

    .line 204
    iget-object v7, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->reactView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v7, v4}, Lorg/telegram/ui/Components/BackupImageView;->setAnimatedEmojiDrawable(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)V

    .line 205
    iget v7, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->currentAccount:I

    invoke-static {v7}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/messenger/MediaDataController;->getReactionsMap()Ljava/util/HashMap;

    move-result-object v7

    iget-object v8, v5, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v13, v7

    check-cast v13, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;

    if-eqz v13, :cond_7

    .line 207
    iget-object v7, v13, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->static_icon:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v7, v8, v1}, Lorg/telegram/messenger/DocumentObject;->getSvgThumb(Ljava/util/ArrayList;IF)Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    move-result-object v12

    .line 208
    iget-object v8, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->reactView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v7, v13, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->center_icon:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v7}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v9

    const-string v10, "40_40_lastreactframe"

    const-string v11, "webp"

    invoke-virtual/range {v8 .. v13}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    move v7, v2

    goto :goto_4

    .line 211
    :cond_7
    iget-object v7, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->reactView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v7, v4}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    move v7, v6

    .line 213
    :goto_4
    iget-object v8, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->reactView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v8, v4}, Lorg/telegram/ui/Components/BackupImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_5

    .line 215
    :cond_8
    new-instance v4, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    iget v7, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->currentAccount:I

    iget-wide v8, v5, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    invoke-direct {v4, v6, v7, v8, v9}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;-><init>(IIJ)V

    .line 216
    iget-object v7, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getAnimatedEmojiColorFilter(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/graphics/ColorFilter;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 217
    iget-object v7, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->reactView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v7, v4}, Lorg/telegram/ui/Components/BackupImageView;->setAnimatedEmojiDrawable(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)V

    move v7, v2

    .line 220
    :goto_5
    sget v4, Lorg/telegram/messenger/R$string;->AccDescrReactedWith:I

    new-array v8, v3, [Ljava/lang/Object;

    iget-object v9, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v9}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    aput-object v9, v8, v6

    iget-object v5, v5, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    if-eqz v5, :cond_9

    goto :goto_6

    :cond_9
    move-object/from16 v5, p3

    :goto_6
    aput-object v5, v8, v2

    const-string v5, "AccDescrReactedWith"

    invoke-static {v5, v4, v8}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_7

    .line 222
    :cond_a
    iget-object v5, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->reactView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v5, v4}, Lorg/telegram/ui/Components/BackupImageView;->setAnimatedEmojiDrawable(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)V

    .line 223
    iget-object v5, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->reactView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v5, v4}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 224
    sget v4, Lorg/telegram/messenger/R$string;->AccDescrPersonHasSeen:I

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v7, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v7}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v5, v6

    const-string v7, "AccDescrPersonHasSeen"

    invoke-static {v7, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move v7, v6

    :goto_7
    const-wide/16 v8, 0x0

    cmp-long v5, p5, v8

    if-eqz v5, :cond_b

    .line 228
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p5 .. p6}, Lorg/telegram/messenger/LocaleController;->formatSeenDate(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 230
    :cond_b
    invoke-virtual {p0, v4}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    const/16 v4, 0x9

    const/4 v8, 0x0

    if-eqz v5, :cond_e

    .line 233
    iget-object v5, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->subtitleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    if-eqz p7, :cond_c

    .line 234
    sget-object v5, Lorg/telegram/ui/Cells/ReactedUserHolderView;->seenDrawable:Lorg/telegram/ui/Components/MessageSeenCheckDrawable;

    goto :goto_8

    :cond_c
    sget-object v5, Lorg/telegram/ui/Cells/ReactedUserHolderView;->reactDrawable:Lorg/telegram/ui/Components/MessageSeenCheckDrawable;

    :goto_8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-virtual {v5, v9, v10}, Lorg/telegram/ui/Components/MessageSeenCheckDrawable;->getSpanned(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 235
    iget-object v9, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->subtitleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    new-array v3, v3, [Ljava/lang/CharSequence;

    aput-object v5, v3, v6

    invoke-static/range {p5 .. p6}, Lorg/telegram/messenger/LocaleController;->formatSeenDate(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-static {v3}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v9, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 236
    iget-object v2, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->subtitleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-nez p7, :cond_d

    const/4 v3, -0x1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    goto :goto_9

    :cond_d
    move v3, v8

    :goto_9
    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 237
    iget-object v2, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v2, v8}, Landroid/view/View;->setTranslationY(F)V

    if-eqz p8, :cond_f

    .line 239
    iget-object v2, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 240
    iget-object v2, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 241
    iget-object v2, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->subtitleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v2, v8}, Landroid/view/View;->setAlpha(F)V

    .line 242
    iget-object v2, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->subtitleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_a

    .line 245
    :cond_e
    iget-object v1, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->subtitleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 246
    iget-object v1, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 249
    :cond_f
    :goto_a
    iget-object v1, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v2, 0x1e

    if-eqz v7, :cond_10

    move v6, v2

    :cond_10
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightPadding(I)V

    .line 250
    iget-object v1, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v7, :cond_11

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_11

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    goto :goto_b

    :cond_11
    move v3, v8

    :goto_b
    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 251
    iget-object v1, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->subtitleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v7, :cond_12

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v3, :cond_12

    const/16 v3, 0x24

    goto :goto_c

    :cond_12
    const/16 v3, 0xc

    :goto_c
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 252
    iget-object v1, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;->subtitleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v7, :cond_13

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_13

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v8, v2

    :cond_13
    invoke-virtual {v1, v8}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method
