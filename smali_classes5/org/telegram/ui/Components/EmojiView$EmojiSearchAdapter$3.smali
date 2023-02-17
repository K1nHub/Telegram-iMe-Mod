.class Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$3;
.super Ljava/lang/Object;
.source "EmojiView.java"

# interfaces
.implements Lorg/telegram/messenger/MediaDataController$KeywordResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->lambda$search$0(Ljava/lang/String;Ljava/util/LinkedHashSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;

.field final synthetic val$documentIds:Ljava/util/LinkedHashSet;

.field final synthetic val$query:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;Ljava/lang/String;Ljava/util/LinkedHashSet;)V
    .locals 0

    .line 8622
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$3;->this$1:Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;

    iput-object p2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$3;->val$query:Ljava/lang/String;

    iput-object p3, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$3;->val$documentIds:Ljava/util/LinkedHashSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MediaDataController$KeywordResult;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 8625
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$3;->val$query:Ljava/lang/String;

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$3;->this$1:Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->access$2100(Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 8626
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$3;->this$1:Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;

    invoke-static {v0, p2}, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->access$20002(Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;Ljava/lang/String;)Ljava/lang/String;

    .line 8627
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$3;->this$1:Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;

    iget-object p2, p2, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p2}, Lorg/telegram/ui/Components/EmojiView;->access$9000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$SearchField;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/EmojiView$SearchField;->showProgress(Z)V

    .line 8628
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$3;->this$1:Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;

    const/4 v1, 0x1

    invoke-static {p2, v1}, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->access$7602(Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;Z)Z

    .line 8629
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$3;->this$1:Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;

    iget-object p2, p2, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p2}, Lorg/telegram/ui/Components/EmojiView;->access$1100(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p2

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$3;->this$1:Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;

    iget-object v1, v1, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$2000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;

    move-result-object v1

    if-eq p2, v1, :cond_0

    .line 8630
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$3;->this$1:Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;

    iget-object p2, p2, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p2}, Lorg/telegram/ui/Components/EmojiView;->access$1100(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    move-result-object p2

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$3;->this$1:Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;

    iget-object v1, v1, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$2000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 8632
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$3;->this$1:Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;

    invoke-static {p2}, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->access$7700(Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 8633
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$3;->this$1:Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$3;->val$query:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$3;->val$documentIds:Ljava/util/LinkedHashSet;

    invoke-static {p2, v1, v2}, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->access$20100(Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;Ljava/lang/String;Ljava/util/LinkedHashSet;)V

    .line 8634
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$3;->val$documentIds:Ljava/util/LinkedHashSet;

    invoke-virtual {p2}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "animated_"

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 8635
    new-instance v1, Lorg/telegram/messenger/MediaDataController$KeywordResult;

    invoke-direct {v1}, Lorg/telegram/messenger/MediaDataController$KeywordResult;-><init>()V

    const-string v5, ""

    .line 8636
    iput-object v5, v1, Lorg/telegram/messenger/MediaDataController$KeywordResult;->keyword:Ljava/lang/String;

    .line 8637
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/messenger/MediaDataController$KeywordResult;->emoji:Ljava/lang/String;

    .line 8638
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$3;->this$1:Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->access$7700(Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8640
    :cond_1
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge v0, p2, :cond_4

    .line 8641
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/messenger/MediaDataController$KeywordResult;

    if-eqz p2, :cond_3

    .line 8642
    iget-object v1, p2, Lorg/telegram/messenger/MediaDataController$KeywordResult;->emoji:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$3;->val$documentIds:Ljava/util/LinkedHashSet;

    iget-object v3, p2, Lorg/telegram/messenger/MediaDataController$KeywordResult;->emoji:Ljava/lang/String;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 8643
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$3;->this$1:Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->access$7700(Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 8646
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$3;->this$1:Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_5
    return-void
.end method
