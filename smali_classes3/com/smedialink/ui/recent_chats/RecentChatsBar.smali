.class public final Lcom/smedialink/ui/recent_chats/RecentChatsBar;
.super Landroid/widget/FrameLayout;
.source "RecentChatsBar.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/ui/recent_chats/RecentChatsBar$ListAdapter;,
        Lcom/smedialink/ui/recent_chats/RecentChatsBar$HorizontalListViewDelegate;
    }
.end annotation


# instance fields
.field private final currentAccount:I

.field private final data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/HistoryDialogModel;",
            ">;"
        }
    .end annotation
.end field

.field private final delegate:Lcom/smedialink/ui/recent_chats/RecentChatsBar$HorizontalListViewDelegate;

.field private final listAdapter$delegate:Lkotlin/Lazy;

.field private final listView$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$2jOcLcwcA3n-xa5Atf695rFLNrA(Lcom/smedialink/ui/recent_chats/RecentChatsBar;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/smedialink/ui/recent_chats/RecentChatsBar;->setupListeners$lambda-2(Lcom/smedialink/ui/recent_chats/RecentChatsBar;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$BqnplMMfUad038d6EmBuP_KeEDI(Lcom/smedialink/storage/domain/model/HistoryDialogModel;)Z
    .locals 0

    invoke-static {p0}, Lcom/smedialink/ui/recent_chats/RecentChatsBar;->removeData$lambda-0(Lcom/smedialink/storage/domain/model/HistoryDialogModel;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/smedialink/ui/recent_chats/RecentChatsBar$HorizontalListViewDelegate;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delegate"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 20
    iput p2, p0, Lcom/smedialink/ui/recent_chats/RecentChatsBar;->currentAccount:I

    .line 21
    iput-object p3, p0, Lcom/smedialink/ui/recent_chats/RecentChatsBar;->delegate:Lcom/smedialink/ui/recent_chats/RecentChatsBar$HorizontalListViewDelegate;

    .line 25
    new-instance p1, Lcom/smedialink/ui/recent_chats/RecentChatsBar$listView$2;

    invoke-direct {p1, p0}, Lcom/smedialink/ui/recent_chats/RecentChatsBar$listView$2;-><init>(Lcom/smedialink/ui/recent_chats/RecentChatsBar;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/ui/recent_chats/RecentChatsBar;->listView$delegate:Lkotlin/Lazy;

    .line 28
    new-instance p1, Lcom/smedialink/ui/recent_chats/RecentChatsBar$listAdapter$2;

    invoke-direct {p1, p0}, Lcom/smedialink/ui/recent_chats/RecentChatsBar$listAdapter$2;-><init>(Lcom/smedialink/ui/recent_chats/RecentChatsBar;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/ui/recent_chats/RecentChatsBar;->listAdapter$delegate:Lkotlin/Lazy;

    .line 29
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/smedialink/ui/recent_chats/RecentChatsBar;->data:Ljava/util/List;

    .line 32
    invoke-virtual {p0}, Lcom/smedialink/ui/recent_chats/RecentChatsBar;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    const/4 p2, -0x1

    invoke-static {p2, p2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 33
    invoke-virtual {p0}, Lcom/smedialink/ui/recent_chats/RecentChatsBar;->updateColors()V

    .line 34
    invoke-direct {p0}, Lcom/smedialink/ui/recent_chats/RecentChatsBar;->setupListeners()V

    return-void
.end method

.method public static final synthetic access$getData$p(Lcom/smedialink/ui/recent_chats/RecentChatsBar;)Ljava/util/List;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/smedialink/ui/recent_chats/RecentChatsBar;->data:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$initHorizontalListView(Lcom/smedialink/ui/recent_chats/RecentChatsBar;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/smedialink/ui/recent_chats/RecentChatsBar;->initHorizontalListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p0

    return-object p0
.end method

.method private final getListAdapter()Lcom/smedialink/ui/recent_chats/RecentChatsBar$ListAdapter;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/smedialink/ui/recent_chats/RecentChatsBar;->listAdapter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/recent_chats/RecentChatsBar$ListAdapter;

    return-object v0
.end method

.method private final initHorizontalListView()Lorg/telegram/ui/Components/RecyclerListView;
    .locals 3

    .line 72
    new-instance v0, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    .line 73
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/smedialink/ui/recent_chats/RecentChatsBar$initHorizontalListView$1$1;

    invoke-direct {v2, v1}, Lcom/smedialink/ui/recent_chats/RecentChatsBar$initHorizontalListView$1$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    const/4 v1, 0x0

    .line 76
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 77
    new-instance v1, Lcom/smedialink/ui/recent_chats/RecentChatsBar$initHorizontalListView$1$2;

    invoke-direct {v1}, Lcom/smedialink/ui/recent_chats/RecentChatsBar$initHorizontalListView$1$2;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 83
    invoke-direct {p0}, Lcom/smedialink/ui/recent_chats/RecentChatsBar;->getListAdapter()Lcom/smedialink/ui/recent_chats/RecentChatsBar$ListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-object v0
.end method

.method private static final removeData$lambda-0(Lcom/smedialink/storage/domain/model/HistoryDialogModel;)Z
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/HistoryDialogModel;->isPinned()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private final setupListeners()V
    .locals 2

    .line 87
    invoke-virtual {p0}, Lcom/smedialink/ui/recent_chats/RecentChatsBar;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    new-instance v1, Lcom/smedialink/ui/recent_chats/RecentChatsBar$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/smedialink/ui/recent_chats/RecentChatsBar$$ExternalSyntheticLambda1;-><init>(Lcom/smedialink/ui/recent_chats/RecentChatsBar;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 91
    invoke-virtual {p0}, Lcom/smedialink/ui/recent_chats/RecentChatsBar;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    new-instance v1, Lcom/smedialink/ui/recent_chats/RecentChatsBar$setupListeners$2;

    invoke-direct {v1, p0}, Lcom/smedialink/ui/recent_chats/RecentChatsBar$setupListeners$2;-><init>(Lcom/smedialink/ui/recent_chats/RecentChatsBar;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListenerExtended;)V

    return-void
.end method

.method private static final setupListeners$lambda-2(Lcom/smedialink/ui/recent_chats/RecentChatsBar;Landroid/view/View;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lcom/smedialink/ui/recent_chats/RecentChatsBar;->getDelegate()Lcom/smedialink/ui/recent_chats/RecentChatsBar$HorizontalListViewDelegate;

    move-result-object v0

    iget-object p0, p0, Lcom/smedialink/ui/recent_chats/RecentChatsBar;->data:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/smedialink/storage/domain/model/HistoryDialogModel;

    invoke-interface {v0, p0, p1}, Lcom/smedialink/ui/recent_chats/RecentChatsBar$HorizontalListViewDelegate;->onItemListener(Lcom/smedialink/storage/domain/model/HistoryDialogModel;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final getCurrentAccount()I
    .locals 1

    .line 20
    iget v0, p0, Lcom/smedialink/ui/recent_chats/RecentChatsBar;->currentAccount:I

    return v0
.end method

.method public final getDelegate()Lcom/smedialink/ui/recent_chats/RecentChatsBar$HorizontalListViewDelegate;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/smedialink/ui/recent_chats/RecentChatsBar;->delegate:Lcom/smedialink/ui/recent_chats/RecentChatsBar$HorizontalListViewDelegate;

    return-object v0
.end method

.method public final getListView()Lorg/telegram/ui/Components/RecyclerListView;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/smedialink/ui/recent_chats/RecentChatsBar;->listView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 64
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 65
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final removeData()V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/smedialink/ui/recent_chats/RecentChatsBar;->data:Ljava/util/List;

    sget-object v1, Lcom/smedialink/ui/recent_chats/RecentChatsBar$$ExternalSyntheticLambda0;->INSTANCE:Lcom/smedialink/ui/recent_chats/RecentChatsBar$$ExternalSyntheticLambda0;

    invoke-static {v0, v1}, Lj$/util/Collection$-EL;->removeIf(Ljava/util/Collection;Lj$/util/function/Predicate;)Z

    .line 47
    invoke-direct {p0}, Lcom/smedialink/ui/recent_chats/RecentChatsBar;->getListAdapter()Lcom/smedialink/ui/recent_chats/RecentChatsBar$ListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final scrollToStart()V
    .locals 2

    .line 51
    invoke-virtual {p0}, Lcom/smedialink/ui/recent_chats/RecentChatsBar;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void
.end method

.method public final setData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/HistoryDialogModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "newData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/smedialink/ui/recent_chats/RecentChatsBar;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 41
    iget-object v0, p0, Lcom/smedialink/ui/recent_chats/RecentChatsBar;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 42
    invoke-direct {p0}, Lcom/smedialink/ui/recent_chats/RecentChatsBar;->getListAdapter()Lcom/smedialink/ui/recent_chats/RecentChatsBar$ListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final updateColors()V
    .locals 2

    .line 55
    invoke-direct {p0}, Lcom/smedialink/ui/recent_chats/RecentChatsBar;->getListAdapter()Lcom/smedialink/ui/recent_chats/RecentChatsBar$ListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 56
    invoke-virtual {p0}, Lcom/smedialink/ui/recent_chats/RecentChatsBar;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    const-string v1, "windowBackgroundGray"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    return-void
.end method
