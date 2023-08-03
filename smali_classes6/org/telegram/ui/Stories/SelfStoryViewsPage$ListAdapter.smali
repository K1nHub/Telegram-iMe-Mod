.class Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SelfStoryViewsPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stories/SelfStoryViewsPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Stories/SelfStoryViewsPage$Item;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;


# direct methods
.method private constructor <init>(Lorg/telegram/ui/Stories/SelfStoryViewsPage;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 230
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->items:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/Stories/SelfStoryViewsPage;Lorg/telegram/ui/Stories/SelfStoryViewsPage$1;)V
    .locals 0

    .line 228
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;-><init>(Lorg/telegram/ui/Stories/SelfStoryViewsPage;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 307
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 335
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Stories/SelfStoryViewsPage$Item;

    iget p1, p1, Lorg/telegram/ui/Stories/SelfStoryViewsPage$Item;->viewType:I

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    .line 312
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 8

    .line 295
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 296
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;

    .line 297
    iget-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    iget p1, p1, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Stories/SelfStoryViewsPage$Item;

    iget-object v1, v1, Lorg/telegram/ui/Stories/SelfStoryViewsPage$Item;->user:Lorg/telegram/tgnet/TLRPC$TL_storyView;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$TL_storyView;->user_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    .line 299
    iget-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    iget-object p1, p1, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->model:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;

    iget-object p1, p1, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->animateDateForUsers:Ljava/util/HashSet;

    iget-object v2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Stories/SelfStoryViewsPage$Item;

    iget-object v2, v2, Lorg/telegram/ui/Stories/SelfStoryViewsPage$Item;->user:Lorg/telegram/tgnet/TLRPC$TL_storyView;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$TL_storyView;->user_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v7

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 300
    iget-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Stories/SelfStoryViewsPage$Item;

    iget-object p1, p1, Lorg/telegram/ui/Stories/SelfStoryViewsPage$Item;->user:Lorg/telegram/tgnet/TLRPC$TL_storyView;

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$TL_storyView;->date:I

    int-to-long v4, p1

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v7}, Lorg/telegram/ui/Cells/ReactedUserHolderView;->setUserReaction(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$Reaction;JZZ)V

    :cond_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 8

    if-eqz p2, :cond_6

    const/4 p1, 0x1

    if-eq p2, p1, :cond_5

    const/4 v0, 0x3

    if-eq p2, v0, :cond_4

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-eq p2, v0, :cond_3

    const/4 p1, 0x5

    if-eq p2, p1, :cond_0

    .line 266
    new-instance p1, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter$3;

    iget-object p2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter$3;-><init>(Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;Landroid/content/Context;)V

    goto/16 :goto_2

    .line 274
    :cond_0
    new-instance p1, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter$4;

    iget-object p2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    iget-object p2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    iget-object v0, p2, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->model:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;

    iget-boolean v0, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->isExpiredViews:Z

    if-eqz v0, :cond_1

    const/16 v0, 0xc

    move v6, v0

    goto :goto_0

    :cond_1
    move v6, v1

    :goto_0
    iget-object v7, p2, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter$4;-><init>(Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;Landroid/content/Context;Landroid/view/View;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 280
    iget-object p2, p1, Lorg/telegram/ui/Components/StickerEmptyView;->title:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 281
    iget-object p2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    iget-object p2, p2, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->model:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;

    iget-boolean p2, p2, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->isExpiredViews:Z

    if-eqz p2, :cond_2

    .line 282
    iget-object p2, p1, Lorg/telegram/ui/Components/StickerEmptyView;->subtitle:Landroid/widget/TextView;

    sget v0, Lorg/telegram/messenger/R$string;->ExpiredViewsStub:I

    const-string v2, "ExpiredViewsStub"

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 284
    :cond_2
    iget-object p2, p1, Lorg/telegram/ui/Components/StickerEmptyView;->subtitle:Landroid/widget/TextView;

    sget v0, Lorg/telegram/messenger/R$string;->NoViewsStub:I

    const-string v2, "NoViewsStub"

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    :goto_1
    invoke-virtual {p1, v1, v1}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    goto :goto_2

    .line 258
    :cond_3
    new-instance p2, Lorg/telegram/ui/Components/FlickerLoadingView;

    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    iget-object v2, v2, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p2, v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 259
    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/FlickerLoadingView;->setIsSingleCell(Z)V

    const/16 p1, 0x1c

    .line 260
    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/FlickerLoadingView;->setViewType(I)V

    .line 261
    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/FlickerLoadingView;->showDate(Z)V

    move-object p1, p2

    goto :goto_2

    .line 246
    :cond_4
    new-instance p1, Lorg/telegram/ui/Cells/FixedHeightEmptyCell;

    iget-object p2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const/16 v0, 0x46

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/Cells/FixedHeightEmptyCell;-><init>(Landroid/content/Context;I)V

    goto :goto_2

    .line 249
    :cond_5
    new-instance p1, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter$2;

    sget v3, Lorg/telegram/ui/Cells/ReactedUserHolderView;->STYLE_STORY:I

    iget-object p2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    iget v4, p2, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->currentAccount:I

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object p2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    iget-object v6, p2, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter$2;-><init>(Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;IILandroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_2

    .line 238
    :cond_6
    new-instance p1, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter$1;

    iget-object p2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter$1;-><init>(Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;Landroid/content/Context;)V

    .line 290
    :goto_2
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public updateRows()V
    .locals 7

    .line 316
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 317
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    iget-object v0, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->model:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->views:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    iget-object v2, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->model:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;

    iget-boolean v3, v2, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->isExpiredViews:Z

    if-nez v3, :cond_0

    iget-boolean v3, v2, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->loading:Z

    if-nez v3, :cond_1

    iget-boolean v2, v2, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->hasNext:Z

    if-nez v2, :cond_1

    .line 318
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->items:Ljava/util/ArrayList;

    new-instance v3, Lorg/telegram/ui/Stories/SelfStoryViewsPage$Item;

    const/4 v4, 0x5

    invoke-direct {v3, v0, v4, v1}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$Item;-><init>(Lorg/telegram/ui/Stories/SelfStoryViewsPage;ILorg/telegram/ui/Stories/SelfStoryViewsPage$1;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 320
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->items:Ljava/util/ArrayList;

    new-instance v2, Lorg/telegram/ui/Stories/SelfStoryViewsPage$Item;

    iget-object v3, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v1}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$Item;-><init>(Lorg/telegram/ui/Stories/SelfStoryViewsPage;ILorg/telegram/ui/Stories/SelfStoryViewsPage$1;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    iget-object v0, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->model:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;

    if-eqz v0, :cond_2

    .line 322
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    iget-object v0, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->model:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;

    iget-object v0, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->views:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_2

    .line 323
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->items:Ljava/util/ArrayList;

    new-instance v2, Lorg/telegram/ui/Stories/SelfStoryViewsPage$Item;

    iget-object v3, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    iget-object v5, v3, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->model:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;

    iget-object v5, v5, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->views:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_storyView;

    const/4 v6, 0x1

    invoke-direct {v2, v3, v6, v5, v1}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$Item;-><init>(Lorg/telegram/ui/Stories/SelfStoryViewsPage;ILorg/telegram/tgnet/TLRPC$TL_storyView;Lorg/telegram/ui/Stories/SelfStoryViewsPage$1;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 326
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    iget-object v2, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->model:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;

    if-eqz v2, :cond_4

    iget-boolean v3, v2, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->loading:Z

    if-nez v3, :cond_3

    iget-boolean v2, v2, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->hasNext:Z

    if-eqz v2, :cond_4

    .line 327
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->items:Ljava/util/ArrayList;

    new-instance v3, Lorg/telegram/ui/Stories/SelfStoryViewsPage$Item;

    const/4 v4, 0x4

    invoke-direct {v3, v0, v4, v1}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$Item;-><init>(Lorg/telegram/ui/Stories/SelfStoryViewsPage;ILorg/telegram/ui/Stories/SelfStoryViewsPage$1;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    :cond_4
    :goto_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
