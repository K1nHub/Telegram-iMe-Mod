.class Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "StickerMasksAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/StickerMasksAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StickersSearchGridAdapter"
.end annotation


# instance fields
.field private cache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private cacheParent:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field cleared:Z

.field private context:Landroid/content/Context;

.field private emojiArrays:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$Document;",
            ">;>;"
        }
    .end annotation
.end field

.field private emojiSearchId:I

.field private emojiStickers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$Document;",
            ">;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private localPacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;",
            ">;"
        }
    .end annotation
.end field

.field private localPacksByName:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private localPacksByShortName:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private positionToEmoji:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private positionToRow:Landroid/util/SparseIntArray;

.field private reqId2:I

.field private rowStartPack:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private searchQuery:Ljava/lang/String;

.field private searchRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

.field private totalItems:I


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/StickerMasksAlert;Landroid/content/Context;)V
    .locals 0

    .line 1858
    iput-object p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 1680
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->rowStartPack:Landroid/util/SparseArray;

    .line 1681
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->cache:Landroid/util/SparseArray;

    .line 1682
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->cacheParent:Landroid/util/SparseArray;

    .line 1683
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->positionToRow:Landroid/util/SparseIntArray;

    .line 1684
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->positionToEmoji:Landroid/util/SparseArray;

    .line 1687
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->localPacks:Ljava/util/ArrayList;

    .line 1688
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->localPacksByShortName:Ljava/util/HashMap;

    .line 1689
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->localPacksByName:Ljava/util/HashMap;

    .line 1690
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->emojiStickers:Ljava/util/HashMap;

    .line 1691
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->emojiArrays:Ljava/util/ArrayList;

    .line 1698
    new-instance p1, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter$1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter$1;-><init>(Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->searchRunnable:Ljava/lang/Runnable;

    .line 1859
    iput-object p2, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$3000(Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;)I
    .locals 0

    .line 1677
    iget p0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->totalItems:I

    return p0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;)Landroid/util/SparseArray;
    .locals 0

    .line 1677
    iget-object p0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->cache:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$5200(Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;)Ljava/util/HashMap;
    .locals 0

    .line 1677
    iget-object p0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->emojiStickers:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$5300(Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 1677
    iget-object p0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->emojiArrays:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$5400(Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 1677
    iget-object p0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->localPacks:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$5500(Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;)Ljava/util/HashMap;
    .locals 0

    .line 1677
    iget-object p0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->localPacksByShortName:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$5600(Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;)Ljava/util/HashMap;
    .locals 0

    .line 1677
    iget-object p0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->localPacksByName:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$5700(Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;)Ljava/lang/String;
    .locals 0

    .line 1677
    iget-object p0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->searchQuery:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$5800(Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;)I
    .locals 0

    .line 1677
    iget p0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->emojiSearchId:I

    return p0
.end method

.method static synthetic access$5804(Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;)I
    .locals 1

    .line 1677
    iget v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->emojiSearchId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->emojiSearchId:I

    return v0
.end method

.method static synthetic access$6100(Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;)I
    .locals 0

    .line 1677
    iget p0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->reqId2:I

    return p0
.end method

.method static synthetic access$6102(Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;I)I
    .locals 0

    .line 1677
    iput p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->reqId2:I

    return p1
.end method


# virtual methods
.method public getItemCount()I
    .locals 2

    .line 1870
    iget v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->totalItems:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method public getItemViewType(I)I
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x4

    return p1

    :cond_0
    const/4 v0, 0x5

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 1905
    iget v2, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->totalItems:I

    if-ne v2, v1, :cond_1

    return v0

    .line 1908
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->cache:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 1910
    instance-of p1, p1, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz p1, :cond_3

    .line 1911
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$3700(Lorg/telegram/ui/Components/StickerMasksAlert;)I

    move-result p1

    if-ne p1, v0, :cond_2

    const/4 p1, -0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1

    :cond_3
    const/4 p1, 0x2

    return p1

    :cond_4
    return v1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    .line 1864
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, -0x1

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
    .locals 18

    move-object/from16 v0, p0

    .line 2059
    iget-object v1, v0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->rowStartPack:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 2060
    iget-object v1, v0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->positionToRow:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    .line 2061
    iget-object v1, v0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->cache:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 2062
    iget-object v1, v0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->positionToEmoji:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    const/4 v1, 0x0

    .line 2063
    iput v1, v0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->totalItems:I

    .line 2065
    iget-object v2, v0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->localPacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->emojiArrays:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    const/4 v4, -0x1

    move v6, v1

    move v5, v4

    :goto_0
    add-int v7, v2, v3

    if-ge v5, v7, :cond_a

    if-ne v5, v4, :cond_0

    .line 2070
    iget-object v7, v0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->cache:Landroid/util/SparseArray;

    iget v8, v0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->totalItems:I

    add-int/lit8 v9, v8, 0x1

    iput v9, v0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->totalItems:I

    const-string v9, "search"

    invoke-virtual {v7, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    :goto_1
    move/from16 v17, v2

    goto/16 :goto_7

    :cond_0
    if-ge v5, v2, :cond_4

    .line 2075
    iget-object v7, v0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->localPacks:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .line 2076
    iget-object v8, v7, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    .line 2111
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_1

    .line 2114
    :cond_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    int-to-float v9, v9

    iget-object v10, v0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-static {v10}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$2600(Lorg/telegram/ui/Components/StickerMasksAlert;)Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;

    move-result-object v10

    invoke-static {v10}, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->access$2700(Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;)I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v9, v9

    .line 2115
    iget-object v10, v0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->cache:Landroid/util/SparseArray;

    iget v11, v0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->totalItems:I

    invoke-virtual {v10, v11, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2116
    iget-object v10, v0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->positionToRow:Landroid/util/SparseIntArray;

    iget v11, v0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->totalItems:I

    invoke-virtual {v10, v11, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2117
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    move v11, v1

    :goto_2
    if-ge v11, v10, :cond_2

    add-int/lit8 v12, v11, 0x1

    .line 2118
    iget v13, v0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->totalItems:I

    add-int/2addr v13, v12

    add-int/lit8 v14, v6, 0x1

    .line 2119
    iget-object v15, v0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-static {v15}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$2600(Lorg/telegram/ui/Components/StickerMasksAlert;)Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;

    move-result-object v15

    invoke-static {v15}, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->access$2700(Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;)I

    move-result v15

    div-int v15, v11, v15

    add-int/2addr v14, v15

    .line 2120
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/tgnet/TLRPC$Document;

    .line 2121
    iget-object v15, v0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->cache:Landroid/util/SparseArray;

    invoke-virtual {v15, v13, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2123
    iget-object v11, v0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->cacheParent:Landroid/util/SparseArray;

    invoke-virtual {v11, v13, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2125
    iget-object v11, v0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->positionToRow:Landroid/util/SparseIntArray;

    invoke-virtual {v11, v13, v14}, Landroid/util/SparseIntArray;->put(II)V

    move v11, v12

    goto :goto_2

    :cond_2
    add-int/lit8 v8, v9, 0x1

    move v10, v1

    :goto_3
    if-ge v10, v8, :cond_3

    .line 2128
    iget-object v11, v0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->rowStartPack:Landroid/util/SparseArray;

    add-int v12, v6, v10

    invoke-virtual {v11, v12, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 2130
    :cond_3
    iget v7, v0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->totalItems:I

    iget-object v10, v0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-static {v10}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$2600(Lorg/telegram/ui/Components/StickerMasksAlert;)Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;

    move-result-object v10

    invoke-static {v10}, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->access$2700(Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;)I

    move-result v10

    mul-int/2addr v9, v10

    add-int/lit8 v9, v9, 0x1

    add-int/2addr v7, v9

    iput v7, v0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->totalItems:I

    add-int/2addr v6, v8

    goto/16 :goto_1

    .line 2081
    :cond_4
    iget-object v7, v0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->emojiArrays:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const-string v8, ""

    move v9, v1

    move v10, v9

    :goto_4
    if-ge v9, v7, :cond_8

    .line 2082
    iget-object v11, v0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->emojiArrays:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    .line 2083
    iget-object v12, v0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->emojiStickers:Ljava/util/HashMap;

    invoke-virtual {v12, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    if-eqz v12, :cond_5

    .line 2084
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 2086
    iget-object v8, v0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->positionToEmoji:Landroid/util/SparseArray;

    iget v13, v0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->totalItems:I

    add-int/2addr v13, v10

    invoke-virtual {v8, v13, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v8, v12

    .line 2088
    :cond_5
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    move v13, v1

    :goto_5
    if-ge v13, v12, :cond_7

    .line 2089
    iget v14, v0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->totalItems:I

    add-int/2addr v14, v10

    .line 2090
    iget-object v15, v0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-static {v15}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$2600(Lorg/telegram/ui/Components/StickerMasksAlert;)Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;

    move-result-object v15

    invoke-static {v15}, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->access$2700(Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;)I

    move-result v15

    div-int v15, v10, v15

    add-int/2addr v15, v6

    .line 2092
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v1, v16

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Document;

    .line 2093
    iget-object v4, v0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->cache:Landroid/util/SparseArray;

    invoke-virtual {v4, v14, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2094
    iget-object v4, v0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$5100(Lorg/telegram/ui/Components/StickerMasksAlert;)I

    move-result v4

    invoke-static {v4}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v4

    move/from16 v17, v2

    invoke-static {v1}, Lorg/telegram/messenger/MediaDataController;->getStickerSetId(Lorg/telegram/tgnet/TLRPC$Document;)J

    move-result-wide v1

    invoke-virtual {v4, v1, v2}, Lorg/telegram/messenger/MediaDataController;->getStickerSetById(J)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 2096
    iget-object v2, v0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->cacheParent:Landroid/util/SparseArray;

    invoke-virtual {v2, v14, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2098
    :cond_6
    iget-object v1, v0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->positionToRow:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v14, v15}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v13, v13, 0x1

    move/from16 v2, v17

    const/4 v1, 0x0

    const/4 v4, -0x1

    goto :goto_5

    :cond_7
    move/from16 v17, v2

    add-int/lit8 v9, v9, 0x1

    const/4 v1, 0x0

    const/4 v4, -0x1

    goto :goto_4

    :cond_8
    move/from16 v17, v2

    int-to-float v1, v10

    .line 2102
    iget-object v2, v0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$2600(Lorg/telegram/ui/Components/StickerMasksAlert;)Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->access$2700(Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_9

    .line 2104
    iget-object v4, v0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->rowStartPack:Landroid/util/SparseArray;

    add-int v7, v6, v2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 2106
    :cond_9
    iget v2, v0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->totalItems:I

    iget-object v4, v0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$2600(Lorg/telegram/ui/Components/StickerMasksAlert;)Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->access$2700(Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;)I

    move-result v4

    mul-int/2addr v4, v1

    add-int/2addr v2, v4

    iput v2, v0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->totalItems:I

    add-int/2addr v6, v1

    :goto_7
    add-int/lit8 v5, v5, 0x1

    move/from16 v2, v17

    const/4 v1, 0x0

    const/4 v4, -0x1

    goto/16 :goto_0

    .line 2133
    :cond_a
    invoke-super/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 9

    .line 1986
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_10

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_d

    const/4 v3, 0x0

    if-eq v0, v2, :cond_5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto/16 :goto_2

    .line 2035
    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/StickerSetNameCell;

    .line 2036
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->cache:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    .line 2037
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-eqz v0, :cond_11

    .line 2038
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .line 2039
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->searchQuery:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->localPacksByShortName:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2040
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-eqz v0, :cond_1

    .line 2041
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Cells/StickerSetNameCell;->setText(Ljava/lang/CharSequence;I)V

    .line 2043
    :cond_1
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$StickerSet;->short_name:Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->searchQuery:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Cells/StickerSetNameCell;->setUrl(Ljava/lang/CharSequence;I)V

    goto/16 :goto_2

    .line 2045
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->localPacksByName:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2046
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-eqz p2, :cond_4

    if-eqz v0, :cond_4

    .line 2047
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->searchQuery:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->searchQuery:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    invoke-virtual {p1, p2, v1, v0, v2}, Lorg/telegram/ui/Cells/StickerSetNameCell;->setText(Ljava/lang/CharSequence;III)V

    .line 2049
    :cond_4
    invoke-virtual {p1, v3, v1}, Lorg/telegram/ui/Cells/StickerSetNameCell;->setUrl(Ljava/lang/CharSequence;I)V

    goto/16 :goto_2

    .line 2003
    :cond_5
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/EmptyCell;

    .line 2004
    iget v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->totalItems:I

    const/16 v1, 0x52

    if-ne p2, v0, :cond_c

    .line 2005
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->positionToRow:Landroid/util/SparseIntArray;

    sub-int/2addr p2, v2

    const/high16 v4, -0x80000000

    invoke-virtual {v0, p2, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result p2

    if-ne p2, v4, :cond_6

    .line 2007
    invoke-virtual {p1, v2}, Lorg/telegram/ui/Cells/EmptyCell;->setHeight(I)V

    goto/16 :goto_2

    .line 2009
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->rowStartPack:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    .line 2011
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-eqz v0, :cond_7

    .line 2012
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_1

    .line 2013
    :cond_7
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_8

    .line 2014
    move-object v3, p2

    check-cast v3, Ljava/lang/Integer;

    :cond_8
    :goto_1
    if-nez v3, :cond_9

    .line 2019
    invoke-virtual {p1, v2}, Lorg/telegram/ui/Cells/EmptyCell;->setHeight(I)V

    goto/16 :goto_2

    .line 2021
    :cond_9
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-nez p2, :cond_a

    const/16 p2, 0x8

    .line 2022
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/EmptyCell;->setHeight(I)V

    goto/16 :goto_2

    .line 2024
    :cond_a
    iget-object p2, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-static {p2}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$800(Lorg/telegram/ui/Components/StickerMasksAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result p2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$2600(Lorg/telegram/ui/Components/StickerMasksAlert;)Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->access$2700(Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v0, v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    mul-int/2addr v0, v1

    sub-int/2addr p2, v0

    if-lez p2, :cond_b

    move v2, p2

    .line 2025
    :cond_b
    invoke-virtual {p1, v2}, Lorg/telegram/ui/Cells/EmptyCell;->setHeight(I)V

    goto/16 :goto_2

    .line 2030
    :cond_c
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/EmptyCell;->setHeight(I)V

    goto/16 :goto_2

    .line 1996
    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->cache:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Document;

    .line 1997
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/StickerEmojiCell;

    const/4 v5, 0x0

    .line 1998
    iget-object v3, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->cacheParent:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    iget-object v3, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->positionToEmoji:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v7, p2

    check-cast v7, Ljava/lang/String;

    const/4 v8, 0x0

    move-object v3, p1

    move-object v4, v0

    invoke-virtual/range {v3 .. v8}, Lorg/telegram/ui/Cells/StickerEmojiCell;->setSticker(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1999
    iget-object p2, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-static {p2}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$4700(Lorg/telegram/ui/Components/StickerMasksAlert;)[Ljava/util/ArrayList;

    move-result-object p2

    iget-object v3, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$3700(Lorg/telegram/ui/Components/StickerMasksAlert;)I

    move-result v4

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$3900(Lorg/telegram/ui/Components/StickerMasksAlert;I)I

    move-result v3

    aget-object p2, p2, v3

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_e

    iget-object p2, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-static {p2}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$4800(Lorg/telegram/ui/Components/StickerMasksAlert;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_f

    :cond_e
    move v1, v2

    :cond_f
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Cells/StickerEmojiCell;->setRecent(Z)V

    goto :goto_2

    .line 1988
    :cond_10
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->cache:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Document;

    .line 1989
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;

    .line 1990
    iput p2, p1, Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;->position:I

    .line 1991
    iput-object v0, p1, Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;->access$4600(Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 1992
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$4700(Lorg/telegram/ui/Components/StickerMasksAlert;)[Ljava/util/ArrayList;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-static {p2}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$3700(Lorg/telegram/ui/Components/StickerMasksAlert;)I

    move-result v1

    invoke-static {p2, v1}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$3900(Lorg/telegram/ui/Components/StickerMasksAlert;I)I

    move-result p2

    aget-object p1, p1, p2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    iget-object p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$4800(Lorg/telegram/ui/Components/StickerMasksAlert;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    :cond_11
    :goto_2
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 12

    const/4 p1, -0x1

    if-eq p2, p1, :cond_5

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    const/4 v1, 0x1

    if-eq p2, v1, :cond_3

    const/4 v2, 0x2

    if-eq p2, v2, :cond_2

    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    const/4 v0, 0x5

    if-eq p2, v0, :cond_0

    const/4 p1, 0x0

    goto/16 :goto_1

    .line 1956
    :cond_0
    new-instance p2, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter$3;

    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->context:Landroid/content/Context;

    invoke-direct {p2, p0, v0}, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter$3;-><init>(Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;Landroid/content/Context;)V

    .line 1964
    new-instance v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1965
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1966
    sget v2, Lorg/telegram/messenger/R$drawable;->stickers_empty:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1967
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    const v4, -0x6b645f

    invoke-direct {v2, v4, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const/4 v5, -0x2

    const/4 v6, -0x2

    const/16 v7, 0x11

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x32

    .line 1968
    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1970
    new-instance v0, Landroid/widget/TextView;

    iget-object v2, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1971
    sget v2, Lorg/telegram/messenger/R$string;->NoStickersFound:I

    const-string v3, "NoStickersFound"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v2, 0x41800000    # 16.0f

    .line 1972
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1973
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v11, 0x0

    .line 1974
    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1977
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1952
    :cond_1
    new-instance p2, Landroid/view/View;

    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->context:Landroid/content/Context;

    invoke-direct {p2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1953
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    iget-object v1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$100(Lorg/telegram/ui/Components/StickerMasksAlert;)I

    move-result v1

    const/16 v2, 0x30

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    move-object p1, p2

    goto :goto_1

    .line 1949
    :cond_2
    new-instance p1, Lorg/telegram/ui/Cells/StickerSetNameCell;

    iget-object p2, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->context:Landroid/content/Context;

    iget-object v1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$6400(Lorg/telegram/ui/Components/StickerMasksAlert;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    invoke-direct {p1, p2, v0, v1}, Lorg/telegram/ui/Cells/StickerSetNameCell;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_1

    .line 1946
    :cond_3
    new-instance p1, Lorg/telegram/ui/Cells/EmptyCell;

    iget-object p2, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/EmptyCell;-><init>(Landroid/content/Context;)V

    goto :goto_1

    .line 1933
    :cond_4
    new-instance p1, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter$2;

    iget-object p2, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, p0, p2, v0}, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter$2;-><init>(Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;Landroid/content/Context;Z)V

    .line 1942
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/StickerEmojiCell;->getImageView()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$6300(Lorg/telegram/ui/Components/StickerMasksAlert;)I

    move-result v0

    invoke-virtual {p2, v0}, Lorg/telegram/messenger/ImageReceiver;->setLayerNum(I)V

    goto :goto_1

    .line 1928
    :cond_5
    new-instance p1, Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;

    iget-object p2, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;-><init>(Lorg/telegram/ui/Components/StickerMasksAlert;Landroid/content/Context;)V

    .line 1929
    invoke-virtual {p1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$6200(Lorg/telegram/ui/Components/StickerMasksAlert;)I

    move-result v0

    invoke-virtual {p2, v0}, Lorg/telegram/messenger/ImageReceiver;->setLayerNum(I)V

    .line 1981
    :goto_1
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public search(Ljava/lang/String;)V
    .locals 3

    .line 1882
    iget v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->reqId2:I

    if-eqz v0, :cond_0

    .line 1883
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$5100(Lorg/telegram/ui/Components/StickerMasksAlert;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->reqId2:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    const/4 v0, 0x0

    .line 1884
    iput v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->reqId2:I

    .line 1886
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x0

    .line 1887
    iput-object p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->searchQuery:Ljava/lang/String;

    .line 1888
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->localPacks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1889
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->emojiStickers:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 1890
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$800(Lorg/telegram/ui/Components/StickerMasksAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$2600(Lorg/telegram/ui/Components/StickerMasksAlert;)Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 1891
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$800(Lorg/telegram/ui/Components/StickerMasksAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$2600(Lorg/telegram/ui/Components/StickerMasksAlert;)Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1893
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 1895
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->searchQuery:Ljava/lang/String;

    .line 1897
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->searchRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1898
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->searchRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x12c

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method
