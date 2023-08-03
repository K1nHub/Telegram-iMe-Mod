.class public Lorg/telegram/ui/Stories/SelfStoryViewsView;
.super Landroid/widget/FrameLayout;
.source "SelfStoryViewsView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stories/SelfStoryViewsView$StoryItemInternal;,
        Lorg/telegram/ui/Stories/SelfStoryViewsView$ViewPagerInner;,
        Lorg/telegram/ui/Stories/SelfStoryViewsView$ContainerView;
    }
.end annotation


# instance fields
.field public bottomPadding:F

.field private currentState:I

.field itemViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Stories/SelfStoryViewsPage;",
            ">;"
        }
    .end annotation
.end field

.field listenPager:Z

.field public maxSelfStoriesViewsOffset:F

.field private final pagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

.field progressToOpen:F

.field resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field selfStoriesPreviewView:Lorg/telegram/ui/Stories/SelfStoriesPreviewView;

.field selfStoriesViewsOffset:F

.field private shadowDrawable:Landroid/graphics/drawable/Drawable;

.field storyItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Stories/SelfStoryViewsView$StoryItemInternal;",
            ">;"
        }
    .end annotation
.end field

.field storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

.field toHeight:F

.field public toY:F

.field viewPager:Lorg/telegram/ui/Stories/SelfStoryViewsView$ViewPagerInner;

