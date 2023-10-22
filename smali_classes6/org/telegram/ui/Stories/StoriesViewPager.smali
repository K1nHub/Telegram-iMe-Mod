.class public Lorg/telegram/ui/Stories/StoriesViewPager;
.super Landroidx/viewpager/widget/ViewPager;
.source "StoriesViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stories/StoriesViewPager$PageLayout;
    }
.end annotation


# instance fields
.field currentAccount:I

.field public currentState:I

.field days:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field daysDialogId:J

.field delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

.field dialogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field doOnNextIdle:Ljava/lang/Runnable;

.field keyboardHeight:I

.field lastProgressToDismiss:F

.field lockTouchRunnable:Ljava/lang/Runnable;

.field pagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

.field progress:F

.field resources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

.field selectedPosition:I

.field private selectedPositionInPage:I

.field storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

.field toPosition:I

.field touchEnabled:Z

.field private touchLocked:Z

.field updateDelegate:Z

.field private updateVisibleItemPosition:I


# direct methods
.method public static synthetic $r8$lambda$2kfJ1hC7IyK3HHGNCEGY_d5W5Sg(Lorg/telegram/ui/Stories/StoriesViewPager$PageLayout;)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/Stories/StoriesViewPager;->lambda$new$0(Lorg/telegram/ui/Stories/StoriesViewPager$PageLayout;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zZJJIud1eAeML7SkQU7HtXI75I8(Lorg/telegram/ui/Stories/StoriesViewPager;Landroid/view/View;F)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/StoriesViewPager;->lambda$new$1(Landroid/view/View;F)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/Stories/StoryViewer;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 1

    .line 60
    invoke-direct {p0, p1}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;)V

    .line 30
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v0, p0, Lorg/telegram/ui/Stories/StoriesViewPager;->currentAccount:I

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoriesViewPager;->dialogs:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesViewPager;->touchEnabled:Z

    .line 48
    new-instance v0, Lorg/telegram/ui/Stories/StoriesViewPager$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/StoriesViewPager$1;-><init>(Lorg/telegram/ui/Stories/StoriesViewPager;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoriesViewPager;->lockTouchRunnable:Ljava/lang/Runnable;

    const/4 v0, -0x1

    .line 57
    iput v0, p0, Lorg/telegram/ui/Stories/StoriesViewPager;->updateVisibleItemPosition:I

    .line 61
    new-instance v0, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoriesViewPager;->resources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    .line 62
    iput-object p2, p0, Lorg/telegram/ui/Stories/StoriesViewPager;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    .line 63
    new-instance v0, Lorg/telegram/ui/Stories/StoriesViewPager$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/telegram/ui/Stories/StoriesViewPager$2;-><init>(Lorg/telegram/ui/Stories/StoriesViewPager;Landroid/content/Context;Lorg/telegram/ui/Stories/StoryViewer;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoriesViewPager;->pagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 125
    new-instance p1, Lorg/telegram/ui/Stories/StoriesViewPager$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/StoriesViewPager$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/StoriesViewPager;)V

    const/4 p3, 0x0

    invoke-virtual {p0, p3, p1}, Landroidx/viewpager/widget/ViewPager;->setPageTransformer(ZLandroidx/viewpager/widget/ViewPager$PageTransformer;)V

    .line 151
    invoke-virtual {p0, p3}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 153
    new-instance p1, Lorg/telegram/ui/Stories/StoriesViewPager$3;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/Stories/StoriesViewPager$3;-><init>(Lorg/telegram/ui/Stories/StoriesViewPager;Lorg/telegram/ui/Stories/StoryViewer;)V

    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    const/4 p1, 0x2

    .line 200
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    return-void
.end method

.method static synthetic access$002(Lorg/telegram/ui/Stories/StoriesViewPager;Z)Z
    .locals 0

    .line 25
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/StoriesViewPager;->touchLocked:Z

    return p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/Stories/StoriesViewPager;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoriesViewPager;->updateActiveStory()V

    return-void
.end method

.method private static synthetic lambda$new$0(Lorg/telegram/ui/Stories/StoriesViewPager$PageLayout;)V
    .locals 3

    .line 130
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesViewPager$PageLayout;->day:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 131
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesViewPager$PageLayout;->peerStoryView:Lorg/telegram/ui/Stories/PeerStoriesView;

    iput-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->day:Ljava/util/ArrayList;

    .line 133
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesViewPager$PageLayout;->peerStoryView:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-wide v1, p0, Lorg/telegram/ui/Stories/StoriesViewPager$PageLayout;->dialogId:J

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->preloadMainImage(J)V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;F)V
    .locals 6

    .line 126
    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Stories/StoriesViewPager$PageLayout;

    .line 127
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    const/4 p1, 0x0

    .line 128
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/StoriesViewPager$PageLayout;->setVisible(Z)V

    .line 129
    new-instance p1, Lorg/telegram/ui/Stories/StoriesViewPager$$ExternalSyntheticLambda1;

    invoke-direct {p1, v0}, Lorg/telegram/ui/Stories/StoriesViewPager$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/StoriesViewPager$PageLayout;)V

    const-wide/16 v0, 0x10

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void

    .line 137
    :cond_0
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/StoriesViewPager$PageLayout;->isVisible:Z

    if-nez v1, :cond_2

    const/4 v1, 0x1

    .line 138
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/StoriesViewPager$PageLayout;->setVisible(Z)V

    .line 139
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesViewPager;->days:Ljava/util/ArrayList;

    const/4 v2, -0x1

    if-eqz v1, :cond_1

    .line 140
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoriesViewPager$PageLayout;->peerStoryView:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-wide v3, v0, Lorg/telegram/ui/Stories/StoriesViewPager$PageLayout;->dialogId:J

    iget-object v5, v0, Lorg/telegram/ui/Stories/StoriesViewPager$PageLayout;->day:Ljava/util/ArrayList;

    invoke-virtual {v1, v3, v4, v5, v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->setDay(JLjava/util/ArrayList;I)V

    goto :goto_0

    .line 142
    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoriesViewPager$PageLayout;->peerStoryView:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-wide v3, v0, Lorg/telegram/ui/Stories/StoriesViewPager$PageLayout;->dialogId:J

    invoke-virtual {v1, v3, v4, v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->setDialogId(JI)V

    .line 145
    :cond_2
    :goto_0
    iget-object v0, v0, Lorg/telegram/ui/Stories/StoriesViewPager$PageLayout;->peerStoryView:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Stories/PeerStoriesView;->setOffset(F)V

    .line 146
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0xf

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setCameraDistance(F)V

    const/4 v0, 0x0

    cmpg-float v1, p2, v0

    if-gez v1, :cond_3

    .line 147
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    :cond_3
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 148
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    const/high16 v0, 0x42b40000    # 90.0f

    mul-float/2addr p2, v0

    .line 149
    invoke-virtual {p1, p2}, Landroid/view/View;->setRotationY(F)V

    return-void
.end method

.method private updateActiveStory()V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 204
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 205
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Stories/PeerStoriesView;

    .line 206
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v4

    if-ne v3, v4, :cond_0

    iget-boolean v3, v2, Lorg/telegram/ui/Stories/PeerStoriesView;->editOpened:Z

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    move v3, v0

    :goto_1
    invoke-virtual {v2, v3}, Lorg/telegram/ui/Stories/PeerStoriesView;->setActive(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public canScroll(F)Z
    .locals 5

    .line 227
    iget v0, p0, Lorg/telegram/ui/Stories/StoriesViewPager;->selectedPosition:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget v3, p0, Lorg/telegram/ui/Stories/StoriesViewPager;->progress:F

    cmpl-float v3, v3, v2

    if-nez v3, :cond_0

    cmpg-float v3, p1, v2

    if-gez v3, :cond_0

    return v1

    .line 230
    :cond_0
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-ne v0, v3, :cond_1

    iget v0, p0, Lorg/telegram/ui/Stories/StoriesViewPager;->progress:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    cmpl-float p1, p1, v2

    if-lez p1, :cond_1

    return v1

    :cond_1
    return v4
.end method

.method public checkAllowScreenshots()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 212
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 213
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Stories/StoriesViewPager$PageLayout;

    .line 214
    iget-boolean v3, v2, Lorg/telegram/ui/Stories/StoriesViewPager$PageLayout;->isVisible:Z

    if-eqz v3, :cond_0

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoriesViewPager$PageLayout;->peerStoryView:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v2, v2, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->allowScreenshots()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 219
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesViewPager;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Stories/StoryViewer;->allowScreenshots(Z)V

    return-void
.end method

.method public checkPageVisibility()V
    .locals 6

    .line 289
    iget v0, p0, Lorg/telegram/ui/Stories/StoriesViewPager;->updateVisibleItemPosition:I

    if-ltz v0, :cond_2

    const/4 v0, 0x0

    .line 290
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 291
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v2

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    iget v2, p0, Lorg/telegram/ui/Stories/StoriesViewPager;->updateVisibleItemPosition:I

    if-ne v1, v2, :cond_1

    .line 292
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Stories/StoriesViewPager$PageLayout;

    .line 293
    iget-boolean v2, v1, Lorg/telegram/ui/Stories/StoriesViewPager$PageLayout;->isVisible:Z

    if-nez v2, :cond_1

    const/4 v2, -0x1

    .line 294
    iput v2, p0, Lorg/telegram/ui/Stories/StoriesViewPager;->updateVisibleItemPosition:I

    const/4 v2, 0x1

    .line 295
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Stories/StoriesViewPager$PageLayout;->setVisible(Z)V

    .line 296
    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesViewPager;->days:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 297
    iget-object v2, v1, Lorg/telegram/ui/Stories/StoriesViewPager$PageLayout;->peerStoryView:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-wide v3, v1, Lorg/telegram/ui/Stories/StoriesViewPager$PageLayout;->dialogId:J

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoriesViewPager$PageLayout;->day:Ljava/util/ArrayList;

    iget v5, p0, Lorg/telegram/ui/Stories/StoriesViewPager;->selectedPositionInPage:I

    invoke-virtual {v2, v3, v4, v1, v5}, Lorg/telegram/ui/Stories/PeerStoriesView;->setDay(JLjava/util/ArrayList;I)V

    goto :goto_1

    .line 299
    :cond_0
    iget-object v2, v1, Lorg/telegram/ui/Stories/StoriesViewPager$PageLayout;->peerStoryView:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-wide v3, v1, Lorg/telegram/ui/Stories/StoriesViewPager$PageLayout;->dialogId:J

    iget v1, p0, Lorg/telegram/ui/Stories/StoriesViewPager;->selectedPositionInPage:I

    invoke-virtual {v2, v3, v4, v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->setDialogId(JI)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public enableTouch(Z)V
    .locals 0

    .line 352
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/StoriesViewPager;->touchEnabled:Z

    return-void
.end method

.method public getCurrentDialogId()J
    .locals 2

    .line 362
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesViewPager;->days:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 363
    iget-wide v0, p0, Lorg/telegram/ui/Stories/StoriesViewPager;->daysDialogId:J

    return-wide v0

    .line 365
    :cond_0
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesViewPager;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 366
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesViewPager;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 238
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 239
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 240
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Stories/PeerStoriesView;

    return-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDialogIds()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 414
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesViewPager;->dialogs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public lockTouchEvent(J)V
    .locals 9

    const/4 v0, 0x1

    .line 407
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesViewPager;->touchLocked:Z

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 408
    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/StoriesViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 409
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesViewPager;->lockTouchRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 410
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesViewPager;->lockTouchRunnable:Ljava/lang/Runnable;

    invoke-static {v0, p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 329
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesViewPager;->touchEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesViewPager;->touchLocked:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 333
    :cond_0
    :try_start_0
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 335
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 276
    invoke-super/range {p0 .. p5}, Landroidx/viewpager/widget/ViewPager;->onLayout(ZIIII)V

    .line 277
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/StoriesViewPager;->updateDelegate:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 278
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/StoriesViewPager;->updateDelegate:Z

    .line 279
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoriesViewPager;->getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 281
    iget-object p2, p0, Lorg/telegram/ui/Stories/StoriesViewPager;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->getCurrentPeer()J

    move-result-wide p3

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->getSelectedPosition()I

    move-result p1

    invoke-interface {p2, p3, p4, p1}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->onPeerSelected(JI)V

    .line 284
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoriesViewPager;->checkPageVisibility()V

    .line 285
    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoriesViewPager;->updateActiveStory()V

    return-void
.end method

.method public onNextIdle(Ljava/lang/Runnable;)V
    .locals 0

    .line 372
    iput-object p1, p0, Lorg/telegram/ui/Stories/StoriesViewPager;->doOnNextIdle:Ljava/lang/Runnable;

    return-void
.end method

.method public onStateChanged()V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 342
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesViewPager;->touchEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesViewPager;->touchLocked:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 348
    :cond_0
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 343
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesViewPager;->touchLocked:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0

    .line 403
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public setCurrentDate(JI)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 450
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesViewPager;->days:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    .line 451
    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesViewPager;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoryViewer;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    iget-object v3, p0, Lorg/telegram/ui/Stories/StoriesViewPager;->days:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->findMessageObject(I)Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->day(Lorg/telegram/messenger/MessageObject;)J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-nez v2, :cond_6

    .line 455
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesViewPager;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-boolean p1, p1, Lorg/telegram/ui/Stories/StoryViewer;->reversed:Z

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    .line 456
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesViewPager;->days:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, p2

    sub-int/2addr p1, v1

    goto :goto_1

    :cond_0
    move p1, v1

    :goto_1
    move v2, v0

    .line 458
    :goto_2
    iget-object v3, p0, Lorg/telegram/ui/Stories/StoriesViewPager;->days:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 459
    iget-object v3, p0, Lorg/telegram/ui/Stories/StoriesViewPager;->days:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p3, :cond_1

    goto :goto_3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    move v2, v0

    .line 464
    :goto_3
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoriesViewPager;->getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;

    move-result-object p3

    if-eqz p3, :cond_4

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p3

    if-eq p3, p1, :cond_3

    goto :goto_4

    .line 479
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoriesViewPager;->getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;

    move-result-object p1

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->selectPosition(I)V

    goto :goto_5

    .line 465
    :cond_4
    :goto_4
    invoke-virtual {p0, p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    .line 466
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoriesViewPager;->getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 468
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Stories/StoriesViewPager$PageLayout;

    .line 469
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stories/StoriesViewPager$PageLayout;->setVisible(Z)V

    .line 470
    iget-object p2, p0, Lorg/telegram/ui/Stories/StoriesViewPager;->days:Ljava/util/ArrayList;

    if-eqz p2, :cond_5

    .line 471
    iget-object p2, p1, Lorg/telegram/ui/Stories/StoriesViewPager$PageLayout;->peerStoryView:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-wide v0, p1, Lorg/telegram/ui/Stories/StoriesViewPager$PageLayout;->dialogId:J

    iget-object p1, p1, Lorg/telegram/ui/Stories/StoriesViewPager$PageLayout;->day:Ljava/util/ArrayList;

    invoke-virtual {p2, v0, v1, p1, v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->setDay(JLjava/util/ArrayList;I)V

    goto :goto_5

    .line 473
    :cond_5
    iget-object p2, p1, Lorg/telegram/ui/Stories/StoriesViewPager$PageLayout;->peerStoryView:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-wide v0, p1, Lorg/telegram/ui/Stories/StoriesViewPager$PageLayout;->dialogId:J

    invoke-virtual {p2, v0, v1, v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->setDialogId(JI)V

    goto :goto_5

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_7
    :goto_5
    return-void
.end method

.method public setDays(JLjava/util/ArrayList;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;>;I)V"
        }
    .end annotation

    .line 256
    iput-wide p1, p0, Lorg/telegram/ui/Stories/StoriesViewPager;->daysDialogId:J

    .line 257
    iput-object p3, p0, Lorg/telegram/ui/Stories/StoriesViewPager;->days:Ljava/util/ArrayList;

    .line 258
    iput p4, p0, Lorg/telegram/ui/Stories/StoriesViewPager;->currentAccount:I

    const/4 p1, 0x0

    .line 259
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 260
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesViewPager;->pagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    const/4 p1, 0x0

    .line 262
    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_1

    .line 263
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    iget-object p4, p0, Lorg/telegram/ui/Stories/StoriesViewPager;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget p4, p4, Lorg/telegram/ui/Stories/StoryViewer;->dayStoryId:I

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 267
    :cond_1
    :goto_1
    iget-object p2, p0, Lorg/telegram/ui/Stories/StoriesViewPager;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-boolean p2, p2, Lorg/telegram/ui/Stories/StoryViewer;->reversed:Z

    const/4 p4, 0x1

    if-eqz p2, :cond_2

    .line 268
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p2, p4

    sub-int p1, p2, p1

    .line 270
    :cond_2
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 271
    iput-boolean p4, p0, Lorg/telegram/ui/Stories/StoriesViewPager;->updateDelegate:Z

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;)V
    .locals 0

    .line 308
    iput-object p1, p0, Lorg/telegram/ui/Stories/StoriesViewPager;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    return-void
.end method

.method public setHorizontalProgressToDismiss(F)V
    .locals 2

    .line 388
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_2

    iget v0, p0, Lorg/telegram/ui/Stories/StoriesViewPager;->lastProgressToDismiss:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 391
    :cond_0
    iput p1, p0, Lorg/telegram/ui/Stories/StoriesViewPager;->lastProgressToDismiss:F

    .line 392
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0xf

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setCameraDistance(F)V

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_1

    .line 393
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    int-to-float v0, v0

    :cond_1
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setPivotX(F)V

    .line 394
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setPivotY(F)V

    const/high16 v0, 0x42b40000    # 90.0f

    mul-float/2addr p1, v0

    .line 395
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setRotationY(F)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setKeyboardHeight(I)V
    .locals 1

    .line 376
    iget v0, p0, Lorg/telegram/ui/Stories/StoriesViewPager;->keyboardHeight:I

    if-eq v0, p1, :cond_0

    .line 377
    iput p1, p0, Lorg/telegram/ui/Stories/StoriesViewPager;->keyboardHeight:I

    .line 378
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoriesViewPager;->getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 380
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setPaused(Z)V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 356
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 357
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-virtual {v2, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->setPaused(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setPeerIds(Ljava/util/ArrayList;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;II)V"
        }
    .end annotation

    .line 247
    iput-object p1, p0, Lorg/telegram/ui/Stories/StoriesViewPager;->dialogs:Ljava/util/ArrayList;

    .line 248
    iput p2, p0, Lorg/telegram/ui/Stories/StoriesViewPager;->currentAccount:I

    const/4 p1, 0x0

    .line 249
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 250
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesViewPager;->pagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 251
    invoke-virtual {p0, p3}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    const/4 p1, 0x1

    .line 252
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/StoriesViewPager;->updateDelegate:Z

    return-void
.end method

.method public switchToNext(Z)Z
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 316
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesViewPager;->days:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesViewPager;->dialogs:Ljava/util/ArrayList;

    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v0

    if-ge v1, v2, :cond_1

    .line 317
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    add-int/2addr p1, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoriesViewPager;->useSurfaceInViewPagerWorkAround()Z

    move-result v1

    xor-int/2addr v1, v0

    invoke-virtual {p0, p1, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return v0

    :cond_1
    if-nez p1, :cond_2

    .line 320
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    if-lez p1, :cond_2

    .line 321
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoriesViewPager;->useSurfaceInViewPagerWorkAround()Z

    move-result v1

    xor-int/2addr v1, v0

    invoke-virtual {p0, p1, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return v0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public useSurfaceInViewPagerWorkAround()Z
    .locals 2

    .line 312
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesViewPager;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-boolean v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->USE_SURFACE_VIEW:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
