.class public final Lcom/iMe/ui/topics/TopicsBar;
.super Landroid/widget/FrameLayout;
.source "TopicsBar.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/topics/TopicsBar$Delegate;,
        Lcom/iMe/ui/topics/TopicsBar$ListAdapter;,
        Lcom/iMe/ui/topics/TopicsBar$TouchHelperCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTopicsBar.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TopicsBar.kt\ncom/iMe/ui/topics/TopicsBar\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,303:1\n1726#2,3:304\n1#3:307\n*S KotlinDebug\n*F\n+ 1 TopicsBar.kt\ncom/iMe/ui/topics/TopicsBar\n*L\n66#1:304,3\n*E\n"
.end annotation


# instance fields
.field private final controller$delegate:Lkotlin/Lazy;

.field private final currentAccount:I

.field private final data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/topics/TopicModel;",
            ">;"
        }
    .end annotation
.end field

.field private final delegate:Lcom/iMe/ui/topics/TopicsBar$Delegate;

.field private editingAnimationProgress:F

.field private editingForwardAnimation:Z

.field private isEditing:Z

.field private lastEditingAnimationTime:J

.field private final listAdapter$delegate:Lkotlin/Lazy;

.field private final listView$delegate:Lkotlin/Lazy;

.field private selectedTopicId:J


