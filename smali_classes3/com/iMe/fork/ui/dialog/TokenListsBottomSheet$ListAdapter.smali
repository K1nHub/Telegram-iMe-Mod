.class final Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "TokenListsBottomSheet.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;


# direct methods
.method public constructor <init>(Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 336
    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet$ListAdapter;->this$0:Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet$ListAdapter;->this$0:Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;

    invoke-static {v0}, Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;->access$getTokenLists$p(Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet$ListAdapter;->this$0:Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;

    invoke-static {v0}, Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;->access$getTokenLists$p(Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 11

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 355
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet$ListAdapter;->this$0:Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;

    invoke-static {v0}, Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;->access$getTokenLists$p(Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet$ListAdapter;->this$0:Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;

    check-cast v0, Lcom/iMe/storage/domain/model/wallet/token/TokenListInfo;

    .line 356
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v2, "null cannot be cast to non-null type com.iMe.ui.custom.ImageTextCheckCell"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/iMe/ui/custom/ImageTextCheckCell;

    .line 358
    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/token/TokenListInfo;->getName()Ljava/lang/String;

    move-result-object v4

    .line 359
    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/token/TokenListInfo;->getIconUrl()Ljava/lang/String;

    move-result-object v5

    .line 360
    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/token/TokenListInfo;->isVerified()Z

    move-result v7

    .line 361
    invoke-static {v1}, Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;->access$getTokenLists$p(Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, p2, :cond_0

    move v8, v1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    move v8, p2

    :goto_0
    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v6, 0x0

    move-object v3, p1

    .line 357
    invoke-static/range {v3 .. v10}, Lcom/iMe/ui/custom/ImageTextCheckCell;->setupViewData$default(Lcom/iMe/ui/custom/ImageTextCheckCell;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZZILjava/lang/Object;)V

    .line 363
    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 336
    invoke-virtual {p0, p1, p2}, Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet$ListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/ui/Components/RecyclerListView$Holder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/ui/Components/RecyclerListView$Holder;
    .locals 6

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 348
    new-instance p1, Lcom/iMe/ui/custom/ImageTextCheckCell;

    iget-object p2, p0, Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet$ListAdapter;->this$0:Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;

    invoke-virtual {p2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string p2, "context"

    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/iMe/ui/custom/ImageTextCheckCell;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object p2, p0, Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet$ListAdapter;->this$0:Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;

    .line 349
    sget v0, Lorg/telegram/messenger/R$drawable;->fork_ic_verified:I

    invoke-virtual {p1, v0}, Lcom/iMe/ui/custom/ImageTextCheckCell;->setCustomCheckResId(I)V

    .line 350
    invoke-static {p2}, Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;->access$getItemWidth$p(Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;)I

    move-result p2

    const/4 v0, -0x2

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createRecycler(II)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 347
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
