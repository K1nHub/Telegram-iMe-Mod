.class Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "TrendingStickersLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/TrendingStickersLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrendingStickersAdapter"
.end annotation


# instance fields
.field private final cache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private endReached:Z

.field private loadingMore:Z

.field private final otherPacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$StickerSetCovered;",
            ">;"
        }
    .end annotation
.end field

.field private final positionsToSets:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lorg/telegram/tgnet/TLRPC$StickerSetCovered;",
            ">;"
        }
    .end annotation
.end field

.field private final sets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$StickerSetCovered;",
            ">;"
        }
    .end annotation
.end field

.field private final setsToPosition:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/telegram/tgnet/TLRPC$StickerSetCovered;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private stickersPerRow:I

.field final synthetic this$0:Lorg/telegram/ui/Components/TrendingStickersLayout;

.field private totalItems:I


# direct methods
.method public static synthetic $r8$lambda$5h68zIM4r8Fh3fz7SJKnXtEBrps(Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->lambda$onCreateViewHolder$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KJhzmZoLun227VGkzpavf-LSFlo(Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->lambda$loadMoreStickerSets$2(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fhr3mKrz8GYF1dgpnxJ-g54WUfs(Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->lambda$onCreateViewHolder$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rTp6Ytb-P6CNc4beh8TGa6RqTw0(Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->lambda$loadMoreStickerSets$3(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/TrendingStickersLayout;Landroid/content/Context;)V
    .locals 0

    .line 681
    iput-object p1, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->this$0:Lorg/telegram/ui/Components/TrendingStickersLayout;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 669
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->cache:Landroid/util/SparseArray;

    .line 670
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->sets:Ljava/util/ArrayList;

    .line 671
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->positionsToSets:Landroid/util/SparseArray;

    .line 672
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->setsToPosition:Ljava/util/HashMap;

    .line 673
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->otherPacks:Ljava/util/ArrayList;

    const/4 p1, 0x5

    .line 678
    iput p1, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->stickersPerRow:I

    .line 682
    iput-object p2, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;)Landroid/util/SparseArray;
    .locals 0

    .line 662
    iget-object p0, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->cache:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;)I
    .locals 0

    .line 662
    iget p0, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->totalItems:I

    return p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;)Z
    .locals 0

    .line 662
    iget-boolean p0, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->loadingMore:Z

    return p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;)Z
    .locals 0

    .line 662
    iget-boolean p0, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->endReached:Z

    return p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;)Ljava/util/HashMap;
    .locals 0

    .line 662
    iget-object p0, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->setsToPosition:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 662
    iget-object p0, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->sets:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;Lorg/telegram/tgnet/TLRPC$StickerSetCovered;Landroid/view/View;)V
    .locals 0

    .line 662
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->installStickerSet(Lorg/telegram/tgnet/TLRPC$StickerSetCovered;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$2700(Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;)Landroid/util/SparseArray;
    .locals 0

    .line 662
    iget-object p0, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->positionsToSets:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;)I
    .locals 0

    .line 662
    iget p0, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->stickersPerRow:I

    return p0
.end method

