.class final Lcom/iMe/fork/ui/fragment/MusicActivity$DialogsAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "MusicActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/fork/ui/fragment/MusicActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DialogsAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/fork/ui/fragment/MusicActivity$DialogsAdapter$WhenMappings;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final musicTab:Lcom/iMe/ui/music/MusicTab;

.field final synthetic this$0:Lcom/iMe/fork/ui/fragment/MusicActivity;


# direct methods
.method public constructor <init>(Lcom/iMe/fork/ui/fragment/MusicActivity;Landroid/content/Context;Lcom/iMe/ui/music/MusicTab;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/iMe/ui/music/MusicTab;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "musicTab"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 274
    iput-object p1, p0, Lcom/iMe/fork/ui/fragment/MusicActivity$DialogsAdapter;->this$0:Lcom/iMe/fork/ui/fragment/MusicActivity;

    .line 277
    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 275
    iput-object p2, p0, Lcom/iMe/fork/ui/fragment/MusicActivity$DialogsAdapter;->context:Landroid/content/Context;

    .line 276
    iput-object p3, p0, Lcom/iMe/fork/ui/fragment/MusicActivity$DialogsAdapter;->musicTab:Lcom/iMe/ui/music/MusicTab;

    return-void
.end method

.method private final getDialogs()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 280
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/MusicActivity$DialogsAdapter;->musicTab:Lcom/iMe/ui/music/MusicTab;

    sget-object v1, Lcom/iMe/fork/ui/fragment/MusicActivity$DialogsAdapter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 283
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/MusicActivity$DialogsAdapter;->this$0:Lcom/iMe/fork/ui/fragment/MusicActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/MusicActivity;->access$getBots$p(Lcom/iMe/fork/ui/fragment/MusicActivity;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/MusicActivity$DialogsAdapter;->this$0:Lcom/iMe/fork/ui/fragment/MusicActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/MusicActivity;->access$getChannels$p(Lcom/iMe/fork/ui/fragment/MusicActivity;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 281
    :cond_1
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/MusicActivity$DialogsAdapter;->this$0:Lcom/iMe/fork/ui/fragment/MusicActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/MusicActivity;->access$getAlbums$p(Lcom/iMe/fork/ui/fragment/MusicActivity;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/MusicActivity$DialogsAdapter;->this$0:Lcom/iMe/fork/ui/fragment/MusicActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/MusicActivity;->access$getParallelLoading$p(Lcom/iMe/fork/ui/fragment/MusicActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/MusicActivity$DialogsAdapter;->getDialogs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 288
    :cond_0
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/MusicActivity$DialogsAdapter;->getDialogs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 292
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/MusicActivity$DialogsAdapter;->this$0:Lcom/iMe/fork/ui/fragment/MusicActivity;

    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/MusicActivity;->access$getParallelLoading$p(Lcom/iMe/fork/ui/fragment/MusicActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->LOADING_CELL:I

    goto :goto_0

    .line 293
    :cond_0
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/MusicActivity$DialogsAdapter;->getDialogs()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->DIALOGS_EMPTY_CELL:I

    goto :goto_0

    .line 294
    :cond_1
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->PROFILE_SEARCH:I

    :goto_0
    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 332
    sget-object v0, Lcom/iMe/fork/ui/fragment/MusicActivity;->Companion:Lcom/iMe/fork/ui/fragment/MusicActivity$Companion;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    invoke-static {v0, p1}, Lcom/iMe/fork/ui/fragment/MusicActivity$Companion;->access$isContentViewType(Lcom/iMe/fork/ui/fragment/MusicActivity$Companion;I)Z

    move-result p1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 11

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 314
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 315
    instance-of v1, v0, Lorg/telegram/ui/Cells/DialogsEmptyCell;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lorg/telegram/ui/Cells/DialogsEmptyCell;

    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/MusicActivity$DialogsAdapter;->musicTab:Lcom/iMe/ui/music/MusicTab;

    invoke-virtual {p1}, Lcom/iMe/ui/music/MusicTab;->getEmptyCellType()Lcom/iMe/ui/dialogs/EmptyCellType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/ui/dialogs/EmptyCellType;->id()I

    move-result p1

    invoke-virtual {v0, p1, v2}, Lorg/telegram/ui/Cells/DialogsEmptyCell;->setType(IZ)V

    goto :goto_1

    .line 316
    :cond_0
    instance-of v0, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;

    if-eqz v0, :cond_3

    .line 317
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/MusicActivity$DialogsAdapter;->getDialogs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-lez v3, :cond_1

    .line 319
    iget-object v3, p0, Lcom/iMe/fork/ui/fragment/MusicActivity$DialogsAdapter;->this$0:Lcom/iMe/fork/ui/fragment/MusicActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    goto :goto_0

    .line 320
    :cond_1
    iget-object v3, p0, Lcom/iMe/fork/ui/fragment/MusicActivity$DialogsAdapter;->this$0:Lcom/iMe/fork/ui/fragment/MusicActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    neg-long v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    :goto_0
    move-object v5, v3

    .line 322
    iget-object v3, p0, Lcom/iMe/fork/ui/fragment/MusicActivity$DialogsAdapter;->this$0:Lcom/iMe/fork/ui/fragment/MusicActivity;

    invoke-static {v3}, Lcom/iMe/fork/ui/fragment/MusicActivity;->access$getCountsMap$p(Lcom/iMe/fork/ui/fragment/MusicActivity;)Landroid/util/LongSparseArray;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "countsMap[dialogId]"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    new-array v1, v2, [Ljava/lang/Object;

    const-string v3, "MusicFiles"

    invoke-static {v3, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 323
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v0, "holder.itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lorg/telegram/ui/Cells/ProfileSearchCell;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, p1

    .line 324
    invoke-virtual/range {v4 .. v10}, Lorg/telegram/ui/Cells/ProfileSearchCell;->setData(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)V

    .line 325
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/MusicActivity$DialogsAdapter;->getDialogs()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v0

    if-eq p2, v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    iput-boolean v2, p1, Lorg/telegram/ui/Cells/ProfileSearchCell;->useSeparator:Z

    :cond_3
    :goto_1
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 274
    invoke-virtual {p0, p1, p2}, Lcom/iMe/fork/ui/fragment/MusicActivity$DialogsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/ui/Components/RecyclerListView$Holder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/ui/Components/RecyclerListView$Holder;
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 299
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->LOADING_CELL:I

    const/4 v0, -0x2

    if-ne p2, p1, :cond_0

    new-instance p1, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/iMe/fork/ui/fragment/MusicActivity$DialogsAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 301
    new-instance v1, Lorg/telegram/ui/Cells/LoadingCell;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/Cells/LoadingCell;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x11

    .line 302
    invoke-static {v0, v0, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    .line 300
    invoke-virtual {p1, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 306
    :cond_0
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->DIALOGS_EMPTY_CELL:I

    if-ne p2, p1, :cond_1

    new-instance p1, Lorg/telegram/ui/Cells/DialogsEmptyCell;

    iget-object v1, p0, Lcom/iMe/fork/ui/fragment/MusicActivity$DialogsAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, v1}, Lorg/telegram/ui/Cells/DialogsEmptyCell;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 307
    :cond_1
    new-instance p1, Lorg/telegram/ui/Cells/ProfileSearchCell;

    iget-object v1, p0, Lcom/iMe/fork/ui/fragment/MusicActivity$DialogsAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, v1}, Lorg/telegram/ui/Cells/ProfileSearchCell;-><init>(Landroid/content/Context;)V

    .line 309
    :goto_0
    sget-object v1, Lcom/iMe/fork/ui/fragment/MusicActivity;->Companion:Lcom/iMe/fork/ui/fragment/MusicActivity$Companion;

    invoke-static {v1, p2}, Lcom/iMe/fork/ui/fragment/MusicActivity$Companion;->access$isContentViewType(Lcom/iMe/fork/ui/fragment/MusicActivity$Companion;I)Z

    move-result p2

    const/4 v1, -0x1

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    .line 310
    :goto_1
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-direct {p2, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 298
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
