.class public final Lcom/iMe/fork/ui/view/DialogTypeTopicsBar;
.super Landroid/widget/FrameLayout;
.source "DialogTypeTopicsBar.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/fork/ui/view/DialogTypeTopicsBar$ListAdapter;
    }
.end annotation


# instance fields
.field private currentDialogType:Lcom/iMe/fork/enums/DialogType;

.field private final data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iMe/fork/enums/DialogType;",
            ">;"
        }
    .end annotation
.end field

.field private final delegate:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/iMe/fork/enums/DialogType;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final listAdapter$delegate:Lkotlin/Lazy;

.field private final listView$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$HfXCAZjhtVIzX6gr_I1WURdKnFA(Lcom/iMe/fork/ui/view/DialogTypeTopicsBar;Landroid/view/View;IFF)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/iMe/fork/ui/view/DialogTypeTopicsBar;->setupListeners$lambda$1(Lcom/iMe/fork/ui/view/DialogTypeTopicsBar;Landroid/view/View;IFF)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/iMe/fork/enums/DialogType;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "+",
            "Lcom/iMe/fork/enums/DialogType;",
            ">;",
            "Lcom/iMe/fork/enums/DialogType;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/iMe/fork/enums/DialogType;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currentDialogType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delegate"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 19
    iput-object p2, p0, Lcom/iMe/fork/ui/view/DialogTypeTopicsBar;->data:Ljava/util/List;

    .line 20
    iput-object p3, p0, Lcom/iMe/fork/ui/view/DialogTypeTopicsBar;->currentDialogType:Lcom/iMe/fork/enums/DialogType;

    .line 21
    iput-object p4, p0, Lcom/iMe/fork/ui/view/DialogTypeTopicsBar;->delegate:Lkotlin/jvm/functions/Function1;

    .line 25
    new-instance p1, Lcom/iMe/fork/ui/view/DialogTypeTopicsBar$listView$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/view/DialogTypeTopicsBar$listView$2;-><init>(Lcom/iMe/fork/ui/view/DialogTypeTopicsBar;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/view/DialogTypeTopicsBar;->listView$delegate:Lkotlin/Lazy;

    .line 26
    new-instance p1, Lcom/iMe/fork/ui/view/DialogTypeTopicsBar$listAdapter$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/view/DialogTypeTopicsBar$listAdapter$2;-><init>(Lcom/iMe/fork/ui/view/DialogTypeTopicsBar;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/view/DialogTypeTopicsBar;->listAdapter$delegate:Lkotlin/Lazy;

    .line 29
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/DialogTypeTopicsBar;->setupListeners()V

    .line 31
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/DialogTypeTopicsBar;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    const/4 p3, -0x1

    .line 32
    invoke-static {p3, p3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p3

    .line 30
    invoke-virtual {p0, p1, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 34
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/DialogTypeTopicsBar;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    iget-object p3, p0, Lcom/iMe/fork/ui/view/DialogTypeTopicsBar;->currentDialogType:Lcom/iMe/fork/enums/DialogType;

    invoke-interface {p2, p3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method

.method public static final synthetic access$initListView(Lcom/iMe/fork/ui/view/DialogTypeTopicsBar;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/DialogTypeTopicsBar;->initListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p0

    return-object p0
.end method

.method private final getListAdapter()Lcom/iMe/fork/ui/view/DialogTypeTopicsBar$ListAdapter;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/iMe/fork/ui/view/DialogTypeTopicsBar;->listAdapter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/fork/ui/view/DialogTypeTopicsBar$ListAdapter;

    return-object v0
.end method

.method private final getListView()Lorg/telegram/ui/Components/RecyclerListView;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/iMe/fork/ui/view/DialogTypeTopicsBar;->listView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method private final initListView()Lorg/telegram/ui/Components/RecyclerListView;
    .locals 4

    .line 56
    new-instance v0, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 57
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 58
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 59
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 60
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/DialogTypeTopicsBar;->getListAdapter()Lcom/iMe/fork/ui/view/DialogTypeTopicsBar$ListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const/4 v1, 0x7

    .line 61
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setHorizontalPadding(Landroid/view/View;Ljava/lang/Number;)V

    return-object v0
.end method

.method private final setupListeners()V
    .locals 2

    .line 65
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/DialogTypeTopicsBar;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    new-instance v1, Lcom/iMe/fork/ui/view/DialogTypeTopicsBar$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/iMe/fork/ui/view/DialogTypeTopicsBar$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/fork/ui/view/DialogTypeTopicsBar;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;)V

    return-void
.end method

.method private static final setupListeners$lambda$1(Lcom/iMe/fork/ui/view/DialogTypeTopicsBar;Landroid/view/View;IFF)V
    .locals 0

    const-string p3, "this$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "<anonymous parameter 0>"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    iget-object p1, p0, Lcom/iMe/fork/ui/view/DialogTypeTopicsBar;->currentDialogType:Lcom/iMe/fork/enums/DialogType;

    iget-object p3, p0, Lcom/iMe/fork/ui/view/DialogTypeTopicsBar;->data:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    if-eq p1, p3, :cond_0

    .line 67
    iget-object p1, p0, Lcom/iMe/fork/ui/view/DialogTypeTopicsBar;->data:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/fork/enums/DialogType;

    iput-object p1, p0, Lcom/iMe/fork/ui/view/DialogTypeTopicsBar;->currentDialogType:Lcom/iMe/fork/enums/DialogType;

    .line 68
    iget-object p2, p0, Lcom/iMe/fork/ui/view/DialogTypeTopicsBar;->delegate:Lkotlin/jvm/functions/Function1;

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/DialogTypeTopicsBar;->getListAdapter()Lcom/iMe/fork/ui/view/DialogTypeTopicsBar$ListAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final getCurrentDialogType()Lcom/iMe/fork/enums/DialogType;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/iMe/fork/ui/view/DialogTypeTopicsBar;->currentDialogType:Lcom/iMe/fork/enums/DialogType;

    return-object v0
.end method

.method public final getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/fork/enums/DialogType;",
            ">;"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/iMe/fork/ui/view/DialogTypeTopicsBar;->data:Ljava/util/List;

    return-object v0
.end method

.method public final getDelegate()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/iMe/fork/enums/DialogType;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/iMe/fork/ui/view/DialogTypeTopicsBar;->delegate:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final notifyDataSetChanged()V
    .locals 1

    .line 40
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/DialogTypeTopicsBar;->getListAdapter()Lcom/iMe/fork/ui/view/DialogTypeTopicsBar$ListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 48
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/iMe/fork/ui/view/DialogTypeTopicsBar;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->canScrollHorizontally(I)Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 49
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final setCurrentDialogType(Lcom/iMe/fork/enums/DialogType;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iput-object p1, p0, Lcom/iMe/fork/ui/view/DialogTypeTopicsBar;->currentDialogType:Lcom/iMe/fork/enums/DialogType;

    return-void
.end method
