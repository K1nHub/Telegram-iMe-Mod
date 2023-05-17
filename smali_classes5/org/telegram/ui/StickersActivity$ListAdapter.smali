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

.method public static synthetic $r8$lambda$C3OrIfLVwhcABqZ6bfeSpTDEzns(Lorg/telegram/ui/StickersActivity$ListAdapter;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/StickersActivity$ListAdapter;->lambda$swapElements$10(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$DT3poRj8Far33rn-SX_u2l6qDig(Lorg/telegram/ui/StickersActivity$ListAdapter;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/StickersActivity$ListAdapter;->lambda$onCreateViewHolder$8(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Nyw8AdYPne9ojqkAv3RQ-D1DPv0(Lorg/telegram/ui/StickersActivity$ListAdapter;Ljava/util/ArrayList;ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/StickersActivity$ListAdapter;->lambda$processSelectionMenu$0(Ljava/util/ArrayList;ILandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Pi9n0PsV-ZUAui1iCsR1RY_pOdw(Lorg/telegram/ui/StickersActivity$ListAdapter;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/StickersActivity$ListAdapter;->lambda$onCreateViewHolder$5(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YLJAHOcouZ_1boNfsOKsqJbo3T0(Lorg/telegram/ui/StickersActivity$ListAdapter;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/StickersActivity$ListAdapter;->lambda$onCreateViewHolder$7(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cLf78K_G47FzMKOSfELoJ6uayTQ(Lorg/telegram/ui/StickersActivity$ListAdapter;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/StickersActivity$ListAdapter;->lambda$onCreateViewHolder$3(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kllcn9wKpRvPBXZ_lCo1gBrs5ss(Lorg/telegram/ui/StickersActivity$ListAdapter;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/StickersActivity$ListAdapter;->lambda$onBindViewHolder$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pSz6iAtmo_063W8uyCUhQJrMIHE(Lorg/telegram/ui/StickersActivity$ListAdapter;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/StickersActivity$ListAdapter;->lambda$onCreateViewHolder$9(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sPOl8xRaivy62mFWeQ7OMf5II5k(Lorg/telegram/ui/StickersActivity$ListAdapter;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/StickersActivity$ListAdapter;->lambda$onCreateViewHolder$4(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ta6MiDSkWTyqrbTCTKc_Nz68y8k(Lorg/telegram/ui/StickersActivity$ListAdapter;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/StickersActivity$ListAdapter;->lambda$onCreateViewHolder$6(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V

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

    .line 952
    iput-object p1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 945
    new-instance p1, Landroidx/collection/LongSparseArray;

    invoke-direct {p1}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->selectedItems:Landroidx/collection/LongSparseArray;

    .line 946
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->stickerSets:Ljava/util/List;

    .line 947
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->featuredStickerSets:Ljava/util/List;

    .line 948
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->loadingFeaturedStickerSets:Ljava/util/List;

    .line 953
    iput-object p2, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->mContext:Landroid/content/Context;

    .line 954
    invoke-virtual {p0, p3}, Lorg/telegram/ui/StickersActivity$ListAdapter;->setStickerSets(Ljava/util/List;)V

    .line 955
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x3

    if-le p1, p2, :cond_0

    const/4 p1, 0x0

    .line 956
    invoke-interface {p4, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/StickersActivity$ListAdapter;->setFeaturedStickerSets(Ljava/util/List;)V

    goto :goto_0

    .line 958
    :cond_0
    invoke-virtual {p0, p4}, Lorg/telegram/ui/StickersActivity$ListAdapter;->setFeaturedStickerSets(Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method static synthetic access$1000(Lorg/telegram/ui/StickersActivity$ListAdapter;)Ljava/util/List;
    .locals 0

    .line 929
    iget-object p0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->stickerSets:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/StickersActivity$ListAdapter;)Ljava/util/List;
    .locals 0

    .line 929
    iget-object p0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->featuredStickerSets:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/StickersActivity$ListAdapter;I)V
    .locals 0

    .line 929
    invoke-direct {p0, p1}, Lorg/telegram/ui/StickersActivity$ListAdapter;->processSelectionMenu(I)V

    return-void
.end method

.method static synthetic access$900(Lorg/telegram/ui/StickersActivity$ListAdapter;)Ljava/util/List;
    .locals 0

    .line 929
    iget-object p0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->loadingFeaturedStickerSets:Ljava/util/List;

    return-object p0
.end method

.method private addStickersBotSpan(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 5

    const-string v0, "@stickers"

    .line 1598
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1601
    :try_start_0
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1602
    new-instance v3, Lorg/telegram/ui/StickersActivity$ListAdapter$4;

    invoke-direct {v3, p0, v0}, Lorg/telegram/ui/StickersActivity$ListAdapter$4;-><init>(Lorg/telegram/ui/StickersActivity$ListAdapter;Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x9

    const/16 v4, 0x12

    .line 1608
    invoke-virtual {v2, v3, v1, v0, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    .line 1611
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_0
    return-object p1
.end method

.method private checkActionMode()V
    .locals 5

    .line 1556
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$000(Lorg/telegram/ui/StickersActivity;)Lorg/telegram/ui/StickersActivity$ListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/StickersActivity$ListAdapter;->getSelectedCount()I

    move-result v0

    .line 1557
    iget-object v1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v1}, Lorg/telegram/ui/StickersActivity;->access$5900(Lorg/telegram/ui/StickersActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v1

    const/4 v2, 0x2

    .line 1572
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-lez v0, :cond_0

    .line 1559
    invoke-direct {p0}, Lorg/telegram/ui/StickersActivity$ListAdapter;->checkActionModeIcons()V

    .line 1560
    iget-object v3, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v3}, Lorg/telegram/ui/StickersActivity;->access$6000(Lorg/telegram/ui/StickersActivity;)Lorg/telegram/ui/Components/NumberTextView;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lorg/telegram/ui/Components/NumberTextView;->setNumber(IZ)V

    if-nez v1, :cond_1

    .line 1562
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$6100(Lorg/telegram/ui/StickersActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->showActionMode()V

    .line 1563
    invoke-direct {p0, v2}, Lorg/telegram/ui/StickersActivity$ListAdapter;->notifyStickersItemsChanged(Ljava/lang/Object;)V

    .line 1564
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->stickersReorderingHintUsed:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$1200(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    .line 1565
    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setStickersReorderingHintUsed(Z)V

    .line 1566
    sget v0, Lorg/telegram/messenger/R$string;->StickersReorderHint:I

    const-string v1, "StickersReorderHint"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1567
    iget-object v1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v1}, Lorg/telegram/ui/StickersActivity;->access$6200(Lorg/telegram/ui/StickersActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

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

    .line 1571
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$6300(Lorg/telegram/ui/StickersActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->hideActionMode()V

    .line 1572
    invoke-direct {p0, v2}, Lorg/telegram/ui/StickersActivity$ListAdapter;->notifyStickersItemsChanged(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private checkActionModeIcons()V
    .locals 7

    .line 1577
    invoke-virtual {p0}, Lorg/telegram/ui/StickersActivity$ListAdapter;->hasSelected()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1579
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->stickerSets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1580
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

    move v0, v1

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

    .line 1586
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$6400(Lorg/telegram/ui/StickersActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_3

    .line 1587
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$6400(Lorg/telegram/ui/StickersActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method private synthetic lambda$onBindViewHolder$1(Landroid/view/View;)V
    .locals 7

    .line 1135
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Cells/FeaturedStickerSetCell2;

    .line 1136
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/FeaturedStickerSetCell2;->getStickerSet()Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    move-result-object v2

    .line 1137
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->loadingFeaturedStickerSets:Ljava/util/List;

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v3, v1, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1141
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/StickersActivity;->access$1302(Lorg/telegram/ui/StickersActivity;Z)Z

    .line 1142
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->loadingFeaturedStickerSets:Ljava/util/List;

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1144
    invoke-virtual {p1, v1, v1}, Lorg/telegram/ui/Cells/FeaturedStickerSetCell2;->setDrawProgress(ZZ)V

    .line 1145
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/FeaturedStickerSetCell2;->isInstalled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1146
    iget-object p1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {p1}, Lorg/telegram/ui/StickersActivity;->access$6700(Lorg/telegram/ui/StickersActivity;)I

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

    .line 1148
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {p1}, Lorg/telegram/ui/StickersActivity;->access$6800(Lorg/telegram/ui/StickersActivity;)I

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

    .line 1421
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-nez p2, :cond_0

    .line 1422
    iget-object p2, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {p2}, Lorg/telegram/ui/StickersActivity;->access$6600(Lorg/telegram/ui/StickersActivity;)Landroidx/recyclerview/widget/ItemTouchHelper;

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

.method private synthetic lambda$onCreateViewHolder$3(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 1430
    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/StickersActivity$ListAdapter;->processSelectionOption(ILorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V

    return-void
.end method

.method private synthetic lambda$onCreateViewHolder$4(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V
    .locals 1

    const/4 v0, 0x4

    .line 1432
    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/StickersActivity$ListAdapter;->processSelectionOption(ILorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V

    return-void
.end method

.method private synthetic lambda$onCreateViewHolder$5(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V
    .locals 1

    const/4 v0, 0x3

    .line 1434
    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/StickersActivity$ListAdapter;->processSelectionOption(ILorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V

    return-void
.end method

.method private synthetic lambda$onCreateViewHolder$6(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V
    .locals 1

    const/4 v0, 0x4

    .line 1435
    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/StickersActivity$ListAdapter;->processSelectionOption(ILorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V

    return-void
.end method

.method private synthetic lambda$onCreateViewHolder$7(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V
    .locals 1

    const/4 v0, 0x2

    .line 1436
    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/StickersActivity$ListAdapter;->processSelectionOption(ILorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V

    return-void
.end method

.method private synthetic lambda$onCreateViewHolder$8(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V
    .locals 1

    const/4 v0, 0x1

    .line 1437
    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/StickersActivity$ListAdapter;->processSelectionOption(ILorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V

    return-void
.end method

.method private synthetic lambda$onCreateViewHolder$9(Landroid/view/View;)V
    .locals 5

    .line 1427
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Cells/StickerSetCell;

    .line 1428
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/StickerSetCell;->getStickersSet()Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v0

    .line 1429
    iget-object v1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v1, p1}, Lorg/telegram/ui/Components/ItemOptions;->makeOptions(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    .line 1430
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_archive:I

    sget v2, Lorg/telegram/messenger/R$string;->StickersHide:I

    const-string v3, "StickersHide"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/StickersActivity$ListAdapter$$ExternalSyntheticLambda7;

    invoke-direct {v3, p0, v0}, Lorg/telegram/ui/StickersActivity$ListAdapter$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/StickersActivity$ListAdapter;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V

    invoke-virtual {p1, v1, v2, v3}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    .line 1431
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$StickerSet;->official:Z

    const-string v2, "StickersReorder"

    if-eqz v1, :cond_0

    .line 1432
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_reorder:I

    sget v3, Lorg/telegram/messenger/R$string;->StickersReorder:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/StickersActivity$ListAdapter$$ExternalSyntheticLambda8;

    invoke-direct {v3, p0, v0}, Lorg/telegram/ui/StickersActivity$ListAdapter$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/StickersActivity$ListAdapter;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V

    invoke-virtual {p1, v1, v2, v3}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    goto :goto_0

    .line 1434
    :cond_0
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_link:I

    sget v3, Lorg/telegram/messenger/R$string;->StickersCopy:I

    const-string v4, "StickersCopy"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/StickersActivity$ListAdapter$$ExternalSyntheticLambda5;

    invoke-direct {v4, p0, v0}, Lorg/telegram/ui/StickersActivity$ListAdapter$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/StickersActivity$ListAdapter;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V

    invoke-virtual {p1, v1, v3, v4}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    .line 1435
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_reorder:I

    sget v3, Lorg/telegram/messenger/R$string;->StickersReorder:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/StickersActivity$ListAdapter$$ExternalSyntheticLambda9;

    invoke-direct {v3, p0, v0}, Lorg/telegram/ui/StickersActivity$ListAdapter$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/StickersActivity$ListAdapter;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V

    invoke-virtual {p1, v1, v2, v3}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    .line 1436
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_share:I

    sget v2, Lorg/telegram/messenger/R$string;->StickersShare:I

    const-string v3, "StickersShare"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/StickersActivity$ListAdapter$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0, v0}, Lorg/telegram/ui/StickersActivity$ListAdapter$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/StickersActivity$ListAdapter;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V

    invoke-virtual {p1, v1, v2, v3}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    .line 1437
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    sget v2, Lorg/telegram/messenger/R$string;->StickersRemove:I

    const-string v3, "StickersRemove"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-instance v4, Lorg/telegram/ui/StickersActivity$ListAdapter$$ExternalSyntheticLambda4;

    invoke-direct {v4, p0, v0}, Lorg/telegram/ui/StickersActivity$ListAdapter$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/StickersActivity$ListAdapter;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V

    invoke-virtual {p1, v1, v2, v3, v4}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;ZLjava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    :goto_0
    const/16 v0, 0xbe

    .line 1439
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ItemOptions;->setMinWidth(I)Lorg/telegram/ui/Components/ItemOptions;

    .line 1440
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ItemOptions;->show()Lorg/telegram/ui/Components/ItemOptions;

    return-void
.end method

.method private synthetic lambda$processSelectionMenu$0(Ljava/util/ArrayList;ILandroid/content/DialogInterface;I)V
    .locals 6

    .line 1063
    iget-object p3, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {p3}, Lorg/telegram/ui/StickersActivity;->access$000(Lorg/telegram/ui/StickersActivity;)Lorg/telegram/ui/StickersActivity$ListAdapter;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/ui/StickersActivity$ListAdapter;->clearSelected()V

    .line 1064
    iget-object p3, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {p3}, Lorg/telegram/ui/StickersActivity;->access$6900(Lorg/telegram/ui/StickersActivity;)I

    move-result p3

    invoke-static {p3}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    iget-object p3, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {p3}, Lorg/telegram/ui/StickersActivity;->access$1200(Lorg/telegram/ui/StickersActivity;)I

    move-result v2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    const/4 p2, 0x0

    move v3, p2

    goto :goto_0

    :cond_0
    move v3, p3

    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    const/4 v5, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/MediaDataController;->toggleStickerSets(Ljava/util/ArrayList;IILorg/telegram/ui/ActionBar/BaseFragment;Z)V

    return-void
.end method

.method private synthetic lambda$swapElements$10(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)I
    .locals 1

    .line 1506
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->stickerSets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 1507
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

    .line 1593
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$1700(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v1}, Lorg/telegram/ui/StickersActivity;->access$800(Lorg/telegram/ui/StickersActivity;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v2}, Lorg/telegram/ui/StickersActivity;->access$1700(Lorg/telegram/ui/StickersActivity;)I

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

    .line 999
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1000
    iget-object v1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->stickerSets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_2

    .line 1001
    iget-object v2, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->stickerSets:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .line 1002
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

    .line 1003
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "\n"

    .line 1004
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1006
    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v3, v2}, Lorg/telegram/ui/StickersActivity;->access$1800(Lorg/telegram/ui/StickersActivity;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1009
    :cond_2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1010
    iget-object p1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {p1}, Lorg/telegram/ui/StickersActivity;->access$1900(Lorg/telegram/ui/StickersActivity;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v4, v6

    invoke-static/range {v2 .. v7}, Lorg/telegram/ui/Components/ShareAlert;->createShareAlert(Landroid/content/Context;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;ZLjava/lang/String;Z)Lorg/telegram/ui/Components/ShareAlert;

    move-result-object p1

    .line 1011
    new-instance v0, Lorg/telegram/ui/StickersActivity$ListAdapter$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/StickersActivity$ListAdapter$1;-><init>(Lorg/telegram/ui/StickersActivity$ListAdapter;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ShareAlert;->setDelegate(Lorg/telegram/ui/Components/ShareAlert$ShareAlertDelegate;)V

    .line 1023
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    goto/16 :goto_5

    :cond_3
    const/4 v1, 0x1

    if-eqz p1, :cond_4

    if-ne p1, v1, :cond_b

    .line 1025
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->selectedItems:Landroidx/collection/LongSparseArray;

    invoke-virtual {v3}, Landroidx/collection/LongSparseArray;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1027
    iget-object v3, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->stickerSets:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    move v4, v0

    :goto_1
    if-ge v4, v3, :cond_6

    .line 1028
    iget-object v5, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->stickerSets:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    .line 1029
    iget-object v6, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->selectedItems:Landroidx/collection/LongSparseArray;

    iget-wide v7, v5, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v6, v7, v8, v9}, Landroidx/collection/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1030
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1034
    :cond_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_b

    if-eq v3, v1, :cond_8

    .line 1050
    new-instance v4, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v5, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v5, "StickerSets"

    if-ne p1, v1, :cond_7

    .line 1054
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

    .line 1055
    sget v5, Lorg/telegram/messenger/R$string;->DeleteStickersAlertMessage:I

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v0

    const-string v0, "DeleteStickersAlertMessage"

    invoke-static {v0, v5, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1056
    sget v0, Lorg/telegram/messenger/R$string;->Delete:I

    const-string v3, "Delete"

    invoke-static {v3, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 1058
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

    .line 1059
    sget v5, Lorg/telegram/messenger/R$string;->ArchiveStickersAlertMessage:I

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v0

    const-string v0, "ArchiveStickersAlertMessage"

    invoke-static {v0, v5, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1060
    sget v0, Lorg/telegram/messenger/R$string;->Archive:I

    const-string v3, "Archive"

    invoke-static {v3, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1062
    :goto_2
    new-instance v3, Lorg/telegram/ui/StickersActivity$ListAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v2, p1}, Lorg/telegram/ui/StickersActivity$ListAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/StickersActivity$ListAdapter;Ljava/util/ArrayList;I)V

    invoke-virtual {v4, v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1066
    sget v0, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v2, "Cancel"

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v4, v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1068
    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    .line 1069
    iget-object v2, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    if-ne p1, v1, :cond_b

    const/4 p1, -0x1

    .line 1071
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_b

    .line 1073
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_5

    .line 1040
    :cond_8
    iget-object v1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->stickerSets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_3
    if-ge v0, v1, :cond_a

    .line 1041
    iget-object v2, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->stickerSets:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .line 1042
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

    .line 1043
    invoke-direct {p0, p1, v2}, Lorg/telegram/ui/StickersActivity$ListAdapter;->processSelectionOption(ILorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V

    goto :goto_4

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1047
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

    .line 1083
    iget-object p1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {p1}, Lorg/telegram/ui/StickersActivity;->access$2000(Lorg/telegram/ui/StickersActivity;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v2

    iget-object p1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$StickerSet;->archived:Z

    if-nez p1, :cond_0

    move v5, v1

    goto :goto_0

    :cond_0
    move v5, v0

    :goto_0
    iget-object v6, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v4, p2

    invoke-virtual/range {v2 .. v8}, Lorg/telegram/messenger/MediaDataController;->toggleStickerSet(Landroid/content/Context;Lorg/telegram/tgnet/TLObject;ILorg/telegram/ui/ActionBar/BaseFragment;ZZ)V

    goto/16 :goto_2

    :cond_1
    if-ne p1, v1, :cond_2

    .line 1085
    iget-object p1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {p1}, Lorg/telegram/ui/StickersActivity;->access$2100(Lorg/telegram/ui/StickersActivity;)I

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

    .line 1088
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEND"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "text/plain"

    .line 1089
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.TEXT"

    .line 1090
    iget-object v1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v1, p2}, Lorg/telegram/ui/StickersActivity;->access$1800(Lorg/telegram/ui/StickersActivity;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1091
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

    .line 1093
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_5

    .line 1097
    :try_start_1
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v2}, Lorg/telegram/ui/StickersActivity;->access$2200(Lorg/telegram/ui/StickersActivity;)I

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

    .line 1098
    sget-object p2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v0, "clipboard"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/ClipboardManager;

    const-string v0, "label"

    .line 1099
    invoke-static {v0, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    .line 1100
    invoke-virtual {p2, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 1101
    iget-object p1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory;->createCopyLinkBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 1103
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_5
    const/4 v0, 0x4

    if-ne p1, v0, :cond_6

    .line 1106
    iget-object p1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->stickerSets:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_6

    .line 1108
    iget-object p2, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {p2}, Lorg/telegram/ui/StickersActivity;->access$000(Lorg/telegram/ui/StickersActivity;)Lorg/telegram/ui/StickersActivity$ListAdapter;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$1700(Lorg/telegram/ui/StickersActivity;)I

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

    .line 1523
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .line 1524
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    invoke-interface {p1, p2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1525
    invoke-interface {p1, p3, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public clearSelected()V
    .locals 1

    .line 1536
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->selectedItems:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->clear()V

    const/4 v0, 0x1

    .line 1537
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/telegram/ui/StickersActivity$ListAdapter;->notifyStickersItemsChanged(Ljava/lang/Object;)V

    .line 1538
    invoke-direct {p0}, Lorg/telegram/ui/StickersActivity$ListAdapter;->checkActionMode()V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 984
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$1400(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 989
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$1500(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$1600(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 990
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->featuredStickerSets:Ljava/util/List;

    iget-object v1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v1}, Lorg/telegram/ui/StickersActivity;->access$1500(Lorg/telegram/ui/StickersActivity;)I

    move-result v1

    sub-int/2addr p1, v1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    return-wide v0

    .line 991
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$1700(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    if-lt p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$800(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 992
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->stickerSets:Ljava/util/List;

    iget-object v1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v1}, Lorg/telegram/ui/StickersActivity;->access$1700(Lorg/telegram/ui/StickersActivity;)I

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

    .line 1474
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$1500(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$1600(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 p1, 0x7

    return p1

    .line 1476
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$1700(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    const/4 v1, 0x0

    if-lt p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$800(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    if-ge p1, v0, :cond_1

    return v1

    .line 1478
    :cond_1
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

    if-eq p1, v0, :cond_c

    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$3000(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    if-eq p1, v0, :cond_c

    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$3100(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    if-ne p1, v0, :cond_2

    goto/16 :goto_4

    .line 1480
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$3400(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    if-eq p1, v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$3600(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    if-eq p1, v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$3900(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    if-eq p1, v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$4100(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    if-eq p1, v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$4300(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    if-eq p1, v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$3300(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    if-eq p1, v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$3200(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    if-ne p1, v0, :cond_3

    goto :goto_3

    .line 1482
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$4500(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    if-eq p1, v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$5600(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    if-ne p1, v0, :cond_4

    goto :goto_2

    .line 1484
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$4700(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    if-eq p1, v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$4800(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    if-eq p1, v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$4900(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    if-eq p1, v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$5000(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    if-eq p1, v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$4600(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    if-ne p1, v0, :cond_5

    goto :goto_1

    .line 1486
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$5700(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    if-ne p1, v0, :cond_6

    const/4 p1, 0x5

    return p1

    .line 1488
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$2300(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    if-eq p1, v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$700(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    if-eq p1, v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$2400(Lorg/telegram/ui/StickersActivity;)I

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

    .line 1547
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->selectedItems:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 1548
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

    .line 1542
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

    .line 1361
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

    .line 965
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 967
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$1300(Lorg/telegram/ui/StickersActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 968
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/StickersActivity;->access$1302(Lorg/telegram/ui/StickersActivity;Z)Z

    :cond_0
    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 11

    .line 1115
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_a

    .line 1127
    :pswitch_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/FeaturedStickerSetCell2;

    .line 1128
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$1500(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    sub-int/2addr p2, v0

    .line 1129
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->featuredStickerSets:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    .line 1130
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$1300(Lorg/telegram/ui/StickersActivity;)Z

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

    cmp-long v0, v0, v5

    if-nez v0, :cond_1

    :cond_0
    move v3, v4

    :cond_1
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, p1

    move-object v6, p2

    move v10, v3

    .line 1131
    invoke-virtual/range {v5 .. v10}, Lorg/telegram/ui/Cells/FeaturedStickerSetCell2;->setStickersSet(Lorg/telegram/tgnet/TLRPC$StickerSetCovered;ZZZZ)V

    .line 1132
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->loadingFeaturedStickerSets:Ljava/util/List;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v1, p2, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p1, p2, v3}, Lorg/telegram/ui/Cells/FeaturedStickerSetCell2;->setDrawProgress(ZZ)V

    .line 1134
    new-instance p2, Lorg/telegram/ui/StickersActivity$ListAdapter$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lorg/telegram/ui/StickersActivity$ListAdapter$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/StickersActivity$ListAdapter;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/FeaturedStickerSetCell2;->setAddOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_a

    .line 1117
    :pswitch_1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/HeaderCell;

    .line 1118
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$2300(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    if-ne p2, v0, :cond_3

    .line 1119
    iget-object p2, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {p2}, Lorg/telegram/ui/StickersActivity;->access$1200(Lorg/telegram/ui/StickersActivity;)I

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

    .line 1120
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$700(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    if-ne p2, v0, :cond_5

    .line 1121
    iget-object p2, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {p2}, Lorg/telegram/ui/StickersActivity;->access$1200(Lorg/telegram/ui/StickersActivity;)I

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

    .line 1122
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$2400(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    if-ne p2, v0, :cond_2c

    .line 1123
    sget p2, Lorg/telegram/messenger/R$string;->StickersSettings:I

    const-string v0, "StickersSettings"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 1300
    :pswitch_2
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 1301
    sget p2, Lorg/telegram/messenger/R$string;->DoubleTapSetting:I

    const-string v0, "DoubleTapSetting"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/CharSequence;Z)V

    .line 1302
    sget p2, Lorg/telegram/messenger/R$drawable;->msg2_reactions2:I

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextSettingsCell;->setIcon(I)V

    .line 1303
    iget-object p2, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {p2}, Lorg/telegram/ui/StickersActivity;->access$5100(Lorg/telegram/ui/StickersActivity;)I

    move-result p2

    invoke-static {p2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/MediaDataController;->getDoubleTapReaction()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2c

    const-string v0, "animated_"

    .line 1305
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0x9

    .line 1307
    :try_start_0
    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 1308
    iget-object p2, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {p2}, Lorg/telegram/ui/StickersActivity;->access$5200(Lorg/telegram/ui/StickersActivity;)I

    move-result p2

    invoke-static {p2, v1, v2, v3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->make(IIJ)Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    move-result-object p2

    .line 1309
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextSettingsCell;->getValueBackupImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->addView(Landroid/view/View;)V

    .line 1310
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextSettingsCell;->getValueBackupImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_a

    .line 1313
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$5300(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaDataController;->getReactionsMap()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v5, p2

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;

    if-eqz v5, :cond_2c

    .line 1315
    iget-object p2, v5, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->static_icon:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p2, v0, v1}, Lorg/telegram/messenger/DocumentObject;->getSvgThumb(Ljava/util/ArrayList;IF)Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    move-result-object v3

    .line 1316
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

    .line 1284
    :pswitch_3
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 1286
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$4600(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    if-ne p2, v0, :cond_7

    .line 1287
    sget p2, Lorg/telegram/messenger/R$string;->settings_emoji_premium_suggest_sets:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->isSuggestPremiumReactionsEmoji:Z

    invoke-virtual {p1, p2, v0, v4}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_a

    .line 1289
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$4700(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    if-ne p2, v0, :cond_8

    .line 1290
    sget p2, Lorg/telegram/messenger/R$string;->LoopAnimatedStickers:I

    const-string v0, "LoopAnimatedStickers"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->loopStickers()Z

    move-result v0

    invoke-virtual {p1, p2, v0, v4}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_a

    .line 1291
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$4800(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    if-ne p2, v0, :cond_9

    .line 1292
    sget p2, Lorg/telegram/messenger/R$string;->LargeEmoji:I

    const-string v0, "LargeEmoji"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->allowBigEmoji:Z

    invoke-virtual {p1, p2, v0, v4}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_a

    .line 1293
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$4900(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    if-ne p2, v0, :cond_a

    .line 1294
    sget p2, Lorg/telegram/messenger/R$string;->SuggestAnimatedEmoji:I

    const-string v0, "SuggestAnimatedEmoji"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->suggestAnimatedEmoji:Z

    invoke-virtual {p1, p2, v0, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_a

    .line 1295
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$5000(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    if-ne p2, v0, :cond_2c

    const-string p2, "DynamicPackOrder"

    .line 1296
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->updateStickersOrderOnSend:Z

    invoke-virtual {p1, p2, v0, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_a

    .line 1279
    :pswitch_4
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$4500(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    if-ne p2, v0, :cond_2c

    .line 1280
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object p2, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->mContext:Landroid/content/Context;

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_a

    .line 1215
    :pswitch_5
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextCell;

    .line 1217
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$3200(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    if-ne p2, v0, :cond_b

    .line 1218
    sget p2, Lorg/telegram/messenger/R$string;->stickers_size_title:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lorg/telegram/messenger/SharedConfig;->selectedStickersSize:Lcom/iMe/fork/enums/StickersSize;

    invoke-virtual {v0}, Lcom/iMe/fork/enums/StickersSize;->getTitleResId()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0, v4}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_a

    .line 1220
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$3300(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    if-ne p2, v0, :cond_d

    .line 1221
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText4:I

    invoke-virtual {p1, p2, p2}, Lorg/telegram/ui/Cells/TextCell;->setColors(II)V

    .line 1222
    iget-object p2, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {p2}, Lorg/telegram/ui/StickersActivity;->access$1200(Lorg/telegram/ui/StickersActivity;)I

    move-result p2

    if-ne p2, v2, :cond_c

    .line 1223
    sget p2, Lorg/telegram/messenger/R$string;->ShowMoreEmojiPacks:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$drawable;->msg2_trending:I

    invoke-virtual {p1, p2, v0, v3}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;IZ)V

    goto/16 :goto_a

    .line 1225
    :cond_c
    sget p2, Lorg/telegram/messenger/R$string;->ShowMoreStickers:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$drawable;->msg2_trending:I

    invoke-virtual {p1, p2, v0, v3}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;IZ)V

    goto/16 :goto_a

    .line 1228
    :cond_d
    iget-object v0, p1, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 1229
    iget-object v0, p1, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, v5}, Landroid/view/View;->setTranslationX(F)V

    .line 1230
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-virtual {p1, v0, v5}, Lorg/telegram/ui/Cells/TextCell;->setColors(II)V

    .line 1231
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$3400(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    const-string v5, ""

    if-ne p2, v0, :cond_11

    .line 1232
    iget-object p2, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {p2}, Lorg/telegram/ui/StickersActivity;->access$3500(Lorg/telegram/ui/StickersActivity;)I

    move-result p2

    invoke-static {p2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$1200(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    invoke-virtual {p2, v0}, Lorg/telegram/messenger/MediaDataController;->getArchivedStickersCount(I)I

    move-result p2

    if-lez p2, :cond_e

    .line 1233
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 1234
    :cond_e
    iget-object p2, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {p2}, Lorg/telegram/ui/StickersActivity;->access$1200(Lorg/telegram/ui/StickersActivity;)I

    move-result p2

    if-nez p2, :cond_f

    .line 1235
    sget p2, Lorg/telegram/messenger/R$string;->ArchivedStickers:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$drawable;->msg2_archived_stickers:I

    invoke-virtual {p1, p2, v5, v0, v4}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_a

    .line 1236
    :cond_f
    iget-object p2, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {p2}, Lorg/telegram/ui/StickersActivity;->access$1200(Lorg/telegram/ui/StickersActivity;)I

    move-result p2

    if-ne p2, v2, :cond_10

    .line 1237
    sget p2, Lorg/telegram/messenger/R$string;->ArchivedEmojiPacks:I

    const-string v0, "ArchivedEmojiPacks"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v5, v3, v4}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto/16 :goto_a

    .line 1239
    :cond_10
    sget p2, Lorg/telegram/messenger/R$string;->ArchivedMasks:I

    const-string v0, "ArchivedMasks"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v5, v3, v4}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto/16 :goto_a

    .line 1241
    :cond_11
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$3600(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    if-ne p2, v0, :cond_13

    .line 1243
    iget-object p2, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {p2}, Lorg/telegram/ui/StickersActivity;->access$3700(Lorg/telegram/ui/StickersActivity;)I

    move-result p2

    invoke-static {p2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p2

    .line 1244
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$3800(Lorg/telegram/ui/StickersActivity;)I

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

    .line 1245
    sget p2, Lorg/telegram/messenger/R$string;->Masks:I

    const-string v1, "Masks"

    invoke-static {v1, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    if-lez v0, :cond_12

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    :cond_12
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_mask:I

    invoke-virtual {p1, p2, v5, v0, v4}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_a

    .line 1246
    :cond_13
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$3900(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    if-ne p2, v0, :cond_15

    .line 1247
    iget-object p2, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {p2}, Lorg/telegram/ui/StickersActivity;->access$4000(Lorg/telegram/ui/StickersActivity;)Ljava/util/List;

    move-result-object p2

    .line 1248
    sget v0, Lorg/telegram/messenger/R$string;->FeaturedStickers:I

    const-string v1, "FeaturedStickers"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_14

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_14
    sget p2, Lorg/telegram/messenger/R$drawable;->msg2_trending:I

    invoke-virtual {p1, v0, v5, p2, v4}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_a

    .line 1249
    :cond_15
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$4100(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    if-ne p2, v0, :cond_17

    .line 1251
    iget-object p2, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {p2}, Lorg/telegram/ui/StickersActivity;->access$4200(Lorg/telegram/ui/StickersActivity;)I

    move-result p2

    invoke-static {p2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p2

    .line 1252
    invoke-virtual {p2, v2}, Lorg/telegram/messenger/MediaDataController;->getStickerSets(I)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 1253
    iget-object v0, p1, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 1254
    sget v0, Lorg/telegram/messenger/R$string;->Emoji:I

    const-string v1, "Emoji"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-lez p2, :cond_16

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    :cond_16
    sget p2, Lorg/telegram/messenger/R$drawable;->msg2_smile_status:I

    invoke-virtual {p1, v0, v5, p2, v4}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_a

    .line 1255
    :cond_17
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$4300(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    if-ne p2, v0, :cond_2c

    .line 1257
    sget p2, Lorg/telegram/messenger/SharedConfig;->suggestStickers:I

    if-eqz p2, :cond_19

    if-eq p2, v4, :cond_18

    .line 1266
    sget p2, Lorg/telegram/messenger/R$string;->SuggestStickersNone:I

    const-string v0, "SuggestStickersNone"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    .line 1262
    :cond_18
    sget p2, Lorg/telegram/messenger/R$string;->SuggestStickersInstalled:I

    const-string v0, "SuggestStickersInstalled"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    .line 1259
    :cond_19
    sget p2, Lorg/telegram/messenger/R$string;->SuggestStickersAll:I

    const-string v0, "SuggestStickersAll"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 1269
    :goto_2
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v0, :cond_1a

    .line 1270
    iget-object v0, p1, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v1, -0x2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 1272
    :cond_1a
    sget v0, Lorg/telegram/messenger/R$string;->SuggestStickers:I

    const-string v1, "SuggestStickers"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v1}, Lorg/telegram/ui/StickersActivity;->access$4400(Lorg/telegram/ui/StickersActivity;)Z

    move-result v1

    invoke-virtual {p1, v0, p2, v1, v4}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 1273
    iget-object p1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {p1, v3}, Lorg/telegram/ui/StickersActivity;->access$4402(Lorg/telegram/ui/StickersActivity;Z)Z

    goto/16 :goto_a

    .line 1188
    :pswitch_6
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 1189
    invoke-virtual {p1, v3}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setFixedSize(I)V

    .line 1190
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$2600(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    if-ne p2, v0, :cond_1c

    .line 1192
    iget-object p2, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {p2}, Lorg/telegram/ui/StickersActivity;->access$1200(Lorg/telegram/ui/StickersActivity;)I

    move-result p2

    if-ne p2, v2, :cond_1b

    .line 1193
    sget p2, Lorg/telegram/messenger/R$string;->EmojiBotInfo:I

    const-string v0, "EmojiBotInfo"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    .line 1194
    :cond_1b
    sget p2, Lorg/telegram/messenger/R$string;->StickersBotInfo:I

    const-string v0, "StickersBotInfo"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 1191
    :goto_3
    invoke-direct {p0, p2}, Lorg/telegram/ui/StickersActivity$ListAdapter;->addStickersBotSpan(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 1196
    :cond_1c
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$2700(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    if-ne p2, v0, :cond_1e

    .line 1197
    iget-object p2, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {p2}, Lorg/telegram/ui/StickersActivity;->access$1200(Lorg/telegram/ui/StickersActivity;)I

    move-result p2

    if-nez p2, :cond_1d

    .line 1198
    sget p2, Lorg/telegram/messenger/R$string;->ArchivedStickersInfo:I

    const-string v0, "ArchivedStickersInfo"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 1200
    :cond_1d
    sget p2, Lorg/telegram/messenger/R$string;->ArchivedMasksInfo:I

    const-string v0, "ArchivedMasksInfo"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 1202
    :cond_1e
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$2800(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    if-ne p2, v0, :cond_1f

    const/4 p2, 0x0

    .line 1204
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    const/16 p2, 0xc

    .line 1205
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setFixedSize(I)V

    goto/16 :goto_a

    .line 1206
    :cond_1f
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$2900(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    if-ne p2, v0, :cond_20

    .line 1207
    sget p2, Lorg/telegram/messenger/R$string;->SuggestAnimatedEmojiInfo:I

    const-string v0, "SuggestAnimatedEmojiInfo"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 1208
    :cond_20
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$3000(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    if-ne p2, v0, :cond_21

    .line 1209
    sget p2, Lorg/telegram/messenger/R$string;->MasksInfo:I

    const-string v0, "MasksInfo"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 1210
    :cond_21
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$3100(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    if-ne p2, v0, :cond_2c

    const-string p2, "DynamicPackOrderInfo"

    .line 1211
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 1155
    :pswitch_7
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/StickerSetCell;

    .line 1156
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$1700(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    sub-int v0, p2, v0

    .line 1157
    iget-object v2, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->stickerSets:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .line 1158
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/StickerSetCell;->getStickersSet()Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v5

    if-nez v5, :cond_22

    if-eqz v2, :cond_23

    :cond_22
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/StickerSetCell;->getStickersSet()Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v5

    if-eqz v5, :cond_24

    if-eqz v2, :cond_24

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/StickerSetCell;->getStickersSet()Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    iget-object v7, v2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v7, v7, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_24

    :cond_23
    move v5, v4

    goto :goto_4

    :cond_24
    move v5, v3

    .line 1159
    :goto_4
    iget-object v6, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->stickerSets:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v4

    if-eq v0, v6, :cond_25

    move v0, v4

    goto :goto_5

    :cond_25
    move v0, v3

    :goto_5
    invoke-virtual {p1, v2, v0}, Lorg/telegram/ui/Cells/StickerSetCell;->setStickersSet(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Z)V

    .line 1160
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

    .line 1161
    invoke-virtual {p0}, Lorg/telegram/ui/StickersActivity$ListAdapter;->hasSelected()Z

    move-result p2

    invoke-virtual {p1, p2, v3}, Lorg/telegram/ui/Cells/StickerSetCell;->setReorderable(ZZ)V

    if-eqz v2, :cond_2c

    .line 1162
    iget-object p2, v2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-eqz p2, :cond_2c

    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$StickerSet;->emojis:Z

    if-eqz p2, :cond_2c

    .line 1163
    iget-object p2, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object p2

    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-virtual {p2, v6, v7}, Lorg/telegram/messenger/MediaDataController;->isStickerPackInstalled(J)Z

    move-result p2

    .line 1164
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$2500(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v0

    xor-int/2addr v0, v4

    if-eqz v0, :cond_28

    move v6, v3

    .line 1167
    :goto_6
    iget-object v7, v2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_27

    .line 1168
    iget-object v7, v2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v7}, Lorg/telegram/messenger/MessageObject;->isFreeEmoji(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v7

    if-nez v7, :cond_26

    move v6, v4

    goto :goto_7

    :cond_26
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_27
    move v6, v3

    :goto_7
    if-nez v6, :cond_28

    goto :goto_8

    :cond_28
    move v3, v0

    :goto_8
    if-eqz v3, :cond_2a

    if-eqz p2, :cond_29

    .line 1179
    iget-object p2, v2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$StickerSet;->official:Z

    if-nez p2, :cond_29

    goto :goto_9

    :cond_29
    move v1, v4

    goto :goto_9

    :cond_2a
    if-eqz p2, :cond_2b

    const/4 v1, 0x4

    goto :goto_9

    :cond_2b
    const/4 v1, 0x3

    .line 1177
    :goto_9
    invoke-virtual {p1, v1, v5}, Lorg/telegram/ui/Cells/StickerSetCell;->updateButtonState(IZ)V

    :catch_0
    :cond_2c
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

    .line 1327
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1328
    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/StickersActivity$ListAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    goto/16 :goto_0

    .line 1330
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

    .line 1351
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_7

    iget-object p3, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {p3}, Lorg/telegram/ui/StickersActivity;->access$1500(Lorg/telegram/ui/StickersActivity;)I

    move-result p3

    if-lt p2, p3, :cond_7

    iget-object p3, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {p3}, Lorg/telegram/ui/StickersActivity;->access$1600(Lorg/telegram/ui/StickersActivity;)I

    move-result p3

    if-gt p2, p3, :cond_7

    .line 1352
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell2;

    iget-object p1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->featuredStickerSets:Ljava/util/List;

    iget-object p3, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {p3}, Lorg/telegram/ui/StickersActivity;->access$1500(Lorg/telegram/ui/StickersActivity;)I

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

    .line 1346
    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_7

    iget-object p3, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {p3}, Lorg/telegram/ui/StickersActivity;->access$4700(Lorg/telegram/ui/StickersActivity;)I

    move-result p3

    if-ne p2, p3, :cond_7

    .line 1347
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->loopStickers()Z

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto :goto_0

    .line 1332
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$1700(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    if-lt p2, v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$800(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    if-ge p2, v0, :cond_7

    .line 1333
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/StickerSetCell;

    const/4 v0, 0x1

    .line 1334
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1335
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

    .line 1337
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1338
    invoke-virtual {p0}, Lorg/telegram/ui/StickersActivity$ListAdapter;->hasSelected()Z

    move-result v2

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Cells/StickerSetCell;->setReorderable(Z)V

    :cond_5
    const/4 v2, 0x3

    .line 1340
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_7

    .line 1341
    iget-object p3, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {p3}, Lorg/telegram/ui/StickersActivity;->access$1700(Lorg/telegram/ui/StickersActivity;)I

    move-result p3

    sub-int/2addr p2, p3

    iget-object p3, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->stickerSets:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    sub-int/2addr p3, v0

    if-eq p2, p3, :cond_6

    move v1, v0

    :cond_6
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Cells/StickerSetCell;->setNeedDivider(Z)V

    :cond_7
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    const/4 p1, 0x1

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

    .line 1464
    new-instance p1, Lorg/telegram/ui/Cells/TextCheckCell;

    iget-object p2, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;)V

    .line 1465
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 1372
    :cond_0
    new-instance p1, Lorg/telegram/ui/StickersActivity$ListAdapter$2;

    iget-object p2, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    invoke-direct {p1, p0, p2, v0}, Lorg/telegram/ui/StickersActivity$ListAdapter$2;-><init>(Lorg/telegram/ui/StickersActivity$ListAdapter;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1378
    iget-object p2, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1379
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/FeaturedStickerSetCell2;->getTextView()Landroid/widget/TextView;

    move-result-object p2

    const-string v0, "fonts/rmedium.ttf"

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_0

    .line 1459
    :cond_1
    new-instance p1, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object p2, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    .line 1460
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 1455
    :cond_2
    new-instance p1, Lorg/telegram/ui/Cells/TextSettingsCell;

    iget-object p2, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    .line 1456
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 1452
    :cond_3
    new-instance p1, Lorg/telegram/ui/Cells/ShadowSectionCell;

    iget-object p2, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 1448
    :cond_4
    new-instance p1, Lorg/telegram/ui/Cells/TextCell;

    iget-object p2, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;)V

    .line 1449
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 1444
    :cond_5
    new-instance p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object p2, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    .line 1445
    iget-object p2, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->mContext:Landroid/content/Context;

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1382
    :cond_6
    new-instance p2, Lorg/telegram/ui/StickersActivity$ListAdapter$3;

    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, p0, v0, p1}, Lorg/telegram/ui/StickersActivity$ListAdapter$3;-><init>(Lorg/telegram/ui/StickersActivity$ListAdapter;Landroid/content/Context;I)V

    .line 1418
    iget-object p1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1420
    new-instance p1, Lorg/telegram/ui/StickersActivity$ListAdapter$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/StickersActivity$ListAdapter$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/StickersActivity$ListAdapter;Lorg/telegram/ui/Cells/StickerSetCell;)V

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Cells/StickerSetCell;->setOnReorderButtonTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1426
    new-instance p1, Lorg/telegram/ui/StickersActivity$ListAdapter$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lorg/telegram/ui/StickersActivity$ListAdapter$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/StickersActivity$ListAdapter;)V

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Cells/StickerSetCell;->setOnOptionsClick(Landroid/view/View$OnClickListener;)V

    move-object p1, p2

    .line 1468
    :goto_0
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1469
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

    .line 978
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->featuredStickerSets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 979
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

    .line 973
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->stickerSets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 974
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->stickerSets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public swapElements(II)V
    .locals 5

    const/4 v0, 0x1

    if-eq p1, p2, :cond_0

    .line 1496
    iget-object v1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v1, v0}, Lorg/telegram/ui/StickersActivity;->access$302(Lorg/telegram/ui/StickersActivity;Z)Z

    .line 1499
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v1}, Lorg/telegram/ui/StickersActivity;->access$5800(Lorg/telegram/ui/StickersActivity;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    .line 1501
    iget-object v2, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v2}, Lorg/telegram/ui/StickersActivity;->access$1700(Lorg/telegram/ui/StickersActivity;)I

    move-result v2

    sub-int v2, p1, v2

    .line 1502
    iget-object v3, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v3}, Lorg/telegram/ui/StickersActivity;->access$1700(Lorg/telegram/ui/StickersActivity;)I

    move-result v3

    sub-int v3, p2, v3

    .line 1504
    iget-object v4, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->stickerSets:Ljava/util/List;

    invoke-direct {p0, v4, v2, v3}, Lorg/telegram/ui/StickersActivity$ListAdapter;->swapListElements(Ljava/util/List;II)V

    .line 1505
    iget-object v2, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v2}, Lorg/telegram/ui/StickersActivity;->access$1200(Lorg/telegram/ui/StickersActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MediaDataController;->getStickerSets(I)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/StickersActivity$ListAdapter$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0}, Lorg/telegram/ui/StickersActivity$ListAdapter$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/StickersActivity$ListAdapter;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1514
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    .line 1516
    iget-object v1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v1}, Lorg/telegram/ui/StickersActivity;->access$800(Lorg/telegram/ui/StickersActivity;)I

    move-result v1

    sub-int/2addr v1, v0

    if-eq p1, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-static {v1}, Lorg/telegram/ui/StickersActivity;->access$800(Lorg/telegram/ui/StickersActivity;)I

    move-result v1

    sub-int/2addr v1, v0

    if-ne p2, v1, :cond_2

    :cond_1
    const/4 v0, 0x3

    .line 1517
    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    .line 1518
    invoke-virtual {p0, p2, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    :cond_2
    return-void
.end method

.method public toggleSelected(I)V
    .locals 5

    .line 1529
    invoke-virtual {p0, p1}, Lorg/telegram/ui/StickersActivity$ListAdapter;->getItemId(I)J

    move-result-wide v0

    .line 1530
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

    .line 1531
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 1532
    invoke-direct {p0}, Lorg/telegram/ui/StickersActivity$ListAdapter;->checkActionMode()V

    return-void
.end method
