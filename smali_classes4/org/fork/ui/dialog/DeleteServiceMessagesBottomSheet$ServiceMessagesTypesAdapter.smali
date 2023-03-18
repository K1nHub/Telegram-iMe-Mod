.class final Lorg/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ServiceMessagesTypesAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "DeleteServiceMessagesBottomSheet.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fork/ui/dialog/DeleteServiceMessagesBottomSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceMessagesTypesAdapter"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field final synthetic this$0:Lorg/fork/ui/dialog/DeleteServiceMessagesBottomSheet;


# direct methods
.method public constructor <init>(Lorg/fork/ui/dialog/DeleteServiceMessagesBottomSheet;Landroid/content/Context;)V
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

    .line 433
    iput-object p1, p0, Lorg/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ServiceMessagesTypesAdapter;->this$0:Lorg/fork/ui/dialog/DeleteServiceMessagesBottomSheet;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    iput-object p2, p0, Lorg/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ServiceMessagesTypesAdapter;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 2

    .line 437
    sget-object v0, Lorg/fork/enums/ServiceMessageType;->Companion:Lorg/fork/enums/ServiceMessageType$Companion;

    iget-object v1, p0, Lorg/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ServiceMessagesTypesAdapter;->this$0:Lorg/fork/ui/dialog/DeleteServiceMessagesBottomSheet;

    invoke-static {v1}, Lorg/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->access$isChannel$p(Lorg/fork/ui/dialog/DeleteServiceMessagesBottomSheet;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/fork/enums/ServiceMessageType$Companion;->getValues(Z)[Lorg/fork/enums/ServiceMessageType;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    if-nez p1, :cond_0

    .line 442
    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->TEXT_CHECK:I

    goto :goto_0

    .line 443
    :cond_0
    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->TEXT_CHECK_BOX:I

    :goto_0
    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 6

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 466
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    .line 467
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v1, "holder.itemView"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 469
    sget v1, Lcom/smedialink/common/IdFabric$ViewTypes;->TEXT_CHECK:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    instance-of v1, p1, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v1, :cond_0

    .line 470
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 471
    sget p2, Lorg/telegram/messenger/R$string;->service_messages_all:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    .line 472
    iget-object v0, p0, Lorg/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ServiceMessagesTypesAdapter;->this$0:Lorg/fork/ui/dialog/DeleteServiceMessagesBottomSheet;

    invoke-static {v0}, Lorg/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->access$getSelectedFiltersCodes$p(Lorg/fork/ui/dialog/DeleteServiceMessagesBottomSheet;)Ljava/util/ArrayList;

    move-result-object v0

    sget-object v1, Lorg/fork/enums/ServiceMessageType;->ALL:Lorg/fork/enums/ServiceMessageType;

    iget-object v3, p0, Lorg/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ServiceMessagesTypesAdapter;->this$0:Lorg/fork/ui/dialog/DeleteServiceMessagesBottomSheet;

    invoke-static {v3}, Lorg/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->access$isChannel$p(Lorg/fork/ui/dialog/DeleteServiceMessagesBottomSheet;)Z

    move-result v3

    invoke-virtual {v1, v3}, Lorg/fork/enums/ServiceMessageType;->getCode(Z)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 470
    invoke-virtual {p1, p2, v0, v2}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto :goto_3

    .line 476
    :cond_0
    sget v1, Lcom/smedialink/common/IdFabric$ViewTypes;->TEXT_CHECK_BOX:I

    if-ne v0, v1, :cond_4

    instance-of v0, p1, Lorg/telegram/ui/Cells/TextCheckBoxCell;

    if-eqz v0, :cond_4

    .line 477
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckBoxCell;

    .line 478
    iget-object v0, p0, Lorg/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ServiceMessagesTypesAdapter;->this$0:Lorg/fork/ui/dialog/DeleteServiceMessagesBottomSheet;

    add-int/lit8 v1, p2, -0x1

    invoke-static {v0, v1}, Lorg/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->access$getServiceMessageTypeStringByCode(Lorg/fork/ui/dialog/DeleteServiceMessagesBottomSheet;I)Ljava/lang/String;

    move-result-object v0

    .line 479
    iget-object v3, p0, Lorg/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ServiceMessagesTypesAdapter;->this$0:Lorg/fork/ui/dialog/DeleteServiceMessagesBottomSheet;

    invoke-static {v3}, Lorg/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->access$getSelectedFiltersCodes$p(Lorg/fork/ui/dialog/DeleteServiceMessagesBottomSheet;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ServiceMessagesTypesAdapter;->this$0:Lorg/fork/ui/dialog/DeleteServiceMessagesBottomSheet;

    invoke-static {v1}, Lorg/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->access$getSelectedFiltersCodes$p(Lorg/fork/ui/dialog/DeleteServiceMessagesBottomSheet;)Ljava/util/ArrayList;

    move-result-object v1

    sget-object v4, Lorg/fork/enums/ServiceMessageType;->ALL:Lorg/fork/enums/ServiceMessageType;

    iget-object v5, p0, Lorg/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ServiceMessagesTypesAdapter;->this$0:Lorg/fork/ui/dialog/DeleteServiceMessagesBottomSheet;

    invoke-static {v5}, Lorg/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->access$isChannel$p(Lorg/fork/ui/dialog/DeleteServiceMessagesBottomSheet;)Z

    move-result v5

    invoke-virtual {v4, v5}, Lorg/fork/enums/ServiceMessageType;->getCode(Z)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 480
    :goto_1
    sget-object v4, Lorg/fork/enums/ServiceMessageType;->Companion:Lorg/fork/enums/ServiceMessageType$Companion;

    iget-object v5, p0, Lorg/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ServiceMessagesTypesAdapter;->this$0:Lorg/fork/ui/dialog/DeleteServiceMessagesBottomSheet;

    invoke-static {v5}, Lorg/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->access$isChannel$p(Lorg/fork/ui/dialog/DeleteServiceMessagesBottomSheet;)Z

    move-result v5

    invoke-virtual {v4, v5}, Lorg/fork/enums/ServiceMessageType$Companion;->getValues(Z)[Lorg/fork/enums/ServiceMessageType;

    move-result-object v4

    invoke-static {v4}, Lkotlin/collections/ArraysKt;->getLastIndex([Ljava/lang/Object;)I

    move-result v4

    if-eq p2, v4, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    .line 477
    :goto_2
    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/ui/Cells/TextCheckBoxCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    :cond_4
    :goto_3
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 433
    invoke-virtual {p0, p1, p2}, Lorg/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ServiceMessagesTypesAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/ui/Components/RecyclerListView$Holder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/ui/Components/RecyclerListView$Holder;
    .locals 2

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 446
    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    .line 447
    sget v0, Lcom/smedialink/common/IdFabric$ViewTypes;->TEXT_CHECK:I

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lorg/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ServiceMessagesTypesAdapter;->context:Landroid/content/Context;

    new-instance v0, Lorg/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ServiceMessagesTypesAdapter$onCreateViewHolder$1;

    iget-object v1, p0, Lorg/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ServiceMessagesTypesAdapter;->this$0:Lorg/fork/ui/dialog/DeleteServiceMessagesBottomSheet;

    invoke-direct {v0, v1, p2}, Lorg/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ServiceMessagesTypesAdapter$onCreateViewHolder$1;-><init>(Lorg/fork/ui/dialog/DeleteServiceMessagesBottomSheet;Landroid/content/Context;)V

    goto :goto_0

    .line 455
    :cond_0
    iget-object p2, p0, Lorg/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ServiceMessagesTypesAdapter;->context:Landroid/content/Context;

    new-instance v0, Lorg/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ServiceMessagesTypesAdapter$onCreateViewHolder$2;

    iget-object v1, p0, Lorg/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ServiceMessagesTypesAdapter;->this$0:Lorg/fork/ui/dialog/DeleteServiceMessagesBottomSheet;

    invoke-direct {v0, v1, p2}, Lorg/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ServiceMessagesTypesAdapter$onCreateViewHolder$2;-><init>(Lorg/fork/ui/dialog/DeleteServiceMessagesBottomSheet;Landroid/content/Context;)V

    .line 446
    :goto_0
    invoke-direct {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p1
.end method
