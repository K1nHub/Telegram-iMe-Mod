.class final Lorg/fork/ui/fragment/MusicActivity$DeviceAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "MusicActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fork/ui/fragment/MusicActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DeviceAdapter"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field final synthetic this$0:Lorg/fork/ui/fragment/MusicActivity;


# direct methods
.method public constructor <init>(Lorg/fork/ui/fragment/MusicActivity;Landroid/content/Context;)V
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

    .line 388
    iput-object p1, p0, Lorg/fork/ui/fragment/MusicActivity$DeviceAdapter;->this$0:Lorg/fork/ui/fragment/MusicActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    iput-object p2, p0, Lorg/fork/ui/fragment/MusicActivity$DeviceAdapter;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 393
    iget-object v0, p0, Lorg/fork/ui/fragment/MusicActivity$DeviceAdapter;->this$0:Lorg/fork/ui/fragment/MusicActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/MusicActivity;->access$needAskPermission(Lorg/fork/ui/fragment/MusicActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/fork/ui/fragment/MusicActivity$DeviceAdapter;->this$0:Lorg/fork/ui/fragment/MusicActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/MusicActivity;->access$getDeviceLoading$p(Lorg/fork/ui/fragment/MusicActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/fork/ui/fragment/MusicActivity$DeviceAdapter;->this$0:Lorg/fork/ui/fragment/MusicActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/MusicActivity;->access$getDeviceMusic$p(Lorg/fork/ui/fragment/MusicActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 394
    :cond_0
    iget-object v0, p0, Lorg/fork/ui/fragment/MusicActivity$DeviceAdapter;->this$0:Lorg/fork/ui/fragment/MusicActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/MusicActivity;->access$getDeviceMusic$p(Lorg/fork/ui/fragment/MusicActivity;)Ljava/util/List;

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

    .line 398
    iget-object p1, p0, Lorg/fork/ui/fragment/MusicActivity$DeviceAdapter;->this$0:Lorg/fork/ui/fragment/MusicActivity;

    invoke-static {p1}, Lorg/fork/ui/fragment/MusicActivity;->access$needAskPermission(Lorg/fork/ui/fragment/MusicActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->MUSIC_NO_PERMISSION:I

    goto :goto_0

    .line 399
    :cond_0
    iget-object p1, p0, Lorg/fork/ui/fragment/MusicActivity$DeviceAdapter;->this$0:Lorg/fork/ui/fragment/MusicActivity;

    invoke-static {p1}, Lorg/fork/ui/fragment/MusicActivity;->access$getDeviceLoading$p(Lorg/fork/ui/fragment/MusicActivity;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->LOADING:I

    goto :goto_0

    .line 400
    :cond_1
    iget-object p1, p0, Lorg/fork/ui/fragment/MusicActivity$DeviceAdapter;->this$0:Lorg/fork/ui/fragment/MusicActivity;

    invoke-static {p1}, Lorg/fork/ui/fragment/MusicActivity;->access$getDeviceMusic$p(Lorg/fork/ui/fragment/MusicActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->EMPTY:I

    goto :goto_0

    .line 401
    :cond_2
    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->SHARED_AUDIO:I

    :goto_0
    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 425
    sget-object v0, Lorg/fork/ui/fragment/MusicActivity;->Companion:Lorg/fork/ui/fragment/MusicActivity$Companion;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    invoke-static {v0, p1}, Lorg/fork/ui/fragment/MusicActivity$Companion;->access$isContentViewType(Lorg/fork/ui/fragment/MusicActivity$Companion;I)Z

    move-result p1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 419
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 420
    instance-of v0, p1, Lorg/telegram/ui/Cells/DialogsEmptyCell;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/telegram/ui/Cells/DialogsEmptyCell;

    sget-object p2, Lcom/smedialink/ui/music/MusicTab;->DEVICE:Lcom/smedialink/ui/music/MusicTab;

    invoke-virtual {p2}, Lcom/smedialink/ui/music/MusicTab;->getEmptyCellType()Lcom/smedialink/ui/dialogs/EmptyCellType;

    move-result-object p2

    invoke-virtual {p2}, Lcom/smedialink/ui/dialogs/EmptyCellType;->id()I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/DialogsEmptyCell;->setType(I)V

    goto :goto_1

    .line 421
    :cond_0
    instance-of v0, p1, Lorg/telegram/ui/Cells/SharedAudioCell;

    if-eqz v0, :cond_2

    check-cast p1, Lorg/telegram/ui/Cells/SharedAudioCell;

    iget-object v0, p0, Lorg/fork/ui/fragment/MusicActivity$DeviceAdapter;->this$0:Lorg/fork/ui/fragment/MusicActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/MusicActivity;->access$getDeviceMusic$p(Lorg/fork/ui/fragment/MusicActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MediaController$AudioEntry;

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$AudioEntry;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v1, p0, Lorg/fork/ui/fragment/MusicActivity$DeviceAdapter;->this$0:Lorg/fork/ui/fragment/MusicActivity;

    invoke-static {v1}, Lorg/fork/ui/fragment/MusicActivity;->access$getDeviceMusic$p(Lorg/fork/ui/fragment/MusicActivity;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v1

    if-eq p2, v1, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, v0, p2}, Lorg/telegram/ui/Cells/SharedAudioCell;->setMessageObject(Lorg/telegram/messenger/MessageObject;Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 388
    invoke-virtual {p0, p1, p2}, Lorg/fork/ui/fragment/MusicActivity$DeviceAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/ui/Components/RecyclerListView$Holder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/ui/Components/RecyclerListView$Holder;
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 405
    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->MUSIC_NO_PERMISSION:I

    const/4 v0, -0x2

    if-ne p2, p1, :cond_0

    new-instance p1, Lcom/smedialink/ui/music/NoPermissionMusicCell;

    iget-object v1, p0, Lorg/fork/ui/fragment/MusicActivity$DeviceAdapter;->this$0:Lorg/fork/ui/fragment/MusicActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "parentActivity"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v1}, Lcom/smedialink/ui/music/NoPermissionMusicCell;-><init>(Landroid/app/Activity;)V

    goto :goto_0

    .line 406
    :cond_0
    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->LOADING:I

    if-ne p2, p1, :cond_1

    new-instance p1, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/fork/ui/fragment/MusicActivity$DeviceAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 407
    new-instance v1, Lorg/telegram/ui/Cells/LoadingCell;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/Cells/LoadingCell;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x11

    invoke-static {v0, v0, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 409
    :cond_1
    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->EMPTY:I

    if-ne p2, p1, :cond_2

    new-instance p1, Lorg/telegram/ui/Cells/DialogsEmptyCell;

    iget-object v1, p0, Lorg/fork/ui/fragment/MusicActivity$DeviceAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, v1}, Lorg/telegram/ui/Cells/DialogsEmptyCell;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 410
    :cond_2
    iget-object p1, p0, Lorg/fork/ui/fragment/MusicActivity$DeviceAdapter;->context:Landroid/content/Context;

    new-instance v1, Lorg/fork/ui/fragment/MusicActivity$DeviceAdapter$onCreateViewHolder$2;

    invoke-direct {v1, p1}, Lorg/fork/ui/fragment/MusicActivity$DeviceAdapter$onCreateViewHolder$2;-><init>(Landroid/content/Context;)V

    move-object p1, v1

    .line 414
    :goto_0
    sget-object v1, Lorg/fork/ui/fragment/MusicActivity;->Companion:Lorg/fork/ui/fragment/MusicActivity$Companion;

    invoke-static {v1, p2}, Lorg/fork/ui/fragment/MusicActivity$Companion;->access$isContentViewType(Lorg/fork/ui/fragment/MusicActivity$Companion;I)Z

    move-result p2

    const/4 v1, -0x1

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    .line 415
    :goto_1
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-direct {p2, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 404
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
