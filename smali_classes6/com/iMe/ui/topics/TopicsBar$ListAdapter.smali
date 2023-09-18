.class final Lcom/iMe/ui/topics/TopicsBar$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "TopicsBar.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/topics/TopicsBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/topics/TopicsBar;


# direct methods
.method public constructor <init>(Lcom/iMe/ui/topics/TopicsBar;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 283
    iput-object p1, p0, Lcom/iMe/ui/topics/TopicsBar$ListAdapter;->this$0:Lcom/iMe/ui/topics/TopicsBar;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/iMe/ui/topics/TopicsBar$ListAdapter;->this$0:Lcom/iMe/ui/topics/TopicsBar;

    invoke-static {v0}, Lcom/iMe/ui/topics/TopicsBar;->access$getData$p(Lcom/iMe/ui/topics/TopicsBar;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public final isNoTopicPosition(I)Z
    .locals 5

    .line 288
    iget-object v0, p0, Lcom/iMe/ui/topics/TopicsBar$ListAdapter;->this$0:Lcom/iMe/ui/topics/TopicsBar;

    invoke-static {v0}, Lcom/iMe/ui/topics/TopicsBar;->access$getData$p(Lcom/iMe/ui/topics/TopicsBar;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/storage/domain/model/topics/TopicModel;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getTopicId()J

    move-result-wide v1

    const-wide/16 v3, -0x2

    cmp-long p1, v1, v3

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 6

    const-string p2, "holder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 328
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v0, "null cannot be cast to non-null type com.iMe.ui.topics.TopicView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/iMe/ui/topics/TopicView;

    iget-object v0, p0, Lcom/iMe/ui/topics/TopicsBar$ListAdapter;->this$0:Lcom/iMe/ui/topics/TopicsBar;

    .line 329
    invoke-static {v0}, Lcom/iMe/ui/topics/TopicsBar;->access$getData$p(Lcom/iMe/ui/topics/TopicsBar;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iMe/storage/domain/model/topics/TopicModel;

    .line 330
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getTopicId()J

    move-result-wide v2

    invoke-static {v0}, Lcom/iMe/ui/topics/TopicsBar;->access$getSelectedTopicId$p(Lcom/iMe/ui/topics/TopicsBar;)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2, v1, v0}, Lcom/iMe/ui/topics/TopicView;->setTopic(Lcom/iMe/storage/domain/model/topics/TopicModel;Z)V

    .line 331
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    iput p1, p2, Lcom/iMe/ui/topics/TopicView;->position:I

    const/4 p1, 0x4

    .line 333
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    .line 334
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    .line 332
    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 283
    invoke-virtual {p0, p1, p2}, Lcom/iMe/ui/topics/TopicsBar$ListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/ui/Components/RecyclerListView$Holder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/ui/Components/RecyclerListView$Holder;
    .locals 1

    const-string/jumbo p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 306
    iget-object p1, p0, Lcom/iMe/ui/topics/TopicsBar$ListAdapter;->this$0:Lcom/iMe/ui/topics/TopicsBar;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance p2, Lcom/iMe/ui/topics/TopicsBar$ListAdapter$onCreateViewHolder$1;

    iget-object v0, p0, Lcom/iMe/ui/topics/TopicsBar$ListAdapter;->this$0:Lcom/iMe/ui/topics/TopicsBar;

    invoke-direct {p2, v0, p1}, Lcom/iMe/ui/topics/TopicsBar$ListAdapter$onCreateViewHolder$1;-><init>(Lcom/iMe/ui/topics/TopicsBar;Landroid/content/Context;)V

    const/4 p1, -0x2

    const/4 v0, -0x1

    .line 320
    invoke-static {p1, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createRecycler(II)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 305
    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public final swapElements(II)V
    .locals 2

    .line 291
    iget-object v0, p0, Lcom/iMe/ui/topics/TopicsBar$ListAdapter;->this$0:Lcom/iMe/ui/topics/TopicsBar;

    invoke-static {v0}, Lcom/iMe/ui/topics/TopicsBar;->access$getData$p(Lcom/iMe/ui/topics/TopicsBar;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1, p2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 292
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    .line 293
    sget-object v0, Lcom/iMe/fork/controller/ForkTopicsController;->Companion:Lcom/iMe/fork/controller/ForkTopicsController$Companion;

    iget-object v1, p0, Lcom/iMe/ui/topics/TopicsBar$ListAdapter;->this$0:Lcom/iMe/ui/topics/TopicsBar;

    invoke-static {v1}, Lcom/iMe/ui/topics/TopicsBar;->access$getCurrentAccount$p(Lcom/iMe/ui/topics/TopicsBar;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iMe/fork/controller/ForkTopicsController$Companion;->getInstance(I)Lcom/iMe/fork/controller/ForkTopicsController;

    move-result-object v0

    .line 294
    iget-object v1, p0, Lcom/iMe/ui/topics/TopicsBar$ListAdapter;->this$0:Lcom/iMe/ui/topics/TopicsBar;

    invoke-static {v1}, Lcom/iMe/ui/topics/TopicsBar;->access$getData$p(Lcom/iMe/ui/topics/TopicsBar;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/storage/domain/model/topics/TopicModel;

    iget-object v1, p0, Lcom/iMe/ui/topics/TopicsBar$ListAdapter;->this$0:Lcom/iMe/ui/topics/TopicsBar;

    invoke-static {v1}, Lcom/iMe/ui/topics/TopicsBar;->access$getData$p(Lcom/iMe/ui/topics/TopicsBar;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/iMe/storage/domain/model/topics/TopicModel;

    invoke-virtual {v0, p1, p2}, Lcom/iMe/fork/controller/ForkTopicsController;->swapTopics(Lcom/iMe/storage/domain/model/topics/TopicModel;Lcom/iMe/storage/domain/model/topics/TopicModel;)V

    return-void
.end method
