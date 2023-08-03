.class public Lorg/telegram/ui/Stories/SelfStoryViewsPage;
.super Landroid/widget/FrameLayout;
.source "SelfStoryViewsPage.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;,
        Lorg/telegram/ui/Stories/SelfStoryViewsPage$Item;,
        Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;
    }
.end annotation


# instance fields
.field currentAccount:I

.field public layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field listAdapter:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;

.field private measuerdHeight:I

.field model:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;

.field recyclerItemsEnterAnimator:Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

.field recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

.field resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field storyItem:Lorg/telegram/ui/Stories/SelfStoryViewsView$StoryItemInternal;

.field private final titleView:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$fXPp9e819bWYczhHWudt87tdTMA(Lorg/telegram/ui/Stories/SelfStoryViewsPage;Lorg/telegram/ui/Stories/StoryViewer;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->lambda$new$0(Lorg/telegram/ui/Stories/StoryViewer;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$lKQS8HqOp-IpQ4jXn5Xakdi96WI(Lorg/telegram/ui/Stories/SelfStoryViewsPage;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->lambda$onDataRecieved$1()V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Stories/StoryViewer;Landroid/content/Context;)V
    .locals 13

    .line 64
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 65
    iget-object v0, p1, Lorg/telegram/ui/Stories/StoryViewer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iput-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 66
    iget v0, p1, Lorg/telegram/ui/Stories/StoryViewer;->currentAccount:I

    iput v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->currentAccount:I

    .line 68
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->titleView:Landroid/widget/TextView;

    .line 69
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    iget-object v2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v1, 0x1

    const/high16 v2, 0x41a00000    # 20.0f

    .line 70
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v2, "fonts/rmedium.ttf"

    .line 71
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v2, 0x15

    .line 72
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    const/4 v4, 0x6

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    const/16 v5, 0x8

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-virtual {v0, v3, v4, v2, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 73
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 75
    new-instance v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$1;

    invoke-direct {v0, p0, p2}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$1;-><init>(Lorg/telegram/ui/Stories/SelfStoryViewsPage;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    .line 82
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 83
    new-instance v0, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

    iget-object v3, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v0, v3, v1}, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;-><init>(Lorg/telegram/ui/Components/RecyclerListView;Z)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->recyclerItemsEnterAnimator:Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

    .line 84
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v3, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 85
    iget-object p2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 86
    iget-object p2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;-><init>(Lorg/telegram/ui/Stories/SelfStoryViewsPage;Lorg/telegram/ui/Stories/SelfStoryViewsPage$1;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->listAdapter:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 88
    iget-object p2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 91
    iget-object p2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$2;-><init>(Lorg/telegram/ui/Stories/SelfStoryViewsPage;)V

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 97
    iget-object p2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/SelfStoryViewsPage;Lorg/telegram/ui/Stories/StoryViewer;)V

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 104
    iget-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->listAdapter:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->updateRows()V

    .line 106
    new-instance p1, Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 107
    new-instance p2, Landroid/graphics/drawable/GradientDrawable;

    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v3, 0x2

    new-array v3, v3, [I

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    iget-object v5, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v5

    aput v5, v3, v2

    aput v2, v3, v1

    invoke-direct {p2, v0, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v6, -0x1

    const/16 v7, 0x8

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x26

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 108
    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    new-instance p1, Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 111
    iget-object p2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v4, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    const/4 v0, -0x1

    const/16 v1, 0x8

    const/4 v3, 0x0

    const/16 v4, 0x1e

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 112
    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Stories/SelfStoryViewsPage;)I
    .locals 0

    .line 39
    iget p0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->measuerdHeight:I

    return p0
.end method

.method static synthetic access$002(Lorg/telegram/ui/Stories/SelfStoryViewsPage;I)I
    .locals 0

    .line 39
    iput p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->measuerdHeight:I

    return p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/Stories/SelfStoryViewsPage;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->checkLoadMore()V

    return-void
.end method

.method private checkLoadMore()V
    .locals 2

    .line 127
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->model:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->listAdapter:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0xa

    if-le v0, v1, :cond_0

    .line 128
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->model:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->loadNext()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$0(Lorg/telegram/ui/Stories/StoryViewer;Landroid/view/View;I)V
    .locals 0

    .line 98
    iget-object p2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->listAdapter:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;

    iget-object p2, p2, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Stories/SelfStoryViewsPage$Item;

    iget-object p2, p2, Lorg/telegram/ui/Stories/SelfStoryViewsPage$Item;->user:Lorg/telegram/tgnet/TLRPC$TL_storyView;

    if-eqz p2, :cond_0

    .line 100
    iget-wide p2, p2, Lorg/telegram/tgnet/TLRPC$TL_storyView;->user_id:J

    invoke-static {p2, p3}, Lorg/telegram/ui/ProfileActivity;->of(J)Lorg/telegram/ui/ProfileActivity;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stories/StoryViewer;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onDataRecieved$1()V
    .locals 2

    .line 194
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->listAdapter:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->getItemCount()I

    move-result v0

    .line 195
    iget-object v1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->listAdapter:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->updateRows()V

    .line 196
    iget-object v1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->recyclerItemsEnterAnimator:Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;->showItemsAnimated(I)V

    .line 197
    invoke-direct {p0}, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->checkLoadMore()V

    return-void
.end method

.method public static preload(ILorg/telegram/tgnet/TLRPC$StoryItem;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 160
    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoriesController;->selfViewsModel:Landroid/util/SparseArray;

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;

    .line 161
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$StoryItem;->views:Lorg/telegram/tgnet/TLRPC$TL_storyViews;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget v1, v1, Lorg/telegram/tgnet/TLRPC$TL_storyViews;->views_count:I

    :goto_0
    if-eqz v0, :cond_2

    .line 162
    iget v2, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->totalCount:I

    if-eq v2, v1, :cond_4

    :cond_2
    if-eqz v0, :cond_3

    .line 164
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->release()V

    .line 166
    :cond_3
    new-instance v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;-><init>(ILorg/telegram/tgnet/TLRPC$StoryItem;)V

    .line 167
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->loadNext()V

    .line 168
    invoke-static {p0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object p0

    iget-object p0, p0, Lorg/telegram/ui/Stories/StoriesController;->selfViewsModel:Landroid/util/SparseArray;

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 2

    .line 210
    sget p2, Lorg/telegram/messenger/NotificationCenter;->storiesUpdated:I

    if-ne p1, p2, :cond_1

    .line 211
    iget-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->storyItem:Lorg/telegram/ui/Stories/SelfStoryViewsView$StoryItemInternal;

    iget-object p1, p1, Lorg/telegram/ui/Stories/SelfStoryViewsView$StoryItemInternal;->uploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    if-eqz p1, :cond_1

    .line 212
    iget p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object p1

    iget p2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p2

    iget-wide p2, p2, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Stories/StoriesController;->getStories(J)Lorg/telegram/tgnet/TLRPC$TL_userStories;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    .line 214
    :goto_0
    iget-object p3, p1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge p2, p3, :cond_1

    .line 215
    iget-object p3, p1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/telegram/tgnet/TLRPC$StoryItem;

    .line 216
    iget-object v0, p3, Lorg/telegram/tgnet/TLRPC$StoryItem;->attachPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->storyItem:Lorg/telegram/ui/Stories/SelfStoryViewsView$StoryItemInternal;

    iget-object v1, v1, Lorg/telegram/ui/Stories/SelfStoryViewsView$StoryItemInternal;->uploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    iget-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->storyItem:Lorg/telegram/ui/Stories/SelfStoryViewsView$StoryItemInternal;

    const/4 p2, 0x0

    iput-object p2, p1, Lorg/telegram/ui/Stories/SelfStoryViewsView$StoryItemInternal;->uploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    .line 218
    iput-object p3, p1, Lorg/telegram/ui/Stories/SelfStoryViewsView$StoryItemInternal;->storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    .line 219
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->setStoryItem(Lorg/telegram/ui/Stories/SelfStoryViewsView$StoryItemInternal;)V

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 4

    .line 118
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    if-ne p2, v0, :cond_0

    const/4 v0, 0x0

    const/16 v1, 0x2e

    .line 119
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 120
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    const/4 p1, 0x1

    return p1

    .line 123
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 174
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 175
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->model:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;

    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {v0, p0}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->addListener(Lorg/telegram/ui/Stories/SelfStoryViewsPage;)V

    .line 177
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->model:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;

    iget-object v0, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->animateDateForUsers:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 179
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->listAdapter:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->updateRows()V

    .line 180
    iget v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->storiesUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public onDataRecieved()V
    .locals 2

    .line 193
    iget v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Stories/SelfStoryViewsPage$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/SelfStoryViewsPage;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/NotificationCenter;->doOnIdle(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 185
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 186
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->model:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;

    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {v0, p0}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->removeListener(Lorg/telegram/ui/Stories/SelfStoryViewsPage;)V

    .line 189
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->storiesUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public setListBottomPadding(F)V
    .locals 2

    .line 202
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    float-to-int p1, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, p1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 204
    iget-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setStoryItem(Lorg/telegram/ui/Stories/SelfStoryViewsView$StoryItemInternal;)V
    .locals 3

    .line 133
    iput-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->storyItem:Lorg/telegram/ui/Stories/SelfStoryViewsView$StoryItemInternal;

    .line 134
    iget-object p1, p1, Lorg/telegram/ui/Stories/SelfStoryViewsView$StoryItemInternal;->storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    if-eqz p1, :cond_6

    .line 136
    iget v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoriesController;->selfViewsModel:Landroid/util/SparseArray;

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;

    iput-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->model:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;

    .line 137
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$StoryItem;->views:Lorg/telegram/tgnet/TLRPC$TL_storyViews;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget v1, v1, Lorg/telegram/tgnet/TLRPC$TL_storyViews;->views_count:I

    :goto_0
    if-eqz v0, :cond_1

    .line 138
    iget v2, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->totalCount:I

    if-eq v2, v1, :cond_3

    :cond_1
    if-eqz v0, :cond_2

    .line 140
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->release()V

    .line 142
    :cond_2
    new-instance v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;

    iget v1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->currentAccount:I

    invoke-direct {v0, v1, p1}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;-><init>(ILorg/telegram/tgnet/TLRPC$StoryItem;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->model:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;

    .line 143
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->loadNext()V

    .line 144
    iget v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoriesController;->selfViewsModel:Landroid/util/SparseArray;

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    iget-object v2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->model:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 146
    :cond_3
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$StoryItem;->views:Lorg/telegram/tgnet/TLRPC$TL_storyViews;

    if-eqz p1, :cond_5

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$TL_storyViews;->views_count:I

    if-nez p1, :cond_4

    goto :goto_1

    .line 149
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->titleView:Landroid/widget/TextView;

    const-string v1, "Views"

    invoke-static {v1, p1}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 147
    :cond_5
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->titleView:Landroid/widget/TextView;

    sget v0, Lorg/telegram/messenger/R$string;->NobodyViewsTitle:I

    const-string v1, "NobodyViewsTitle"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 152
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->titleView:Landroid/widget/TextView;

    sget v0, Lorg/telegram/messenger/R$string;->UploadingStory:I

    const-string v1, "UploadingStory"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    return-void
.end method
