.class Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "EmojiView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/EmojiView;
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

.field private positionsToSets:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lorg/telegram/tgnet/TLRPC$StickerSetCovered;",
            ">;"
        }
    .end annotation
.end field

.field private reqId:I

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

.field private serverPacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$StickerSetCovered;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/telegram/ui/Components/EmojiView;

.field private totalItems:I


# direct methods
.method public static synthetic $r8$lambda$rpJiNCRF2wWKxJ8laf5aUZA18Zg(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->lambda$onCreateViewHolder$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;)V
    .locals 0

    .line 9324
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 9078
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->rowStartPack:Landroid/util/SparseArray;

    .line 9079
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->cache:Landroid/util/SparseArray;

    .line 9080
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->cacheParent:Landroid/util/SparseArray;

    .line 9081
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->positionToRow:Landroid/util/SparseIntArray;

    .line 9082
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->positionToEmoji:Landroid/util/SparseArray;

    .line 9085
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->serverPacks:Ljava/util/ArrayList;

    .line 9086
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->localPacks:Ljava/util/ArrayList;

    .line 9087
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->localPacksByShortName:Ljava/util/HashMap;

    .line 9088
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->localPacksByName:Ljava/util/HashMap;

    .line 9089
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->emojiStickers:Ljava/util/HashMap;

    .line 9090
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->emojiArrays:Ljava/util/ArrayList;

    .line 9091
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->positionsToSets:Landroid/util/SparseArray;

    .line 9099
    new-instance p1, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;-><init>(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->searchRunnable:Ljava/lang/Runnable;

    .line 9325
    iput-object p2, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$10300(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;)I
    .locals 0

    .line 9075
    iget p0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->totalItems:I

    return p0
.end method

.method static synthetic access$10400(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;)Landroid/util/SparseArray;
    .locals 0

    .line 9075
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->cache:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$20700(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;)I
    .locals 0

    .line 9075
    iget p0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->emojiSearchId:I

    return p0
.end method

.method static synthetic access$20704(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;)I
    .locals 1

    .line 9075
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->emojiSearchId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->emojiSearchId:I

    return v0
.end method

.method static synthetic access$20802(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 9075
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->localPacks:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$20902(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 9075
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->serverPacks:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$21002(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0

    .line 9075
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->localPacksByShortName:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic access$21102(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0

    .line 9075
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->localPacksByName:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic access$21202(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0

    .line 9075
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->emojiStickers:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic access$21302(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 9075
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->emojiArrays:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$21400(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;)Ljava/lang/String;
    .locals 0

    .line 9075
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->searchQuery:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$21502(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;I)I
    .locals 0

    .line 9075
    iput p1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->reqId:I

    return p1
.end method

.method static synthetic access$21602(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;I)I
    .locals 0

    .line 9075
    iput p1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->reqId2:I

    return p1
.end method

.method static synthetic access$22000(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;)Landroid/util/SparseArray;
    .locals 0

    .line 9075
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->positionsToSets:Landroid/util/SparseArray;

    return-object p0
.end method

.method private synthetic lambda$onCreateViewHolder$0(Landroid/view/View;)V
    .locals 4

    .line 9417
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;

    .line 9418
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->getStickerSet()Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    move-result-object v0

    .line 9419
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$21700(Lorg/telegram/ui/Components/EmojiView;)Landroid/util/LongSparseArray;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    move-result v1

    if-gez v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$21800(Lorg/telegram/ui/Components/EmojiView;)Landroid/util/LongSparseArray;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    move-result v1

    if-ltz v1, :cond_0

    goto :goto_0

    .line 9422
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->isInstalled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9423
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$21800(Lorg/telegram/ui/Components/EmojiView;)Landroid/util/LongSparseArray;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-virtual {v1, v2, v3, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 9424
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$900(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    move-result-object v0

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->getStickerSet()Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->onStickerSetRemove(Lorg/telegram/tgnet/TLRPC$StickerSetCovered;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    .line 9426
    invoke-virtual {p1, v1, v1}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->setAddDrawProgress(ZZ)V

    .line 9427
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$21700(Lorg/telegram/ui/Components/EmojiView;)Landroid/util/LongSparseArray;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-virtual {v1, v2, v3, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 9428
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$900(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    move-result-object v0

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->getStickerSet()Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->onStickerSetAdd(Lorg/telegram/tgnet/TLRPC$StickerSetCovered;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 2

    .line 9335
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->totalItems:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x4

    return p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 9381
    iget v1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->totalItems:I

    if-ne v1, v0, :cond_1

    const/4 p1, 0x5

    return p1

    .line 9384
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->cache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 9386
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v0, :cond_2

    const/4 p1, 0x0

    return p1

    .line 9388
    :cond_2
    instance-of p1, p1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    if-eqz p1, :cond_3

    const/4 p1, 0x3

    return p1

    :cond_3
    const/4 p1, 0x2

    return p1

    :cond_4
    return v0
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public notifyDataSetChanged()V
    .locals 19

    move-object/from16 v0, p0

    .line 9560
    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->rowStartPack:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 9561
    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->positionToRow:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    .line 9562
    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->cache:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 9563
    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->positionsToSets:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 9564
    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->positionToEmoji:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    const/4 v1, 0x0

    .line 9565
    iput v1, v0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->totalItems:I

    .line 9567
    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->serverPacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->localPacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->emojiArrays:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    const/4 v5, -0x1

    move v7, v1

    move v6, v5

    :goto_0
    add-int v8, v2, v3

    add-int/2addr v8, v4

    if-ge v6, v8, :cond_d

    if-ne v6, v5, :cond_0

    .line 9572
    iget-object v8, v0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->cache:Landroid/util/SparseArray;

    iget v9, v0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->totalItems:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->totalItems:I

    const-string v10, "search"

    invoke-virtual {v8, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    move/from16 v16, v2

    goto/16 :goto_7

    :cond_0
    if-ge v6, v3, :cond_1

    .line 9578
    iget-object v8, v0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->localPacks:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .line 9579
    iget-object v9, v8, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    move/from16 v16, v2

    goto/16 :goto_4

    :cond_1
    sub-int v8, v6, v3

    if-ge v8, v4, :cond_7

    .line 9586
    iget-object v8, v0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->emojiArrays:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const-string v9, ""

    move v10, v1

    move v11, v10

    :goto_1
    if-ge v10, v8, :cond_5

    .line 9587
    iget-object v12, v0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->emojiArrays:Ljava/util/ArrayList;

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    .line 9588
    iget-object v13, v0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->emojiStickers:Ljava/util/HashMap;

    invoke-virtual {v13, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    if-eqz v13, :cond_2

    .line 9589
    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 9591
    iget-object v9, v0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->positionToEmoji:Landroid/util/SparseArray;

    iget v14, v0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->totalItems:I

    add-int/2addr v14, v11

    invoke-virtual {v9, v14, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v9, v13

    .line 9593
    :cond_2
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v13

    move v14, v1

    :goto_2
    if-ge v14, v13, :cond_4

    .line 9594
    iget v15, v0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->totalItems:I

    add-int/2addr v15, v11

    .line 9595
    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$9700(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->access$10000(Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;)I

    move-result v1

    div-int v1, v11, v1

    add-int/2addr v1, v7

    .line 9597
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v5, v16

    check-cast v5, Lorg/telegram/tgnet/TLRPC$Document;

    move/from16 v16, v2

    .line 9598
    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->cache:Landroid/util/SparseArray;

    invoke-virtual {v2, v15, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 9599
    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget v2, v2, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v2

    move/from16 v17, v8

    move-object/from16 v18, v9

    invoke-static {v5}, Lorg/telegram/messenger/MediaDataController;->getStickerSetId(Lorg/telegram/tgnet/TLRPC$Document;)J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Lorg/telegram/messenger/MediaDataController;->getStickerSetById(J)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 9601
    iget-object v5, v0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->cacheParent:Landroid/util/SparseArray;

    invoke-virtual {v5, v15, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 9603
    :cond_3
    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->positionToRow:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v15, v1}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v14, v14, 0x1

    move/from16 v2, v16

    move/from16 v8, v17

    move-object/from16 v9, v18

    const/4 v1, 0x0

    const/4 v5, -0x1

    goto :goto_2

    :cond_4
    move/from16 v16, v2

    move/from16 v17, v8

    move-object/from16 v18, v9

    add-int/lit8 v10, v10, 0x1

    const/4 v1, 0x0

    const/4 v5, -0x1

    goto/16 :goto_1

    :cond_5
    move/from16 v16, v2

    int-to-float v1, v11

    .line 9610
    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView;->access$9700(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->access$10000(Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_6

    .line 9612
    iget-object v5, v0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->rowStartPack:Landroid/util/SparseArray;

    add-int v8, v7, v2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 9614
    :cond_6
    iget v2, v0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->totalItems:I

    iget-object v5, v0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$9700(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->access$10000(Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;)I

    move-result v5

    mul-int/2addr v5, v1

    add-int/2addr v2, v5

    iput v2, v0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->totalItems:I

    add-int/2addr v7, v1

    goto/16 :goto_7

    :cond_7
    move/from16 v16, v2

    sub-int/2addr v8, v4

    .line 9619
    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->serverPacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    .line 9620
    iget-object v9, v8, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->covers:Ljava/util/ArrayList;

    .line 9625
    :goto_4
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    goto/16 :goto_7

    .line 9628
    :cond_8
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView;->access$9700(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->access$10000(Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 9629
    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->cache:Landroid/util/SparseArray;

    iget v5, v0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->totalItems:I

    invoke-virtual {v2, v5, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-lt v6, v3, :cond_9

    .line 9630
    instance-of v2, v8, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    if-eqz v2, :cond_9

    .line 9631
    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->positionsToSets:Landroid/util/SparseArray;

    iget v5, v0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->totalItems:I

    move-object v10, v8

    check-cast v10, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    invoke-virtual {v2, v5, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 9633
    :cond_9
    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->positionToRow:Landroid/util/SparseIntArray;

    iget v5, v0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->totalItems:I

    invoke-virtual {v2, v5, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 9634
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v5, 0x0

    :goto_5
    if-ge v5, v2, :cond_b

    add-int/lit8 v10, v5, 0x1

    .line 9635
    iget v11, v0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->totalItems:I

    add-int/2addr v11, v10

    add-int/lit8 v12, v7, 0x1

    .line 9636
    iget-object v13, v0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v13}, Lorg/telegram/ui/Components/EmojiView;->access$9700(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    move-result-object v13

    invoke-static {v13}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->access$10000(Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;)I

    move-result v13

    div-int v13, v5, v13

    add-int/2addr v12, v13

    .line 9637
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$Document;

    .line 9638
    iget-object v13, v0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->cache:Landroid/util/SparseArray;

    invoke-virtual {v13, v11, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 9640
    iget-object v5, v0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->cacheParent:Landroid/util/SparseArray;

    invoke-virtual {v5, v11, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 9642
    iget-object v5, v0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->positionToRow:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    if-lt v6, v3, :cond_a

    .line 9643
    instance-of v5, v8, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    if-eqz v5, :cond_a

    .line 9644
    iget-object v5, v0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->positionsToSets:Landroid/util/SparseArray;

    move-object v12, v8

    check-cast v12, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    invoke-virtual {v5, v11, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_a
    move v5, v10

    goto :goto_5

    :cond_b
    add-int/lit8 v2, v1, 0x1

    const/4 v5, 0x0

    :goto_6
    if-ge v5, v2, :cond_c

    .line 9648
    iget-object v9, v0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->rowStartPack:Landroid/util/SparseArray;

    add-int v10, v7, v5

    invoke-virtual {v9, v10, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 9650
    :cond_c
    iget v5, v0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->totalItems:I

    iget-object v8, v0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v8}, Lorg/telegram/ui/Components/EmojiView;->access$9700(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    move-result-object v8

    invoke-static {v8}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->access$10000(Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;)I

    move-result v8

    mul-int/2addr v1, v8

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v5, v1

    iput v5, v0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->totalItems:I

    add-int/2addr v7, v2

    :goto_7
    add-int/lit8 v6, v6, 0x1

    move/from16 v2, v16

    const/4 v1, 0x0

    const/4 v5, -0x1

    goto/16 :goto_0

    .line 9653
    :cond_d
    invoke-super/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 9

    .line 9469
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_15

    const/4 v3, 0x0

    if-eq v0, v1, :cond_d

    const/4 v4, 0x2

    if-eq v0, v4, :cond_8

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    goto/16 :goto_7

    .line 9530
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->cache:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v4, p2

    check-cast v4, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    .line 9531
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v3, p1

    check-cast v3, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;

    .line 9532
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$21700(Lorg/telegram/ui/Components/EmojiView;)Landroid/util/LongSparseArray;

    move-result-object p1

    iget-object p2, v4, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v5, p2, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-virtual {p1, v5, v6}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    move-result p1

    if-ltz p1, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    move p1, v2

    .line 9533
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p2}, Lorg/telegram/ui/Components/EmojiView;->access$21800(Lorg/telegram/ui/Components/EmojiView;)Landroid/util/LongSparseArray;

    move-result-object p2

    iget-object v0, v4, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v5, v0, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-virtual {p2, v5, v6}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    move-result p2

    if-ltz p2, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    if-nez p1, :cond_3

    if-eqz v1, :cond_5

    :cond_3
    if-eqz p1, :cond_4

    .line 9535
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->isInstalled()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 9536
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$21700(Lorg/telegram/ui/Components/EmojiView;)Landroid/util/LongSparseArray;

    move-result-object p1

    iget-object p2, v4, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v0, p2, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/util/LongSparseArray;->remove(J)V

    move p1, v2

    goto :goto_2

    :cond_4
    if-eqz v1, :cond_5

    .line 9538
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->isInstalled()Z

    move-result p2

    if-nez p2, :cond_5

    .line 9539
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p2}, Lorg/telegram/ui/Components/EmojiView;->access$21800(Lorg/telegram/ui/Components/EmojiView;)Landroid/util/LongSparseArray;

    move-result-object p2

    iget-object v0, v4, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-virtual {p2, v0, v1}, Landroid/util/LongSparseArray;->remove(J)V

    .line 9543
    :cond_5
    :goto_2
    invoke-virtual {v3, p1, v2}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->setAddDrawProgress(ZZ)V

    .line 9544
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->searchQuery:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p1, -0x1

    goto :goto_3

    :cond_6
    iget-object p1, v4, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->searchQuery:Ljava/lang/String;

    invoke-static {p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    :goto_3
    move v7, p1

    if-ltz v7, :cond_7

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 9546
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->searchQuery:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual/range {v3 .. v8}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->setStickerSet(Lorg/telegram/tgnet/TLRPC$StickerSetCovered;ZZII)V

    goto/16 :goto_7

    .line 9548
    :cond_7
    invoke-virtual {v3, v4, v2}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->setStickerSet(Lorg/telegram/tgnet/TLRPC$StickerSetCovered;Z)V

    .line 9549
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->searchQuery:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_18

    iget-object p1, v4, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$StickerSet;->short_name:Ljava/lang/String;

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->searchQuery:Ljava/lang/String;

    invoke-static {p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_18

    .line 9550
    iget-object p1, v4, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$StickerSet;->short_name:Ljava/lang/String;

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->searchQuery:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {v3, p1, p2}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->setUrl(Ljava/lang/CharSequence;I)V

    goto/16 :goto_7

    .line 9510
    :cond_8
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/StickerSetNameCell;

    .line 9511
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->cache:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    .line 9512
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-eqz v0, :cond_18

    .line 9513
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .line 9514
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->searchQuery:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->localPacksByShortName:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 9515
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-eqz v0, :cond_9

    .line 9516
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lorg/telegram/ui/Cells/StickerSetNameCell;->setText(Ljava/lang/CharSequence;I)V

    .line 9518
    :cond_9
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$StickerSet;->short_name:Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->searchQuery:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Cells/StickerSetNameCell;->setUrl(Ljava/lang/CharSequence;I)V

    goto/16 :goto_7

    .line 9520
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->localPacksByName:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 9521
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-eqz p2, :cond_c

    if-eqz v0, :cond_c

    .line 9522
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->searchQuery:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->searchQuery:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_4

    :cond_b
    move v1, v2

    :goto_4
    invoke-virtual {p1, p2, v2, v0, v1}, Lorg/telegram/ui/Cells/StickerSetNameCell;->setText(Ljava/lang/CharSequence;III)V

    .line 9524
    :cond_c
    invoke-virtual {p1, v3, v2}, Lorg/telegram/ui/Cells/StickerSetNameCell;->setUrl(Ljava/lang/CharSequence;I)V

    goto/16 :goto_7

    .line 9478
    :cond_d
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/EmptyCell;

    .line 9479
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->totalItems:I

    const/16 v2, 0x52

    if-ne p2, v0, :cond_14

    .line 9480
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->positionToRow:Landroid/util/SparseIntArray;

    sub-int/2addr p2, v1

    const/high16 v4, -0x80000000

    invoke-virtual {v0, p2, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result p2

    if-ne p2, v4, :cond_e

    .line 9482
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Cells/EmptyCell;->setHeight(I)V

    goto/16 :goto_7

    .line 9484
    :cond_e
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->rowStartPack:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    .line 9486
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-eqz v0, :cond_f

    .line 9487
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_5

    .line 9488
    :cond_f
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_10

    .line 9489
    move-object v3, p2

    check-cast v3, Ljava/lang/Integer;

    :cond_10
    :goto_5
    if-nez v3, :cond_11

    .line 9494
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Cells/EmptyCell;->setHeight(I)V

    goto/16 :goto_7

    .line 9496
    :cond_11
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-nez p2, :cond_12

    const/16 p2, 0x8

    .line 9497
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/EmptyCell;->setHeight(I)V

    goto/16 :goto_7

    .line 9499
    :cond_12
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p2}, Lorg/telegram/ui/Components/EmojiView;->access$5400(Lorg/telegram/ui/Components/EmojiView;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result p2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v3}, Lorg/telegram/ui/Components/EmojiView;->access$9700(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->access$10000(Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v0, v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    mul-int/2addr v0, v2

    sub-int/2addr p2, v0

    if-lez p2, :cond_13

    move v1, p2

    .line 9500
    :cond_13
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Cells/EmptyCell;->setHeight(I)V

    goto :goto_7

    .line 9505
    :cond_14
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/EmptyCell;->setHeight(I)V

    goto :goto_7

    .line 9471
    :cond_15
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->cache:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Document;

    .line 9472
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/StickerEmojiCell;

    const/4 v5, 0x0

    .line 9473
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->cacheParent:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->positionToEmoji:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v7, p2

    check-cast v7, Ljava/lang/String;

    const/4 v8, 0x0

    move-object v3, p1

    move-object v4, v0

    invoke-virtual/range {v3 .. v8}, Lorg/telegram/ui/Cells/StickerEmojiCell;->setSticker(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 9474
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p2}, Lorg/telegram/ui/Components/EmojiView;->access$17700(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_17

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p2}, Lorg/telegram/ui/Components/EmojiView;->access$17800(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_16

    goto :goto_6

    :cond_16
    move v1, v2

    :cond_17
    :goto_6
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Cells/StickerEmojiCell;->setRecent(Z)V

    :cond_18
    :goto_7
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 12

    const/4 p1, 0x1

    if-eqz p2, :cond_5

    if-eq p2, p1, :cond_4

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    const/4 v0, 0x4

    const/4 v1, -0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x5

    if-eq p2, v0, :cond_0

    const/4 p1, 0x0

    goto/16 :goto_1

    .line 9437
    :cond_0
    new-instance p2, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$3;

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->context:Landroid/content/Context;

    invoke-direct {p2, p0, v0}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$3;-><init>(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;Landroid/content/Context;)V

    .line 9445
    new-instance v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 9446
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 9447
    sget v2, Lorg/telegram/messenger/R$drawable;->stickers_empty:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 9448
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelEmptyText:I

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/EmojiView;->access$2300(Lorg/telegram/ui/Components/EmojiView;I)I

    move-result v3

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const/16 v2, 0x18

    .line 9449
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setTranslationY(F)V

    const/4 v5, -0x2

    const/4 v6, -0x2

    const/16 v7, 0x11

    const/4 v8, 0x0

    const/16 v9, 0x2a

    const/4 v10, 0x0

    const/16 v11, 0x1c

    .line 9450
    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 9452
    new-instance v0, Landroid/widget/TextView;

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 9453
    sget v2, Lorg/telegram/messenger/R$string;->NoStickersFound:I

    const-string v3, "NoStickersFound"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v2, 0x41800000    # 16.0f

    .line 9454
    invoke-virtual {v0, p1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 9455
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1, v4}, Lorg/telegram/ui/Components/EmojiView;->access$2300(Lorg/telegram/ui/Components/EmojiView;I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v2, -0x2

    const/4 v3, -0x2

    const/16 v4, 0x11

    const/4 v5, 0x0

    const/16 v6, 0x2a

    const/4 v7, 0x0

    const/16 v8, 0x9

    .line 9456
    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 9459
    new-instance p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p1, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 9433
    :cond_1
    new-instance p1, Landroid/view/View;

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 9434
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$2400(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v0

    invoke-direct {p2, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 9415
    :cond_2
    new-instance p1, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->context:Landroid/content/Context;

    const/16 v4, 0x11

    const/4 v5, 0x0

    const/4 v6, 0x1

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p2}, Lorg/telegram/ui/Components/EmojiView;->access$1200(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v7

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;-><init>(Landroid/content/Context;IZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 9416
    new-instance p2, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->setAddOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 9412
    :cond_3
    new-instance p1, Lorg/telegram/ui/Cells/StickerSetNameCell;

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->context:Landroid/content/Context;

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$1200(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    invoke-direct {p1, p2, v0, v1}, Lorg/telegram/ui/Cells/StickerSetNameCell;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_1

    .line 9409
    :cond_4
    new-instance p1, Lorg/telegram/ui/Cells/EmptyCell;

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/EmptyCell;-><init>(Landroid/content/Context;)V

    goto :goto_1

    .line 9402
    :cond_5
    new-instance p2, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$2;

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->context:Landroid/content/Context;

    invoke-direct {p2, p0, v0, p1}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$2;-><init>(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;Landroid/content/Context;Z)V

    :goto_0
    move-object p1, p2

    .line 9463
    :goto_1
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public search(Ljava/lang/String;Z)V
    .locals 3

    .line 9351
    iget p2, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->reqId:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    .line 9352
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget p2, p2, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    iget v2, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->reqId:I

    invoke-virtual {p2, v2, v1}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 9353
    iput v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->reqId:I

    .line 9355
    :cond_0
    iget p2, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->reqId2:I

    if-eqz p2, :cond_1

    .line 9356
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget p2, p2, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    iget v2, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->reqId2:I

    invoke-virtual {p2, v2, v1}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 9357
    iput v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->reqId2:I

    .line 9359
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p1, 0x0

    .line 9360
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->searchQuery:Ljava/lang/String;

    .line 9361
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->localPacks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 9362
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->emojiStickers:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 9363
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->serverPacks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 9364
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$9500(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p2}, Lorg/telegram/ui/Components/EmojiView;->access$9700(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    move-result-object p2

    if-eq p1, p2, :cond_2

    .line 9365
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$9500(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p2}, Lorg/telegram/ui/Components/EmojiView;->access$9700(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 9367
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->notifyDataSetChanged()V

    .line 9368
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$12700(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$SearchField;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/EmojiView$SearchField;->showProgress(Z)V

    goto :goto_0

    .line 9370
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->searchQuery:Ljava/lang/String;

    .line 9371
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$12700(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$SearchField;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/EmojiView$SearchField;->showProgress(Z)V

    .line 9373
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->searchRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 9374
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->searchRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x12c

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method
