.class Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "EmojiBottomSheet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Adapter"
.end annotation


# instance fields
.field private activeQuery:Ljava/lang/String;

.field private final allEmojis:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private final allStickerSets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;",
            ">;"
        }
    .end annotation
.end field

.field private final documentIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final documents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$Document;",
            ">;"
        }
    .end annotation
.end field

.field private faveSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

.field private includeNotFound:Z

.field private itemsCount:I

.field private lastAllSetsCount:I

.field private lastLang:[Ljava/lang/String;

.field private final packs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Components/EmojiView$EmojiPack;",
            ">;"
        }
    .end annotation
.end field

.field private final packsBySet:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_stickerPack;",
            ">;>;"
        }
    .end annotation
.end field

.field private final positionToSection:Landroid/util/SparseIntArray;

.field private query:Ljava/lang/String;

.field private recentSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

.field private searchDocumentIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private searchId:I

.field private final searchRunnable:Ljava/lang/Runnable;

.field private final stickerSets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;


# direct methods
.method public static synthetic $r8$lambda$Z-auu87LwCiDkignBVcs-UY67Hw(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$mHZhsXOnKWe9srFY2m8U3sLrVJI(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;Ljava/lang/String;Lorg/telegram/messenger/MediaDataController;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->lambda$new$0(Ljava/lang/String;Lorg/telegram/messenger/MediaDataController;Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;)V
    .locals 0

    .line 340
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 343
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->allEmojis:Ljava/util/HashMap;

    .line 344
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->packsBySet:Ljava/util/HashMap;

    .line 346
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->allStickerSets:Ljava/util/ArrayList;

    .line 347
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->stickerSets:Ljava/util/ArrayList;

    .line 348
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->packs:Ljava/util/ArrayList;

    .line 349
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documents:Ljava/util/ArrayList;

    .line 350
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documentIds:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 352
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    .line 353
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->positionToSection:Landroid/util/SparseIntArray;

    .line 582
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->searchDocumentIds:Ljava/util/HashSet;

    .line 584
    new-instance p1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->searchRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$1;)V
    .locals 0

    .line 340
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;-><init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;)V

    return-void
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;Ljava/lang/String;)V
    .locals 0

    .line 340
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->updateItems(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1502(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 340
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->query:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;)Ljava/lang/Runnable;
    .locals 0

    .line 340
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->searchRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;)Ljava/util/ArrayList;
    .locals 0

    .line 340
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documents:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;)Ljava/util/ArrayList;
    .locals 0

    .line 340
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documentIds:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;)Landroid/util/SparseIntArray;
    .locals 0

    .line 340
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->positionToSection:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method private synthetic lambda$new$0(Ljava/lang/String;Lorg/telegram/messenger/MediaDataController;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 6

    .line 592
    iget-object p4, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->query:Ljava/lang/String;

    invoke-static {p1, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 596
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->query:Ljava/lang/String;

    invoke-static {p1}, Lorg/telegram/messenger/Emoji;->parseEmojis(Ljava/lang/CharSequence;)Ljava/util/ArrayList;

    move-result-object p1

    const/4 p4, 0x0

    move v0, p4

    .line 597
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 599
    :try_start_0
    new-instance v1, Lorg/telegram/messenger/MediaDataController$KeywordResult;

    invoke-direct {v1}, Lorg/telegram/messenger/MediaDataController$KeywordResult;-><init>()V

    .line 600
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/Emoji$EmojiSpanRange;

    iget-object v2, v2, Lorg/telegram/messenger/Emoji$EmojiSpanRange;->code:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/messenger/MediaDataController$KeywordResult;->emoji:Ljava/lang/String;

    .line 601
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 605
    :cond_1
    iput p4, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    .line 606
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documents:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 607
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documentIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 608
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->positionToSection:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    .line 609
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 610
    iget p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    .line 611
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documents:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 612
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documentIds:Ljava/util/ArrayList;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 613
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget p1, p1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->currentType:I

    if-nez p1, :cond_5

    .line 614
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->searchDocumentIds:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    move p1, p4

    .line 615
    :goto_1
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_3

    .line 616
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/messenger/MediaDataController$KeywordResult;

    .line 617
    iget-object v2, p2, Lorg/telegram/messenger/MediaDataController$KeywordResult;->emoji:Ljava/lang/String;

    if-eqz v2, :cond_2

    const-string v3, "animated_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 618
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->allEmojis:Ljava/util/HashMap;

    iget-object p2, p2, Lorg/telegram/messenger/MediaDataController$KeywordResult;->emoji:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    if-eqz p2, :cond_2

    .line 620
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->searchDocumentIds:Ljava/util/HashSet;

    invoke-virtual {v2, p2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 624
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documentIds:Ljava/util/ArrayList;

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->searchDocumentIds:Ljava/util/HashSet;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move p1, p4

    .line 625
    :goto_2
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->searchDocumentIds:Ljava/util/HashSet;

    invoke-virtual {p2}, Ljava/util/HashSet;->size()I

    move-result p2

    if-ge p1, p2, :cond_4

    .line 626
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documents:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 628
    :cond_4
    iget p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->searchDocumentIds:Ljava/util/HashSet;

    invoke-virtual {p2}, Ljava/util/HashSet;->size()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    goto :goto_6

    .line 630
    :cond_5
    invoke-virtual {p2}, Lorg/telegram/messenger/MediaDataController;->getAllStickers()Ljava/util/HashMap;

    move-result-object p1

    move p2, p4

    .line 631
    :goto_3
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p2, v2, :cond_9

    .line 632
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MediaDataController$KeywordResult;

    .line 633
    iget-object v2, v2, Lorg/telegram/messenger/MediaDataController$KeywordResult;->emoji:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-eqz v2, :cond_8

    .line 634
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_5

    :cond_6
    move v3, p4

    .line 637
    :goto_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_8

    .line 638
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v4, :cond_7

    .line 639
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documents:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 640
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documents:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 641
    iget v4, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    add-int/2addr v4, v0

    iput v4, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_8
    :goto_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    .line 646
    :cond_9
    :goto_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->query:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->translitSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    move p3, p4

    .line 647
    :goto_7
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->allStickerSets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p3, v2, :cond_d

    .line 648
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->allStickerSets:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-eqz v2, :cond_c

    .line 649
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-nez v3, :cond_a

    goto :goto_8

    .line 652
    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->translitSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 653
    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 654
    :cond_b
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 655
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 658
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->positionToSection:Landroid/util/SparseIntArray;

    iget v5, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 659
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documents:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 660
    iget v3, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    add-int/2addr v3, v0

    iput v3, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    .line 663
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documents:Ljava/util/ArrayList;

    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 664
    iget v3, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v3, v2

    iput v3, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    :cond_c
    :goto_8
    add-int/lit8 p3, p3, 0x1

    goto :goto_7

    .line 668
    :cond_d
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documentIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-gt p1, v0, :cond_e

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documents:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-gt p1, v0, :cond_e

    move p1, v0

    goto :goto_9

    :cond_e
    move p1, p4

    :goto_9
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->includeNotFound:Z

    if-eqz p1, :cond_f

    .line 669
    iget p2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    add-int/2addr p2, v0

    iput p2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    :cond_f
    if-nez p1, :cond_10

    .line 672
    iget p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->searchId:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->searchId:I

    .line 674
    :cond_10
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->query:Ljava/lang/String;

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->activeQuery:Ljava/lang/String;

    .line 675
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 677
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->listView:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;

    invoke-static {p1, p4, p4}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->access$900(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;II)V

    .line 678
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->searchField:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;

    invoke-virtual {p1, p4}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->showProgress(Z)V

    .line 679
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->tabsStrip:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-virtual {p1, p4}, Lorg/telegram/ui/Components/EmojiTabsStrip;->showSelected(Z)V

    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 13

    .line 585
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->query:Ljava/lang/String;

    .line 586
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$2400(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v2

    .line 587
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getCurrentKeyboardLanguage()[Ljava/lang/String;

    move-result-object v3

    .line 588
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->lastLang:[Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-static {v3, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 589
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$2500(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/MediaDataController;->fetchNewEmojiKeywords([Ljava/lang/String;)V

    .line 591
    :cond_1
    iput-object v3, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->lastLang:[Ljava/lang/String;

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->query:Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0, v0, v2}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;Ljava/lang/String;Lorg/telegram/messenger/MediaDataController;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/16 v0, 0x32

    .line 680
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 591
    invoke-virtual/range {v2 .. v12}, Lorg/telegram/messenger/MediaDataController;->getEmojiSuggestions([Ljava/lang/String;Ljava/lang/String;ZLorg/telegram/messenger/MediaDataController$KeywordResultCallback;Ljava/util/concurrent/CountDownLatch;ZZZZLjava/lang/Integer;)V

    return-void
.end method

.method private updateItems(Ljava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 365
    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->query:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 367
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->searchField:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->showProgress(Z)V

    .line 368
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->tabsStrip:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/EmojiTabsStrip;->showSelected(Z)V

    .line 369
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->searchRunnable:Ljava/lang/Runnable;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 370
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->searchRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void

    .line 374
    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->tabsStrip:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/EmojiTabsStrip;->showSelected(Z)V

    .line 375
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->searchRunnable:Ljava/lang/Runnable;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 377
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$1900(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    .line 379
    iput v2, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    .line 380
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 381
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documentIds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 382
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->positionToSection:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->clear()V

    .line 383
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 384
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->allStickerSets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 385
    iget v4, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    add-int/2addr v4, v3

    iput v4, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    .line 386
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documents:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->packs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 388
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget v4, v4, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->currentType:I

    if-ne v4, v3, :cond_4

    const/4 v4, 0x2

    .line 389
    invoke-virtual {v1, v4}, Lorg/telegram/messenger/MediaDataController;->getRecentStickers(I)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 390
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 391
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->faveSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-nez v6, :cond_1

    .line 392
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;-><init>()V

    iput-object v6, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->faveSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .line 394
    :cond_1
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->faveSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iput-object v4, v6, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    .line 395
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_stickerSet;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_stickerSet;-><init>()V

    iput-object v4, v6, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    .line 396
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->faveSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    sget v6, Lorg/telegram/messenger/R$string;->FavoriteStickers:I

    const-string v7, "FavoriteStickers"

    invoke-static {v7, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    .line 397
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->stickerSets:Ljava/util/ArrayList;

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->faveSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 400
    :cond_2
    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MediaDataController;->getRecentStickers(I)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 401
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    .line 402
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->recentSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-nez v6, :cond_3

    .line 403
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;-><init>()V

    iput-object v6, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->recentSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .line 405
    :cond_3
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->recentSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iput-object v4, v6, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    .line 406
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_stickerSet;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_stickerSet;-><init>()V

    iput-object v4, v6, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    .line 407
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->recentSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    sget v6, Lorg/telegram/messenger/R$string;->RecentStickers:I

    const-string v7, "RecentStickers"

    invoke-static {v7, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    .line 408
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->stickerSets:Ljava/util/ArrayList;

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->recentSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    :cond_4
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->stickerSets:Ljava/util/ArrayList;

    .line 412
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget v6, v6, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->currentType:I

    if-nez v6, :cond_5

    const/4 v6, 0x5

    goto :goto_0

    :cond_5
    move v6, v2

    .line 411
    :goto_0
    invoke-virtual {v1, v6}, Lorg/telegram/messenger/MediaDataController;->getStickerSets(I)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move v4, v2

    .line 417
    :goto_1
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_8

    .line 418
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .line 421
    iget-object v7, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->positionToSection:Landroid/util/SparseIntArray;

    iget v8, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    invoke-virtual {v7, v8, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 422
    iget-object v7, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documents:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 423
    iget v7, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    add-int/2addr v7, v3

    iput v7, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    .line 426
    iget-object v7, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documents:Ljava/util/ArrayList;

    iget-object v8, v6, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 427
    iget v7, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    iget-object v8, v6, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/2addr v7, v8

    iput v7, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    .line 429
    new-instance v7, Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    invoke-direct {v7}, Lorg/telegram/ui/Components/EmojiView$EmojiPack;-><init>()V

    .line 430
    iget-object v8, v6, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    iput-object v8, v7, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->documents:Ljava/util/ArrayList;

    .line 431
    iget-object v8, v6, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iput-object v8, v7, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    .line 432
    iput-boolean v3, v7, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->installed:Z

    .line 433
    iput-boolean v2, v7, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->featured:Z

    .line 434
    iput-boolean v3, v7, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->expanded:Z

    .line 435
    iput-boolean v3, v7, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->free:Z

    .line 436
    iget-object v8, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->faveSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-ne v6, v8, :cond_6

    .line 437
    sget v8, Lorg/telegram/messenger/R$drawable;->emoji_tabs_faves:I

    iput v8, v7, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->resId:I

    goto :goto_2

    .line 438
    :cond_6
    iget-object v8, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->recentSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-ne v6, v8, :cond_7

    .line 439
    sget v8, Lorg/telegram/messenger/R$drawable;->msg_emoji_recent:I

    iput v8, v7, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->resId:I

    .line 441
    :cond_7
    :goto_2
    iget-object v8, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->packs:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 443
    iget-object v7, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->allStickerSets:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 445
    :cond_8
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget v6, v6, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->currentType:I

    if-nez v6, :cond_19

    .line 446
    invoke-virtual {v1}, Lorg/telegram/messenger/MediaDataController;->getFeaturedEmojiSets()Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_16

    move v7, v2

    .line 448
    :goto_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_16

    .line 449
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    .line 451
    instance-of v9, v8, Lorg/telegram/tgnet/TLRPC$TL_stickerSetNoCovered;

    if-eqz v9, :cond_9

    .line 452
    iget-object v9, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget-object v9, v9, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-static {v9}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$2000(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)I

    move-result v9

    invoke-static {v9}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v9

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    invoke-static {v8}, Lorg/telegram/messenger/MediaDataController;->getInputStickerSet(Lorg/telegram/tgnet/TLRPC$StickerSet;)Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    move-result-object v8

    invoke-virtual {v9, v8, v2}, Lorg/telegram/messenger/MediaDataController;->getStickerSet(Lorg/telegram/tgnet/TLRPC$InputStickerSet;Z)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v8

    if-nez v8, :cond_10

    goto/16 :goto_a

    .line 456
    :cond_9
    instance-of v9, v8, Lorg/telegram/tgnet/TLRPC$TL_stickerSetFullCovered;

    if-eqz v9, :cond_15

    .line 457
    new-instance v9, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    invoke-direct {v9}, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;-><init>()V

    .line 458
    iget-object v10, v8, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iput-object v10, v9, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    .line 459
    check-cast v8, Lorg/telegram/tgnet/TLRPC$TL_stickerSetFullCovered;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$TL_stickerSetFullCovered;->documents:Ljava/util/ArrayList;

    iput-object v8, v9, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    .line 460
    iget-object v8, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->packsBySet:Ljava/util/HashMap;

    iget-wide v10, v10, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    iput-object v8, v9, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->packs:Ljava/util/ArrayList;

    if-nez v8, :cond_f

    .line 462
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    move v10, v2

    .line 463
    :goto_4
    iget-object v11, v9, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v10, v11, :cond_d

    .line 464
    iget-object v11, v9, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/tgnet/TLRPC$Document;

    if-nez v11, :cond_a

    goto :goto_6

    .line 468
    :cond_a
    invoke-static {v11, v5}, Lorg/telegram/messenger/MessageObject;->findAnimatedEmojiEmoticon(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 469
    invoke-static {v12}, Lorg/telegram/messenger/Emoji;->parseEmojis(Ljava/lang/CharSequence;)Ljava/util/ArrayList;

    move-result-object v12

    if-eqz v12, :cond_c

    move v13, v2

    .line 471
    :goto_5
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v13, v14, :cond_c

    .line 472
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/messenger/Emoji$EmojiSpanRange;

    iget-object v14, v14, Lorg/telegram/messenger/Emoji$EmojiSpanRange;->code:Ljava/lang/CharSequence;

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    .line 473
    invoke-virtual {v8, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    if-nez v15, :cond_b

    .line 475
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v8, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    :cond_b
    iget-wide v2, v11, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    goto :goto_5

    :cond_c
    :goto_6
    add-int/lit8 v10, v10, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    goto :goto_4

    .line 481
    :cond_d
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v9, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->packs:Ljava/util/ArrayList;

    .line 482
    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 483
    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;-><init>()V

    .line 484
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iput-object v10, v8, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->emoticon:Ljava/lang/String;

    .line 485
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    iput-object v3, v8, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->documents:Ljava/util/ArrayList;

    .line 486
    iget-object v3, v9, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->packs:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 488
    :cond_e
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->packsBySet:Ljava/util/HashMap;

    iget-object v3, v9, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v10, v3, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v8, v9, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->packs:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    move-object v8, v9

    .line 495
    :cond_10
    iget-object v2, v8, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-nez v2, :cond_11

    goto/16 :goto_a

    :cond_11
    const/4 v2, 0x0

    .line 498
    :goto_8
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->packs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_13

    .line 499
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->packs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    iget-object v3, v3, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-eqz v3, :cond_12

    .line 500
    iget-wide v9, v3, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    iget-object v3, v8, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v11, v3, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    cmp-long v3, v9, v11

    if-nez v3, :cond_12

    const/4 v2, 0x1

    goto :goto_9

    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_13
    const/4 v2, 0x0

    :goto_9
    if-eqz v2, :cond_14

    goto :goto_a

    .line 509
    :cond_14
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 510
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->allStickerSets:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 513
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->positionToSection:Landroid/util/SparseIntArray;

    iget v3, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v4, v4, 0x1

    .line 515
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documents:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 516
    iget v2, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    .line 519
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documents:Ljava/util/ArrayList;

    iget-object v3, v8, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 520
    iget v2, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    iget-object v3, v8, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    .line 522
    new-instance v2, Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    invoke-direct {v2}, Lorg/telegram/ui/Components/EmojiView$EmojiPack;-><init>()V

    .line 523
    iget-object v3, v8, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    iput-object v3, v2, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->documents:Ljava/util/ArrayList;

    .line 524
    iget-object v3, v8, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iput-object v3, v2, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    const/4 v3, 0x0

    .line 525
    iput-boolean v3, v2, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->installed:Z

    const/4 v3, 0x1

    .line 526
    iput-boolean v3, v2, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->featured:Z

    .line 527
    iput-boolean v3, v2, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->expanded:Z

    .line 528
    iput-boolean v3, v2, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->free:Z

    .line 529
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->packs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_15
    :goto_a
    add-int/lit8 v7, v7, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    goto/16 :goto_3

    :cond_16
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 533
    :goto_b
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->allStickerSets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_18

    .line 535
    :try_start_0
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->allStickerSets:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v6, "staticemoji"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    if-eqz v3, :cond_17

    goto :goto_c

    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_18
    :goto_c
    if-nez v3, :cond_19

    .line 542
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetShortName;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetShortName;-><init>()V

    const-string v3, "StaticEmoji"

    .line 543
    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->short_name:Ljava/lang/String;

    const/4 v3, 0x0

    .line 544
    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MediaDataController;->getStickerSet(Lorg/telegram/tgnet/TLRPC$InputStickerSet;Z)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 546
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->allStickerSets:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 550
    :cond_19
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->access$2102(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;Z)Z

    .line 552
    iget v1, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->lastAllSetsCount:I

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->allStickerSets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v1, v2, :cond_1e

    .line 553
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->allEmojis:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    const/4 v3, 0x0

    .line 554
    :goto_d
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->allStickerSets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_1d

    .line 555
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->allStickerSets:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-nez v1, :cond_1a

    goto :goto_f

    :cond_1a
    const/4 v2, 0x0

    .line 559
    :goto_e
    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->packs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_1c

    .line 560
    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->packs:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->emoticon:Ljava/lang/String;

    .line 561
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->allEmojis:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    if-nez v6, :cond_1b

    .line 563
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->allEmojis:Ljava/util/HashMap;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v7

    .line 565
    :cond_1b
    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->packs:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_1c
    :goto_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 568
    :cond_1d
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->allStickerSets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->lastAllSetsCount:I

    :cond_1e
    const/4 v1, 0x0

    .line 571
    iput-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->includeNotFound:Z

    .line 572
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->tabsStrip:Lorg/telegram/ui/Components/EmojiTabsStrip;

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->packs:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/EmojiTabsStrip;->updateEmojiPacks(Ljava/util/ArrayList;)V

    .line 573
    iput-object v5, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->activeQuery:Ljava/lang/String;

    .line 574
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 767
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    return v0
.end method

.method public getItemViewType(I)I
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 756
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->includeNotFound:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_1

    const/4 p1, 0x3

    return p1

    .line 758
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->positionToSection:Landroid/util/SparseIntArray;

    const/4 v2, -0x1

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    if-ltz p1, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x2

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 7

    .line 706
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    if-nez v0, :cond_0

    .line 708
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/16 v0, 0x22

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 709
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x1

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$2300(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_5

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    .line 711
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->positionToSection:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result p2

    if-ltz p2, :cond_6

    .line 712
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p2, v0, :cond_1

    goto :goto_2

    .line 715
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-eqz p2, :cond_3

    .line 716
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    goto :goto_1

    :cond_3
    :goto_0
    const-string p2, ""

    .line 717
    :goto_1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/StickerSetNameCell;

    .line 718
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->activeQuery:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_4

    .line 719
    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/Cells/StickerSetNameCell;->setText(Ljava/lang/CharSequence;I)V

    goto/16 :goto_5

    .line 721
    :cond_4
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->activeQuery:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_5

    .line 723
    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/Cells/StickerSetNameCell;->setText(Ljava/lang/CharSequence;I)V

    goto/16 :goto_5

    .line 725
    :cond_5
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->activeQuery:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, p2, v1, v0, v2}, Lorg/telegram/ui/Cells/StickerSetNameCell;->setText(Ljava/lang/CharSequence;III)V

    goto :goto_5

    :cond_6
    :goto_2
    return-void

    :cond_7
    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    .line 729
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lt p2, v0, :cond_8

    move-object v0, v1

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documents:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Document;

    .line 730
    :goto_3
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documentIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const-wide/16 v3, 0x0

    if-lt p2, v2, :cond_9

    move-wide v5, v3

    goto :goto_4

    :cond_9
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documentIds:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    :goto_4
    if-nez v0, :cond_a

    cmp-long p2, v5, v3

    if-nez p2, :cond_a

    return-void

    .line 734
    :cond_a
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;

    .line 735
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget p2, p2, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->currentType:I

    if-nez p2, :cond_c

    if-eqz v0, :cond_b

    .line 737
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->setSticker(Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 738
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->setEmoji(Lorg/telegram/tgnet/TLRPC$Document;)V

    goto :goto_5

    .line 740
    :cond_b
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->setSticker(Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 741
    invoke-virtual {p1, v5, v6}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->setEmojiId(J)V

    goto :goto_5

    .line 744
    :cond_c
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->setEmoji(Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 745
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->setSticker(Lorg/telegram/tgnet/TLRPC$Document;)V

    goto :goto_5

    :cond_d
    const/4 p2, 0x3

    if-ne v0, p2, :cond_e

    .line 748
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$NoEmojiView;

    iget p2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->searchId:I

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$NoEmojiView;->update(I)V

    :cond_e
    :goto_5
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    if-nez p2, :cond_0

    .line 693
    new-instance p1, Landroid/view/View;

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    goto :goto_2

    :cond_0
    const/4 p1, 0x1

    if-ne p2, p1, :cond_1

    .line 695
    new-instance p2, Lorg/telegram/ui/Cells/StickerSetNameCell;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$2200(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    invoke-direct {p2, v0, p1, v1}, Lorg/telegram/ui/Cells/StickerSetNameCell;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    :goto_0
    move-object p1, p2

    goto :goto_2

    :cond_1
    const/4 v0, 0x3

    if-ne p2, v0, :cond_3

    .line 697
    new-instance p2, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$NoEmojiView;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget v1, v1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->currentType:I

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    invoke-direct {p2, v0, p1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$NoEmojiView;-><init>(Landroid/content/Context;Z)V

    goto :goto_0

    .line 699
    :cond_3
    new-instance p1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->listView:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;)V

    .line 701
    :goto_2
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public update()V
    .locals 1

    .line 356
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->query:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 357
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->updateItems(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
