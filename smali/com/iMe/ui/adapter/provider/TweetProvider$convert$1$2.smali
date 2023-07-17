.class final Lcom/iMe/ui/adapter/provider/TweetProvider$convert$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "TweetProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/adapter/provider/TweetProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/twitter/TweetItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $imageUrl:Ljava/lang/String;

.field final synthetic $item:Lcom/iMe/model/twitter/TweetItem;

.field final synthetic this$0:Lcom/iMe/ui/adapter/provider/TweetProvider;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/iMe/ui/adapter/provider/TweetProvider;Lcom/iMe/model/twitter/TweetItem;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/adapter/provider/TweetProvider$convert$1$2;->$imageUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/iMe/ui/adapter/provider/TweetProvider$convert$1$2;->this$0:Lcom/iMe/ui/adapter/provider/TweetProvider;

    iput-object p3, p0, Lcom/iMe/ui/adapter/provider/TweetProvider$convert$1$2;->$item:Lcom/iMe/model/twitter/TweetItem;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 72
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/adapter/provider/TweetProvider$convert$1$2;->invoke(Landroidx/recyclerview/widget/RecyclerView;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 5

    const-string v0, "$this$applyForView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/iMe/ui/adapter/provider/TweetProvider$convert$1$2;->$imageUrl:Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {p1, v0}, Lcom/iMe/utils/extentions/common/ViewExtKt;->gone(Landroid/view/View;Z)V

    .line 74
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    const/4 v0, 0x0

    .line 75
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setOnFlingListener(Landroidx/recyclerview/widget/RecyclerView$OnFlingListener;)V

    .line 76
    new-instance v0, Landroidx/recyclerview/widget/PagerSnapHelper;

    invoke-direct {v0}, Landroidx/recyclerview/widget/PagerSnapHelper;-><init>()V

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/SnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 77
    iget-object v0, p0, Lcom/iMe/ui/adapter/provider/TweetProvider$convert$1$2;->this$0:Lcom/iMe/ui/adapter/provider/TweetProvider;

    invoke-static {v0}, Lcom/iMe/ui/adapter/provider/TweetProvider;->access$getItemDecoration$p(Lcom/iMe/ui/adapter/provider/TweetProvider;)Lcom/iMe/ui/common/LinePagerIndicatorDecoration;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 78
    iget-object v0, p0, Lcom/iMe/ui/adapter/provider/TweetProvider$convert$1$2;->this$0:Lcom/iMe/ui/adapter/provider/TweetProvider;

    invoke-static {v0}, Lcom/iMe/ui/adapter/provider/TweetProvider;->access$getItemDecoration$p(Lcom/iMe/ui/adapter/provider/TweetProvider;)Lcom/iMe/ui/common/LinePagerIndicatorDecoration;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 80
    iget-object v0, p0, Lcom/iMe/ui/adapter/provider/TweetProvider$convert$1$2;->$item:Lcom/iMe/model/twitter/TweetItem;

    invoke-virtual {v0}, Lcom/iMe/model/twitter/TweetItem;->getMediaInfo()Ljava/util/List;

    move-result-object v0

    .line 81
    sget v1, Lorg/telegram/messenger/R$layout;->fork_recylcer_image_item:I

    .line 79
    new-instance v2, Lcom/iMe/ui/adapter/provider/TweetProvider$convert$1$2$1;

    iget-object v3, p0, Lcom/iMe/ui/adapter/provider/TweetProvider$convert$1$2;->this$0:Lcom/iMe/ui/adapter/provider/TweetProvider;

    iget-object v4, p0, Lcom/iMe/ui/adapter/provider/TweetProvider$convert$1$2;->$item:Lcom/iMe/model/twitter/TweetItem;

    invoke-direct {v2, v3, v4}, Lcom/iMe/ui/adapter/provider/TweetProvider$convert$1$2$1;-><init>(Lcom/iMe/ui/adapter/provider/TweetProvider;Lcom/iMe/model/twitter/TweetItem;)V

    invoke-static {p1, v0, v1, v2}, Lcom/iMe/utils/extentions/common/SimpleInitExtensionsKt;->quickInit(Landroidx/recyclerview/widget/RecyclerView;Ljava/util/List;ILkotlin/jvm/functions/Function3;)V

    return-void
.end method
