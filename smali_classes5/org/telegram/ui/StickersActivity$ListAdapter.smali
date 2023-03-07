.class Lorg/telegram/ui/StickersActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "StickersActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/StickersActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private final featuredStickerSets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/telegram/tgnet/TLRPC$StickerSetCovered;",
            ">;"
        }
    .end annotation
.end field

.field private final loadingFeaturedStickerSets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private final selectedItems:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final stickerSets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/telegram/ui/StickersActivity;


# direct methods
.method public static synthetic $r8$lambda$BZ4CD-HNMkmsY8Z94a7Hr2VGnI8(Lorg/telegram/ui/StickersActivity$ListAdapter;Lorg/telegram/ui/Cells/StickerSetCell;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/StickersActivity$ListAdapter;->lambda$onCreateViewHolder$2(Lorg/telegram/ui/Cells/StickerSetCell;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$FybHhAxhGBtRqebdYFmkZsDfqI4(Lorg/telegram/ui/StickersActivity$ListAdapter;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/StickersActivity$ListAdapter;->lambda$onCreateViewHolder$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$M-tm84UjchjM5GxUIVBc0vE_uKU(Lorg/telegram/ui/StickersActivity$ListAdapter;[ILorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/StickersActivity$ListAdapter;->lambda$onCreateViewHolder$3([ILorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Nyw8AdYPne9ojqkAv3RQ-D1DPv0(Lorg/telegram/ui/StickersActivity$ListAdapter;Ljava/util/ArrayList;ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/StickersActivity$ListAdapter;->lambda$processSelectionMenu$0(Ljava/util/ArrayList;ILandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$bUX_jk5vTU_t2KxWqXA2MkXi_nk(Lorg/telegram/ui/StickersActivity$ListAdapter;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/StickersActivity$ListAdapter;->lambda$swapElements$5(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$kllcn9wKpRvPBXZ_lCo1gBrs5ss(Lorg/telegram/ui/StickersActivity$ListAdapter;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/StickersActivity$ListAdapter;->lambda$onBindViewHolder$1(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/StickersActivity;Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;",
            ">;",
            "Ljava/util/List<",
            "Lorg/telegram/tgnet/TLRPC$StickerSetCovered;",
            ">;)V"
        }
    .end annotation

    .line 915
    iput-object p1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 908
    new-instance p1, Landroidx/collection/LongSparseArray;

    invoke-direct {p1}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->selectedItems:Landroidx/collection/LongSparseArray;

    .line 909
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->stickerSets:Ljava/util/List;

    .line 910
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->featuredStickerSets:Ljava/util/List;

    .line 911
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->loadingFeaturedStickerSets:Ljava/util/List;

    .line 916
    iput-object p2, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->mContext:Landroid/content/Context;

    .line 917
    invoke-virtual {p0, p3}, Lorg/telegram/ui/StickersActivity$ListAdapter;->setStickerSets(Ljava/util/List;)V

    .line 918
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x3

    if-le p1, p2, :cond_0

    const/4 p1, 0x0

    .line 919
    invoke-interface {p4, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/StickersActivity$ListAdapter;->setFeaturedStickerSets(Ljava/util/List;)V

    goto :goto_0

    .line 921
    :cond_0
    invoke-virtual {p0, p4}, Lorg/telegram/ui/StickersActivity$ListAdapter;->setFeaturedStickerSets(Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method static synthetic access$500(Lorg/telegram/ui/StickersActivity$ListAdapter;I)V
    .locals 0

    .line 892
    invoke-direct {p0, p1}, Lorg/telegram/ui/StickersActivity$ListAdapter;->processSelectionMenu(I)V

    return-void
.end method

.method static synthetic access$600(Lorg/telegram/ui/StickersActivity$ListAdapter;)Ljava/util/List;
    .locals 0

    .line 892
    iget-object p0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->loadingFeaturedStickerSets:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/StickersActivity$ListAdapter;)Ljava/util/List;
    .locals 0

    .line 892
    iget-object p0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->stickerSets:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/StickersActivity$ListAdapter;)Ljava/util/List;
    .locals 0

    .line 892
    iget-object p0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->featuredStickerSets:Ljava/util/List;

    return-object p0
.end method

.method private addStickersBotSpan(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 5

    const-string v0, "@stickers"

    .line 1575
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1578
    :try_start_0
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1579
    new-instance v3, Lorg/telegram/ui/StickersActivity$ListAdapter$4;

    invoke-direct {v3, p0, v0}, Lorg/telegram/ui/StickersActivity$ListAdapter$4;-><init>(Lorg/telegram/ui/StickersActivity$ListAdapter;Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x9

    const/16 v4, 0x12

    .line 1585
    invoke-virtual {v2, v3, v1, v0, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    .line 1588
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_0
    return-object p1
.end method

.method private checkActionMode()V
    .locals 5

    .line 1533
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$000(Lorg/telegram/ui/StickersActivity;)Lorg/telegram/ui/StickersActivity$ListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/StickersActivity$ListAdapter;->getSelectedCount()I

    move-result v0

    .line 1534
    iget-object v1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v1}, Lorg/telegram/ui/StickersActivity;->access$5500(Lorg/telegram/ui/StickersActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v1

    const/4 v2, 0x2

    .line 1549
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-lez v0, :cond_0

    .line 1536
    invoke-direct {p0}, Lorg/telegram/ui/StickersActivity$ListAdapter;->checkActionModeIcons()V

    .line 1537
    iget-object v3, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v3}, Lorg/telegram/ui/StickersActivity;->access$5600(Lorg/telegram/ui/StickersActivity;)Lorg/telegram/ui/Components/NumberTextView;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lorg/telegram/ui/Components/NumberTextView;->setNumber(IZ)V

    if-nez v1, :cond_1

    .line 1539
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$5700(Lorg/telegram/ui/StickersActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->showActionMode()V

    .line 1540
    invoke-direct {p0, v2}, Lorg/telegram/ui/StickersActivity$ListAdapter;->notifyStickersItemsChanged(Ljava/lang/Object;)V

    .line 1541
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->stickersReorderingHintUsed:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$900(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    .line 1542
    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setStickersReorderingHintUsed(Z)V

    .line 1543
    sget v0, Lorg/telegram/messenger/R$string;->StickersReorderHint:I

    const-string v1, "StickersReorderHint"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1544
    iget-object v1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v1}, Lorg/telegram/ui/StickersActivity;->access$5800(Lorg/telegram/ui/StickersActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v1

    invoke-interface {v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/ReorderingBulletinLayout;

    iget-object v3, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v0, v4}, Lorg/telegram/ui/Components/ReorderingBulletinLayout;-><init>(Landroid/content/Context;Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/16 v0, 0xcb2

    invoke-static {v1, v2, v0}, Lorg/telegram/ui/Components/Bulletin;->make(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 1548
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$5900(Lorg/telegram/ui/StickersActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->hideActionMode()V

    .line 1549
    invoke-direct {p0, v2}, Lorg/telegram/ui/StickersActivity$ListAdapter;->notifyStickersItemsChanged(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private checkActionModeIcons()V
    .locals 7

    .line 1554
    invoke-virtual {p0}, Lorg/telegram/ui/StickersActivity$ListAdapter;->hasSelected()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1556
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->stickerSets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1557
    iget-object v3, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->selectedItems:Landroidx/collection/LongSparseArray;

    iget-object v4, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->stickerSets:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4, v5, v6}, Landroidx/collection/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->stickerSets:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$StickerSet;->official:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->stickerSets:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$StickerSet;->emojis:Z

    if-nez v3, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/16 v1, 0x8

    .line 1563
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$6000(Lorg/telegram/ui/StickersActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_3

    .line 1564
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$6000(Lorg/telegram/ui/StickersActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method private synthetic lambda$onBindViewHolder$1(Landroid/view/View;)V
    .locals 7

    .line 1096
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Cells/FeaturedStickerSetCell2;

    .line 1097
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/FeaturedStickerSetCell2;->getStickerSet()Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    move-result-object v2

    .line 1098
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->loadingFeaturedStickerSets:Ljava/util/List;

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v3, v1, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1102
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/StickersActivity;->access$1002(Lorg/telegram/ui/StickersActivity;Z)Z

    .line 1103
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->loadingFeaturedStickerSets:Ljava/util/List;

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1105
    invoke-virtual {p1, v1, v1}, Lorg/telegram/ui/Cells/FeaturedStickerSetCell2;->setDrawProgress(ZZ)V

    .line 1106
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/FeaturedStickerSetCell2;->isInstalled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1107
    iget-object p1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {p1}, Lorg/telegram/ui/StickersActivity;->access$6300(Lorg/telegram/ui/StickersActivity;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    iget-object p1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/MediaDataController;->toggleStickerSet(Landroid/content/Context;Lorg/telegram/tgnet/TLObject;ILorg/telegram/ui/ActionBar/BaseFragment;ZZ)V

    goto :goto_0

    .line 1109
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {p1}, Lorg/telegram/ui/StickersActivity;->access$6400(Lorg/telegram/ui/StickersActivity;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    iget-object p1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v3, 0x2

    iget-object v4, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/MediaDataController;->toggleStickerSet(Landroid/content/Context;Lorg/telegram/tgnet/TLObject;ILorg/telegram/ui/ActionBar/BaseFragment;ZZ)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onCreateViewHolder$2(Lorg/telegram/ui/Cells/StickerSetCell;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1372
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-nez p2, :cond_0

    .line 1373
    iget-object p2, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {p2}, Lorg/telegram/ui/StickersActivity;->access$6200(Lorg/telegram/ui/StickersActivity;)Landroidx/recyclerview/widget/ItemTouchHelper;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {p3}, Lorg/telegram/ui/StickersActivity;->access$200(Lorg/telegram/ui/StickersActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->startDrag(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$onCreateViewHolder$3([ILorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1409
    aget p1, p1, p4

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/StickersActivity$ListAdapter;->processSelectionOption(ILorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V

    return-void
.end method

.method private synthetic lambda$onCreateViewHolder$4(Landroid/view/View;)V
    .locals 10

    .line 1378
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Cells/StickerSetCell;

    .line 1379
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/StickerSetCell;->getStickersSet()Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object p1

    .line 1380
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1381
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1385
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$StickerSet;->official:Z

    const-string v2, "StickersReorder"

    const-string v3, "StickersHide"

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v1, :cond_0

    new-array v1, v5, [I

    .line 1386
    fill-array-data v1, :array_0

    new-array v7, v5, [Ljava/lang/CharSequence;

    .line 1387
    sget v8, Lorg/telegram/messenger/R$string;->StickersHide:I

    .line 1388
    invoke-static {v3, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v4

    sget v3, Lorg/telegram/messenger/R$string;->StickersReorder:I

    .line 1389
    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v6

    new-array v2, v5, [I

    .line 1391
    sget v3, Lorg/telegram/messenger/R$drawable;->msg_archive:I

    aput v3, v2, v4

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_reorder:I

    aput v3, v2, v6

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    new-array v7, v1, [I

    .line 1393
    fill-array-data v7, :array_1

    new-array v8, v1, [Ljava/lang/CharSequence;

    .line 1394
    sget v9, Lorg/telegram/messenger/R$string;->StickersHide:I

    .line 1395
    invoke-static {v3, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v4

    sget v3, Lorg/telegram/messenger/R$string;->StickersCopy:I

    const-string v9, "StickersCopy"

    .line 1396
    invoke-static {v9, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v6

    sget v3, Lorg/telegram/messenger/R$string;->StickersReorder:I

    .line 1397
    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v5

    sget v2, Lorg/telegram/messenger/R$string;->StickersShare:I

    const-string v3, "StickersShare"

    .line 1398
    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v8, v3

    sget v2, Lorg/telegram/messenger/R$string;->StickersRemove:I

    const-string v9, "StickersRemove"

    .line 1399
    invoke-static {v9, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x4

    aput-object v2, v8, v9

    new-array v2, v1, [I

    .line 1401
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_archive:I

    aput v1, v2, v4

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_link:I

    aput v1, v2, v6

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_reorder:I

    aput v1, v2, v5

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_share:I

    aput v1, v2, v3

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    aput v1, v2, v9

    move-object v1, v7

    move-object v7, v8

    .line 1409
    :goto_0
    new-instance v3, Lorg/telegram/ui/StickersActivity$ListAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v1, p1}, Lorg/telegram/ui/StickersActivity$ListAdapter$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/StickersActivity$ListAdapter;[ILorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V

    invoke-virtual {v0, v7, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;[ILandroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1411
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 1412
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 1414
    array-length v0, v1

    sub-int/2addr v0, v6

    aget v0, v1, v0

    if-ne v0, v6, :cond_1

    .line 1415
    array-length v0, v7

    sub-int/2addr v0, v6

    const-string v1, "dialogTextRed2"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    const-string v2, "dialogRedIcon"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->setItemColor(III)V

    :cond_1
    return-void

    :array_0
    .array-data 4
        0x0
        0x4
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3
        0x4
        0x2
        0x1
    .end array-data
.end method

.method private synthetic lambda$processSelectionMenu$0(Ljava/util/ArrayList;ILandroid/content/DialogInterface;I)V
    .locals 6

    .line 1026
    iget-object p3, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {p3}, Lorg/telegram/ui/StickersActivity;->access$000(Lorg/telegram/ui/StickersActivity;)Lorg/telegram/ui/StickersActivity$ListAdapter;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/ui/StickersActivity$ListAdapter;->clearSelected()V

    .line 1027
    iget-object p3, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {p3}, Lorg/telegram/ui/StickersActivity;->access$6500(Lorg/telegram/ui/StickersActivity;)I

    move-result p3

    invoke-static {p3}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    iget-object p3, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {p3}, Lorg/telegram/ui/StickersActivity;->access$900(Lorg/telegram/ui/StickersActivity;)I

    move-result v2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    const/4 p2, 0x0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    const/4 v5, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/MediaDataController;->toggleStickerSets(Ljava/util/ArrayList;IILorg/telegram/ui/ActionBar/BaseFragment;Z)V

    return-void
.end method

.method private synthetic lambda$swapElements$5(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)I
    .locals 1

    .line 1483
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->stickerSets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 1484
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->stickerSets:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    sub-int/2addr p1, p2

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private notifyStickersItemsChanged(Ljava/lang/Object;)V
    .locals 3

    .line 1570
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$1400(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v1}, Lorg/telegram/ui/StickersActivity;->access$1500(Lorg/telegram/ui/StickersActivity;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v2}, Lorg/telegram/ui/StickersActivity;->access$1400(Lorg/telegram/ui/StickersActivity;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    return-void
.end method

.method private processSelectionMenu(I)V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    .line 962
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 963
    iget-object v1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->stickerSets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_2

    .line 964
    iget-object v2, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->stickerSets:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .line 965
    iget-object v3, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->selectedItems:Landroidx/collection/LongSparseArray;

    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4, v5, v6}, Landroidx/collection/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 966
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "\n"

    .line 967
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 969
    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v3, v2}, Lorg/telegram/ui/StickersActivity;->access$1600(Lorg/telegram/ui/StickersActivity;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 972
    :cond_2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 973
    iget-object p1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {p1}, Lorg/telegram/ui/StickersActivity;->access$1700(Lorg/telegram/ui/StickersActivity;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v4, v6

    invoke-static/range {v2 .. v7}, Lorg/telegram/ui/Components/ShareAlert;->createShareAlert(Landroid/content/Context;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;ZLjava/lang/String;Z)Lorg/telegram/ui/Components/ShareAlert;

    move-result-object p1

    .line 974
    new-instance v0, Lorg/telegram/ui/StickersActivity$ListAdapter$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/StickersActivity$ListAdapter$1;-><init>(Lorg/telegram/ui/StickersActivity$ListAdapter;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ShareAlert;->setDelegate(Lorg/telegram/ui/Components/ShareAlert$ShareAlertDelegate;)V

    .line 986
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    goto/16 :goto_5

    :cond_3
    const/4 v1, 0x1

    if-eqz p1, :cond_4

    if-ne p1, v1, :cond_b

    .line 988
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->selectedItems:Landroidx/collection/LongSparseArray;

    invoke-virtual {v3}, Landroidx/collection/LongSparseArray;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 990
    iget-object v3, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->stickerSets:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_6

    .line 991
    iget-object v5, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->stickerSets:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    .line 992
    iget-object v6, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->selectedItems:Landroidx/collection/LongSparseArray;

    iget-wide v7, v5, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v6, v7, v8, v9}, Landroidx/collection/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 993
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 997
    :cond_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_b

    if-eq v3, v1, :cond_8

    .line 1013
    new-instance v4, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v5, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v5, "StickerSets"

    if-ne p1, v1, :cond_7

    .line 1017
    sget v6, Lorg/telegram/messenger/R$string;->DeleteStickerSetsAlertTitle:I

    new-array v7, v1, [Ljava/lang/Object;

    new-array v8, v0, [Ljava/lang/Object;

    invoke-static {v5, v3, v8}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v0

    const-string v5, "DeleteStickerSetsAlertTitle"

    invoke-static {v5, v6, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1018
    sget v5, Lorg/telegram/messenger/R$string;->DeleteStickersAlertMessage:I

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v0

    const-string v0, "DeleteStickersAlertMessage"

    invoke-static {v0, v5, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1019
    sget v0, Lorg/telegram/messenger/R$string;->Delete:I

    const-string v3, "Delete"

    invoke-static {v3, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 1021
    :cond_7
    sget v6, Lorg/telegram/messenger/R$string;->ArchiveStickerSetsAlertTitle:I

    new-array v7, v1, [Ljava/lang/Object;

    new-array v8, v0, [Ljava/lang/Object;

    invoke-static {v5, v3, v8}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v0

    const-string v5, "ArchiveStickerSetsAlertTitle"

    invoke-static {v5, v6, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1022
    sget v5, Lorg/telegram/messenger/R$string;->ArchiveStickersAlertMessage:I

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v0

    const-string v0, "ArchiveStickersAlertMessage"

    invoke-static {v0, v5, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1023
    sget v0, Lorg/telegram/messenger/R$string;->Archive:I

    const-string v3, "Archive"

    invoke-static {v3, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1025
    :goto_2
    new-instance v3, Lorg/telegram/ui/StickersActivity$ListAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v2, p1}, Lorg/telegram/ui/StickersActivity$ListAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/StickersActivity$ListAdapter;Ljava/util/ArrayList;I)V

    invoke-virtual {v4, v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1029
    sget v0, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v2, "Cancel"

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v4, v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1031
    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    .line 1032
    iget-object v2, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    if-ne p1, v1, :cond_b

    const/4 p1, -0x1

    .line 1034
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_b

    const-string v0, "dialogTextRed2"

    .line 1036
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_5

    .line 1003
    :cond_8
    iget-object v1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->stickerSets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_3
    if-ge v0, v1, :cond_a

    .line 1004
    iget-object v2, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->stickerSets:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .line 1005
    iget-object v3, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->selectedItems:Landroidx/collection/LongSparseArray;

    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4, v5, v6}, Landroidx/collection/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1006
    invoke-direct {p0, p1, v2}, Lorg/telegram/ui/StickersActivity$ListAdapter;->processSelectionOption(ILorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V

    goto :goto_4

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1010
    :cond_a
    :goto_4
    iget-object p1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {p1}, Lorg/telegram/ui/StickersActivity;->access$000(Lorg/telegram/ui/StickersActivity;)Lorg/telegram/ui/StickersActivity$ListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/StickersActivity$ListAdapter;->clearSelected()V

    :cond_b
    :goto_5
    return-void
.end method

.method private processSelectionOption(ILorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V
    .locals 9

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 1046
    iget-object p1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {p1}, Lorg/telegram/ui/StickersActivity;->access$1800(Lorg/telegram/ui/StickersActivity;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v2

    iget-object p1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$StickerSet;->archived:Z

    if-nez p1, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x2

    :goto_0
    iget-object v6, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v4, p2

    invoke-virtual/range {v2 .. v8}, Lorg/telegram/messenger/MediaDataController;->toggleStickerSet(Landroid/content/Context;Lorg/telegram/tgnet/TLObject;ILorg/telegram/ui/ActionBar/BaseFragment;ZZ)V

    goto/16 :goto_2

    :cond_1
    if-ne p1, v1, :cond_2

    .line 1048
    iget-object p1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {p1}, Lorg/telegram/ui/StickersActivity;->access$1900(Lorg/telegram/ui/StickersActivity;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    iget-object p1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/MediaDataController;->toggleStickerSet(Landroid/content/Context;Lorg/telegram/tgnet/TLObject;ILorg/telegram/ui/ActionBar/BaseFragment;ZZ)V

    goto/16 :goto_2

    :cond_2
    if-ne p1, v0, :cond_3

    .line 1051
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEND"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "text/plain"

    .line 1052
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.TEXT"

    .line 1053
    iget-object v1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v1, p2}, Lorg/telegram/ui/StickersActivity;->access$1600(Lorg/telegram/ui/StickersActivity;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1054
    iget-object p2, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    const-string v0, "StickersShare"

    sget v1, Lorg/telegram/messenger/R$string;->StickersShare:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    const/16 v0, 0x1f4

    invoke-virtual {p2, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception p1

    .line 1056
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_5

    .line 1060
    :try_start_1
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v2}, Lorg/telegram/ui/StickersActivity;->access$2000(Lorg/telegram/ui/StickersActivity;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->emojis:Z

    if-eqz v2, :cond_4

    const-string v2, "addemoji"

    goto :goto_1

    :cond_4
    const-string v2, "addstickers"

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/%s"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$StickerSet;->short_name:Ljava/lang/String;

    aput-object p2, v1, v2

    invoke-static {p1, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1061
    sget-object p2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v0, "clipboard"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/ClipboardManager;

    const-string v0, "label"

    .line 1062
    invoke-static {v0, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    .line 1063
    invoke-virtual {p2, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 1064
    iget-object p1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory;->createCopyLinkBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 1066
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_5
    const/4 v0, 0x4

    if-ne p1, v0, :cond_6

    .line 1069
    iget-object p1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->stickerSets:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_6

    .line 1071
    iget-object p2, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {p2}, Lorg/telegram/ui/StickersActivity;->access$000(Lorg/telegram/ui/StickersActivity;)Lorg/telegram/ui/StickersActivity$ListAdapter;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$1400(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p2, v0}, Lorg/telegram/ui/StickersActivity$ListAdapter;->toggleSelected(I)V

    :cond_6
    :goto_2
    return-void
.end method

.method private swapListElements(Ljava/util/List;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;",
            ">;II)V"
        }
    .end annotation

    .line 1500
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .line 1501
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    invoke-interface {p1, p2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1502
    invoke-interface {p1, p3, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public clearSelected()V
    .locals 1

    .line 1513
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->selectedItems:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->clear()V

    const/4 v0, 0x1

    .line 1514
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/telegram/ui/StickersActivity$ListAdapter;->notifyStickersItemsChanged(Ljava/lang/Object;)V

    .line 1515
    invoke-direct {p0}, Lorg/telegram/ui/StickersActivity$ListAdapter;->checkActionMode()V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 947
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$1100(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 952
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$1200(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$1300(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 953
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->featuredStickerSets:Ljava/util/List;

    iget-object v1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v1}, Lorg/telegram/ui/StickersActivity;->access$1200(Lorg/telegram/ui/StickersActivity;)I

    move-result v1

    sub-int/2addr p1, v1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    return-wide v0

    .line 954
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$1400(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    if-lt p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$1500(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 955
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->stickerSets:Ljava/util/List;

    iget-object v1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v1}, Lorg/telegram/ui/StickersActivity;->access$1400(Lorg/telegram/ui/StickersActivity;)I

    move-result v1

    sub-int/2addr p1, v1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    return-wide v0

    :cond_1
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 1451
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$1200(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$1300(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 p1, 0x7

    return p1

    .line 1453
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$1400(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    const/4 v1, 0x0

    if-lt p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$1500(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    if-ge p1, v0, :cond_1

    return v1

    .line 1455
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$2400(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    if-eq p1, v0, :cond_c

    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$2500(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    if-eq p1, v0, :cond_c

    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$2600(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    if-eq p1, v0, :cond_c

    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$2700(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    if-eq p1, v0, :cond_c

    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$2800(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    if-eq p1, v0, :cond_c

    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$2900(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    if-ne p1, v0, :cond_2

    goto/16 :goto_4

    .line 1457
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$3200(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    if-eq p1, v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$3400(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    if-eq p1, v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$3700(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    if-eq p1, v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$3900(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    if-eq p1, v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$3100(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    if-eq p1, v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$3000(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    if-ne p1, v0, :cond_3

    goto :goto_3

    .line 1459
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$4100(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    if-eq p1, v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$5200(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    if-ne p1, v0, :cond_4

    goto :goto_2

    .line 1461
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$4300(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    if-eq p1, v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$4400(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    if-eq p1, v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$4500(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    if-eq p1, v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$4600(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    if-eq p1, v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$4200(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    if-ne p1, v0, :cond_5

    goto :goto_1

    .line 1463
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$5300(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    if-ne p1, v0, :cond_6

    const/4 p1, 0x5

    return p1

    .line 1465
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$2100(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    if-eq p1, v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$2200(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    if-ne p1, v0, :cond_7

    goto :goto_0

    :cond_7
    return v1

    :cond_8
    :goto_0
    const/4 p1, 0x6

    return p1

    :cond_9
    :goto_1
    const/4 p1, 0x4

    return p1

    :cond_a
    :goto_2
    const/4 p1, 0x3

    return p1

    :cond_b
    :goto_3
    const/4 p1, 0x2

    return p1

    :cond_c
    :goto_4
    const/4 p1, 0x1

    return p1
.end method

.method public getSelectedCount()I
    .locals 4

    .line 1524
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->selectedItems:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 1525
    iget-object v3, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->selectedItems:Landroidx/collection/LongSparseArray;

    invoke-virtual {v3, v1}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public hasSelected()Z
    .locals 2

    .line 1519
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->selectedItems:Landroidx/collection/LongSparseArray;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/collection/LongSparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    .line 1312
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public notifyDataSetChanged()V
    .locals 2

    .line 928
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 930
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$1000(Lorg/telegram/ui/StickersActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 931
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/StickersActivity;->access$1002(Lorg/telegram/ui/StickersActivity;Z)Z

    :cond_0
    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 11

    .line 1078
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_a

    .line 1088
    :pswitch_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/FeaturedStickerSetCell2;

    .line 1089
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$1200(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    sub-int/2addr p2, v0

    .line 1090
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->featuredStickerSets:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    .line 1091
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$1000(Lorg/telegram/ui/StickersActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/FeaturedStickerSetCell2;->getStickerSet()Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/FeaturedStickerSetCell2;->getStickerSet()Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    iget-object v2, p2, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v5, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    cmp-long v2, v0, v5

    if-nez v2, :cond_1

    :cond_0
    const/4 v3, 0x1

    :cond_1
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, p1

    move-object v6, p2

    move v10, v3

    .line 1092
    invoke-virtual/range {v5 .. v10}, Lorg/telegram/ui/Cells/FeaturedStickerSetCell2;->setStickersSet(Lorg/telegram/tgnet/TLRPC$StickerSetCovered;ZZZZ)V

    .line 1093
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->loadingFeaturedStickerSets:Ljava/util/List;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v1, p2, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p1, p2, v3}, Lorg/telegram/ui/Cells/FeaturedStickerSetCell2;->setDrawProgress(ZZ)V

    .line 1095
    new-instance p2, Lorg/telegram/ui/StickersActivity$ListAdapter$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0}, Lorg/telegram/ui/StickersActivity$ListAdapter$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/StickersActivity$ListAdapter;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/FeaturedStickerSetCell2;->setAddOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_a

    .line 1080
    :pswitch_1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/HeaderCell;

    .line 1081
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$2100(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    if-ne p2, v0, :cond_3

    .line 1082
    iget-object p2, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {p2}, Lorg/telegram/ui/StickersActivity;->access$900(Lorg/telegram/ui/StickersActivity;)I

    move-result p2

    if-ne p2, v2, :cond_2

    sget p2, Lorg/telegram/messenger/R$string;->FeaturedEmojiPacks:I

    goto :goto_0

    :cond_2
    sget p2, Lorg/telegram/messenger/R$string;->FeaturedStickers:I

    :goto_0
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 1083
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$2200(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    if-ne p2, v0, :cond_28

    .line 1084
    iget-object p2, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {p2}, Lorg/telegram/ui/StickersActivity;->access$900(Lorg/telegram/ui/StickersActivity;)I

    move-result p2

    if-ne p2, v2, :cond_4

    sget p2, Lorg/telegram/messenger/R$string;->ChooseStickerMyEmojiPacks:I

    goto :goto_1

    :cond_4
    sget p2, Lorg/telegram/messenger/R$string;->ChooseStickerMyStickerSets:I

    :goto_1
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 1251
    :pswitch_2
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 1252
    sget p2, Lorg/telegram/messenger/R$string;->DoubleTapSetting:I

    const-string v0, "DoubleTapSetting"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/CharSequence;Z)V

    .line 1253
    sget p2, Lorg/telegram/messenger/R$drawable;->msg_reactions2:I

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextSettingsCell;->setIcon(I)V

    .line 1254
    iget-object p2, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {p2}, Lorg/telegram/ui/StickersActivity;->access$4700(Lorg/telegram/ui/StickersActivity;)I

    move-result p2

    invoke-static {p2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/MediaDataController;->getDoubleTapReaction()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_28

    const-string v0, "animated_"

    .line 1256
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x9

    .line 1258
    :try_start_0
    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 1259
    iget-object p2, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {p2}, Lorg/telegram/ui/StickersActivity;->access$4800(Lorg/telegram/ui/StickersActivity;)I

    move-result p2

    invoke-static {p2, v1, v2, v3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->make(IIJ)Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    move-result-object p2

    .line 1260
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextSettingsCell;->getValueBackupImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->addView(Landroid/view/View;)V

    .line 1261
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextSettingsCell;->getValueBackupImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_a

    .line 1264
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$4900(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaDataController;->getReactionsMap()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v5, p2

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;

    if-eqz v5, :cond_28

    .line 1266
    iget-object p2, v5, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->static_icon:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    const/high16 v0, 0x3f800000    # 1.0f

    const-string v1, "windowBackgroundGray"

    invoke-static {p2, v1, v0}, Lorg/telegram/messenger/DocumentObject;->getSvgThumb(Ljava/util/ArrayList;Ljava/lang/String;F)Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    move-result-object v3

    .line 1267
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextSettingsCell;->getValueBackupImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    iget-object p1, v5, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->center_icon:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {p1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v1

    const/4 v6, 0x1

    const-string v2, "100_100_lastreactframe"

    const-string v4, "webp"

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    goto/16 :goto_a

    .line 1235
    :pswitch_3
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 1237
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$4200(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    if-ne p2, v0, :cond_6

    .line 1238
    sget p2, Lorg/telegram/messenger/R$string;->settings_emoji_premium_suggest_sets:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->isSuggestPremiumReactionsEmoji:Z

    invoke-virtual {p1, p2, v0, v4}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_a

    .line 1240
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$4300(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    if-ne p2, v0, :cond_7

    .line 1241
    sget p2, Lorg/telegram/messenger/R$string;->LoopAnimatedStickers:I

    const-string v0, "LoopAnimatedStickers"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->loopStickers()Z

    move-result v0

    invoke-virtual {p1, p2, v0, v4}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_a

    .line 1242
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$4400(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    if-ne p2, v0, :cond_8

    .line 1243
    sget p2, Lorg/telegram/messenger/R$string;->LargeEmoji:I

    const-string v0, "LargeEmoji"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->allowBigEmoji:Z

    invoke-virtual {p1, p2, v0, v4}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_a

    .line 1244
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$4500(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    if-ne p2, v0, :cond_9

    .line 1245
    sget p2, Lorg/telegram/messenger/R$string;->SuggestAnimatedEmoji:I

    const-string v0, "SuggestAnimatedEmoji"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->suggestAnimatedEmoji:Z

    invoke-virtual {p1, p2, v0, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_a

    .line 1246
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$4600(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    if-ne p2, v0, :cond_28

    const-string p2, "DynamicPackOrder"

    .line 1247
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->updateStickersOrderOnSend:Z

    invoke-virtual {p1, p2, v0, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_a

    .line 1230
    :pswitch_4
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$4100(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    if-ne p2, v0, :cond_28

    .line 1231
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object p2, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->mContext:Landroid/content/Context;

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    const-string v1, "windowBackgroundGrayShadow"

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_a

    .line 1173
    :pswitch_5
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextCell;

    .line 1175
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$3000(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    if-ne p2, v0, :cond_a

    .line 1176
    sget p2, Lorg/telegram/messenger/R$string;->stickers_size_title:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lorg/telegram/messenger/SharedConfig;->selectedStickersSize:Lorg/fork/enums/StickersSize;

    invoke-virtual {v0}, Lorg/fork/enums/StickersSize;->getTitleResId()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0, v4}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_a

    .line 1178
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$3100(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    if-ne p2, v0, :cond_c

    const-string p2, "windowBackgroundWhiteBlueText4"

    .line 1179
    invoke-virtual {p1, p2, p2}, Lorg/telegram/ui/Cells/TextCell;->setColors(Ljava/lang/String;Ljava/lang/String;)V

    .line 1180
    iget-object p2, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {p2}, Lorg/telegram/ui/StickersActivity;->access$900(Lorg/telegram/ui/StickersActivity;)I

    move-result p2

    if-ne p2, v2, :cond_b

    .line 1181
    sget p2, Lorg/telegram/messenger/R$string;->ShowMoreEmojiPacks:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$drawable;->msg_trending:I

    invoke-virtual {p1, p2, v0, v3}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;IZ)V

    goto/16 :goto_a

    .line 1183
    :cond_b
    sget p2, Lorg/telegram/messenger/R$string;->ShowMoreStickers:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$drawable;->msg_trending:I

    invoke-virtual {p1, p2, v0, v3}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;IZ)V

    goto/16 :goto_a

    .line 1186
    :cond_c
    iget-object v0, p1, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setTranslationX(F)V

    const-string v0, "windowBackgroundWhiteGrayIcon"

    const-string v5, "windowBackgroundWhiteBlackText"

    .line 1187
    invoke-virtual {p1, v0, v5}, Lorg/telegram/ui/Cells/TextCell;->setColors(Ljava/lang/String;Ljava/lang/String;)V

    .line 1188
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$3200(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    const-string v5, ""

    if-ne p2, v0, :cond_10

    .line 1189
    iget-object p2, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {p2}, Lorg/telegram/ui/StickersActivity;->access$3300(Lorg/telegram/ui/StickersActivity;)I

    move-result p2

    invoke-static {p2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$900(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    invoke-virtual {p2, v0}, Lorg/telegram/messenger/MediaDataController;->getArchivedStickersCount(I)I

    move-result p2

    if-lez p2, :cond_d

    .line 1190
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 1191
    :cond_d
    iget-object p2, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {p2}, Lorg/telegram/ui/StickersActivity;->access$900(Lorg/telegram/ui/StickersActivity;)I

    move-result p2

    if-nez p2, :cond_e

    .line 1192
    sget p2, Lorg/telegram/messenger/R$string;->ArchivedStickers:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$drawable;->msg_archived_stickers:I

    invoke-virtual {p1, p2, v5, v0, v4}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_a

    .line 1193
    :cond_e
    iget-object p2, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {p2}, Lorg/telegram/ui/StickersActivity;->access$900(Lorg/telegram/ui/StickersActivity;)I

    move-result p2

    if-ne p2, v2, :cond_f

    .line 1194
    sget p2, Lorg/telegram/messenger/R$string;->ArchivedEmojiPacks:I

    const-string v0, "ArchivedEmojiPacks"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v5, v3, v4}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto/16 :goto_a

    .line 1196
    :cond_f
    sget p2, Lorg/telegram/messenger/R$string;->ArchivedMasks:I

    const-string v0, "ArchivedMasks"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v5, v3, v4}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto/16 :goto_a

    .line 1198
    :cond_10
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$3400(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    if-ne p2, v0, :cond_12

    .line 1200
    iget-object p2, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {p2}, Lorg/telegram/ui/StickersActivity;->access$3500(Lorg/telegram/ui/StickersActivity;)I

    move-result p2

    invoke-static {p2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p2

    .line 1201
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$3600(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {p2, v4}, Lorg/telegram/messenger/MediaDataController;->getStickerSets(I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->filterPremiumStickers(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2, v4}, Lorg/telegram/messenger/MediaDataController;->getArchivedStickersCount(I)I

    move-result p2

    add-int/2addr v0, p2

    .line 1202
    sget p2, Lorg/telegram/messenger/R$string;->Masks:I

    const-string v1, "Masks"

    invoke-static {v1, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    if-lez v0, :cond_11

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    :cond_11
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_mask:I

    invoke-virtual {p1, p2, v5, v0, v4}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_a

    .line 1203
    :cond_12
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$3700(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    if-ne p2, v0, :cond_14

    .line 1205
    iget-object p2, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {p2}, Lorg/telegram/ui/StickersActivity;->access$3800(Lorg/telegram/ui/StickersActivity;)I

    move-result p2

    invoke-static {p2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p2

    .line 1206
    invoke-virtual {p2, v2}, Lorg/telegram/messenger/MediaDataController;->getStickerSets(I)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 1207
    iget-object v0, p1, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 1208
    sget v0, Lorg/telegram/messenger/R$string;->Emoji:I

    const-string v1, "Emoji"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-lez p2, :cond_13

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    :cond_13
    sget p2, Lorg/telegram/messenger/R$drawable;->input_smile:I

    invoke-virtual {p1, v0, v5, p2, v4}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_a

    .line 1209
    :cond_14
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$3900(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    if-ne p2, v0, :cond_28

    .line 1211
    sget p2, Lorg/telegram/messenger/SharedConfig;->suggestStickers:I

    if-eqz p2, :cond_16

    if-eq p2, v4, :cond_15

    .line 1220
    sget p2, Lorg/telegram/messenger/R$string;->SuggestStickersNone:I

    const-string v0, "SuggestStickersNone"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    .line 1216
    :cond_15
    sget p2, Lorg/telegram/messenger/R$string;->SuggestStickersInstalled:I

    const-string v0, "SuggestStickersInstalled"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    .line 1213
    :cond_16
    sget p2, Lorg/telegram/messenger/R$string;->SuggestStickersAll:I

    const-string v0, "SuggestStickersAll"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 1223
    :goto_2
    sget v0, Lorg/telegram/messenger/R$string;->SuggestStickers:I

    const-string v1, "SuggestStickers"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v1}, Lorg/telegram/ui/StickersActivity;->access$4000(Lorg/telegram/ui/StickersActivity;)Z

    move-result v1

    invoke-virtual {p1, v0, p2, v1, v4}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 1224
    iget-object p1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {p1, v3}, Lorg/telegram/ui/StickersActivity;->access$4002(Lorg/telegram/ui/StickersActivity;Z)Z

    goto/16 :goto_a

    .line 1149
    :pswitch_6
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 1150
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$2400(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    if-ne p2, v0, :cond_18

    .line 1152
    iget-object p2, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {p2}, Lorg/telegram/ui/StickersActivity;->access$900(Lorg/telegram/ui/StickersActivity;)I

    move-result p2

    if-ne p2, v2, :cond_17

    .line 1153
    sget p2, Lorg/telegram/messenger/R$string;->EmojiBotInfo:I

    const-string v0, "EmojiBotInfo"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    .line 1154
    :cond_17
    sget p2, Lorg/telegram/messenger/R$string;->StickersBotInfo:I

    const-string v0, "StickersBotInfo"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 1151
    :goto_3
    invoke-direct {p0, p2}, Lorg/telegram/ui/StickersActivity$ListAdapter;->addStickersBotSpan(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 1156
    :cond_18
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$2500(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    if-ne p2, v0, :cond_1a

    .line 1157
    iget-object p2, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {p2}, Lorg/telegram/ui/StickersActivity;->access$900(Lorg/telegram/ui/StickersActivity;)I

    move-result p2

    if-nez p2, :cond_19

    .line 1158
    sget p2, Lorg/telegram/messenger/R$string;->ArchivedStickersInfo:I

    const-string v0, "ArchivedStickersInfo"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 1160
    :cond_19
    sget p2, Lorg/telegram/messenger/R$string;->ArchivedMasksInfo:I

    const-string v0, "ArchivedMasksInfo"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 1162
    :cond_1a
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$2600(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    if-ne p2, v0, :cond_1b

    .line 1163
    sget p2, Lorg/telegram/messenger/R$string;->LoopAnimatedStickersInfo:I

    const-string v0, "LoopAnimatedStickersInfo"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 1164
    :cond_1b
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$2700(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    if-ne p2, v0, :cond_1c

    .line 1165
    sget p2, Lorg/telegram/messenger/R$string;->SuggestAnimatedEmojiInfo:I

    const-string v0, "SuggestAnimatedEmojiInfo"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 1166
    :cond_1c
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$2800(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    if-ne p2, v0, :cond_1d

    .line 1167
    sget p2, Lorg/telegram/messenger/R$string;->MasksInfo:I

    const-string v0, "MasksInfo"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 1168
    :cond_1d
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$2900(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    if-ne p2, v0, :cond_28

    const-string p2, "DynamicPackOrderInfo"

    .line 1169
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 1116
    :pswitch_7
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/StickerSetCell;

    .line 1117
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$1400(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    sub-int v0, p2, v0

    .line 1118
    iget-object v2, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->stickerSets:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .line 1119
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/StickerSetCell;->getStickersSet()Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v5

    if-nez v5, :cond_1e

    if-eqz v2, :cond_1f

    :cond_1e
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/StickerSetCell;->getStickersSet()Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v5

    if-eqz v5, :cond_20

    if-eqz v2, :cond_20

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/StickerSetCell;->getStickersSet()Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    iget-object v7, v2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v7, v7, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    cmp-long v9, v5, v7

    if-nez v9, :cond_20

    :cond_1f
    const/4 v5, 0x1

    goto :goto_4

    :cond_20
    const/4 v5, 0x0

    .line 1120
    :goto_4
    iget-object v6, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->stickerSets:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v4

    if-eq v0, v6, :cond_21

    const/4 v0, 0x1

    goto :goto_5

    :cond_21
    const/4 v0, 0x0

    :goto_5
    invoke-virtual {p1, v2, v0}, Lorg/telegram/ui/Cells/StickerSetCell;->setStickersSet(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Z)V

    .line 1121
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->selectedItems:Landroidx/collection/LongSparseArray;

    invoke-virtual {p0, p2}, Lorg/telegram/ui/StickersActivity$ListAdapter;->getItemId(I)J

    move-result-wide v6

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v6, v7, p2}, Landroidx/collection/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2, v3}, Lorg/telegram/ui/Cells/StickerSetCell;->setChecked(ZZ)V

    .line 1122
    invoke-virtual {p0}, Lorg/telegram/ui/StickersActivity$ListAdapter;->hasSelected()Z

    move-result p2

    invoke-virtual {p1, p2, v3}, Lorg/telegram/ui/Cells/StickerSetCell;->setReorderable(ZZ)V

    if-eqz v2, :cond_28

    .line 1123
    iget-object p2, v2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-eqz p2, :cond_28

    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$StickerSet;->emojis:Z

    if-eqz p2, :cond_28

    .line 1124
    iget-object p2, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object p2

    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-virtual {p2, v6, v7}, Lorg/telegram/messenger/MediaDataController;->isStickerPackInstalled(J)Z

    move-result p2

    .line 1125
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$2300(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v0

    xor-int/2addr v0, v4

    if-eqz v0, :cond_24

    const/4 v6, 0x0

    .line 1128
    :goto_6
    iget-object v7, v2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_23

    .line 1129
    iget-object v7, v2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v7}, Lorg/telegram/messenger/MessageObject;->isFreeEmoji(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v7

    if-nez v7, :cond_22

    const/4 v6, 0x1

    goto :goto_7

    :cond_22
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_23
    const/4 v6, 0x0

    :goto_7
    if-nez v6, :cond_24

    goto :goto_8

    :cond_24
    move v3, v0

    :goto_8
    if-eqz v3, :cond_26

    if-eqz p2, :cond_25

    .line 1140
    iget-object p2, v2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$StickerSet;->official:Z

    if-nez p2, :cond_25

    goto :goto_9

    :cond_25
    const/4 v1, 0x1

    goto :goto_9

    :cond_26
    if-eqz p2, :cond_27

    const/4 v1, 0x4

    goto :goto_9

    :cond_27
    const/4 v1, 0x3

    .line 1138
    :goto_9
    invoke-virtual {p1, v1, v5}, Lorg/telegram/ui/Cells/StickerSetCell;->updateButtonState(IZ)V

    :catch_0
    :cond_28
    :goto_a
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 6

    .line 1278
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1279
    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/StickersActivity$ListAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    goto/16 :goto_0

    .line 1281
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    goto/16 :goto_0

    .line 1302
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_7

    iget-object p3, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {p3}, Lorg/telegram/ui/StickersActivity;->access$1200(Lorg/telegram/ui/StickersActivity;)I

    move-result p3

    if-lt p2, p3, :cond_7

    iget-object p3, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {p3}, Lorg/telegram/ui/StickersActivity;->access$1300(Lorg/telegram/ui/StickersActivity;)I

    move-result p3

    if-gt p2, p3, :cond_7

    .line 1303
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell2;

    iget-object p1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->featuredStickerSets:Ljava/util/List;

    iget-object p3, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {p3}, Lorg/telegram/ui/StickersActivity;->access$1200(Lorg/telegram/ui/StickersActivity;)I

    move-result p3

    sub-int/2addr p2, p3

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Cells/FeaturedStickerSetCell2;->setStickersSet(Lorg/telegram/tgnet/TLRPC$StickerSetCovered;ZZZZ)V

    goto/16 :goto_0

    .line 1297
    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_7

    iget-object p3, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {p3}, Lorg/telegram/ui/StickersActivity;->access$4300(Lorg/telegram/ui/StickersActivity;)I

    move-result p3

    if-ne p2, p3, :cond_7

    .line 1298
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->loopStickers()Z

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto :goto_0

    .line 1283
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$1400(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    if-lt p2, v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$1500(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    if-ge p2, v0, :cond_7

    .line 1284
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/StickerSetCell;

    const/4 v0, 0x1

    .line 1285
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1286
    iget-object v2, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->selectedItems:Landroidx/collection/LongSparseArray;

    invoke-virtual {p0, p2}, Lorg/telegram/ui/StickersActivity$ListAdapter;->getItemId(I)J

    move-result-wide v3

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3, v4, v5}, Landroidx/collection/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Cells/StickerSetCell;->setChecked(Z)V

    :cond_4
    const/4 v2, 0x2

    .line 1288
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1289
    invoke-virtual {p0}, Lorg/telegram/ui/StickersActivity$ListAdapter;->hasSelected()Z

    move-result v2

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Cells/StickerSetCell;->setReorderable(Z)V

    :cond_5
    const/4 v2, 0x3

    .line 1291
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_7

    .line 1292
    iget-object p3, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {p3}, Lorg/telegram/ui/StickersActivity;->access$1400(Lorg/telegram/ui/StickersActivity;)I

    move-result p3

    sub-int/2addr p2, p3

    iget-object p3, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->stickerSets:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    sub-int/2addr p3, v0

    if-eq p2, p3, :cond_6

    const/4 v1, 0x1

    :cond_6
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Cells/StickerSetCell;->setNeedDivider(Z)V

    :cond_7
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    const/4 p1, 0x1

    const-string v0, "windowBackgroundWhite"

    if-eqz p2, :cond_6

    if-eq p2, p1, :cond_5

    const/4 p1, 0x2

    if-eq p2, p1, :cond_4

    const/4 p1, 0x3

    if-eq p2, p1, :cond_3

    const/4 p1, 0x5

    if-eq p2, p1, :cond_2

    const/4 p1, 0x6

    if-eq p2, p1, :cond_1

    const/4 p1, 0x7

    if-eq p2, p1, :cond_0

    .line 1440
    new-instance p1, Lorg/telegram/ui/Cells/TextCheckCell;

    iget-object p2, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;)V

    .line 1441
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 1323
    :cond_0
    new-instance p1, Lorg/telegram/ui/StickersActivity$ListAdapter$2;

    iget-object p2, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    invoke-direct {p1, p0, p2, v1}, Lorg/telegram/ui/StickersActivity$ListAdapter$2;-><init>(Lorg/telegram/ui/StickersActivity$ListAdapter;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1329
    iget-object p2, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1330
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/FeaturedStickerSetCell2;->getTextView()Landroid/widget/TextView;

    move-result-object p2

    const-string v0, "fonts/rmedium.ttf"

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    .line 1435
    :cond_1
    new-instance p1, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object p2, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    .line 1436
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 1431
    :cond_2
    new-instance p1, Lorg/telegram/ui/Cells/TextSettingsCell;

    iget-object p2, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    .line 1432
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 1428
    :cond_3
    new-instance p1, Lorg/telegram/ui/Cells/ShadowSectionCell;

    iget-object p2, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 1424
    :cond_4
    new-instance p1, Lorg/telegram/ui/Cells/TextCell;

    iget-object p2, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;)V

    .line 1425
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 1420
    :cond_5
    new-instance p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object p2, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    .line 1421
    iget-object p2, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->mContext:Landroid/content/Context;

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    const-string v1, "windowBackgroundGrayShadow"

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1333
    :cond_6
    new-instance p2, Lorg/telegram/ui/StickersActivity$ListAdapter$3;

    iget-object v1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, p0, v1, p1}, Lorg/telegram/ui/StickersActivity$ListAdapter$3;-><init>(Lorg/telegram/ui/StickersActivity$ListAdapter;Landroid/content/Context;I)V

    .line 1369
    iget-object p1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1371
    new-instance p1, Lorg/telegram/ui/StickersActivity$ListAdapter$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/StickersActivity$ListAdapter$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/StickersActivity$ListAdapter;Lorg/telegram/ui/Cells/StickerSetCell;)V

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Cells/StickerSetCell;->setOnReorderButtonTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1377
    new-instance p1, Lorg/telegram/ui/StickersActivity$ListAdapter$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lorg/telegram/ui/StickersActivity$ListAdapter$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/StickersActivity$ListAdapter;)V

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Cells/StickerSetCell;->setOnOptionsClick(Landroid/view/View$OnClickListener;)V

    move-object p1, p2

    .line 1444
    :goto_0
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1445
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public setFeaturedStickerSets(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/telegram/tgnet/TLRPC$StickerSetCovered;",
            ">;)V"
        }
    .end annotation

    .line 941
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->featuredStickerSets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 942
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->featuredStickerSets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public setStickerSets(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;",
            ">;)V"
        }
    .end annotation

    .line 936
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->stickerSets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 937
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->stickerSets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public swapElements(II)V
    .locals 5

    const/4 v0, 0x1

    if-eq p1, p2, :cond_0

    .line 1473
    iget-object v1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v1, v0}, Lorg/telegram/ui/StickersActivity;->access$302(Lorg/telegram/ui/StickersActivity;Z)Z

    .line 1476
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v1}, Lorg/telegram/ui/StickersActivity;->access$5400(Lorg/telegram/ui/StickersActivity;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    .line 1478
    iget-object v2, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v2}, Lorg/telegram/ui/StickersActivity;->access$1400(Lorg/telegram/ui/StickersActivity;)I

    move-result v2

    sub-int v2, p1, v2

    .line 1479
    iget-object v3, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v3}, Lorg/telegram/ui/StickersActivity;->access$1400(Lorg/telegram/ui/StickersActivity;)I

    move-result v3

    sub-int v3, p2, v3

    .line 1481
    iget-object v4, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->stickerSets:Ljava/util/List;

    invoke-direct {p0, v4, v2, v3}, Lorg/telegram/ui/StickersActivity$ListAdapter;->swapListElements(Ljava/util/List;II)V

    .line 1482
    iget-object v2, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v2}, Lorg/telegram/ui/StickersActivity;->access$900(Lorg/telegram/ui/StickersActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MediaDataController;->getStickerSets(I)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/StickersActivity$ListAdapter$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lorg/telegram/ui/StickersActivity$ListAdapter$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/StickersActivity$ListAdapter;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1491
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    .line 1493
    iget-object v1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v1}, Lorg/telegram/ui/StickersActivity;->access$1500(Lorg/telegram/ui/StickersActivity;)I

    move-result v1

    sub-int/2addr v1, v0

    if-eq p1, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v1}, Lorg/telegram/ui/StickersActivity;->access$1500(Lorg/telegram/ui/StickersActivity;)I

    move-result v1

    sub-int/2addr v1, v0

    if-ne p2, v1, :cond_2

    :cond_1
    const/4 v0, 0x3

    .line 1494
    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    .line 1495
    invoke-virtual {p0, p2, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    :cond_2
    return-void
.end method

.method public toggleSelected(I)V
    .locals 5

    .line 1506
    invoke-virtual {p0, p1}, Lorg/telegram/ui/StickersActivity$ListAdapter;->getItemId(I)J

    move-result-wide v0

    .line 1507
    iget-object v2, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->selectedItems:Landroidx/collection/LongSparseArray;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v0, v1, v3}, Landroidx/collection/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1508
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 1509
    invoke-direct {p0}, Lorg/telegram/ui/StickersActivity$ListAdapter;->checkActionMode()V

    return-void
.end method
