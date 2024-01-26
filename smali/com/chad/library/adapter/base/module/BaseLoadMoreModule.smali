.class public Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;
.super Ljava/lang/Object;
.source "LoadMoreModule.kt"


# instance fields
.field private final baseQuickAdapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
            "**>;"
        }
    .end annotation
.end field

.field private enableLoadMoreEndClick:Z

.field private isAutoLoadMore:Z

.field private isEnableLoadMore:Z

.field private isEnableLoadMoreIfNotFullPage:Z

.field private isLoadEndMoreGone:Z

.field private loadMoreStatus:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

.field private loadMoreView:Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;

.field private mLoadMoreListener:Lcom/chad/library/adapter/base/listener/OnLoadMoreListener;

.field private mNextLoadEnable:Z

.field private preLoadNumber:I


# direct methods
.method public static synthetic $r8$lambda$8xzWXNWE4oEt1R8ItJDGNxYOKmQ(Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->checkDisableLoadMoreIfNotFullPage$lambda$4(Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method public static synthetic $r8$lambda$F9zt50EK7G9y4jOFxzcNoiGdpjg(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->checkDisableLoadMoreIfNotFullPage$lambda$5(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GSTiwjI05PJwY_rcdFCeh0tIjrs(Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->setupViewHolder$lambda$1(Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$I0NejYIIOOajvamrGUd9rVF1Nto(Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;)V
    .locals 0

    invoke-static {p0}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->invokeLoadMoreListener$lambda$3$lambda$2(Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;)V

    return-void
.end method

.method public constructor <init>(Lcom/chad/library/adapter/base/BaseQuickAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
            "**>;)V"
        }
    .end annotation

    const-string v0, "baseQuickAdapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->baseQuickAdapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    const/4 p1, 0x1

    .line 41
    iput-boolean p1, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->mNextLoadEnable:Z

    .line 43
    sget-object v0, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;->Complete:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    iput-object v0, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->loadMoreStatus:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    .line 50
    invoke-static {}, Lcom/chad/library/adapter/base/module/LoadMoreModuleConfig;->getDefLoadMoreView()Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;

    move-result-object v0

    iput-object v0, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->loadMoreView:Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;

    .line 54
    iput-boolean p1, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->isAutoLoadMore:Z

    .line 56
    iput-boolean p1, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->isEnableLoadMoreIfNotFullPage:Z

    .line 60
    iput p1, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->preLoadNumber:I

    return-void
.end method

.method private static final checkDisableLoadMoreIfNotFullPage$lambda$4(Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$manager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p0, p1}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->isFullScreen(Landroidx/recyclerview/widget/LinearLayoutManager;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 202
    iput-boolean p1, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->mNextLoadEnable:Z

    :cond_0
    return-void
.end method

.method private static final checkDisableLoadMoreIfNotFullPage$lambda$5(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;)V
    .locals 2

    const-string v0, "$manager"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    check-cast p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getSpanCount()I

    move-result v0

    new-array v0, v0, [I

    .line 208
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findLastCompletelyVisibleItemPositions([I)[I

    .line 209
    invoke-direct {p1, v0}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->getTheBiggestNumber([I)I

    move-result p0

    const/4 v0, 0x1

    add-int/2addr p0, v0

    .line 210
    iget-object v1, p1, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->baseQuickAdapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    move-result v1

    if-eq p0, v1, :cond_0

    .line 211
    iput-boolean v0, p1, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->mNextLoadEnable:Z

    :cond_0
    return-void
.end method

.method private final getTheBiggestNumber([I)I
    .locals 4

    const/4 v0, -0x1

    if-eqz p1, :cond_3

    .line 224
    array-length v1, p1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_2

    .line 227
    :cond_1
    array-length v1, p1

    :goto_1
    if-ge v2, v1, :cond_3

    aget v3, p1, v2

    if-le v3, v0, :cond_2

    move v0, v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return v0
.end method

.method private final invokeLoadMoreListener()V
    .locals 2

    .line 178
    sget-object v0, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;->Loading:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    iput-object v0, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->loadMoreStatus:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    .line 179
    iget-object v0, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->baseQuickAdapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getMRecyclerView$TMessagesProj_HA_public()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 180
    new-instance v1, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule$$ExternalSyntheticLambda2;-><init>(Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->mLoadMoreListener:Lcom/chad/library/adapter/base/listener/OnLoadMoreListener;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/chad/library/adapter/base/listener/OnLoadMoreListener;->onLoadMore()V

    :cond_1
    :goto_0
    return-void
.end method

.method private static final invokeLoadMoreListener$lambda$3$lambda$2(Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    iget-object p0, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->mLoadMoreListener:Lcom/chad/library/adapter/base/listener/OnLoadMoreListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/chad/library/adapter/base/listener/OnLoadMoreListener;->onLoadMore()V

    :cond_0
    return-void
.end method

.method private final isFullScreen(Landroidx/recyclerview/widget/LinearLayoutManager;)Z
    .locals 3

    .line 218
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->baseQuickAdapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 219
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public static synthetic loadMoreEnd$default(Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;ZILjava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 241
    :cond_0
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->loadMoreEnd(Z)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: loadMoreEnd"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final setupViewHolder$lambda$1(Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    iget-object p1, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->loadMoreStatus:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    sget-object v0, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;->Fail:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    if-ne p1, v0, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->loadMoreToLoading()V

    goto :goto_0

    .line 115
    :cond_0
    sget-object v0, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;->Complete:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    if-ne p1, v0, :cond_1

    .line 116
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->loadMoreToLoading()V

    goto :goto_0

    .line 117
    :cond_1
    iget-boolean v0, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->enableLoadMoreEndClick:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;->End:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    if-ne p1, v0, :cond_2

    .line 118
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->loadMoreToLoading()V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public final autoLoadMore$TMessagesProj_HA_public(I)V
    .locals 2

    .line 151
    iget-boolean v0, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->isAutoLoadMore:Z

    if-nez v0, :cond_0

    return-void

    .line 155
    :cond_0
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->hasLoadMoreView()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->baseQuickAdapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    move-result v0

    iget v1, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->preLoadNumber:I

    sub-int/2addr v0, v1

    if-ge p1, v0, :cond_2

    return-void

    .line 161
    :cond_2
    iget-object p1, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->loadMoreStatus:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    sget-object v0, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;->Complete:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    if-eq p1, v0, :cond_3

    return-void

    .line 164
    :cond_3
    sget-object v0, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;->Loading:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    if-ne p1, v0, :cond_4

    return-void

    .line 167
    :cond_4
    iget-boolean p1, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->mNextLoadEnable:Z

    if-nez p1, :cond_5

    return-void

    .line 171
    :cond_5
    invoke-direct {p0}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->invokeLoadMoreListener()V

    return-void
.end method

.method public final checkDisableLoadMoreIfNotFullPage()V
    .locals 5

    .line 192
    iget-boolean v0, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->isEnableLoadMoreIfNotFullPage:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 196
    iput-boolean v0, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->mNextLoadEnable:Z

    .line 197
    iget-object v0, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->baseQuickAdapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getMRecyclerView$TMessagesProj_HA_public()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 198
    :cond_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    .line 199
    :cond_2
    instance-of v2, v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    const-wide/16 v3, 0x32

    if-eqz v2, :cond_3

    .line 200
    new-instance v2, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v1}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule$$ExternalSyntheticLambda3;-><init>(Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 205
    :cond_3
    instance-of v2, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v2, :cond_4

    .line 206
    new-instance v2, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1, p0}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule$$ExternalSyntheticLambda1;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;)V

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    :goto_0
    return-void
.end method

.method public final getLoadMoreStatus()Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->loadMoreStatus:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    return-object v0
.end method

.method public final getLoadMoreView()Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->loadMoreView:Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;

    return-object v0
.end method

.method public final getLoadMoreViewPosition()I
    .locals 3

    .line 81
    iget-object v0, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->baseQuickAdapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->hasEmptyView()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->baseQuickAdapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 85
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result v1

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getFooterLayoutCount()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final hasLoadMoreView()Z
    .locals 3

    .line 137
    iget-object v0, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->mLoadMoreListener:Lcom/chad/library/adapter/base/listener/OnLoadMoreListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->isEnableLoadMore:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->loadMoreStatus:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    sget-object v2, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;->End:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->isLoadEndMoreGone:Z

    if-eqz v0, :cond_1

    return v1

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->baseQuickAdapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final loadMoreComplete()V
    .locals 2

    .line 261
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->hasLoadMoreView()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 265
    :cond_0
    sget-object v0, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;->Complete:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    iput-object v0, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->loadMoreStatus:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    .line 267
    iget-object v0, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->baseQuickAdapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->getLoadMoreViewPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 269
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->checkDisableLoadMoreIfNotFullPage()V

    return-void
.end method

.method public final loadMoreEnd(Z)V
    .locals 1

    .line 242
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->hasLoadMoreView()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 246
    :cond_0
    iput-boolean p1, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->isLoadEndMoreGone:Z

    .line 248
    sget-object v0, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;->End:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    iput-object v0, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->loadMoreStatus:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    if-eqz p1, :cond_1

    .line 251
    iget-object p1, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->baseQuickAdapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->getLoadMoreViewPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    goto :goto_0

    .line 253
    :cond_1
    iget-object p1, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->baseQuickAdapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->getLoadMoreViewPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :goto_0
    return-void
.end method

.method public final loadMoreFail()V
    .locals 2

    .line 276
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->hasLoadMoreView()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 279
    :cond_0
    sget-object v0, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;->Fail:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    iput-object v0, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->loadMoreStatus:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    .line 280
    iget-object v0, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->baseQuickAdapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->getLoadMoreViewPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method public final loadMoreToLoading()V
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->loadMoreStatus:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    sget-object v1, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;->Loading:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    if-ne v0, v1, :cond_0

    return-void

    .line 130
    :cond_0
    iput-object v1, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->loadMoreStatus:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    .line 131
    iget-object v0, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->baseQuickAdapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->getLoadMoreViewPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 132
    invoke-direct {p0}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->invokeLoadMoreListener()V

    return-void
.end method

.method public final reset$TMessagesProj_HA_public()V
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->mLoadMoreListener:Lcom/chad/library/adapter/base/listener/OnLoadMoreListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 297
    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->setEnableLoadMore(Z)V

    .line 298
    sget-object v0, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;->Complete:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    iput-object v0, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->loadMoreStatus:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    :cond_0
    return-void
.end method

.method public final setEnableLoadMore(Z)V
    .locals 1

    .line 94
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->hasLoadMoreView()Z

    move-result v0

    .line 95
    iput-boolean p1, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->isEnableLoadMore:Z

    .line 96
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->hasLoadMoreView()Z

    move-result p1

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 100
    iget-object p1, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->baseQuickAdapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->getLoadMoreViewPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 104
    sget-object p1, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;->Complete:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    iput-object p1, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->loadMoreStatus:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    .line 105
    iget-object p1, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->baseQuickAdapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->getLoadMoreViewPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final setLoadMoreView(Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iput-object p1, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->loadMoreView:Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;

    return-void
.end method

.method public setOnLoadMoreListener(Lcom/chad/library/adapter/base/listener/OnLoadMoreListener;)V
    .locals 0

    .line 288
    iput-object p1, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->mLoadMoreListener:Lcom/chad/library/adapter/base/listener/OnLoadMoreListener;

    const/4 p1, 0x1

    .line 289
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->setEnableLoadMore(Z)V

    return-void
.end method

.method public final setPreLoadNumber(I)V
    .locals 1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    .line 63
    iput p1, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->preLoadNumber:I

    :cond_0
    return-void
.end method

.method public final setupViewHolder$TMessagesProj_HA_public(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 1

    const-string v0, "viewHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule$$ExternalSyntheticLambda0;-><init>(Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
