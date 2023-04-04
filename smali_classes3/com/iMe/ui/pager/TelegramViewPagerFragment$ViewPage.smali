.class public final Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;
.super Landroid/widget/FrameLayout;
.source "TelegramViewPagerFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/pager/TelegramViewPagerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ViewPage"
.end annotation


# instance fields
.field private final listView$delegate:Lkotlin/Lazy;

.field private final listViewLayoutManager$delegate:Lkotlin/Lazy;

.field private selectedType:I

.field final synthetic this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;


# direct methods
.method public static synthetic $r8$lambda$78AhrT1LP8lWzUeGBPLRGiPNLN8(Lcom/iMe/ui/pager/TelegramViewPagerFragment;Landroid/view/View;IFF)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;->initListView$lambda$2$lambda$0(Lcom/iMe/ui/pager/TelegramViewPagerFragment;Landroid/view/View;IFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$CFZbVyBzVbcnH3O3yfXqHjjqAjs(Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage$initListView$1;Lcom/iMe/ui/pager/TelegramViewPagerFragment;Landroid/view/View;IFF)Z
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;->initListView$lambda$2$lambda$1(Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage$initListView$1;Lcom/iMe/ui/pager/TelegramViewPagerFragment;Landroid/view/View;IFF)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/iMe/ui/pager/TelegramViewPagerFragment;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 278
    iput-object p1, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 279
    new-instance p1, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage$listView$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage$listView$2;-><init>(Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;->listView$delegate:Lkotlin/Lazy;

    .line 280
    new-instance p1, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage$listViewLayoutManager$2;

    invoke-direct {p1, p2}, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage$listViewLayoutManager$2;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;->listViewLayoutManager$delegate:Lkotlin/Lazy;

    .line 284
    invoke-virtual {p0}, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    const/4 p2, -0x1

    const/high16 v0, -0x40800000    # -1.0f

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static final synthetic access$initListView(Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 278
    invoke-direct {p0}, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;->initListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p0

    return-object p0
.end method

.method private final initListView()Lorg/telegram/ui/Components/RecyclerListView;
    .locals 3

    .line 297
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage$initListView$1;

    iget-object v2, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-direct {v1, v2, v0}, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage$initListView$1;-><init>(Lcom/iMe/ui/pager/TelegramViewPagerFragment;Landroid/content/Context;)V

    .line 302
    iget-object v0, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    const/4 v2, 0x1

    .line 303
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setScrollingTouchSlop(I)V

    const/4 v2, 0x0

    .line 304
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    const/4 v2, 0x0

    .line 305
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 306
    invoke-virtual {p0}, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;->getListViewLayoutManager()Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 307
    new-instance v2, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage$initListView$2$1;

    invoke-direct {v2, v0}, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage$initListView$2$1;-><init>(Lcom/iMe/ui/pager/TelegramViewPagerFragment;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 337
    new-instance v2, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/ui/pager/TelegramViewPagerFragment;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;)V

    .line 340
    new-instance v2, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1, v0}, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage$initListView$1;Lcom/iMe/ui/pager/TelegramViewPagerFragment;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListenerExtended;)V

    return-object v1
.end method

.method private static final initListView$lambda$2$lambda$0(Lcom/iMe/ui/pager/TelegramViewPagerFragment;Landroid/view/View;IFF)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 338
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->onListItemClick(Landroid/view/View;IFF)V

    return-void
.end method

.method private static final initListView$lambda$2$lambda$1(Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage$initListView$1;Lcom/iMe/ui/pager/TelegramViewPagerFragment;Landroid/view/View;IFF)Z
    .locals 1

    const-string v0, "$this_apply"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 341
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/RecyclerListView;->hideSelector(Z)V

    const-string p0, "view"

    .line 342
    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->onListItemLongClick(Landroid/view/View;IFF)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final getListView()Lorg/telegram/ui/Components/RecyclerListView;
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;->listView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method public final getListViewLayoutManager()Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;->listViewLayoutManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object v0
.end method

.method public final getSelectedType()I
    .locals 1

    .line 281
    iget v0, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;->selectedType:I

    return v0
.end method

.method public final setSelectedType(I)V
    .locals 0

    .line 281
    iput p1, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;->selectedType:I

    return-void
.end method

.method public setTranslationX(F)V
    .locals 3

    .line 288
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 289
    iget-object p1, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-static {p1}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->access$getTabsAnimationInProgress$p(Lcom/iMe/ui/pager/TelegramViewPagerFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 290
    iget-object p1, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {p1}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    if-ne p1, p0, :cond_0

    .line 291
    iget-object p1, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {p1}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object p1

    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object v1, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {v1}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object v1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 292
    iget-object v0, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-static {v0}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->access$getScrollSlidingTextTabStrip(Lcom/iMe/ui/pager/TelegramViewPagerFragment;)Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;

    move-result-object v0

    iget-object v1, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {v1}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget v1, v1, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;->selectedType:I

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->selectTabWithId(IF)V

    :cond_0
    return-void
.end method
