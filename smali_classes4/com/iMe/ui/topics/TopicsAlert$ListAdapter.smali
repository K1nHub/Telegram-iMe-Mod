.class final Lcom/iMe/ui/topics/TopicsAlert$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "TopicsAlert.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/topics/TopicsAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/topics/TopicsAlert;


# direct methods
.method public constructor <init>(Lcom/iMe/ui/topics/TopicsAlert;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 367
    iput-object p1, p0, Lcom/iMe/ui/topics/TopicsAlert$ListAdapter;->this$0:Lcom/iMe/ui/topics/TopicsAlert;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 371
    iget-object v0, p0, Lcom/iMe/ui/topics/TopicsAlert$ListAdapter;->this$0:Lcom/iMe/ui/topics/TopicsAlert;

    invoke-static {v0}, Lcom/iMe/ui/topics/TopicsAlert;->access$getTopics(Lcom/iMe/ui/topics/TopicsAlert;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 7

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 373
    iget-object v0, p0, Lcom/iMe/ui/topics/TopicsAlert$ListAdapter;->this$0:Lcom/iMe/ui/topics/TopicsAlert;

    invoke-static {v0}, Lcom/iMe/ui/topics/TopicsAlert;->access$getSelectedTopic$p(Lcom/iMe/ui/topics/TopicsAlert;)Lcom/iMe/storage/domain/model/topics/TopicModel;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/iMe/ui/topics/TopicsAlert$ListAdapter;->this$0:Lcom/iMe/ui/topics/TopicsAlert;

    invoke-static {v3}, Lcom/iMe/ui/topics/TopicsAlert;->access$getTopics(Lcom/iMe/ui/topics/TopicsAlert;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/storage/domain/model/topics/TopicModel;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getTopicId()J

    move-result-wide v3

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getTopicId()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-nez p1, :cond_0

    move v2, v1

    :cond_0
    xor-int/lit8 p1, v2, 0x1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 6

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 385
    iget-object v0, p0, Lcom/iMe/ui/topics/TopicsAlert$ListAdapter;->this$0:Lcom/iMe/ui/topics/TopicsAlert;

    invoke-static {v0}, Lcom/iMe/ui/topics/TopicsAlert;->access$getTopics(Lcom/iMe/ui/topics/TopicsAlert;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/iMe/storage/domain/model/topics/TopicModel;

    .line 386
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string/jumbo v0, "null cannot be cast to non-null type com.iMe.fork.ui.view.CircleCheckCell"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/iMe/fork/ui/view/CircleCheckCell;

    iget-object v0, p0, Lcom/iMe/ui/topics/TopicsAlert$ListAdapter;->this$0:Lcom/iMe/ui/topics/TopicsAlert;

    .line 387
    invoke-virtual {p2}, Lcom/iMe/storage/domain/model/topics/TopicModel;->isUserTopic()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 388
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionBackground:I

    invoke-static {v0, v1}, Lcom/iMe/ui/topics/TopicsAlert;->access$getThemedColor(Lcom/iMe/ui/topics/TopicsAlert;I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/iMe/fork/ui/view/CircleCheckCell;->setColor(I)V

    .line 389
    invoke-virtual {p2}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getIcon()Lcom/iMe/storage/data/repository/topics/Topic;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getIcon()Lcom/iMe/storage/data/repository/topics/Topic;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/iMe/storage/data/repository/topics/Topic;->OTHER:Lcom/iMe/storage/data/repository/topics/Topic;

    :goto_0
    invoke-static {v1}, Lcom/iMe/utils/extentions/model/topic/TopicExtKt;->info(Lcom/iMe/storage/data/repository/topics/Topic;)Lcom/iMe/ui/topics/TopicInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/ui/topics/TopicInfo;->getIconResId()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/iMe/fork/ui/view/CircleCheckCell;->setIcon(I)V

    .line 390
    invoke-virtual {p2}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Lcom/iMe/fork/ui/view/CircleCheckCell;->setName(Ljava/lang/String;)V

    goto :goto_1

    .line 391
    :cond_1
    invoke-virtual {p2}, Lcom/iMe/storage/domain/model/topics/TopicModel;->isAutoTopic()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 392
    invoke-virtual {p2}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getIcon()Lcom/iMe/storage/data/repository/topics/Topic;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/iMe/utils/extentions/model/topic/TopicExtKt;->info(Lcom/iMe/storage/data/repository/topics/Topic;)Lcom/iMe/ui/topics/TopicInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/ui/topics/TopicInfo;->component1()I

    move-result v2

    invoke-virtual {v1}, Lcom/iMe/ui/topics/TopicInfo;->component2()I

    move-result v3

    invoke-virtual {v1}, Lcom/iMe/ui/topics/TopicInfo;->component3()I

    move-result v1

    .line 393
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/iMe/fork/ui/view/CircleCheckCell;->setColor(I)V

    .line 394
    invoke-virtual {p1, v1}, Lcom/iMe/fork/ui/view/CircleCheckCell;->setIcon(I)V

    .line 395
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getInternalString(titleResId)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/iMe/fork/ui/view/CircleCheckCell;->setName(Ljava/lang/String;)V

    .line 397
    :cond_2
    :goto_1
    invoke-virtual {p2}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getTopicId()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    invoke-static {v0}, Lcom/iMe/ui/topics/TopicsAlert;->access$getSelectedTopic$p(Lcom/iMe/ui/topics/TopicsAlert;)Lcom/iMe/storage/domain/model/topics/TopicModel;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getTopicId()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getTopicId()J

    move-result-wide v0

    cmp-long p2, v4, v0

    if-nez p2, :cond_3

    move p2, v2

    goto :goto_2

    :cond_3
    move p2, v3

    :goto_2
    if-eqz p2, :cond_4

    goto :goto_3

    :cond_4
    move v2, v3

    :goto_3
    invoke-virtual {p1, v2}, Lcom/iMe/fork/ui/view/CircleCheckCell;->setChecked(Z)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 367
    invoke-virtual {p0, p1, p2}, Lcom/iMe/ui/topics/TopicsAlert$ListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/ui/Components/RecyclerListView$Holder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/ui/Components/RecyclerListView$Holder;
    .locals 3

    const-string/jumbo p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 375
    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    iget-object p2, p0, Lcom/iMe/ui/topics/TopicsAlert$ListAdapter;->this$0:Lcom/iMe/ui/topics/TopicsAlert;

    invoke-virtual {p2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    new-instance v1, Lcom/iMe/ui/topics/TopicsAlert$ListAdapter$onCreateViewHolder$1;

    iget-object v2, p0, Lcom/iMe/ui/topics/TopicsAlert$ListAdapter;->this$0:Lcom/iMe/ui/topics/TopicsAlert;

    invoke-direct {v1, v2, p2, v0}, Lcom/iMe/ui/topics/TopicsAlert$ListAdapter$onCreateViewHolder$1;-><init>(Lcom/iMe/ui/topics/TopicsAlert;Landroid/content/Context;Landroid/widget/ImageView$ScaleType;)V

    invoke-direct {p1, v1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p1
.end method
