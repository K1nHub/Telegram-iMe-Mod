.class public final Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet$GridAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SelectIconBottomSheet.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "GridAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet;


# direct methods
.method public constructor <init>(Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 107
    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet$GridAdapter;->this$0:Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet$GridAdapter;->this$0:Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet;

    invoke-static {v0}, Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet;->access$getIcons(Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 117
    instance-of v0, p1, Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet$IconView;

    if-eqz v0, :cond_3

    const-string v0, "holder.itemView"

    .line 118
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet$GridAdapter;->this$0:Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet;

    check-cast p1, Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet$IconView;

    .line 119
    invoke-static {v0}, Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet;->access$getIcons(Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Enum;

    .line 121
    invoke-virtual {v0}, Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet;->getType()Lcom/iMe/fork/enums/FilterActivityType;

    move-result-object v1

    sget-object v2, Lcom/iMe/fork/enums/FilterActivityType;->FILTER:Lcom/iMe/fork/enums/FilterActivityType;

    if-ne v1, v2, :cond_0

    instance-of v1, p2, Lcom/iMe/storage/domain/model/filters/FilterIcon;

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Lcom/iMe/storage/domain/model/filters/FilterIcon;

    invoke-static {v1}, Lcom/iMe/utils/extentions/model/filter/FilterIconExtKt;->iconInfo(Lcom/iMe/storage/domain/model/filters/FilterIcon;)Lcom/iMe/ui/folder/FilterIconInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/ui/folder/FilterIconInfo;->getOutlinedIcon()I

    move-result v1

    goto :goto_0

    .line 122
    :cond_0
    invoke-virtual {v0}, Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet;->getType()Lcom/iMe/fork/enums/FilterActivityType;

    move-result-object v1

    sget-object v2, Lcom/iMe/fork/enums/FilterActivityType;->TOPIC:Lcom/iMe/fork/enums/FilterActivityType;

    if-ne v1, v2, :cond_3

    instance-of v1, p2, Lcom/iMe/storage/data/repository/topics/Topic;

    if-eqz v1, :cond_3

    move-object v1, p2

    check-cast v1, Lcom/iMe/storage/data/repository/topics/Topic;

    invoke-static {v1}, Lcom/iMe/utils/extentions/model/topic/TopicExtKt;->info(Lcom/iMe/storage/data/repository/topics/Topic;)Lcom/iMe/ui/topics/TopicInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/ui/topics/TopicInfo;->getIconResId()I

    move-result v1

    .line 125
    :goto_0
    invoke-virtual {v0}, Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet;->getCurrentFilterIcon()Lcom/iMe/storage/domain/model/filters/FilterIcon;

    move-result-object v2

    if-eq v2, p2, :cond_2

    invoke-virtual {v0}, Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet;->getCurrentTopicIcon()Lcom/iMe/storage/data/repository/topics/Topic;

    move-result-object v0

    if-ne v0, p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p2, 0x1

    :goto_2
    invoke-virtual {p1, v1, p2}, Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet$IconView;->setIcon(IZ)V

    nop

    :cond_3
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 107
    invoke-virtual {p0, p1, p2}, Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet$GridAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/ui/Components/RecyclerListView$Holder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/ui/Components/RecyclerListView$Holder;
    .locals 3

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    new-instance p2, Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet$IconView;

    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet$GridAdapter;->this$0:Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, v0, v1}, Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet$IconView;-><init>(Lcom/iMe/fork/ui/dialog/SelectIconBottomSheet;Landroid/content/Context;)V

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p1
.end method
