.class Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "StickerMasksAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/StickerMasksAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StickersGridAdapter"
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

.field private cacheParents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private packStartPosition:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private positionToRow:Landroid/util/SparseIntArray;

.field private rowStartPack:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private stickersPerRow:I

.field private stickersPerRowType:I

.field final synthetic this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

.field private totalItems:I


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/StickerMasksAlert;Landroid/content/Context;)V
    .locals 0

    .line 1316
    iput-object p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 1309
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->rowStartPack:Landroid/util/SparseArray;

    .line 1310
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->packStartPosition:Ljava/util/HashMap;

    .line 1311
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->cache:Landroid/util/SparseArray;

    .line 1312
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->cacheParents:Landroid/util/SparseArray;

    .line 1313
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->positionToRow:Landroid/util/SparseIntArray;

    .line 1317
    iput-object p2, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$2700(Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;)I
    .locals 0

    .line 1305
    iget p0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->stickersPerRow:I

    return p0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;)I
    .locals 0

    .line 1305
    iget p0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->totalItems:I

    return p0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;)Landroid/util/SparseArray;
    .locals 0

    .line 1305
    iget-object p0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->cache:Landroid/util/SparseArray;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1328
    iget v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->totalItems:I

    if-eqz v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x4

    return p1

    .line 1348
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->cache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1350
    instance-of p1, p1, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz p1, :cond_2

    .line 1351
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$3700(Lorg/telegram/ui/Components/StickerMasksAlert;)I

    move-result p1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    const/4 p1, 0x2

    return p1

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public getPositionForPack(Ljava/lang/Object;)I
    .locals 1

    .line 1336
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->packStartPosition:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 1340
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getTabForPosition(I)I
    .locals 4

    const/4 v0, 0x1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 1367
    :cond_0
    iget v1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->stickersPerRow:I

    if-eqz v1, :cond_1

    iget v1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->stickersPerRowType:I

    iget-object v2, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$3700(Lorg/telegram/ui/Components/StickerMasksAlert;)I

    move-result v2

    if-eq v1, v2, :cond_4

    .line 1368
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$800(Lorg/telegram/ui/Components/StickerMasksAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    if-nez v1, :cond_2

    .line 1370
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    .line 1372
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$3700(Lorg/telegram/ui/Components/StickerMasksAlert;)I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_3

    const/16 v2, 0x2d

    goto :goto_0

    :cond_3
    const/16 v2, 0x48

    :goto_0
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    div-int/2addr v1, v2

    iput v1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->stickersPerRow:I

    .line 1373
    iget-object v1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$3700(Lorg/telegram/ui/Components/StickerMasksAlert;)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->stickersPerRowType:I

    .line 1375
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->positionToRow:Landroid/util/SparseIntArray;

    const/high16 v2, -0x80000000

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    if-ne p1, v2, :cond_5

    .line 1377
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$3800(Lorg/telegram/ui/Components/StickerMasksAlert;)[Ljava/util/ArrayList;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$3700(Lorg/telegram/ui/Components/StickerMasksAlert;)I

    move-result v2

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$3900(Lorg/telegram/ui/Components/StickerMasksAlert;I)I

    move-result v1

    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$4000(Lorg/telegram/ui/Components/StickerMasksAlert;)I

    move-result v0

    add-int/2addr p1, v0

    return p1

    .line 1379
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->rowStartPack:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 1380
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_7

    const-string v0, "recent"

    .line 1381
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1382
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$4100(Lorg/telegram/ui/Components/StickerMasksAlert;)I

    move-result p1

    return p1

    .line 1384
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$4200(Lorg/telegram/ui/Components/StickerMasksAlert;)I

    move-result p1

    return p1

    .line 1387
    :cond_7
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .line 1388
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$3800(Lorg/telegram/ui/Components/StickerMasksAlert;)[Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$3700(Lorg/telegram/ui/Components/StickerMasksAlert;)I

    move-result v2

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$3900(Lorg/telegram/ui/Components/StickerMasksAlert;I)I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 1389
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$4000(Lorg/telegram/ui/Components/StickerMasksAlert;)I

    move-result v0

    add-int/2addr p1, v0

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    .line 1322
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
    .locals 17

    move-object/from16 v0, p0

    .line 1502
    iget-object v1, v0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$800(Lorg/telegram/ui/Components/StickerMasksAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    if-nez v1, :cond_0

    .line 1504
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    .line 1506
    :cond_0
    iget-object v2, v0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$3700(Lorg/telegram/ui/Components/StickerMasksAlert;)I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    const/16 v2, 0x2d

    goto :goto_0

    :cond_1
    const/16 v2, 0x48

    :goto_0
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    div-int/2addr v1, v2

    iput v1, v0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->stickersPerRow:I

    .line 1507
    iget-object v1, v0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$4700(Lorg/telegram/ui/Components/StickerMasksAlert;)Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object v1

    iget v2, v0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->stickersPerRow:I

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    .line 1508
    iget-object v1, v0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->rowStartPack:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 1509
    iget-object v1, v0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->packStartPosition:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1510
    iget-object v1, v0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->positionToRow:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    .line 1511
    iget-object v1, v0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->cache:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    const/4 v1, 0x0

    .line 1512
    iput v1, v0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->totalItems:I

    .line 1513
    iget-object v2, v0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$3800(Lorg/telegram/ui/Components/StickerMasksAlert;)[Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$3700(Lorg/telegram/ui/Components/StickerMasksAlert;)I

    move-result v4

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$3900(Lorg/telegram/ui/Components/StickerMasksAlert;I)I

    move-result v3

    aget-object v2, v2, v3

    const/4 v3, -0x3

    const/4 v4, -0x3

    const/4 v5, 0x0

    .line 1515
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_e

    if-ne v4, v3, :cond_2

    .line 1520
    iget-object v6, v0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->cache:Landroid/util/SparseArray;

    iget v7, v0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->totalItems:I

    add-int/lit8 v8, v7, 0x1

    iput v8, v0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->totalItems:I

    const-string v8, "search"

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_a

    :cond_2
    const/4 v6, -0x2

    const-string v7, "fav"

    const-string v8, "recent"

    const/4 v9, -0x1

    const/4 v10, 0x0

    if-ne v4, v6, :cond_4

    .line 1524
    iget-object v6, v0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-static {v6}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$3700(Lorg/telegram/ui/Components/StickerMasksAlert;)I

    move-result v6

    if-nez v6, :cond_3

    .line 1525
    iget-object v6, v0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-static {v6}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$4600(Lorg/telegram/ui/Components/StickerMasksAlert;)Ljava/util/ArrayList;

    move-result-object v6

    .line 1526
    iget-object v11, v0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->packStartPosition:Ljava/util/HashMap;

    iget v12, v0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->totalItems:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v7, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v11, v7

    goto :goto_2

    :cond_3
    move-object v6, v10

    move-object v11, v6

    goto :goto_3

    :cond_4
    if-ne v4, v9, :cond_5

    .line 1532
    iget-object v6, v0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-static {v6}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$4500(Lorg/telegram/ui/Components/StickerMasksAlert;)[Ljava/util/ArrayList;

    move-result-object v6

    iget-object v11, v0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-static {v11}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$3700(Lorg/telegram/ui/Components/StickerMasksAlert;)I

    move-result v12

    invoke-static {v11, v12}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$3900(Lorg/telegram/ui/Components/StickerMasksAlert;I)I

    move-result v11

    aget-object v6, v6, v11

    .line 1533
    iget-object v11, v0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->packStartPosition:Ljava/util/HashMap;

    iget v12, v0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->totalItems:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v8, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v11, v8

    :goto_2
    move-object/from16 v16, v10

    move-object v10, v6

    move-object/from16 v6, v16

    goto :goto_3

    .line 1536
    :cond_5
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .line 1537
    iget-object v11, v6, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    .line 1538
    iget-object v12, v0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->packStartPosition:Ljava/util/HashMap;

    iget v13, v0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->totalItems:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v6, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v16, v11

    move-object v11, v10

    move-object/from16 v10, v16

    :goto_3
    if-eqz v10, :cond_d

    .line 1540
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_6

    goto/16 :goto_a

    .line 1543
    :cond_6
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    int-to-float v12, v12

    iget v13, v0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->stickersPerRow:I

    int-to-float v13, v13

    div-float/2addr v12, v13

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v12, v12

    if-eqz v6, :cond_7

    .line 1545
    iget-object v13, v0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->cache:Landroid/util/SparseArray;

    iget v14, v0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->totalItems:I

    invoke-virtual {v13, v14, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_4

    .line 1547
    :cond_7
    iget-object v13, v0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->cache:Landroid/util/SparseArray;

    iget v14, v0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->totalItems:I

    invoke-virtual {v13, v14, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1549
    :goto_4
    iget-object v13, v0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->positionToRow:Landroid/util/SparseIntArray;

    iget v14, v0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->totalItems:I

    invoke-virtual {v13, v14, v5}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v13, 0x0

    .line 1550
    :goto_5
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v13, v14, :cond_9

    add-int/lit8 v14, v13, 0x1

    .line 1551
    iget v15, v0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->totalItems:I

    add-int/2addr v15, v14

    .line 1552
    iget-object v1, v0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->cache:Landroid/util/SparseArray;

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v15, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-eqz v6, :cond_8

    .line 1554
    iget-object v1, v0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->cacheParents:Landroid/util/SparseArray;

    invoke-virtual {v1, v15, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_6

    .line 1556
    :cond_8
    iget-object v1, v0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->cacheParents:Landroid/util/SparseArray;

    invoke-virtual {v1, v15, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1558
    :goto_6
    iget-object v1, v0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->positionToRow:Landroid/util/SparseIntArray;

    iget v3, v0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->totalItems:I

    add-int/2addr v3, v14

    add-int/lit8 v15, v5, 0x1

    iget v9, v0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->stickersPerRow:I

    div-int/2addr v13, v9

    add-int/2addr v15, v13

    invoke-virtual {v1, v3, v15}, Landroid/util/SparseIntArray;->put(II)V

    move v13, v14

    const/4 v1, 0x0

    const/4 v3, -0x3

    const/4 v9, -0x1

    goto :goto_5

    :cond_9
    const/4 v1, 0x0

    :goto_7
    add-int/lit8 v3, v12, 0x1

    if-ge v1, v3, :cond_c

    if-eqz v6, :cond_a

    .line 1562
    iget-object v3, v0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->rowStartPack:Landroid/util/SparseArray;

    add-int v9, v5, v1

    invoke-virtual {v3, v9, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v10, -0x1

    goto :goto_9

    .line 1564
    :cond_a
    iget-object v3, v0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->rowStartPack:Landroid/util/SparseArray;

    add-int v9, v5, v1

    const/4 v10, -0x1

    if-ne v4, v10, :cond_b

    move-object v11, v8

    goto :goto_8

    :cond_b
    move-object v11, v7

    :goto_8
    invoke-virtual {v3, v9, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1567
    :cond_c
    iget v1, v0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->totalItems:I

    iget v6, v0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->stickersPerRow:I

    mul-int v12, v12, v6

    add-int/lit8 v12, v12, 0x1

    add-int/2addr v1, v12

    iput v1, v0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->totalItems:I

    add-int/2addr v5, v3

    :cond_d
    :goto_a
    add-int/lit8 v4, v4, 0x1

    const/4 v1, 0x0

    const/4 v3, -0x3

    goto/16 :goto_1

    .line 1570
    :cond_e
    invoke-super/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 5

    .line 1430
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto/16 :goto_1

    .line 1483
    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/StickerSetNameCell;

    .line 1484
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->cache:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    .line 1485
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-eqz v0, :cond_1

    .line 1486
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .line 1487
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-eqz p2, :cond_e

    .line 1488
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/Cells/StickerSetNameCell;->setText(Ljava/lang/CharSequence;I)V

    goto/16 :goto_1

    .line 1490
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$4500(Lorg/telegram/ui/Components/StickerMasksAlert;)[Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$3700(Lorg/telegram/ui/Components/StickerMasksAlert;)I

    move-result v3

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$3900(Lorg/telegram/ui/Components/StickerMasksAlert;I)I

    move-result v2

    aget-object v0, v0, v2

    if-ne p2, v0, :cond_2

    .line 1491
    sget p2, Lorg/telegram/messenger/R$string;->RecentStickers:I

    const-string v0, "RecentStickers"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/Cells/StickerSetNameCell;->setText(Ljava/lang/CharSequence;I)V

    goto/16 :goto_1

    .line 1492
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$4600(Lorg/telegram/ui/Components/StickerMasksAlert;)Ljava/util/ArrayList;

    move-result-object v0

    if-ne p2, v0, :cond_e

    .line 1493
    sget p2, Lorg/telegram/messenger/R$string;->FavoriteStickers:I

    const-string v0, "FavoriteStickers"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/Cells/StickerSetNameCell;->setText(Ljava/lang/CharSequence;I)V

    goto/16 :goto_1

    .line 1447
    :cond_3
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/EmptyCell;

    .line 1448
    iget v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->totalItems:I

    const/16 v1, 0x52

    if-ne p2, v0, :cond_b

    .line 1449
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->positionToRow:Landroid/util/SparseIntArray;

    sub-int/2addr p2, v2

    const/high16 v3, -0x80000000

    invoke-virtual {v0, p2, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result p2

    if-ne p2, v3, :cond_4

    .line 1451
    invoke-virtual {p1, v2}, Lorg/telegram/ui/Cells/EmptyCell;->setHeight(I)V

    goto/16 :goto_1

    .line 1454
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->rowStartPack:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    .line 1455
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-eqz v0, :cond_5

    .line 1456
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    goto :goto_0

    .line 1457
    :cond_5
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_7

    const-string v0, "recent"

    .line 1458
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 1459
    iget-object p2, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-static {p2}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$4500(Lorg/telegram/ui/Components/StickerMasksAlert;)[Ljava/util/ArrayList;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$3700(Lorg/telegram/ui/Components/StickerMasksAlert;)I

    move-result v3

    invoke-static {v0, v3}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$3900(Lorg/telegram/ui/Components/StickerMasksAlert;I)I

    move-result v0

    aget-object p2, p2, v0

    goto :goto_0

    .line 1461
    :cond_6
    iget-object p2, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-static {p2}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$4600(Lorg/telegram/ui/Components/StickerMasksAlert;)Ljava/util/ArrayList;

    move-result-object p2

    goto :goto_0

    :cond_7
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_8

    .line 1467
    invoke-virtual {p1, v2}, Lorg/telegram/ui/Cells/EmptyCell;->setHeight(I)V

    goto/16 :goto_1

    .line 1469
    :cond_8
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 p2, 0x8

    .line 1470
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/EmptyCell;->setHeight(I)V

    goto/16 :goto_1

    .line 1472
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$800(Lorg/telegram/ui/Components/StickerMasksAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    int-to-float p2, p2

    iget v3, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->stickersPerRow:I

    int-to-float v3, v3

    div-float/2addr p2, v3

    float-to-double v3, p2

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int p2, v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    mul-int p2, p2, v1

    sub-int/2addr v0, p2

    if-lez v0, :cond_a

    move v2, v0

    .line 1473
    :cond_a
    invoke-virtual {p1, v2}, Lorg/telegram/ui/Cells/EmptyCell;->setHeight(I)V

    goto :goto_1

    .line 1478
    :cond_b
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/EmptyCell;->setHeight(I)V

    goto :goto_1

    .line 1440
    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->cache:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Document;

    .line 1441
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/StickerEmojiCell;

    .line 1442
    iget-object v2, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->cacheParents:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, v0, p2, v1}, Lorg/telegram/ui/Cells/StickerEmojiCell;->setSticker(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;Z)V

    .line 1443
    iget-object p2, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-static {p2}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$4500(Lorg/telegram/ui/Components/StickerMasksAlert;)[Ljava/util/ArrayList;

    move-result-object p2

    iget-object v1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$3700(Lorg/telegram/ui/Components/StickerMasksAlert;)I

    move-result v2

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$3900(Lorg/telegram/ui/Components/StickerMasksAlert;I)I

    move-result v1

    aget-object p2, p2, v1

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/StickerEmojiCell;->setRecent(Z)V

    goto :goto_1

    .line 1432
    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->cache:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Document;

    .line 1433
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;

    .line 1434
    iput p2, p1, Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;->position:I

    .line 1435
    iput-object v0, p1, Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;->access$4400(Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 1436
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$4500(Lorg/telegram/ui/Components/StickerMasksAlert;)[Ljava/util/ArrayList;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-static {p2}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$3700(Lorg/telegram/ui/Components/StickerMasksAlert;)I

    move-result v1

    invoke-static {p2, v1}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$3900(Lorg/telegram/ui/Components/StickerMasksAlert;I)I

    move-result p2

    aget-object p1, p1, p2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    iget-object p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$4600(Lorg/telegram/ui/Components/StickerMasksAlert;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    :cond_e
    :goto_1
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    const/4 p1, -0x1

    if-eq p2, p1, :cond_4

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    const/4 v1, 0x1

    if-eq p2, v1, :cond_2

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1420
    :cond_0
    new-instance p2, Landroid/view/View;

    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->context:Landroid/content/Context;

    invoke-direct {p2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1421
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    iget-object v1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$100(Lorg/telegram/ui/Components/StickerMasksAlert;)I

    move-result v1

    const/16 v2, 0x30

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object p1, p2

    goto :goto_0

    .line 1415
    :cond_1
    new-instance p1, Lorg/telegram/ui/Cells/StickerSetNameCell;

    iget-object p2, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->context:Landroid/content/Context;

    iget-object v1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$4300(Lorg/telegram/ui/Components/StickerMasksAlert;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    invoke-direct {p1, p2, v0, v1}, Lorg/telegram/ui/Cells/StickerSetNameCell;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const p2, -0x777778

    .line 1416
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/StickerSetNameCell;->setTitleColor(I)V

    goto :goto_0

    .line 1412
    :cond_2
    new-instance p1, Lorg/telegram/ui/Cells/EmptyCell;

    iget-object p2, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/EmptyCell;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 1401
    :cond_3
    new-instance p1, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter$1;

    iget-object p2, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, p0, p2, v0}, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter$1;-><init>(Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;Landroid/content/Context;Z)V

    goto :goto_0

    .line 1398
    :cond_4
    new-instance p1, Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;

    iget-object p2, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;-><init>(Lorg/telegram/ui/Components/StickerMasksAlert;Landroid/content/Context;)V

    .line 1425
    :goto_0
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
