.class Lorg/telegram/ui/Adapters/DialogsSearchAdapter$1;
.super Ljava/lang/Object;
.source "DialogsSearchAdapter.java"

# interfaces
.implements Lorg/telegram/ui/Adapters/SearchAdapterHelper$SearchAdapterHelperDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Adapters/DialogsSearchAdapter;-><init>(Landroid/content/Context;IILandroidx/recyclerview/widget/DefaultItemAnimator;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$1;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canApplySearchResults(I)Z
    .locals 1

    .line 283
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$1;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->access$700(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public synthetic getExcludeCallParticipants()Landroidx/collection/LongSparseArray;
    .locals 1

    invoke-static {p0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper$SearchAdapterHelperDelegate$-CC;->$default$getExcludeCallParticipants(Lorg/telegram/ui/Adapters/SearchAdapterHelper$SearchAdapterHelperDelegate;)Landroidx/collection/LongSparseArray;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getExcludeUsers()Landroidx/collection/LongSparseArray;
    .locals 1

    invoke-static {p0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper$SearchAdapterHelperDelegate$-CC;->$default$getExcludeUsers(Lorg/telegram/ui/Adapters/SearchAdapterHelper$SearchAdapterHelperDelegate;)Landroidx/collection/LongSparseArray;

    move-result-object v0

    return-object v0
.end method

.method public onDataSetChanged(I)V
    .locals 3

    .line 252
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$1;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    iget v1, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->waitingResponseCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->waitingResponseCount:I

    .line 253
    invoke-static {v0, p1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->access$002(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;I)I

    .line 254
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$1;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->access$100(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 255
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$1;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->access$200(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 257
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$1;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->access$300(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 258
    iget-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$1;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    invoke-static {p1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->access$400(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 260
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$1;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    invoke-static {p1, v2}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->access$502(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Z)Z

    .line 261
    iget-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$1;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    iget-object v0, p1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    if-eqz v0, :cond_3

    .line 262
    iget p1, p1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->waitingResponseCount:I

    if-lez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-interface {v0, p1, v2}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;->searchStateChanged(ZZ)V

    .line 264
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$1;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 265
    iget-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$1;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    iget-object p1, p1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    if-eqz p1, :cond_4

    .line 266
    invoke-interface {p1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;->runResultsEnterAnimation()V

    :cond_4
    return-void
.end method

.method public onSetHashtags(Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;",
            ">;)V"
        }
    .end annotation

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 272
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 273
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$1;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    invoke-static {v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->access$600(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;

    iget-object v2, v2, Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;->hashtag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 275
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$1;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    iget-object v0, p1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    if-eqz v0, :cond_2

    .line 276
    iget p1, p1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->waitingResponseCount:I

    if-lez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-interface {v0, p1, p2}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;->searchStateChanged(ZZ)V

    .line 278
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$1;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