.method private bindStickerSetCell(Landroid/view/View;IZ)V
    .locals 11

    .line 808
    iget-object v0, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->this$0:Lorg/telegram/ui/Components/TrendingStickersLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/TrendingStickersLayout;->access$2200(Lorg/telegram/ui/Components/TrendingStickersLayout;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    .line 811
    iget v1, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->totalItems:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ge p2, v1, :cond_2

    .line 812
    iget-object v1, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->sets:Ljava/util/ArrayList;

    iget-object v4, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->cache:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    .line 813
    invoke-virtual {v0}, Lorg/telegram/messenger/MediaDataController;->getUnreadStickerSets()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 814
    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_1

    .line 816
    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-virtual {v0, v3, v5, v6}, Lorg/telegram/messenger/MediaDataController;->markFeaturedStickersByIdAsRead(ZJ)V

    :cond_1
    move-object v5, v1

    move v6, v4

    goto :goto_1

    .line 819
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->sets:Ljava/util/ArrayList;

    iget-object v4, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->cache:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    move-object v5, v1

    const/4 v6, 0x0

    .line 821
    :goto_1
    invoke-virtual {v0, v5}, Lorg/telegram/messenger/MediaDataController;->preloadStickerSetThumb(Lorg/telegram/tgnet/TLRPC$StickerSetCovered;)V

    const/4 v1, 0x0

    .line 823
    :goto_2
    iget-object v4, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->this$0:Lorg/telegram/ui/Components/TrendingStickersLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/TrendingStickersLayout;->access$2300(Lorg/telegram/ui/Components/TrendingStickersLayout;)[Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    move-result-object v4

    array-length v4, v4

    if-ge v1, v4, :cond_5

    .line 824
    iget-object v4, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->this$0:Lorg/telegram/ui/Components/TrendingStickersLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/TrendingStickersLayout;->access$2300(Lorg/telegram/ui/Components/TrendingStickersLayout;)[Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    move-result-object v4

    aget-object v4, v4, v1

    if-eqz v4, :cond_4

    .line 825
    iget-object v4, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->this$0:Lorg/telegram/ui/Components/TrendingStickersLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/TrendingStickersLayout;->access$2200(Lorg/telegram/ui/Components/TrendingStickersLayout;)I

    move-result v4

    invoke-static {v4}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v4

    iget-object v7, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->this$0:Lorg/telegram/ui/Components/TrendingStickersLayout;

    invoke-static {v7}, Lorg/telegram/ui/Components/TrendingStickersLayout;->access$2300(Lorg/telegram/ui/Components/TrendingStickersLayout;)[Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    move-result-object v7

    aget-object v7, v7, v1

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v7, v7, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-virtual {v4, v7, v8}, Lorg/telegram/messenger/MediaDataController;->getStickerSetById(J)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 826
    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$StickerSet;->archived:Z

    if-nez v4, :cond_3

    .line 827
    iget-object v4, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->this$0:Lorg/telegram/ui/Components/TrendingStickersLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/TrendingStickersLayout;->access$2300(Lorg/telegram/ui/Components/TrendingStickersLayout;)[Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    move-result-object v4

    const/4 v7, 0x0

    aput-object v7, v4, v1

    goto :goto_3

    .line 830
    :cond_3
    iget-object v4, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->this$0:Lorg/telegram/ui/Components/TrendingStickersLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/TrendingStickersLayout;->access$2300(Lorg/telegram/ui/Components/TrendingStickersLayout;)[Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    move-result-object v4

    aget-object v4, v4, v1

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v7, v4, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    iget-object v4, v5, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v9, v4, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    cmp-long v4, v7, v9

    if-nez v4, :cond_4

    const/4 v1, 0x1

    goto :goto_4

    :cond_4
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    .line 836
    :goto_4
    iget-object v4, v5, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v7, v4, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-virtual {v0, v7, v8}, Lorg/telegram/messenger/MediaDataController;->isStickerPackInstalled(J)Z

    move-result v0

    .line 837
    iget-object v4, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->this$0:Lorg/telegram/ui/Components/TrendingStickersLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/TrendingStickersLayout;->access$2400(Lorg/telegram/ui/Components/TrendingStickersLayout;)Landroid/util/LongSparseArray;

    move-result-object v4

    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v7, v7, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-virtual {v4, v7, v8}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    move-result v4

    if-ltz v4, :cond_6

    const/4 v4, 0x1

    goto :goto_5

    :cond_6
    const/4 v4, 0x0

    .line 838
    :goto_5
    iget-object v7, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->this$0:Lorg/telegram/ui/Components/TrendingStickersLayout;

    invoke-static {v7}, Lorg/telegram/ui/Components/TrendingStickersLayout;->access$2500(Lorg/telegram/ui/Components/TrendingStickersLayout;)Landroid/util/LongSparseArray;

    move-result-object v7

    iget-object v8, v5, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v8, v8, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-virtual {v7, v8, v9}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    move-result v7

    if-ltz v7, :cond_7

    const/4 v7, 0x1

    goto :goto_6

    :cond_7
    const/4 v7, 0x0

    :goto_6
    if-eqz v4, :cond_8

    if-eqz v0, :cond_8

    .line 840
    iget-object v0, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->this$0:Lorg/telegram/ui/Components/TrendingStickersLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/TrendingStickersLayout;->access$2400(Lorg/telegram/ui/Components/TrendingStickersLayout;)Landroid/util/LongSparseArray;

    move-result-object v0

    iget-object v4, v5, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v7, v4, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-virtual {v0, v7, v8}, Landroid/util/LongSparseArray;->remove(J)V

    const/4 v0, 0x0

    goto :goto_7

    :cond_8
    if-eqz v7, :cond_9

    if-nez v0, :cond_9

    .line 843
    iget-object v0, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->this$0:Lorg/telegram/ui/Components/TrendingStickersLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/TrendingStickersLayout;->access$2500(Lorg/telegram/ui/Components/TrendingStickersLayout;)Landroid/util/LongSparseArray;

    move-result-object v0

    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v7, v7, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-virtual {v0, v7, v8}, Landroid/util/LongSparseArray;->remove(J)V

    :cond_9
    move v0, v4

    .line 845
    :goto_7
    check-cast p1, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p1

    move v7, p3

    move v10, v1

    .line 846
    invoke-virtual/range {v4 .. v10}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->setStickerSet(Lorg/telegram/tgnet/TLRPC$StickerSetCovered;ZZIIZ)V

    if-nez v1, :cond_a

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_8

    :cond_a
    const/4 v0, 0x0

    .line 847
    :goto_8
    invoke-virtual {p1, v0, p3}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->setAddDrawProgress(ZZ)V

    if-lez p2, :cond_b

    .line 848
    iget-object p3, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->cache:Landroid/util/SparseArray;

    sub-int/2addr p2, v2

    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_c

    iget-object p3, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->cache:Landroid/util/SparseArray;

    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    const/4 p3, -0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    goto :goto_9

    :cond_b
    const/4 v2, 0x0

    :cond_c
    :goto_9
    invoke-virtual {p1, v2}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->setNeedDivider(Z)V

    return-void
.end method

.method private installStickerSet(Lorg/telegram/tgnet/TLRPC$StickerSetCovered;Landroid/view/View;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 852
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->this$0:Lorg/telegram/ui/Components/TrendingStickersLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/TrendingStickersLayout;->access$2300(Lorg/telegram/ui/Components/TrendingStickersLayout;)[Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 853
    iget-object v2, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->this$0:Lorg/telegram/ui/Components/TrendingStickersLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/TrendingStickersLayout;->access$2300(Lorg/telegram/ui/Components/TrendingStickersLayout;)[Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    move-result-object v2

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    .line 854
    iget-object v2, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->this$0:Lorg/telegram/ui/Components/TrendingStickersLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/TrendingStickersLayout;->access$2200(Lorg/telegram/ui/Components/TrendingStickersLayout;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->this$0:Lorg/telegram/ui/Components/TrendingStickersLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/TrendingStickersLayout;->access$2300(Lorg/telegram/ui/Components/TrendingStickersLayout;)[Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    move-result-object v3

    aget-object v3, v3, v1

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/MediaDataController;->getStickerSetById(J)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 855
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->archived:Z

    if-nez v2, :cond_0

    .line 856
    iget-object v2, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->this$0:Lorg/telegram/ui/Components/TrendingStickersLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/TrendingStickersLayout;->access$2300(Lorg/telegram/ui/Components/TrendingStickersLayout;)[Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v3, v2, v1

    goto :goto_1

    .line 859
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->this$0:Lorg/telegram/ui/Components/TrendingStickersLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/TrendingStickersLayout;->access$2300(Lorg/telegram/ui/Components/TrendingStickersLayout;)[Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    move-result-object v2

    aget-object v2, v2, v1

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v1, 0x0

    .line 866
    :goto_2
    iget-object v2, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->this$0:Lorg/telegram/ui/Components/TrendingStickersLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/TrendingStickersLayout;->access$2300(Lorg/telegram/ui/Components/TrendingStickersLayout;)[Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    move-result-object v2

    array-length v2, v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_4

    .line 867
    iget-object v2, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->this$0:Lorg/telegram/ui/Components/TrendingStickersLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/TrendingStickersLayout;->access$2300(Lorg/telegram/ui/Components/TrendingStickersLayout;)[Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    move-result-object v2

    aget-object v2, v2, v1

    if-nez v2, :cond_3

    .line 868
    iget-object v2, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->this$0:Lorg/telegram/ui/Components/TrendingStickersLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/TrendingStickersLayout;->access$2300(Lorg/telegram/ui/Components/TrendingStickersLayout;)[Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    move-result-object v2

    aput-object p1, v2, v1

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_3
    if-nez v1, :cond_6

    if-eqz p2, :cond_6

    .line 874
    instance-of v2, p2, Lorg/telegram/ui/Cells/FeaturedStickerSetCell2;

    if-eqz v2, :cond_5

    .line 875
    move-object v2, p2

    check-cast v2, Lorg/telegram/ui/Cells/FeaturedStickerSetCell2;

    invoke-virtual {v2, v3, v3}, Lorg/telegram/ui/Cells/FeaturedStickerSetCell2;->setDrawProgress(ZZ)V

    goto :goto_4

    .line 876
    :cond_5
    instance-of v2, p2, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;

    if-eqz v2, :cond_6

    .line 877
    move-object v2, p2

    check-cast v2, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;

    invoke-virtual {v2, v3, v3}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->setAddDrawProgress(ZZ)V

    .line 880
    :cond_6
    :goto_4
    iget-object v2, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->this$0:Lorg/telegram/ui/Components/TrendingStickersLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/TrendingStickersLayout;->access$2400(Lorg/telegram/ui/Components/TrendingStickersLayout;)Landroid/util/LongSparseArray;

    move-result-object v2

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-virtual {v2, v3, v4, p1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    if-eqz p2, :cond_7

    .line 882
    iget-object p2, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->this$0:Lorg/telegram/ui/Components/TrendingStickersLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/TrendingStickersLayout;->access$1800(Lorg/telegram/ui/Components/TrendingStickersLayout;)Lorg/telegram/ui/Components/TrendingStickersLayout$Delegate;

    move-result-object p2

    invoke-virtual {p2, p1, v1}, Lorg/telegram/ui/Components/TrendingStickersLayout$Delegate;->onStickerSetAdd(Lorg/telegram/tgnet/TLRPC$StickerSetCovered;Z)V

    goto :goto_6

    .line 884
    :cond_7
    iget-object p2, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->positionsToSets:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    const/4 v1, 0x0

    :goto_5
    if-ge v1, p2, :cond_9

    .line 885
    iget-object v2, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->positionsToSets:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    if-eqz v2, :cond_8

    .line 886
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_8

    .line 887
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    goto :goto_6

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_9
    :goto_6
    return-void
.end method

.method private synthetic lambda$loadMoreStickerSets$2(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 9

    const/4 v0, 0x0

    .line 964
    iput-boolean v0, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->loadingMore:Z

    const/4 v1, 0x1

    if-nez p1, :cond_7

    .line 965
    instance-of p1, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_featuredStickers;

    if-eqz p1, :cond_7

    .line 966
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_messages_featuredStickers;

    .line 967
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_featuredStickers;->sets:Ljava/util/ArrayList;

    .line 968
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/16 v2, 0x28

    if-ge p2, v2, :cond_0

    .line 969
    iput-boolean v1, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->endReached:Z

    .line 971
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_8

    .line 972
    iget-object p2, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->otherPacks:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 973
    iget-object p2, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->cache:Landroid/util/SparseArray;

    iget v2, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->totalItems:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->totalItems:I

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 975
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->otherPacks:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 976
    iget-object p2, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->sets:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v2, 0x0

    .line 977
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 978
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    .line 979
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->covers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->cover:Lorg/telegram/tgnet/TLRPC$Document;

    if-nez v4, :cond_2

    goto/16 :goto_3

    .line 982
    :cond_2
    iget-object v4, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->sets:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 983
    iget-object v4, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->positionsToSets:Landroid/util/SparseArray;

    iget v5, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->totalItems:I

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 984
    iget-object v4, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->cache:Landroid/util/SparseArray;

    iget v5, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->totalItems:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->totalItems:I

    add-int/lit8 v6, p2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v4, v5, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 987
    iget-object p2, v3, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->covers:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    .line 988
    iget-object p2, v3, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->covers:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    int-to-float p2, p2

    iget v4, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->stickersPerRow:I

    int-to-float v4, v4

    div-float/2addr p2, v4

    float-to-double v4, p2

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int p2, v4

    const/4 v4, 0x0

    .line 989
    :goto_1
    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->covers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 990
    iget-object v5, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->cache:Landroid/util/SparseArray;

    iget v7, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->totalItems:I

    add-int/2addr v7, v4

    iget-object v8, v3, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->covers:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 994
    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->cache:Landroid/util/SparseArray;

    iget v4, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->totalItems:I

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->cover:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {p2, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p2, 0x1

    :cond_4
    const/4 v4, 0x0

    .line 996
    :goto_2
    iget v5, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->stickersPerRow:I

    mul-int v7, p2, v5

    if-ge v4, v7, :cond_5

    .line 997
    iget-object v5, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->positionsToSets:Landroid/util/SparseArray;

    iget v7, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->totalItems:I

    add-int/2addr v7, v4

    invoke-virtual {v5, v7, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 999
    :cond_5
    iget v3, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->totalItems:I

    mul-int p2, p2, v5

    add-int/2addr v3, p2

    iput v3, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->totalItems:I

    move p2, v6

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 1001
    :cond_6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_4

    .line 1004
    :cond_7
    iput-boolean v1, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->endReached:Z

    :cond_8
    :goto_4
    return-void
.end method

.method private synthetic lambda$loadMoreStickerSets$3(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 963
    new-instance v0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onCreateViewHolder$0(Landroid/view/View;)V
    .locals 4

    .line 732
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;

    .line 733
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->getStickerSet()Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    move-result-object v0

    .line 734
    iget-object v1, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->this$0:Lorg/telegram/ui/Components/TrendingStickersLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/TrendingStickersLayout;->access$2400(Lorg/telegram/ui/Components/TrendingStickersLayout;)Landroid/util/LongSparseArray;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    move-result v1

    if-gez v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->this$0:Lorg/telegram/ui/Components/TrendingStickersLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/TrendingStickersLayout;->access$2500(Lorg/telegram/ui/Components/TrendingStickersLayout;)Landroid/util/LongSparseArray;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    move-result v1

    if-ltz v1, :cond_0

    goto :goto_0

    .line 737
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->isInstalled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 738
    iget-object p1, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->this$0:Lorg/telegram/ui/Components/TrendingStickersLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/TrendingStickersLayout;->access$2500(Lorg/telegram/ui/Components/TrendingStickersLayout;)Landroid/util/LongSparseArray;

    move-result-object p1

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 739
    iget-object p1, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->this$0:Lorg/telegram/ui/Components/TrendingStickersLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/TrendingStickersLayout;->access$1800(Lorg/telegram/ui/Components/TrendingStickersLayout;)Lorg/telegram/ui/Components/TrendingStickersLayout$Delegate;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/TrendingStickersLayout$Delegate;->onStickerSetRemove(Lorg/telegram/tgnet/TLRPC$StickerSetCovered;)V

    goto :goto_0

    .line 741
    :cond_1
    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->installStickerSet(Lorg/telegram/tgnet/TLRPC$StickerSetCovered;Landroid/view/View;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic lambda$onCreateViewHolder$1(Landroid/view/View;)V
    .locals 4

    .line 754
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Cells/FeaturedStickerSetCell2;

    .line 755
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/FeaturedStickerSetCell2;->getStickerSet()Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    move-result-object v0

    .line 756
    iget-object v1, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->this$0:Lorg/telegram/ui/Components/TrendingStickersLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/TrendingStickersLayout;->access$2400(Lorg/telegram/ui/Components/TrendingStickersLayout;)Landroid/util/LongSparseArray;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    move-result v1

    if-gez v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->this$0:Lorg/telegram/ui/Components/TrendingStickersLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/TrendingStickersLayout;->access$2500(Lorg/telegram/ui/Components/TrendingStickersLayout;)Landroid/util/LongSparseArray;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    move-result v1

    if-ltz v1, :cond_0

    goto :goto_0

    .line 759
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/FeaturedStickerSetCell2;->isInstalled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 760
    iget-object p1, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->this$0:Lorg/telegram/ui/Components/TrendingStickersLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/TrendingStickersLayout;->access$2500(Lorg/telegram/ui/Components/TrendingStickersLayout;)Landroid/util/LongSparseArray;

    move-result-object p1

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 761
    iget-object p1, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->this$0:Lorg/telegram/ui/Components/TrendingStickersLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/TrendingStickersLayout;->access$1800(Lorg/telegram/ui/Components/TrendingStickersLayout;)Lorg/telegram/ui/Components/TrendingStickersLayout$Delegate;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/TrendingStickersLayout$Delegate;->onStickerSetRemove(Lorg/telegram/tgnet/TLRPC$StickerSetCovered;)V

    goto :goto_0

    .line 763
    :cond_1
    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->installStickerSet(Lorg/telegram/tgnet/TLRPC$StickerSetCovered;Landroid/view/View;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 687
    iget v0, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->totalItems:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 697
    invoke-virtual {p0}, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x3

    return p1

    .line 700
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->cache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 702
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 v0, -0x1

    .line 704
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x4

    return p1

    :cond_2
    const/4 p1, 0x2

    return p1

    :cond_3
    return v1
.end method

.method public getThemeDescriptions(Ljava/util/List;Lorg/telegram/ui/Components/RecyclerListView;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;",
            "Lorg/telegram/ui/Components/RecyclerListView;",
            "Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;",
            ")V"
        }
    .end annotation

    .line 1021
    invoke-static {p1, p2, p3}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->createThemeDescriptions(Ljava/util/List;Lorg/telegram/ui/Components/RecyclerListView;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;)V

    .line 1022
    invoke-static {p1, p2, p3}, Lorg/telegram/ui/Cells/FeaturedStickerSetCell2;->createThemeDescriptions(Ljava/util/List;Lorg/telegram/ui/Components/RecyclerListView;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;)V

    .line 1023
    invoke-static {p1, p2}, Lorg/telegram/ui/Cells/GraySectionCell;->createThemeDescriptions(Ljava/util/List;Lorg/telegram/ui/Components/RecyclerListView;)V

    return-void
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    .line 692
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public loadMoreStickerSets()V
    .locals 3

    .line 956
    iget-object v0, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->this$0:Lorg/telegram/ui/Components/TrendingStickersLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/TrendingStickersLayout;->access$1400(Lorg/telegram/ui/Components/TrendingStickersLayout;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->loadingMore:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->endReached:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 959
    iput-boolean v0, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->loadingMore:Z

    .line 960
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getOldFeaturedStickers;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_getOldFeaturedStickers;-><init>()V

    .line 961
    iget-object v1, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->otherPacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getOldFeaturedStickers;->offset:I

    const/16 v1, 0x28

    .line 962
    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getOldFeaturedStickers;->limit:I

    .line 963
    iget-object v1, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->this$0:Lorg/telegram/ui/Components/TrendingStickersLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/TrendingStickersLayout;->access$2200(Lorg/telegram/ui/Components/TrendingStickersLayout;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    .line 776
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 789
    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/GraySectionCell;

    sget p2, Lorg/telegram/messenger/R$string;->OtherStickers:I

    const-string v0, "OtherStickers"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 786
    :cond_1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-direct {p0, p1, p2, v1}, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->bindStickerSetCell(Landroid/view/View;IZ)V

    goto :goto_0

    .line 782
    :cond_2
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/EmptyCell;

    const/16 p2, 0x52

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/EmptyCell;->setHeight(I)V

    goto :goto_0

    .line 778
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->cache:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Document;

    .line 779
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/StickerEmojiCell;

    iget-object v2, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->positionsToSets:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, v0, p2, v1}, Lorg/telegram/ui/Cells/StickerEmojiCell;->setSticker(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;Z)V

    :goto_0
    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 1

    const/4 v0, 0x0

    .line 797
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 798
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p3

    const/4 v0, 0x2

    if-eq p3, v0, :cond_0

    const/4 v0, 0x5

    if-ne p3, v0, :cond_2

    .line 800
    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->bindStickerSetCell(Landroid/view/View;IZ)V

    goto :goto_0

    .line 803
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 6

    const/4 p1, 0x3

    if-eqz p2, :cond_5

    const/4 v0, 0x1

    if-eq p2, v0, :cond_4

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    if-eq p2, p1, :cond_2

    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    const/4 v0, 0x5

    if-eq p2, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    .line 752
    :cond_0
    new-instance p2, Lorg/telegram/ui/Cells/FeaturedStickerSetCell2;

    iget-object v0, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->context:Landroid/content/Context;

    iget-object v1, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->this$0:Lorg/telegram/ui/Components/TrendingStickersLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/TrendingStickersLayout;->access$2100(Lorg/telegram/ui/Components/TrendingStickersLayout;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lorg/telegram/ui/Cells/FeaturedStickerSetCell2;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 753
    new-instance v0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;)V

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Cells/FeaturedStickerSetCell2;->setAddOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 766
    invoke-virtual {p2}, Lorg/telegram/ui/Cells/FeaturedStickerSetCell2;->getImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/BackupImageView;->setLayerNum(I)V

    goto :goto_0

    .line 749
    :cond_1
    new-instance p1, Lorg/telegram/ui/Cells/GraySectionCell;

    iget-object p2, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->context:Landroid/content/Context;

    iget-object v0, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->this$0:Lorg/telegram/ui/Components/TrendingStickersLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/TrendingStickersLayout;->access$2100(Lorg/telegram/ui/Components/TrendingStickersLayout;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/Cells/GraySectionCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_1

    .line 746
    :cond_2
    new-instance p1, Landroid/view/View;

    iget-object p2, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    goto :goto_1

    .line 730
    :cond_3
    new-instance p1, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;

    iget-object v1, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->context:Landroid/content/Context;

    const/16 v2, 0x11

    const/4 v3, 0x1

    const/4 v4, 0x1

    iget-object p2, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->this$0:Lorg/telegram/ui/Components/TrendingStickersLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/TrendingStickersLayout;->access$2100(Lorg/telegram/ui/Components/TrendingStickersLayout;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v5

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;-><init>(Landroid/content/Context;IZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 731
    new-instance p2, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->setAddOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 727
    :cond_4
    new-instance p1, Lorg/telegram/ui/Cells/EmptyCell;

    iget-object p2, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/EmptyCell;-><init>(Landroid/content/Context;)V

    goto :goto_1

    .line 718
    :cond_5
    new-instance p2, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter$1;

    iget-object v0, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {p2, p0, v0, v1}, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter$1;-><init>(Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;Landroid/content/Context;Z)V

    .line 723
    invoke-virtual {p2}, Lorg/telegram/ui/Cells/StickerEmojiCell;->getImageView()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->setLayerNum(I)V

    :goto_0
    move-object p1, p2

    .line 771
    :goto_1
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public refreshStickerSets()V
    .locals 12

    .line 895
    iget-object v0, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->this$0:Lorg/telegram/ui/Components/TrendingStickersLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x5

    const/16 v3, 0x48

    .line 897
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    div-int/2addr v0, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->stickersPerRow:I

    .line 898
    iget-object v0, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->this$0:Lorg/telegram/ui/Components/TrendingStickersLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/TrendingStickersLayout;->access$500(Lorg/telegram/ui/Components/TrendingStickersLayout;)Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v0

    iget v2, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->stickersPerRow:I

    if-eq v0, v2, :cond_0

    .line 899
    iget-object v0, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->this$0:Lorg/telegram/ui/Components/TrendingStickersLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/TrendingStickersLayout;->access$500(Lorg/telegram/ui/Components/TrendingStickersLayout;)Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object v0

    iget v2, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->stickersPerRow:I

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    .line 900
    iget-object v0, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->this$0:Lorg/telegram/ui/Components/TrendingStickersLayout;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/TrendingStickersLayout;->access$1402(Lorg/telegram/ui/Components/TrendingStickersLayout;Z)Z

    .line 903
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->this$0:Lorg/telegram/ui/Components/TrendingStickersLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/TrendingStickersLayout;->access$1400(Lorg/telegram/ui/Components/TrendingStickersLayout;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 906
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->cache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 907
    iget-object v0, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->positionsToSets:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 908
    iget-object v0, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->setsToPosition:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 909
    iget-object v0, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->sets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 910
    iput v1, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->totalItems:I

    .line 913
    iget-object v0, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->this$0:Lorg/telegram/ui/Components/TrendingStickersLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/TrendingStickersLayout;->access$2200(Lorg/telegram/ui/Components/TrendingStickersLayout;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    .line 914
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaDataController;->getFeaturedStickerSets()Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 915
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 916
    iget-object v4, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->otherPacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 918
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ge v4, v6, :cond_7

    .line 919
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    .line 920
    iget-object v8, v6, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->covers:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, v6, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->cover:Lorg/telegram/tgnet/TLRPC$Document;

    if-nez v8, :cond_2

    goto/16 :goto_3

    :cond_2
    if-ne v4, v3, :cond_3

    .line 925
    iget-object v8, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->cache:Landroid/util/SparseArray;

    iget v9, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->totalItems:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->totalItems:I

    const/4 v10, -0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 928
    :cond_3
    iget-object v8, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->sets:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 929
    iget-object v8, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->positionsToSets:Landroid/util/SparseArray;

    iget v9, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->totalItems:I

    invoke-virtual {v8, v9, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 930
    iget-object v8, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->setsToPosition:Ljava/util/HashMap;

    iget v9, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->totalItems:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 931
    iget-object v8, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->cache:Landroid/util/SparseArray;

    iget v9, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->totalItems:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->totalItems:I

    add-int/lit8 v10, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v8, v9, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 934
    iget-object v5, v6, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->covers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 935
    iget-object v5, v6, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->covers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    int-to-float v5, v5

    iget v7, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->stickersPerRow:I

    int-to-float v7, v7

    div-float/2addr v5, v7

    float-to-double v7, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v7, v7

    const/4 v5, 0x0

    .line 936
    :goto_1
    iget-object v8, v6, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->covers:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v5, v8, :cond_5

    .line 937
    iget-object v8, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->cache:Landroid/util/SparseArray;

    iget v9, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->totalItems:I

    add-int/2addr v9, v5

    iget-object v11, v6, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->covers:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v8, v9, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 941
    :cond_4
    iget-object v5, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->cache:Landroid/util/SparseArray;

    iget v8, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->totalItems:I

    iget-object v9, v6, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->cover:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v5, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_5
    const/4 v5, 0x0

    .line 943
    :goto_2
    iget v8, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->stickersPerRow:I

    mul-int v9, v7, v8

    if-ge v5, v9, :cond_6

    .line 944
    iget-object v8, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->positionsToSets:Landroid/util/SparseArray;

    iget v9, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->totalItems:I

    add-int/2addr v9, v5

    invoke-virtual {v8, v9, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 946
    :cond_6
    iget v5, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->totalItems:I

    mul-int v7, v7, v8

    add-int/2addr v5, v7

    iput v5, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->totalItems:I

    move v5, v10

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 948
    :cond_7
    iget v2, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->totalItems:I

    if-eqz v2, :cond_8

    .line 949
    iget-object v2, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->this$0:Lorg/telegram/ui/Components/TrendingStickersLayout;

    invoke-static {v2, v7}, Lorg/telegram/ui/Components/TrendingStickersLayout;->access$1402(Lorg/telegram/ui/Components/TrendingStickersLayout;Z)Z

    .line 950
    iget-object v2, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->this$0:Lorg/telegram/ui/Components/TrendingStickersLayout;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaDataController;->getFeaturedStickersHashWithoutUnread(Z)J

    move-result-wide v0

    invoke-static {v2, v0, v1}, Lorg/telegram/ui/Components/TrendingStickersLayout;->access$2602(Lorg/telegram/ui/Components/TrendingStickersLayout;J)J

    .line 952
    :cond_8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public updateColors(Lorg/telegram/ui/Components/RecyclerListView;)V
    .locals 4

    .line 1010
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 1011
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1012
    instance-of v3, v2, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;

    if-eqz v3, :cond_0

    .line 1013
    check-cast v2, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->updateColors()V

    goto :goto_1

    .line 1014
    :cond_0
    instance-of v3, v2, Lorg/telegram/ui/Cells/FeaturedStickerSetCell2;

    if-eqz v3, :cond_1

    .line 1015
    check-cast v2, Lorg/telegram/ui/Cells/FeaturedStickerSetCell2;

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/FeaturedStickerSetCell2;->updateColors()V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
