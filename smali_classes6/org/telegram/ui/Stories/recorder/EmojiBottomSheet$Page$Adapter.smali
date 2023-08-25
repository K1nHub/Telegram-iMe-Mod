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

    .line 746
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 749
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->allEmojis:Ljava/util/HashMap;

    .line 750
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->packsBySet:Ljava/util/HashMap;

    .line 752
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->allStickerSets:Ljava/util/ArrayList;

    .line 753
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->stickerSets:Ljava/util/ArrayList;

    .line 754
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->packs:Ljava/util/ArrayList;

    .line 755
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documents:Ljava/util/ArrayList;

    .line 756
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documentIds:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 758
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    .line 759
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->positionToSection:Landroid/util/SparseIntArray;

    .line 991
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->searchDocumentIds:Ljava/util/HashSet;

    .line 993
    new-instance p1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->searchRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$1;)V
    .locals 0

    .line 746
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;-><init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;)V

    return-void
.end method

.method static synthetic access$3100(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;)Landroid/util/SparseIntArray;
    .locals 0

    .line 746
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->positionToSection:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;Ljava/lang/String;)V
    .locals 0

    .line 746
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->updateItems(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4102(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 746
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->query:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4200(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;)Ljava/lang/Runnable;
    .locals 0

    .line 746
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->searchRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$5000(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;)Ljava/util/ArrayList;
    .locals 0

    .line 746
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documents:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$5100(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;)Ljava/util/ArrayList;
    .locals 0

    .line 746
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documentIds:Ljava/util/ArrayList;

    return-object p0
.end method

.method private synthetic lambda$new$0(Ljava/lang/String;Lorg/telegram/messenger/MediaDataController;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 6

    .line 1001
    iget-object p4, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->query:Ljava/lang/String;

    invoke-static {p1, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 1005
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->query:Ljava/lang/String;

    invoke-static {p1}, Lorg/telegram/messenger/Emoji;->parseEmojis(Ljava/lang/CharSequence;)Ljava/util/ArrayList;

    move-result-object p1

    const/4 p4, 0x0

    move v0, p4

    .line 1006
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1008
    :try_start_0
    new-instance v1, Lorg/telegram/messenger/MediaDataController$KeywordResult;

    invoke-direct {v1}, Lorg/telegram/messenger/MediaDataController$KeywordResult;-><init>()V

    .line 1009
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/Emoji$EmojiSpanRange;

    iget-object v2, v2, Lorg/telegram/messenger/Emoji$EmojiSpanRange;->code:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/messenger/MediaDataController$KeywordResult;->emoji:Ljava/lang/String;

    .line 1010
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1014
    :cond_1
    iput p4, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    .line 1015
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documents:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1016
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documentIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1017
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->positionToSection:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    .line 1018
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1019
    iget p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    .line 1020
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documents:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1021
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documentIds:Ljava/util/ArrayList;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1022
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget p1, p1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$IPage;->currentType:I

    if-nez p1, :cond_5

    .line 1023
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->searchDocumentIds:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    move p1, p4

    .line 1024
    :goto_1
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_3

    .line 1025
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/messenger/MediaDataController$KeywordResult;

    .line 1026
    iget-object v2, p2, Lorg/telegram/messenger/MediaDataController$KeywordResult;->emoji:Ljava/lang/String;

    if-eqz v2, :cond_2

    const-string v3, "animated_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1027
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->allEmojis:Ljava/util/HashMap;

    iget-object p2, p2, Lorg/telegram/messenger/MediaDataController$KeywordResult;->emoji:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    if-eqz p2, :cond_2

    .line 1029
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->searchDocumentIds:Ljava/util/HashSet;

    invoke-virtual {v2, p2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 1033
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documentIds:Ljava/util/ArrayList;

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->searchDocumentIds:Ljava/util/HashSet;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move p1, p4

    .line 1034
    :goto_2
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->searchDocumentIds:Ljava/util/HashSet;

    invoke-virtual {p2}, Ljava/util/HashSet;->size()I

    move-result p2

    if-ge p1, p2, :cond_4

    .line 1035
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documents:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 1037
    :cond_4
    iget p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->searchDocumentIds:Ljava/util/HashSet;

    invoke-virtual {p2}, Ljava/util/HashSet;->size()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    goto :goto_6

    .line 1039
    :cond_5
    invoke-virtual {p2}, Lorg/telegram/messenger/MediaDataController;->getAllStickers()Ljava/util/HashMap;

    move-result-object p1

    move p2, p4

    .line 1040
    :goto_3
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p2, v2, :cond_9

    .line 1041
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MediaDataController$KeywordResult;

    .line 1042
    iget-object v2, v2, Lorg/telegram/messenger/MediaDataController$KeywordResult;->emoji:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-eqz v2, :cond_8

    .line 1043
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_5

    :cond_6
    move v3, p4

    .line 1046
    :goto_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_8

    .line 1047
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v4, :cond_7

    .line 1048
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documents:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 1049
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documents:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1050
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

    .line 1055
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

    .line 1056
    :goto_7
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->allStickerSets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p3, v2, :cond_d

    .line 1057
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->allStickerSets:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-eqz v2, :cond_c

    .line 1058
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-nez v3, :cond_a

    goto :goto_8

    .line 1061
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

    .line 1062
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

    .line 1063
    :cond_b
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1064
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1067
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->positionToSection:Landroid/util/SparseIntArray;

    iget v5, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1068
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documents:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1069
    iget v3, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    add-int/2addr v3, v0

    iput v3, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    .line 1072
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documents:Ljava/util/ArrayList;

    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1073
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

    .line 1077
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

    .line 1078
    iget p2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    add-int/2addr p2, v0

    iput p2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    :cond_f
    if-nez p1, :cond_10

    .line 1081
    iget p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->searchId:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->searchId:I

    .line 1083
    :cond_10
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->query:Ljava/lang/String;

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->activeQuery:Ljava/lang/String;

    .line 1084
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 1086
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->listView:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;

    invoke-static {p1, p4, p4}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->access$3600(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;II)V

    .line 1087
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->searchField:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;

    invoke-virtual {p1, p4}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->showProgress(Z)V

    .line 1088
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->tabsStrip:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-virtual {p1, p4}, Lorg/telegram/ui/Components/EmojiTabsStrip;->showSelected(Z)V

    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 13

    .line 994
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->query:Ljava/lang/String;

    .line 995
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$4800(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v2

    .line 996
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getCurrentKeyboardLanguage()[Ljava/lang/String;

    move-result-object v3

    .line 997
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->lastLang:[Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-static {v3, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 998
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$4900(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/MediaDataController;->fetchNewEmojiKeywords([Ljava/lang/String;)V

    .line 1000
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

    .line 1089
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 1000
    invoke-virtual/range {v2 .. v12}, Lorg/telegram/messenger/MediaDataController;->getEmojiSuggestions([Ljava/lang/String;Ljava/lang/String;ZLorg/telegram/messenger/MediaDataController$KeywordResultCallback;Ljava/util/concurrent/CountDownLatch;ZZZZLjava/lang/Integer;)V

    return-void
.end method

.method private updateItems(Ljava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 771
    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->query:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 773
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->searchField:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->showProgress(Z)V

    .line 774
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->tabsStrip:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/EmojiTabsStrip;->showSelected(Z)V

    .line 775
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->searchRunnable:Ljava/lang/Runnable;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 776
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->searchRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void

    .line 780
    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->tabsStrip:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/EmojiTabsStrip;->showSelected(Z)V

    .line 781
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->searchRunnable:Ljava/lang/Runnable;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 783
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$4400(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    .line 785
    iput v2, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    .line 786
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 787
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documentIds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 788
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->positionToSection:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->clear()V

    .line 789
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 790
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->allStickerSets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 791
    iget v4, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    add-int/2addr v4, v3

    iput v4, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    .line 792
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documents:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 793
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->packs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 795
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget v6, v4, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$IPage;->currentType:I

    if-ne v6, v3, :cond_4

    .line 796
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documents:Ljava/util/ArrayList;

    iget-object v4, v4, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    iget-object v4, v4, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->locationSticker:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 797
    iget v4, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    add-int/2addr v4, v3

    iput v4, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    const/4 v4, 0x2

    .line 799
    invoke-virtual {v1, v4}, Lorg/telegram/messenger/MediaDataController;->getRecentStickers(I)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 800
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 801
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->faveSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-nez v6, :cond_1

    .line 802
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;-><init>()V

    iput-object v6, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->faveSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .line 804
    :cond_1
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->faveSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iput-object v4, v6, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    .line 805
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_stickerSet;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_stickerSet;-><init>()V

    iput-object v4, v6, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    .line 806
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->faveSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    sget v6, Lorg/telegram/messenger/R$string;->FavoriteStickers:I

    const-string v7, "FavoriteStickers"

    invoke-static {v7, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    .line 807
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->stickerSets:Ljava/util/ArrayList;

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->faveSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 810
    :cond_2
    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MediaDataController;->getRecentStickers(I)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 811
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    .line 812
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->recentSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-nez v6, :cond_3

    .line 813
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;-><init>()V

    iput-object v6, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->recentSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .line 815
    :cond_3
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->recentSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iput-object v4, v6, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    .line 816
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_stickerSet;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_stickerSet;-><init>()V

    iput-object v4, v6, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    .line 817
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->recentSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    sget v6, Lorg/telegram/messenger/R$string;->RecentStickers:I

    const-string v7, "RecentStickers"

    invoke-static {v7, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    .line 818
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->stickerSets:Ljava/util/ArrayList;

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->recentSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 821
    :cond_4
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->stickerSets:Ljava/util/ArrayList;

    .line 822
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget v6, v6, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$IPage;->currentType:I

    if-nez v6, :cond_5

    const/4 v6, 0x5

    goto :goto_0

    :cond_5
    move v6, v2

    .line 821
    :goto_0
    invoke-virtual {v1, v6}, Lorg/telegram/messenger/MediaDataController;->getStickerSets(I)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move v4, v2

    .line 826
    :goto_1
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_8

    .line 827
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .line 830
    iget-object v7, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->positionToSection:Landroid/util/SparseIntArray;

    iget v8, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    invoke-virtual {v7, v8, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 831
    iget-object v7, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documents:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 832
    iget v7, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    add-int/2addr v7, v3

    iput v7, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    .line 835
    iget-object v7, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documents:Ljava/util/ArrayList;

    iget-object v8, v6, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 836
    iget v7, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    iget-object v8, v6, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/2addr v7, v8

    iput v7, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    .line 838
    new-instance v7, Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    invoke-direct {v7}, Lorg/telegram/ui/Components/EmojiView$EmojiPack;-><init>()V

    .line 839
    iget-object v8, v6, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    iput-object v8, v7, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->documents:Ljava/util/ArrayList;

    .line 840
    iget-object v8, v6, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iput-object v8, v7, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    .line 841
    iput-boolean v3, v7, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->installed:Z

    .line 842
    iput-boolean v2, v7, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->featured:Z

    .line 843
    iput-boolean v3, v7, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->expanded:Z

    .line 844
    iput-boolean v3, v7, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->free:Z

    .line 845
    iget-object v8, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->faveSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-ne v6, v8, :cond_6

    .line 846
    sget v8, Lorg/telegram/messenger/R$drawable;->emoji_tabs_faves:I

    iput v8, v7, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->resId:I

    goto :goto_2

    .line 847
    :cond_6
    iget-object v8, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->recentSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-ne v6, v8, :cond_7

    .line 848
    sget v8, Lorg/telegram/messenger/R$drawable;->msg_emoji_recent:I

    iput v8, v7, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->resId:I

    .line 850
    :cond_7
    :goto_2
    iget-object v8, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->packs:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 852
    iget-object v7, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->allStickerSets:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 854
    :cond_8
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget v6, v6, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$IPage;->currentType:I

    if-nez v6, :cond_19

    .line 855
    invoke-virtual {v1}, Lorg/telegram/messenger/MediaDataController;->getFeaturedEmojiSets()Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_16

    move v7, v2

    .line 857
    :goto_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_16

    .line 858
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    .line 860
    instance-of v9, v8, Lorg/telegram/tgnet/TLRPC$TL_stickerSetNoCovered;

    if-eqz v9, :cond_9

    .line 861
    iget-object v9, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget-object v9, v9, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-static {v9}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$4500(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)I

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

    .line 865
    :cond_9
    instance-of v9, v8, Lorg/telegram/tgnet/TLRPC$TL_stickerSetFullCovered;

    if-eqz v9, :cond_15

    .line 866
    new-instance v9, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    invoke-direct {v9}, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;-><init>()V

    .line 867
    iget-object v10, v8, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iput-object v10, v9, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    .line 868
    check-cast v8, Lorg/telegram/tgnet/TLRPC$TL_stickerSetFullCovered;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$TL_stickerSetFullCovered;->documents:Ljava/util/ArrayList;

    iput-object v8, v9, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    .line 869
    iget-object v8, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->packsBySet:Ljava/util/HashMap;

    iget-wide v10, v10, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    iput-object v8, v9, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->packs:Ljava/util/ArrayList;

    if-nez v8, :cond_f

    .line 871
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    move v10, v2

    .line 872
    :goto_4
    iget-object v11, v9, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v10, v11, :cond_d

    .line 873
    iget-object v11, v9, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/tgnet/TLRPC$Document;

    if-nez v11, :cond_a

    goto :goto_6

    .line 877
    :cond_a
    invoke-static {v11, v5}, Lorg/telegram/messenger/MessageObject;->findAnimatedEmojiEmoticon(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 878
    invoke-static {v12}, Lorg/telegram/messenger/Emoji;->parseEmojis(Ljava/lang/CharSequence;)Ljava/util/ArrayList;

    move-result-object v12

    if-eqz v12, :cond_c

    move v13, v2

    .line 880
    :goto_5
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v13, v14, :cond_c

    .line 881
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/messenger/Emoji$EmojiSpanRange;

    iget-object v14, v14, Lorg/telegram/messenger/Emoji$EmojiSpanRange;->code:Ljava/lang/CharSequence;

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    .line 882
    invoke-virtual {v8, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    if-nez v15, :cond_b

    .line 884
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v8, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 886
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

    .line 890
    :cond_d
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v9, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->packs:Ljava/util/ArrayList;

    .line 891
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

    .line 892
    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;-><init>()V

    .line 893
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iput-object v10, v8, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->emoticon:Ljava/lang/String;

    .line 894
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    iput-object v3, v8, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->documents:Ljava/util/ArrayList;

    .line 895
    iget-object v3, v9, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->packs:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 897
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

    .line 904
    :cond_10
    iget-object v2, v8, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-nez v2, :cond_11

    goto/16 :goto_a

    :cond_11
    const/4 v2, 0x0

    .line 907
    :goto_8
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->packs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_13

    .line 908
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->packs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    iget-object v3, v3, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-eqz v3, :cond_12

    .line 909
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

    .line 918
    :cond_14
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 919
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->allStickerSets:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 922
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->positionToSection:Landroid/util/SparseIntArray;

    iget v3, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v4, v4, 0x1

    .line 924
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documents:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 925
    iget v2, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    .line 928
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documents:Ljava/util/ArrayList;

    iget-object v3, v8, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 929
    iget v2, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    iget-object v3, v8, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    .line 931
    new-instance v2, Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    invoke-direct {v2}, Lorg/telegram/ui/Components/EmojiView$EmojiPack;-><init>()V

    .line 932
    iget-object v3, v8, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    iput-object v3, v2, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->documents:Ljava/util/ArrayList;

    .line 933
    iget-object v3, v8, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iput-object v3, v2, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    const/4 v3, 0x0

    .line 934
    iput-boolean v3, v2, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->installed:Z

    const/4 v3, 0x1

    .line 935
    iput-boolean v3, v2, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->featured:Z

    .line 936
    iput-boolean v3, v2, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->expanded:Z

    .line 937
    iput-boolean v3, v2, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->free:Z

    .line 938
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

    .line 942
    :goto_b
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->allStickerSets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_18

    .line 944
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

    .line 951
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetShortName;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetShortName;-><init>()V

    const-string v3, "StaticEmoji"

    .line 952
    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->short_name:Ljava/lang/String;

    const/4 v3, 0x0

    .line 953
    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MediaDataController;->getStickerSet(Lorg/telegram/tgnet/TLRPC$InputStickerSet;Z)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 955
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->allStickerSets:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 959
    :cond_19
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->access$4602(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;Z)Z

    .line 961
    iget v1, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->lastAllSetsCount:I

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->allStickerSets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v1, v2, :cond_1e

    .line 962
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->allEmojis:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    const/4 v3, 0x0

    .line 963
    :goto_d
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->allStickerSets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_1d

    .line 964
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->allStickerSets:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-nez v1, :cond_1a

    goto :goto_f

    :cond_1a
    const/4 v2, 0x0

    .line 968
    :goto_e
    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->packs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_1c

    .line 969
    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->packs:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->emoticon:Ljava/lang/String;

    .line 970
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->allEmojis:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    if-nez v6, :cond_1b

    .line 972
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->allEmojis:Ljava/util/HashMap;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v7

    .line 974
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

    .line 977
    :cond_1d
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->allStickerSets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->lastAllSetsCount:I

    :cond_1e
    const/4 v1, 0x0

    .line 980
    iput-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->includeNotFound:Z

    .line 981
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->tabsStrip:Lorg/telegram/ui/Components/EmojiTabsStrip;

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->packs:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/EmojiTabsStrip;->updateEmojiPacks(Ljava/util/ArrayList;)V

    .line 982
    iput-object v5, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->activeQuery:Ljava/lang/String;

    .line 983
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1182
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    return v0
.end method

.method public getItemViewType(I)I
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1168
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->includeNotFound:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_1

    const/4 p1, 0x3

    return p1

    .line 1170
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->positionToSection:Landroid/util/SparseIntArray;

    const/4 v2, -0x1

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-ltz v0, :cond_2

    return v1

    :cond_2
    if-ltz p1, :cond_3

    .line 1173
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->locationSticker:Lorg/telegram/tgnet/TLRPC$Document;

    if-ne p1, v0, :cond_3

    const/4 p1, 0x4

    return p1

    :cond_3
    const/4 p1, 0x2

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 7

    .line 1118
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    if-nez v0, :cond_0

    .line 1120
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/16 v0, 0x22

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1121
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x1

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$900(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_5

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    .line 1123
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->positionToSection:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result p2

    if-ltz p2, :cond_6

    .line 1124
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p2, v0, :cond_1

    goto :goto_2

    .line 1127
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-eqz p2, :cond_3

    .line 1128
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    goto :goto_1

    :cond_3
    :goto_0
    const-string p2, ""

    .line 1129
    :goto_1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/StickerSetNameCell;

    .line 1130
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->activeQuery:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_4

    .line 1131
    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/Cells/StickerSetNameCell;->setText(Ljava/lang/CharSequence;I)V

    goto/16 :goto_5

    .line 1133
    :cond_4
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->activeQuery:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_5

    .line 1135
    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/Cells/StickerSetNameCell;->setText(Ljava/lang/CharSequence;I)V

    goto/16 :goto_5

    .line 1137
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

    .line 1141
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

    .line 1142
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

    .line 1146
    :cond_a
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;

    .line 1147
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget p2, p2, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$IPage;->currentType:I

    if-nez p2, :cond_c

    if-eqz v0, :cond_b

    .line 1149
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->setSticker(Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 1150
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->setEmoji(Lorg/telegram/tgnet/TLRPC$Document;)V

    goto :goto_5

    .line 1152
    :cond_b
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->setSticker(Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 1153
    invoke-virtual {p1, v5, v6}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->setEmojiId(J)V

    goto :goto_5

    .line 1156
    :cond_c
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->setEmoji(Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 1157
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->setSticker(Lorg/telegram/tgnet/TLRPC$Document;)V

    goto :goto_5

    :cond_d
    const/4 p2, 0x3

    if-ne v0, p2, :cond_e

    .line 1160
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

    .line 1103
    new-instance p1, Landroid/view/View;

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    goto :goto_2

    :cond_0
    const/4 p1, 0x1

    if-ne p2, p1, :cond_1

    .line 1105
    new-instance p2, Lorg/telegram/ui/Cells/StickerSetNameCell;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$4700(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    invoke-direct {p2, v0, p1, v1}, Lorg/telegram/ui/Cells/StickerSetNameCell;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    :goto_0
    move-object p1, p2

    goto :goto_2

    :cond_1
    const/4 v0, 0x3

    if-ne p2, v0, :cond_3

    .line 1107
    new-instance p2, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$NoEmojiView;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget v1, v1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$IPage;->currentType:I

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    invoke-direct {p2, v0, p1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$NoEmojiView;-><init>(Landroid/content/Context;Z)V

    goto :goto_0

    :cond_3
    const/4 p1, 0x4

    if-ne p2, p1, :cond_4

    .line 1109
    new-instance p1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryLocationComponentCell;

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryLocationComponentCell;-><init>(Landroid/content/Context;)V

    goto :goto_2

    .line 1111
    :cond_4
    new-instance p1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->listView:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;)V

    .line 1113
    :goto_2
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public update()V
    .locals 1

    .line 762
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->query:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 763
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->updateItems(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