# direct methods
.method public static synthetic $r8$lambda$-xhfOBohX-ougLUQlU433J8hwoQ(Lcom/iMe/ui/topics/TopicsBar;Landroid/view/View;I)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/ui/topics/TopicsBar;->setupListeners$lambda$4(Lcom/iMe/ui/topics/TopicsBar;Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$aMIxnhuCBO5X-5WaNeYyTMu7NSs(Lcom/iMe/ui/topics/TopicsBar;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/ui/topics/TopicsBar;->setupListeners$lambda$3(Lcom/iMe/ui/topics/TopicsBar;Landroid/view/View;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/iMe/ui/topics/TopicsBar$Delegate;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 31
    iput-object p2, p0, Lcom/iMe/ui/topics/TopicsBar;->delegate:Lcom/iMe/ui/topics/TopicsBar$Delegate;

    .line 35
    new-instance p1, Lcom/iMe/ui/topics/TopicsBar$listView$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/topics/TopicsBar$listView$2;-><init>(Lcom/iMe/ui/topics/TopicsBar;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/topics/TopicsBar;->listView$delegate:Lkotlin/Lazy;

    .line 38
    new-instance p1, Lcom/iMe/ui/topics/TopicsBar$listAdapter$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/topics/TopicsBar$listAdapter$2;-><init>(Lcom/iMe/ui/topics/TopicsBar;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/topics/TopicsBar;->listAdapter$delegate:Lkotlin/Lazy;

    .line 39
    new-instance p1, Lcom/iMe/ui/topics/TopicsBar$controller$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/topics/TopicsBar$controller$2;-><init>(Lcom/iMe/ui/topics/TopicsBar;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/topics/TopicsBar;->controller$delegate:Lkotlin/Lazy;

    .line 40
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/iMe/ui/topics/TopicsBar;->data:Ljava/util/List;

    const-wide/16 p1, -0x1

    .line 41
    iput-wide p1, p0, Lcom/iMe/ui/topics/TopicsBar;->selectedTopicId:J

    .line 46
    sget p1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput p1, p0, Lcom/iMe/ui/topics/TopicsBar;->currentAccount:I

    .line 49
    invoke-virtual {p0}, Lcom/iMe/ui/topics/TopicsBar;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    const/4 p2, -0x1

    invoke-static {p2, p2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    invoke-direct {p0}, Lcom/iMe/ui/topics/TopicsBar;->setupListeners()V

    return-void
.end method

.method public static final synthetic access$getCurrentAccount$p(Lcom/iMe/ui/topics/TopicsBar;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/iMe/ui/topics/TopicsBar;->currentAccount:I

    return p0
.end method

.method public static final synthetic access$getData$p(Lcom/iMe/ui/topics/TopicsBar;)Ljava/util/List;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/iMe/ui/topics/TopicsBar;->data:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getEditingAnimationProgress$p(Lcom/iMe/ui/topics/TopicsBar;)F
    .locals 0

    .line 29
    iget p0, p0, Lcom/iMe/ui/topics/TopicsBar;->editingAnimationProgress:F

    return p0
.end method

.method public static final synthetic access$getListAdapter(Lcom/iMe/ui/topics/TopicsBar;)Lcom/iMe/ui/topics/TopicsBar$ListAdapter;
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/iMe/ui/topics/TopicsBar;->getListAdapter()Lcom/iMe/ui/topics/TopicsBar$ListAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getSelectedTopicId$p(Lcom/iMe/ui/topics/TopicsBar;)J
    .locals 2

    .line 29
    iget-wide v0, p0, Lcom/iMe/ui/topics/TopicsBar;->selectedTopicId:J

    return-wide v0
.end method

.method public static final synthetic access$initListView(Lcom/iMe/ui/topics/TopicsBar;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/iMe/ui/topics/TopicsBar;->initListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$isEditing$p(Lcom/iMe/ui/topics/TopicsBar;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lcom/iMe/ui/topics/TopicsBar;->isEditing:Z

    return p0
.end method

.method private final getController()Lcom/iMe/fork/controller/ForkTopicsController;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/iMe/ui/topics/TopicsBar;->controller$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/fork/controller/ForkTopicsController;

    return-object v0
.end method

.method private final getListAdapter()Lcom/iMe/ui/topics/TopicsBar$ListAdapter;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/iMe/ui/topics/TopicsBar;->listAdapter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/topics/TopicsBar$ListAdapter;

    return-object v0
.end method

.method private final initListView()Lorg/telegram/ui/Components/RecyclerListView;
    .locals 3

    .line 150
    new-instance v0, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 151
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 152
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 153
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/iMe/ui/topics/TopicsBar$initListView$1$1;

    invoke-direct {v2, v0, p0, v1}, Lcom/iMe/ui/topics/TopicsBar$initListView$1$1;-><init>(Lorg/telegram/ui/Components/RecyclerListView;Lcom/iMe/ui/topics/TopicsBar;Landroid/content/Context;)V

    .line 186
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 153
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 187
    invoke-direct {p0}, Lcom/iMe/ui/topics/TopicsBar;->getListAdapter()Lcom/iMe/ui/topics/TopicsBar$ListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const/4 v1, 0x7

    .line 188
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setHorizontalPadding(Landroid/view/View;Ljava/lang/Number;)V

    .line 189
    new-instance v1, Landroidx/recyclerview/widget/ItemTouchHelper;

    new-instance v2, Lcom/iMe/ui/topics/TopicsBar$TouchHelperCallback;

    invoke-direct {v2, p0}, Lcom/iMe/ui/topics/TopicsBar$TouchHelperCallback;-><init>(Lcom/iMe/ui/topics/TopicsBar;)V

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 190
    new-instance v1, Lcom/iMe/ui/topics/TopicsBar$initListView$1$3;

    invoke-direct {v1, v0}, Lcom/iMe/ui/topics/TopicsBar$initListView$1$3;-><init>(Lorg/telegram/ui/Components/RecyclerListView;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-object v0
.end method

.method private final setupListeners()V
    .locals 2

    .line 198
    invoke-virtual {p0}, Lcom/iMe/ui/topics/TopicsBar;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    new-instance v1, Lcom/iMe/ui/topics/TopicsBar$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/iMe/ui/topics/TopicsBar$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/ui/topics/TopicsBar;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 208
    invoke-virtual {p0}, Lcom/iMe/ui/topics/TopicsBar;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    new-instance v1, Lcom/iMe/ui/topics/TopicsBar$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/topics/TopicsBar$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/ui/topics/TopicsBar;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    return-void
.end method

.method private static final setupListeners$lambda$3(Lcom/iMe/ui/topics/TopicsBar;Landroid/view/View;I)V
    .locals 4

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    iget-object p1, p0, Lcom/iMe/ui/topics/TopicsBar;->delegate:Lcom/iMe/ui/topics/TopicsBar$Delegate;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/iMe/ui/topics/TopicsBar$Delegate;->canPerformActions()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/iMe/ui/topics/TopicsBar;->isEditing:Z

    if-eqz p1, :cond_0

    goto :goto_1

    .line 202
    :cond_0
    iget-object p1, p0, Lcom/iMe/ui/topics/TopicsBar;->data:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/storage/domain/model/topics/TopicModel;

    .line 203
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getTopicId()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/iMe/ui/topics/TopicsBar;->selectedTopicId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const-wide/16 v0, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getTopicId()J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lcom/iMe/ui/topics/TopicsBar;->selectedTopicId:J

    .line 204
    iget-object p1, p0, Lcom/iMe/ui/topics/TopicsBar;->delegate:Lcom/iMe/ui/topics/TopicsBar$Delegate;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-wide v0, p0, Lcom/iMe/ui/topics/TopicsBar;->selectedTopicId:J

    invoke-interface {p1, v0, v1}, Lcom/iMe/ui/topics/TopicsBar$Delegate;->onTopicClick(J)V

    .line 205
    invoke-virtual {p0}, Lcom/iMe/ui/topics/TopicsBar;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 206
    invoke-virtual {p0}, Lcom/iMe/ui/topics/TopicsBar;->notifyDataSetChanged()V

    :cond_2
    :goto_1
    return-void
.end method

.method private static final setupListeners$lambda$4(Lcom/iMe/ui/topics/TopicsBar;Landroid/view/View;I)Z
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    iget-object p2, p0, Lcom/iMe/ui/topics/TopicsBar;->delegate:Lcom/iMe/ui/topics/TopicsBar$Delegate;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p2}, Lcom/iMe/ui/topics/TopicsBar$Delegate;->canPerformActions()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-boolean p2, p0, Lcom/iMe/ui/topics/TopicsBar;->isEditing:Z

    if-nez p2, :cond_0

    iget-object p0, p0, Lcom/iMe/ui/topics/TopicsBar;->delegate:Lcom/iMe/ui/topics/TopicsBar$Delegate;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Lcom/iMe/ui/topics/TopicView;

    invoke-interface {p0, p1}, Lcom/iMe/ui/topics/TopicsBar$Delegate;->onTopicLongClick(Lcom/iMe/ui/topics/TopicView;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final allowReorder()Z
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/iMe/ui/topics/TopicsBar;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 6

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "child"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    .line 111
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p2

    .line 112
    iget-wide v0, p0, Lcom/iMe/ui/topics/TopicsBar;->lastEditingAnimationTime:J

    sub-long v0, p2, v0

    const-wide/16 v2, 0x11

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 113
    iput-wide p2, p0, Lcom/iMe/ui/topics/TopicsBar;->lastEditingAnimationTime:J

    .line 115
    iget-boolean p2, p0, Lcom/iMe/ui/topics/TopicsBar;->isEditing:Z

    const/4 p3, 0x1

    const/4 p4, 0x0

    const/4 v2, 0x0

    if-nez p2, :cond_2

    iget v3, p0, Lcom/iMe/ui/topics/TopicsBar;->editingAnimationProgress:F

    cmpg-float v3, v3, v2

    if-nez v3, :cond_0

    move v3, p3

    goto :goto_0

    :cond_0
    move v3, p4

    :goto_0
    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    move p3, p4

    goto :goto_3

    .line 116
    :cond_2
    :goto_1
    iget-boolean v3, p0, Lcom/iMe/ui/topics/TopicsBar;->editingForwardAnimation:Z

    const/high16 v4, 0x42f00000    # 120.0f

    if-eqz v3, :cond_5

    .line 117
    iget v3, p0, Lcom/iMe/ui/topics/TopicsBar;->editingAnimationProgress:F

    cmpg-float v5, v3, v2

    if-gtz v5, :cond_3

    move v5, p3

    goto :goto_2

    :cond_3
    move v5, p4

    :goto_2
    long-to-float v0, v0

    div-float/2addr v0, v4

    add-float/2addr v3, v0

    .line 118
    iput v3, p0, Lcom/iMe/ui/topics/TopicsBar;->editingAnimationProgress:F

    if-nez p2, :cond_4

    if-eqz v5, :cond_4

    cmpl-float p2, v3, v2

    if-ltz p2, :cond_4

    .line 120
    iput v2, p0, Lcom/iMe/ui/topics/TopicsBar;->editingAnimationProgress:F

    .line 122
    :cond_4
    iget p2, p0, Lcom/iMe/ui/topics/TopicsBar;->editingAnimationProgress:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p2, p2, v0

    if-ltz p2, :cond_8

    .line 123
    iput v0, p0, Lcom/iMe/ui/topics/TopicsBar;->editingAnimationProgress:F

    .line 124
    iput-boolean p4, p0, Lcom/iMe/ui/topics/TopicsBar;->editingForwardAnimation:Z

    goto :goto_3

    .line 127
    :cond_5
    iget v3, p0, Lcom/iMe/ui/topics/TopicsBar;->editingAnimationProgress:F

    cmpl-float v5, v3, v2

    if-ltz v5, :cond_6

    move p4, p3

    :cond_6
    long-to-float v0, v0

    div-float/2addr v0, v4

    sub-float/2addr v3, v0

    .line 128
    iput v3, p0, Lcom/iMe/ui/topics/TopicsBar;->editingAnimationProgress:F

    if-nez p2, :cond_7

    if-eqz p4, :cond_7

    cmpg-float p2, v3, v2

    if-gtz p2, :cond_7

    .line 130
    iput v2, p0, Lcom/iMe/ui/topics/TopicsBar;->editingAnimationProgress:F

    .line 132
    :cond_7
    iget p2, p0, Lcom/iMe/ui/topics/TopicsBar;->editingAnimationProgress:F

    const/high16 p4, -0x40800000    # -1.0f

    cmpg-float p2, p2, p4

    if-gtz p2, :cond_8

    .line 133
    iput p4, p0, Lcom/iMe/ui/topics/TopicsBar;->editingAnimationProgress:F

    .line 134
    iput-boolean p3, p0, Lcom/iMe/ui/topics/TopicsBar;->editingForwardAnimation:Z

    :cond_8
    :goto_3
    if-eqz p3, :cond_9

    .line 140
    invoke-virtual {p0}, Lcom/iMe/ui/topics/TopicsBar;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/RecyclerListView;->invalidateViews()V

    .line 141
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_9
    return p1
.end method

.method public final getDelegate()Lcom/iMe/ui/topics/TopicsBar$Delegate;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/iMe/ui/topics/TopicsBar;->delegate:Lcom/iMe/ui/topics/TopicsBar$Delegate;

    return-object v0
.end method

.method public final getListView()Lorg/telegram/ui/Components/RecyclerListView;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/iMe/ui/topics/TopicsBar;->listView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method public final isEditing()Z
    .locals 1

    .line 87
    iget-boolean v0, p0, Lcom/iMe/ui/topics/TopicsBar;->isEditing:Z

    return v0
.end method

.method public final notifyDataSetChanged()V
    .locals 1

    .line 90
    invoke-direct {p0}, Lcom/iMe/ui/topics/TopicsBar;->getListAdapter()Lcom/iMe/ui/topics/TopicsBar$ListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 105
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 106
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final resetSelectedTopic()V
    .locals 4

    .line 78
    iget-wide v0, p0, Lcom/iMe/ui/topics/TopicsBar;->selectedTopicId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    .line 81
    :cond_0
    iput-wide v2, p0, Lcom/iMe/ui/topics/TopicsBar;->selectedTopicId:J

    .line 82
    iget-object v0, p0, Lcom/iMe/ui/topics/TopicsBar;->delegate:Lcom/iMe/ui/topics/TopicsBar$Delegate;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-wide v1, p0, Lcom/iMe/ui/topics/TopicsBar;->selectedTopicId:J

    invoke-interface {v0, v1, v2}, Lcom/iMe/ui/topics/TopicsBar$Delegate;->onTopicClick(J)V

    return-void
.end method

.method public final setData(Ljava/util/List;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/topics/TopicModel;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "newData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Lcom/iMe/ui/topics/TopicsBar;->data:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v3

    .line 57
    :goto_0
    iget-object v2, p0, Lcom/iMe/ui/topics/TopicsBar;->data:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 58
    iget-object v2, p0, Lcom/iMe/ui/topics/TopicsBar;->data:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 60
    invoke-direct {p0}, Lcom/iMe/ui/topics/TopicsBar;->getController()Lcom/iMe/fork/controller/ForkTopicsController;

    move-result-object p1

    const/4 v2, 0x0

    const-wide/16 v4, -0x2

    invoke-virtual {p1, v2, v4, v5, v3}, Lcom/iMe/fork/controller/ForkTopicsController;->createNewTopic(Lcom/iMe/storage/data/repository/topics/Topic;JI)Lcom/iMe/storage/domain/model/topics/TopicModel;

    move-result-object p1

    .line 61
    invoke-direct {p0}, Lcom/iMe/ui/topics/TopicsBar;->getController()Lcom/iMe/fork/controller/ForkTopicsController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/fork/controller/ForkTopicsController;->isNoTopicFirstEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 62
    iget-object v2, p0, Lcom/iMe/ui/topics/TopicsBar;->data:Ljava/util/List;

    invoke-interface {v2, v3, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 64
    :cond_1
    iget-object v2, p0, Lcom/iMe/ui/topics/TopicsBar;->data:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    :goto_1
    iget-object p1, p0, Lcom/iMe/ui/topics/TopicsBar;->data:Ljava/util/List;

    .line 1726
    instance-of v2, p1, Ljava/util/Collection;

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_3

    .line 1727
    :cond_2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iMe/storage/domain/model/topics/TopicModel;

    .line 66
    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getTopicId()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/iMe/ui/topics/TopicsBar;->selectedTopicId:J

    cmp-long v2, v4, v6

    if-eqz v2, :cond_4

    move v2, v1

    goto :goto_2

    :cond_4
    move v2, v3

    :goto_2
    if-nez v2, :cond_3

    move v1, v3

    :cond_5
    :goto_3
    if-eqz v1, :cond_6

    .line 67
    invoke-virtual {p0}, Lcom/iMe/ui/topics/TopicsBar;->resetSelectedTopic()V

    .line 69
    :cond_6
    invoke-virtual {p0}, Lcom/iMe/ui/topics/TopicsBar;->notifyDataSetChanged()V

    return v0
.end method

.method public final setEditing(Z)V
    .locals 0

    .line 94
    iput-boolean p1, p0, Lcom/iMe/ui/topics/TopicsBar;->isEditing:Z

    const/4 p1, 0x1

    .line 95
    iput-boolean p1, p0, Lcom/iMe/ui/topics/TopicsBar;->editingForwardAnimation:Z

    .line 96
    invoke-virtual {p0}, Lcom/iMe/ui/topics/TopicsBar;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->invalidateViews()V

    .line 97
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public final setSelectedTopicId(J)V
    .locals 0

    .line 74
    iput-wide p1, p0, Lcom/iMe/ui/topics/TopicsBar;->selectedTopicId:J

    return-void
.end method