.field viewPagerContainer:Lorg/telegram/ui/Stories/SelfStoryViewsView$ContainerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/Stories/StoryViewer;)V
    .locals 7

    .line 54
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView;->storyItems:Ljava/util/ArrayList;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView;->itemViews:Ljava/util/ArrayList;

    .line 55
    iget-object v0, p2, Lorg/telegram/ui/Stories/StoryViewer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iput-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 56
    iput-object p2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    .line 57
    new-instance v0, Lorg/telegram/ui/Stories/SelfStoryViewsView$1;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p2}, Lorg/telegram/ui/Stories/SelfStoryViewsView$1;-><init>(Lorg/telegram/ui/Stories/SelfStoryViewsView;Landroid/content/Context;Lorg/telegram/ui/Stories/StoryViewer;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView;->selfStoriesPreviewView:Lorg/telegram/ui/Stories/SelfStoriesPreviewView;

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->sheet_shadow_round:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 89
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    iget-object v3, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 90
    new-instance v0, Lorg/telegram/ui/Stories/SelfStoryViewsView$ContainerView;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Stories/SelfStoryViewsView$ContainerView;-><init>(Lorg/telegram/ui/Stories/SelfStoryViewsView;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView;->viewPagerContainer:Lorg/telegram/ui/Stories/SelfStoryViewsView$ContainerView;

    .line 92
    new-instance v0, Lorg/telegram/ui/Stories/SelfStoryViewsView$ViewPagerInner;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Stories/SelfStoryViewsView$ViewPagerInner;-><init>(Lorg/telegram/ui/Stories/SelfStoryViewsView;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView;->viewPager:Lorg/telegram/ui/Stories/SelfStoryViewsView$ViewPagerInner;

    .line 93
    new-instance v1, Lorg/telegram/ui/Stories/SelfStoryViewsView$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/SelfStoryViewsView$2;-><init>(Lorg/telegram/ui/Stories/SelfStoryViewsView;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 119
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView;->viewPager:Lorg/telegram/ui/Stories/SelfStoryViewsView$ViewPagerInner;

    new-instance v1, Lorg/telegram/ui/Stories/SelfStoryViewsView$3;

    invoke-direct {v1, p0, p2, p1}, Lorg/telegram/ui/Stories/SelfStoryViewsView$3;-><init>(Lorg/telegram/ui/Stories/SelfStoryViewsView;Lorg/telegram/ui/Stories/StoryViewer;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView;->pagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 159
    iget-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView;->viewPagerContainer:Lorg/telegram/ui/Stories/SelfStoryViewsView$ContainerView;

    iget-object p2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView;->viewPager:Lorg/telegram/ui/Stories/SelfStoryViewsView$ViewPagerInner;

    const/4 v0, -0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    iget-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView;->selfStoriesPreviewView:Lorg/telegram/ui/Stories/SelfStoriesPreviewView;

    const/4 p2, -0x1

    invoke-static {p2, p2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 184
    iget-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView;->viewPagerContainer:Lorg/telegram/ui/Stories/SelfStoryViewsView$ContainerView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    const/4 p1, 0x4

    .line 185
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Stories/SelfStoryViewsView;)I
    .locals 0

    .line 32
    iget p0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView;->currentState:I

    return p0
.end method

.method static synthetic access$002(Lorg/telegram/ui/Stories/SelfStoryViewsView;I)I
    .locals 0

    .line 32
    iput p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView;->currentState:I

    return p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/Stories/SelfStoryViewsView;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 32
    iget-object p0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method


# virtual methods
.method public getCrossfadeToImage()Lorg/telegram/messenger/ImageReceiver;
    .locals 1

    .line 256
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView;->selfStoriesPreviewView:Lorg/telegram/ui/Stories/SelfStoriesPreviewView;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->getCenteredImageReciever()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 191
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-boolean v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->ATTACH_TO_FRAGMENT:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 192
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 194
    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 195
    iget-object v3, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView;->selfStoriesPreviewView:Lorg/telegram/ui/Stories/SelfStoriesPreviewView;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 196
    iput v0, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 197
    iget-object v3, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView;->selfStoriesPreviewView:Lorg/telegram/ui/Stories/SelfStoriesPreviewView;

    invoke-virtual {v3}, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->getFinalHeight()F

    move-result v3

    iput v3, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView;->toHeight:F

    const/16 v3, 0x14

    .line 198
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v4, v0

    int-to-float v4, v4

    iput v4, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView;->toY:F

    .line 199
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v0, v0

    iget v3, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView;->toHeight:F

    add-float/2addr v0, v3

    const/16 v3, 0x18

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v0, v3

    iput v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView;->bottomPadding:F

    int-to-float v2, v2

    sub-float/2addr v2, v0

    .line 200
    iput v2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView;->maxSelfStoriesViewsOffset:F

    .line 201
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView;->itemViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 202
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView;->itemViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    iget v2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView;->bottomPadding:F

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->setListBottomPadding(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 204
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setItems(Ljava/util/ArrayList;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$StoryItem;",
            ">;I)V"
        }
    .end annotation

    .line 240
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView;->storyItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    move v1, v0

    .line 241
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 242
    iget-object v2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView;->storyItems:Ljava/util/ArrayList;

    new-instance v3, Lorg/telegram/ui/Stories/SelfStoryViewsView$StoryItemInternal;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$StoryItem;

    invoke-direct {v3, p0, v4}, Lorg/telegram/ui/Stories/SelfStoryViewsView$StoryItemInternal;-><init>(Lorg/telegram/ui/Stories/SelfStoryViewsView;Lorg/telegram/tgnet/TLRPC$StoryItem;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 244
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget p1, p1, Lorg/telegram/ui/Stories/StoryViewer;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoriesController;->getUploadingStories()Ljava/util/ArrayList;

    move-result-object p1

    .line 245
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 246
    iget-object v1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView;->storyItems:Ljava/util/ArrayList;

    new-instance v2, Lorg/telegram/ui/Stories/SelfStoryViewsView$StoryItemInternal;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    invoke-direct {v2, p0, v3}, Lorg/telegram/ui/Stories/SelfStoryViewsView$StoryItemInternal;-><init>(Lorg/telegram/ui/Stories/SelfStoryViewsView;Lorg/telegram/ui/Stories/StoriesController$UploadingStory;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 248
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView;->selfStoriesPreviewView:Lorg/telegram/ui/Stories/SelfStoriesPreviewView;

    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView;->storyItems:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, p2}, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->setItems(Ljava/util/ArrayList;I)V

    .line 249
    iget-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView;->viewPager:Lorg/telegram/ui/Stories/SelfStoryViewsView$ViewPagerInner;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 250
    iget-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView;->viewPager:Lorg/telegram/ui/Stories/SelfStoryViewsView$ViewPagerInner;

    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView;->pagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 251
    iget-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView;->pagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {p1}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 252
    iget-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView;->viewPager:Lorg/telegram/ui/Stories/SelfStoryViewsView$ViewPagerInner;

    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void
.end method

.method public setOffset(F)V
    .locals 4

    .line 209
    iget v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView;->selfStoriesViewsOffset:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 212
    :cond_0
    iput p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView;->selfStoriesViewsOffset:F

    .line 213
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView;->viewPagerContainer:Lorg/telegram/ui/Stories/SelfStoryViewsView$ContainerView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 214
    iget v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView;->progressToOpen:F

    .line 215
    iget v1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView;->maxSelfStoriesViewsOffset:F

    div-float/2addr p1, v1

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView;->progressToOpen:F

    const/high16 v3, 0x3f000000    # 0.5f

    div-float/2addr p1, v3

    .line 216
    invoke-static {p1, v1, v2}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    .line 219
    iget-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoryViewer;->getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;

    move-result-object p1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 220
    iget v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView;->progressToOpen:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 221
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView;->selfStoriesPreviewView:Lorg/telegram/ui/Stories/SelfStoriesPreviewView;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->getClosestPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->selectPosition(I)V

    .line 222
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView;->selfStoriesPreviewView:Lorg/telegram/ui/Stories/SelfStoriesPreviewView;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->abortScroll()V

    :cond_1
    if-eqz p1, :cond_2

    .line 225
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView;->selfStoriesPreviewView:Lorg/telegram/ui/Stories/SelfStoriesPreviewView;

    iget-object v3, p1, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getTop()I

    move-result v3

    iput v3, v0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->imagesFromY:I

    .line 226
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView;->selfStoriesPreviewView:Lorg/telegram/ui/Stories/SelfStoriesPreviewView;

    iget-object v3, p1, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    iput v3, v0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->imagesFromW:I

    .line 227
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView;->selfStoriesPreviewView:Lorg/telegram/ui/Stories/SelfStoriesPreviewView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p1

    iput p1, v0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->imagesFromH:I

    .line 229
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView;->selfStoriesPreviewView:Lorg/telegram/ui/Stories/SelfStoriesPreviewView;

    iget v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView;->progressToOpen:F

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->setProgressToOpen(F)V

    .line 230
    iget-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView;->viewPager:Lorg/telegram/ui/Stories/SelfStoryViewsView$ViewPagerInner;

    iget-boolean v0, p1, Lorg/telegram/ui/Stories/SelfStoryViewsView$ViewPagerInner;->gesturesEnabled:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView;->progressToOpen:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    .line 231
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->emptyMotionEvent()Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/SelfStoryViewsView$ViewPagerInner;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 233
    :cond_3
    iget p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView;->progressToOpen:F

    cmpl-float p1, p1, v2

    const/4 v0, 0x0

    if-nez p1, :cond_4

    const/4 p1, 0x4

    goto :goto_0

    :cond_4
    move p1, v0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 234
    iget p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView;->progressToOpen:F

    cmpl-float p1, p1, v1

    if-eqz p1, :cond_5

    .line 235
    iget-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsView;->viewPager:Lorg/telegram/ui/Stories/SelfStoryViewsView$ViewPagerInner;

    iput-boolean v0, p1, Lorg/telegram/ui/Stories/SelfStoryViewsView$ViewPagerInner;->gesturesEnabled:Z

    :cond_5
    return-void
.end method
