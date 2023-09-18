.class public abstract Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;
.super Lorg/telegram/ui/ActionBar/BottomSheet;
.source "BottomSheetWithRecyclerListView.java"


# instance fields
.field protected actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

.field private baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field protected clipToActionBar:Z

.field protected contentHeight:I

.field public final hasFixedSize:Z

.field private final headerShadowDrawable:Landroid/graphics/drawable/Drawable;

.field public nestedSizeNotifierLayout:Lorg/telegram/ui/Components/NestedSizeNotifierLayout;

.field protected recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

.field private shadowAlpha:F

.field showShadow:Z

.field public topPadding:F

.field wasDrawn:Z


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;ZZ)V
    .locals 7

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    :goto_0
    move-object v6, v0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 7

    .line 46
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0, p2, p5}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const p2, 0x3ecccccd    # 0.4f

    .line 37
    iput p2, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->topPadding:F

    const/4 p2, 0x1

    .line 38
    iput-boolean p2, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->showShadow:Z

    const/high16 p5, 0x3f800000    # 1.0f

    .line 39
    iput p5, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->shadowAlpha:F

    .line 47
    iput-object p1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 48
    iput-boolean p3, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->hasFixedSize:Z

    .line 49
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    .line 50
    sget p5, Lorg/telegram/messenger/R$drawable;->header_shadow:I

    invoke-static {p1, p5}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p5

    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p5

    iput-object p5, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->headerShadowDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p4, :cond_0

    .line 53
    new-instance p4, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$1;

    invoke-direct {p4, p0, p1, p3}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$1;-><init>(Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;Landroid/content/Context;Z)V

    iput-object p4, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->nestedSizeNotifierLayout:Lorg/telegram/ui/Components/NestedSizeNotifierLayout;

    goto :goto_0

    .line 90
    :cond_0
    new-instance p4, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$2;

    invoke-direct {p4, p0, p1, p3}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$2;-><init>(Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;Landroid/content/Context;Z)V

    .line 127
    :goto_0
    new-instance p5, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {p5, p1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object p5, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 128
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p5, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 129
    iget-object p5, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->nestedSizeNotifierLayout:Lorg/telegram/ui/Components/NestedSizeNotifierLayout;

    if-eqz p5, :cond_1

    .line 130
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getContainer()Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    move-result-object v0

    invoke-virtual {p5, v0}, Lorg/telegram/ui/Components/NestedSizeNotifierLayout;->setBottomSheetContainerView(Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;)V

    .line 131
    iget-object p5, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->nestedSizeNotifierLayout:Lorg/telegram/ui/Components/NestedSizeNotifierLayout;

    iget-object v0, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p5, v0}, Lorg/telegram/ui/Components/NestedSizeNotifierLayout;->setTargetListView(Landroid/view/View;)V

    .line 134
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->createAdapter()Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;

    move-result-object p5

    if-eqz p3, :cond_2

    .line 137
    iget-object p1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 138
    iget-object p1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, p5}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 139
    invoke-virtual {p0, p4}, Lorg/telegram/ui/ActionBar/BottomSheet;->setCustomView(Landroid/view/View;)V

    .line 140
    iget-object p1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 p2, -0x1

    const/4 p3, -0x2

    invoke-static {p2, p3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p4, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 142
    :cond_2
    iget-object p3, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$3;

    invoke-direct {v0, p0, p5, p1}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$3;-><init>(Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;Landroid/content/Context;)V

    invoke-virtual {p3, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 190
    iput-object p4, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    .line 191
    new-instance p3, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$4;

    invoke-direct {p3, p0, p1, p4}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$4;-><init>(Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;Landroid/content/Context;Landroid/widget/FrameLayout;)V

    iput-object p3, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 206
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p1

    invoke-virtual {p3, p1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 207
    iget-object p1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget p3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-virtual {p0, p3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p3

    invoke-virtual {p1, p3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    .line 208
    iget-object p1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget p3, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefaultSelector:I

    invoke-virtual {p0, p3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p3

    const/4 p5, 0x0

    invoke-virtual {p1, p3, p5}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 209
    iget-object p1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget p3, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefaultIcon:I

    invoke-virtual {p0, p3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p3

    invoke-virtual {p1, p3, p5}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 211
    iget-object p1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/ActionBar;->setCastShadows(Z)V

    .line 212
    iget-object p1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget p2, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 213
    iget-object p1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->getTitle()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 214
    iget-object p1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance p2, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$5;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$5;-><init>(Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 223
    iget-object p1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p4, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 224
    iget-object p1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v0, -0x1

    const/4 v1, -0x2

    const/4 v2, 0x0

    const/4 v3, 0x6

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p4, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 226
    iget-object p1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance p2, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$6;

    invoke-direct {p2, p0, p4}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$6;-><init>(Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;Landroid/widget/FrameLayout;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 234
    :goto_1
    invoke-virtual {p0, p4}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->onViewCreated(Landroid/widget/FrameLayout;)V

    .line 235
    invoke-direct {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->updateStatusBar()V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;Landroid/graphics/Canvas;Landroid/view/View;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->preDrawInternal(Landroid/graphics/Canvas;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;Landroid/graphics/Canvas;Landroid/view/View;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->postDrawInternal(Landroid/graphics/Canvas;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 25
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 25
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->updateStatusBar()V

    return-void
.end method

.method private isLightStatusBar()Z
    .locals 4

    .line 285
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

.method private postDrawInternal(Landroid/graphics/Canvas;Landroid/view/View;)V
    .locals 6

    .line 239
    iget-boolean v0, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->showShadow:Z

    const v1, 0x3dda740e

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    iget v4, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->shadowAlpha:F

    cmpl-float v5, v4, v2

    if-eqz v5, :cond_0

    add-float/2addr v4, v1

    .line 240
    iput v4, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->shadowAlpha:F

    .line 241
    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 242
    iget v0, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->shadowAlpha:F

    cmpl-float v4, v0, v3

    if-eqz v4, :cond_1

    sub-float/2addr v0, v1

    .line 243
    iput v0, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->shadowAlpha:F

    .line 244
    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    .line 246
    :cond_1
    :goto_0
    iget v0, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->shadowAlpha:F

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->shadowAlpha:F

    .line 247
    iget-object v0, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->shadowAlpha:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_2

    .line 248
    iget-object v0, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->headerShadowDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    iget-object v2, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    iget v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    sub-int/2addr p2, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->headerShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v0, v1, v2, p2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 249
    iget-object p2, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->headerShadowDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v0, 0x437f0000    # 255.0f

    iget-object v1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v1

    mul-float/2addr v1, v0

    iget v0, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->shadowAlpha:F

    mul-float/2addr v1, v0

    float-to-int v0, v1

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 250
    iget-object p2, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->headerShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    const/4 p1, 0x1

    .line 252
    iput-boolean p1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->wasDrawn:Z

    return-void
.end method

.method private preDrawInternal(Landroid/graphics/Canvas;Landroid/view/View;)V
    .locals 7

    .line 256
    iget-boolean v0, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->hasFixedSize:Z

    if-nez v0, :cond_3

    .line 257
    iget-object v0, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    const/16 v2, 0x10

    .line 258
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    neg-int v3, v3

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int v3, v0, v3

    .line 263
    :cond_0
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    add-int/2addr v0, v3

    int-to-float v0, v0

    const/16 v2, 0x38

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v0, v2, v0

    const/4 v4, 0x0

    cmpg-float v5, v0, v4

    if-gez v5, :cond_1

    move v0, v4

    .line 268
    :cond_1
    iget-object v5, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    cmpl-float v4, v0, v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    move v4, v1

    :goto_0
    iget-boolean v6, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->wasDrawn:Z

    invoke-static {v5, v4, v2, v6}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 269
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {v2, v1, v3, v4, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 270
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 272
    invoke-virtual {p0, p1, v3, v0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->onPreDraw(Landroid/graphics/Canvas;IF)V

    :cond_3
    return-void
.end method

.method private updateStatusBar()V
    .locals 2

    .line 310
    iget-object v0, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 311
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->isLightStatusBar()Z

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->setLightStatusBar(Landroid/view/Window;Z)V

    goto :goto_0

    .line 312
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v0, :cond_1

    .line 313
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->isLightStatusBar()Z

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->setLightStatusBar(Landroid/view/Window;Z)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected canDismissWithSwipe()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected abstract createAdapter()Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.end method

.method public getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 1

    .line 306
    iget-object v0, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    return-object v0
.end method

.method protected abstract getTitle()Ljava/lang/CharSequence;
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 297
    iget-object v0, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method protected onPreDraw(Landroid/graphics/Canvas;IF)V
    .locals 0

    return-void
.end method

.method protected onPreMeasure(II)V
    .locals 0

    return-void
.end method

.method public onViewCreated(Landroid/widget/FrameLayout;)V
    .locals 0

    return-void
.end method

.method public setShowShadow(Z)V
    .locals 0

    .line 324
    iput-boolean p1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->showShadow:Z

    .line 325
    iget-object p1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->nestedSizeNotifierLayout:Lorg/telegram/ui/Components/NestedSizeNotifierLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public updateTitle()V
    .locals 2

    .line 318
    iget-object v0, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v0, :cond_0

    .line 319
    invoke-virtual {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
