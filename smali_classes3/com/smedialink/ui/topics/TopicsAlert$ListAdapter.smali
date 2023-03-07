.class final Lcom/smedialink/ui/topics/TopicsAlert$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "TopicsAlert.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/topics/TopicsAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/ui/topics/TopicsAlert;


# direct methods
.method public constructor <init>(Lcom/smedialink/ui/topics/TopicsAlert;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 350
    iput-object p1, p0, Lcom/smedialink/ui/topics/TopicsAlert$ListAdapter;->this$0:Lcom/smedialink/ui/topics/TopicsAlert;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/smedialink/ui/topics/TopicsAlert$ListAdapter;->this$0:Lcom/smedialink/ui/topics/TopicsAlert;

    invoke-static {v0}, Lcom/smedialink/ui/topics/TopicsAlert;->access$getTopics(Lcom/smedialink/ui/topics/TopicsAlert;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 4

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 356
    iget-object v0, p0, Lcom/smedialink/ui/topics/TopicsAlert$ListAdapter;->this$0:Lcom/smedialink/ui/topics/TopicsAlert;

    invoke-static {v0}, Lcom/smedialink/ui/topics/TopicsAlert;->access$getTopics(Lcom/smedialink/ui/topics/TopicsAlert;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/smedialink/storage/domain/model/topics/TopicModel;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/topics/TopicModel;->getTopicId()J

    move-result-wide v0

    iget-object p1, p0, Lcom/smedialink/ui/topics/TopicsAlert$ListAdapter;->this$0:Lcom/smedialink/ui/topics/TopicsAlert;

    invoke-static {p1}, Lcom/smedialink/ui/topics/TopicsAlert;->access$getSelectedTopicId$p(Lcom/smedialink/ui/topics/TopicsAlert;)Ljava/lang/Long;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-eqz p1, :cond_1

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 6

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 372
    iget-object v0, p0, Lcom/smedialink/ui/topics/TopicsAlert$ListAdapter;->this$0:Lcom/smedialink/ui/topics/TopicsAlert;

    invoke-static {v0}, Lcom/smedialink/ui/topics/TopicsAlert;->access$getTopics(Lcom/smedialink/ui/topics/TopicsAlert;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/smedialink/storage/domain/model/topics/TopicModel;

    .line 373
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/fork/ui/view/CircleCheckCell;

    iget-object v0, p0, Lcom/smedialink/ui/topics/TopicsAlert$ListAdapter;->this$0:Lcom/smedialink/ui/topics/TopicsAlert;

    .line 374
    invoke-virtual {p2}, Lcom/smedialink/storage/domain/model/topics/TopicModel;->isUserTopic()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "iMe_dialogs_userTopicActiveBackground"

    .line 376
    invoke-static {v0, v1}, Lcom/smedialink/ui/topics/TopicsAlert;->access$getThemedColor(Lcom/smedialink/ui/topics/TopicsAlert;Ljava/lang/String;)I

    move-result v1

    .line 377
    invoke-virtual {p2}, Lcom/smedialink/storage/domain/model/topics/TopicModel;->getIcon()Lcom/smedialink/storage/data/repository/topics/Topic;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Lcom/smedialink/storage/domain/model/topics/TopicModel;->getIcon()Lcom/smedialink/storage/data/repository/topics/Topic;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/smedialink/storage/data/repository/topics/Topic;->OTHER:Lcom/smedialink/storage/data/repository/topics/Topic;

    :goto_0
    invoke-static {v2}, Lcom/smedialink/utils/extentions/model/topic/TopicExtKt;->info(Lcom/smedialink/storage/data/repository/topics/Topic;)Lcom/smedialink/ui/topics/TopicInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smedialink/ui/topics/TopicInfo;->getIconResId()I

    move-result v2

    .line 378
    invoke-virtual {p2}, Lcom/smedialink/storage/domain/model/topics/TopicModel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 375
    invoke-virtual {p1, v1, v2, v3}, Lorg/fork/ui/view/CircleCheckCell;->setData(IILjava/lang/String;)V

    goto :goto_1

    .line 380
    :cond_1
    invoke-virtual {p2}, Lcom/smedialink/storage/domain/model/topics/TopicModel;->isAutoTopic()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 381
    invoke-virtual {p2}, Lcom/smedialink/storage/domain/model/topics/TopicModel;->getIcon()Lcom/smedialink/storage/data/repository/topics/Topic;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/smedialink/utils/extentions/model/topic/TopicExtKt;->info(Lcom/smedialink/storage/data/repository/topics/Topic;)Lcom/smedialink/ui/topics/TopicInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smedialink/ui/topics/TopicInfo;->component1()I

    move-result v2

    invoke-virtual {v1}, Lcom/smedialink/ui/topics/TopicInfo;->component2()I

    move-result v3

    invoke-virtual {v1}, Lcom/smedialink/ui/topics/TopicInfo;->component3()I

    move-result v1

    .line 383
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    .line 385
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getInternalString(titleResId)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 382
    invoke-virtual {p1, v2, v1, v3}, Lorg/fork/ui/view/CircleCheckCell;->setData(IILjava/lang/String;)V

    .line 388
    :cond_2
    :goto_1
    invoke-virtual {p2}, Lcom/smedialink/storage/domain/model/topics/TopicModel;->getTopicId()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_4

    invoke-virtual {p2}, Lcom/smedialink/storage/domain/model/topics/TopicModel;->getTopicId()J

    move-result-wide v1

    invoke-static {v0}, Lcom/smedialink/ui/topics/TopicsAlert;->access$getSelectedTopicId$p(Lcom/smedialink/ui/topics/TopicsAlert;)Ljava/lang/Long;

    move-result-object p2

    if-nez p2, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long p2, v1, v3

    if-nez p2, :cond_4

    const/4 p2, 0x1

    goto :goto_3

    :cond_4
    :goto_2
    const/4 p2, 0x0

    :goto_3
    invoke-virtual {p1, p2}, Lorg/fork/ui/view/CircleCheckCell;->setChecked(Z)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 350
    invoke-virtual {p0, p1, p2}, Lcom/smedialink/ui/topics/TopicsAlert$ListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/ui/Components/RecyclerListView$Holder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/ui/Components/RecyclerListView$Holder;
    .locals 3

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 358
    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    .line 359
    iget-object p2, p0, Lcom/smedialink/ui/topics/TopicsAlert$ListAdapter;->this$0:Lcom/smedialink/ui/topics/TopicsAlert;

    invoke-virtual {p2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 361
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 358
    new-instance v1, Lcom/smedialink/ui/topics/TopicsAlert$ListAdapter$onCreateViewHolder$1;

    iget-object v2, p0, Lcom/smedialink/ui/topics/TopicsAlert$ListAdapter;->this$0:Lcom/smedialink/ui/topics/TopicsAlert;

    invoke-direct {v1, v2, p2, v0}, Lcom/smedialink/ui/topics/TopicsAlert$ListAdapter$onCreateViewHolder$1;-><init>(Lcom/smedialink/ui/topics/TopicsAlert;Landroid/content/Context;Landroid/widget/ImageView$ScaleType;)V

    invoke-direct {p1, v1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p1
.end method
