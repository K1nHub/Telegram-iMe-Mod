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

.field private final staticEmojiInput:Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetShortName;

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
.method public static synthetic $r8$lambda$GlUv9-y_lKdACA_1dKuaPGePqn4(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;I)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->lambda$onCreateViewHolder$2(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;I)V

    return-void
.end method

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

.method public constructor <init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;)V
    .locals 1

    .line 790
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 776
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->allEmojis:Ljava/util/HashMap;

    .line 777
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->packsBySet:Ljava/util/HashMap;

    .line 779
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->allStickerSets:Ljava/util/ArrayList;

    .line 780
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->stickerSets:Ljava/util/ArrayList;

    .line 781
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->packs:Ljava/util/ArrayList;

    .line 782
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documents:Ljava/util/ArrayList;

    .line 783
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documentIds:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 785
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    .line 786
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->positionToSection:Landroid/util/SparseIntArray;

    .line 1025
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->searchDocumentIds:Ljava/util/HashSet;

    .line 1027
    new-instance p1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->searchRunnable:Ljava/lang/Runnable;

    .line 791
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetShortName;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetShortName;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->staticEmojiInput:Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetShortName;

    const-string v0, "StaticEmoji"

    .line 792
    iput-object v0, p1, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->short_name:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3000(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;)Landroid/util/SparseIntArray;
    .locals 0

    .line 773
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->positionToSection:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;Ljava/lang/String;)V
    .locals 0

    .line 773
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->updateItems(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4002(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 773
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->query:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4100(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;)Ljava/lang/Runnable;
    .locals 0

    .line 773
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->searchRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$5000(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;)Ljava/util/ArrayList;
    .locals 0

    .line 773
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documents:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$5100(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;)Ljava/util/ArrayList;
    .locals 0

    .line 773
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documentIds:Ljava/util/ArrayList;

    return-object p0
.end method

.method private synthetic lambda$new$0(Ljava/lang/String;Lorg/telegram/messenger/MediaDataController;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 6

    .line 1035
    iget-object p4, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->query:Ljava/lang/String;

    invoke-static {p1, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 1039
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->query:Ljava/lang/String;

    invoke-static {p1}, Lorg/telegram/messenger/Emoji;->parseEmojis(Ljava/lang/CharSequence;)Ljava/util/ArrayList;

    move-result-object p1

    const/4 p4, 0x0

    move v0, p4

    .line 1040
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1042
    :try_start_0
    new-instance v1, Lorg/telegram/messenger/MediaDataController$KeywordResult;

    invoke-direct {v1}, Lorg/telegram/messenger/MediaDataController$KeywordResult;-><init>()V

    .line 1043
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/Emoji$EmojiSpanRange;

    iget-object v2, v2, Lorg/telegram/messenger/Emoji$EmojiSpanRange;->code:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/messenger/MediaDataController$KeywordResult;->emoji:Ljava/lang/String;

    .line 1044
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1048
    :cond_1
    iput p4, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    .line 1049
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documents:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1050
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documentIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1051
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->positionToSection:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    .line 1052
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1053
    iget p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    .line 1054
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documents:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1055
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documentIds:Ljava/util/ArrayList;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1056
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget p1, p1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$IPage;->currentType:I

    if-nez p1, :cond_5

    .line 1057
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->searchDocumentIds:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    move p1, p4

    .line 1058
    :goto_1
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_3

    .line 1059
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/messenger/MediaDataController$KeywordResult;

    .line 1060
    iget-object v2, p2, Lorg/telegram/messenger/MediaDataController$KeywordResult;->emoji:Ljava/lang/String;

    if-eqz v2, :cond_2

    const-string v3, "animated_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1061
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->allEmojis:Ljava/util/HashMap;

    iget-object p2, p2, Lorg/telegram/messenger/MediaDataController$KeywordResult;->emoji:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    if-eqz p2, :cond_2

    .line 1063
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->searchDocumentIds:Ljava/util/HashSet;

    invoke-virtual {v2, p2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 1067
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documentIds:Ljava/util/ArrayList;

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->searchDocumentIds:Ljava/util/HashSet;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move p1, p4

    .line 1068
    :goto_2
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->searchDocumentIds:Ljava/util/HashSet;

    invoke-virtual {p2}, Ljava/util/HashSet;->size()I

    move-result p2

    if-ge p1, p2, :cond_4

    .line 1069
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documents:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 1071
    :cond_4
    iget p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->searchDocumentIds:Ljava/util/HashSet;

    invoke-virtual {p2}, Ljava/util/HashSet;->size()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    goto :goto_6

    .line 1073
    :cond_5
    invoke-virtual {p2}, Lorg/telegram/messenger/MediaDataController;->getAllStickers()Ljava/util/HashMap;

    move-result-object p1

    move p2, p4

    .line 1074
    :goto_3
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p2, v2, :cond_9

    .line 1075
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MediaDataController$KeywordResult;

    .line 1076
    iget-object v2, v2, Lorg/telegram/messenger/MediaDataController$KeywordResult;->emoji:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-eqz v2, :cond_8

    .line 1077
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_5

    :cond_6
    move v3, p4

    .line 1080
    :goto_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_8

    .line 1081
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v4, :cond_7

    .line 1082
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documents:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 1083
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documents:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1084
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

    .line 1089
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

    .line 1090
    :goto_7
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->allStickerSets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p3, v2, :cond_d

    .line 1091
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->allStickerSets:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-eqz v2, :cond_c

    .line 1092
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-nez v3, :cond_a

    goto :goto_8

    .line 1095
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

    .line 1096
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

    .line 1097
    :cond_b
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1098
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1101
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->positionToSection:Landroid/util/SparseIntArray;

    iget v5, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1102
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documents:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1103
    iget v3, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    add-int/2addr v3, v0

    iput v3, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    .line 1106
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documents:Ljava/util/ArrayList;

    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1107
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

    .line 1111
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

    .line 1112
    iget p2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    add-int/2addr p2, v0

    iput p2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    :cond_f
    if-nez p1, :cond_10

    .line 1115
    iget p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->searchId:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->searchId:I

    .line 1117
    :cond_10
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->query:Ljava/lang/String;

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->activeQuery:Ljava/lang/String;

    .line 1118
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 1120
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->listView:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;

    invoke-static {p1, p4, p4}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->access$3500(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;II)V

    .line 1121
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->searchField:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;

    invoke-virtual {p1, p4}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->showProgress(Z)V

    .line 1122
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->tabsStrip:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-virtual {p1, p4}, Lorg/telegram/ui/Components/EmojiTabsStrip;->showSelected(Z)V

    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 14

    .line 1028
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->query:Ljava/lang/String;

    .line 1029
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$4800(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v2

    .line 1030
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getCurrentKeyboardLanguage()[Ljava/lang/String;

    move-result-object v3

    .line 1031
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->lastLang:[Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-static {v3, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1032
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$4900(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/MediaDataController;->fetchNewEmojiKeywords([Ljava/lang/String;)V

    .line 1034
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

    .line 1123
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x0

    .line 1034
    invoke-virtual/range {v2 .. v13}, Lorg/telegram/messenger/MediaDataController;->getEmojiSuggestions([Ljava/lang/String;Ljava/lang/String;ZLorg/telegram/messenger/MediaDataController$KeywordResultCallback;Ljava/util/concurrent/CountDownLatch;ZZZZLjava/lang/Integer;Z)V

    return-void
.end method

.method private static synthetic lambda$onCreateViewHolder$2(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;I)V
    .locals 0

    .line 1138
    invoke-static {p0, p1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$4700(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;I)V

    return-void
.end method

.method private updateItems(Ljava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 805
    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->query:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 807
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->searchField:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->showProgress(Z)V

    .line 808
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->tabsStrip:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/EmojiTabsStrip;->showSelected(Z)V

    .line 809
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->searchRunnable:Ljava/lang/Runnable;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 810
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->searchRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void

    .line 814
    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->tabsStrip:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/EmojiTabsStrip;->showSelected(Z)V

    .line 815
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->searchRunnable:Ljava/lang/Runnable;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 817
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$4300(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    .line 819
    iput v2, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    .line 820
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 821
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documentIds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 822
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->positionToSection:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->clear()V

    .line 823
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 824
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->allStickerSets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 825
    iget v4, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    add-int/2addr v4, v3

    iput v4, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    .line 826
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documents:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 827
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->packs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 829
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget v6, v4, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$IPage;->currentType:I

    if-ne v6, v3, :cond_5

    .line 830
    iget-object v4, v4, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-virtual {v4}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->hasWidgets()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 831
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documents:Ljava/util/ArrayList;

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget-object v6, v6, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    iget-object v6, v6, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->widgets:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 832
    iget v4, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    add-int/2addr v4, v3

    iput v4, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    :cond_1
    const/4 v4, 0x2

    .line 835
    invoke-virtual {v1, v4}, Lorg/telegram/messenger/MediaDataController;->getRecentStickers(I)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 836
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 837
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->faveSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-nez v6, :cond_2

    .line 838
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;-><init>()V

    iput-object v6, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->faveSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .line 840
    :cond_2
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->faveSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iput-object v4, v6, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    .line 841
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_stickerSet;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_stickerSet;-><init>()V

    iput-object v4, v6, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    .line 842
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->faveSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    sget v6, Lorg/telegram/messenger/R$string;->FavoriteStickers:I

    const-string v7, "FavoriteStickers"

    invoke-static {v7, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    .line 843
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->stickerSets:Ljava/util/ArrayList;

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->faveSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 846
    :cond_3
    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MediaDataController;->getRecentStickers(I)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 847
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    .line 848
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->recentSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-nez v6, :cond_4

    .line 849
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;-><init>()V

    iput-object v6, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->recentSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .line 851
    :cond_4
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->recentSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iput-object v4, v6, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    .line 852
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_stickerSet;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_stickerSet;-><init>()V

    iput-object v4, v6, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    .line 853
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->recentSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    sget v6, Lorg/telegram/messenger/R$string;->RecentStickers:I

    const-string v7, "RecentStickers"

    invoke-static {v7, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    .line 854
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->stickerSets:Ljava/util/ArrayList;

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->recentSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 857
    :cond_5
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->stickerSets:Ljava/util/ArrayList;

    .line 858
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget v6, v6, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$IPage;->currentType:I

    if-nez v6, :cond_6

    const/4 v6, 0x5

    goto :goto_0

    :cond_6
    move v6, v2

    .line 857
    :goto_0
    invoke-virtual {v1, v6}, Lorg/telegram/messenger/MediaDataController;->getStickerSets(I)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move v4, v2

    .line 862
    :goto_1
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_9

    .line 863
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .line 866
    iget-object v7, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->positionToSection:Landroid/util/SparseIntArray;

    iget v8, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    invoke-virtual {v7, v8, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 867
    iget-object v7, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documents:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 868
    iget v7, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    add-int/2addr v7, v3

    iput v7, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    .line 871
    iget-object v7, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documents:Ljava/util/ArrayList;

    iget-object v8, v6, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 872
    iget v7, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    iget-object v8, v6, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/2addr v7, v8

    iput v7, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    .line 874
    new-instance v7, Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    invoke-direct {v7}, Lorg/telegram/ui/Components/EmojiView$EmojiPack;-><init>()V

    .line 875
    iget-object v8, v6, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    iput-object v8, v7, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->documents:Ljava/util/ArrayList;

    .line 876
    iget-object v8, v6, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iput-object v8, v7, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    .line 877
    iput-boolean v3, v7, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->installed:Z

    .line 878
    iput-boolean v2, v7, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->featured:Z

    .line 879
    iput-boolean v3, v7, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->expanded:Z

    .line 880
    iput-boolean v3, v7, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->free:Z

    .line 881
    iget-object v8, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->faveSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-ne v6, v8, :cond_7

    .line 882
    sget v8, Lorg/telegram/messenger/R$drawable;->emoji_tabs_faves:I

    iput v8, v7, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->resId:I

    goto :goto_2

    .line 883
    :cond_7
    iget-object v8, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->recentSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-ne v6, v8, :cond_8

    .line 884
    sget v8, Lorg/telegram/messenger/R$drawable;->msg_emoji_recent:I

    iput v8, v7, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->resId:I

    .line 886
    :cond_8
    :goto_2
    iget-object v8, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->packs:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 888
    iget-object v7, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->allStickerSets:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 890
    :cond_9
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget v6, v6, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$IPage;->currentType:I

    if-nez v6, :cond_1a

    .line 891
    invoke-virtual {v1}, Lorg/telegram/messenger/MediaDataController;->getFeaturedEmojiSets()Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_17

    move v7, v2

    .line 893
    :goto_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_17

    .line 894
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    .line 896
    instance-of v9, v8, Lorg/telegram/tgnet/TLRPC$TL_stickerSetNoCovered;

    if-eqz v9, :cond_a

    .line 897
    iget-object v9, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget-object v9, v9, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-static {v9}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$4400(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)I

    move-result v9

    invoke-static {v9}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v9

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    invoke-static {v8}, Lorg/telegram/messenger/MediaDataController;->getInputStickerSet(Lorg/telegram/tgnet/TLRPC$StickerSet;)Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    move-result-object v8

    invoke-virtual {v9, v8, v2}, Lorg/telegram/messenger/MediaDataController;->getStickerSet(Lorg/telegram/tgnet/TLRPC$InputStickerSet;Z)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v8

    if-nez v8, :cond_11

    goto/16 :goto_a

    .line 901
    :cond_a
    instance-of v9, v8, Lorg/telegram/tgnet/TLRPC$TL_stickerSetFullCovered;

    if-eqz v9, :cond_16

    .line 902
    new-instance v9, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    invoke-direct {v9}, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;-><init>()V

    .line 903
    iget-object v10, v8, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iput-object v10, v9, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    .line 904
    check-cast v8, Lorg/telegram/tgnet/TLRPC$TL_stickerSetFullCovered;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$TL_stickerSetFullCovered;->documents:Ljava/util/ArrayList;

    iput-object v8, v9, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    .line 905
    iget-object v8, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->packsBySet:Ljava/util/HashMap;

    iget-wide v10, v10, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    iput-object v8, v9, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->packs:Ljava/util/ArrayList;

    if-nez v8, :cond_10

    .line 907
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    move v10, v2

    .line 908
    :goto_4
    iget-object v11, v9, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v10, v11, :cond_e

    .line 909
    iget-object v11, v9, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/tgnet/TLRPC$Document;

    if-nez v11, :cond_b

    goto :goto_6

    .line 913
    :cond_b
    invoke-static {v11, v5}, Lorg/telegram/messenger/MessageObject;->findAnimatedEmojiEmoticon(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 914
    invoke-static {v12}, Lorg/telegram/messenger/Emoji;->parseEmojis(Ljava/lang/CharSequence;)Ljava/util/ArrayList;

    move-result-object v12

    if-eqz v12, :cond_d

    move v13, v2

    .line 916
    :goto_5
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v13, v14, :cond_d

    .line 917
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/messenger/Emoji$EmojiSpanRange;

    iget-object v14, v14, Lorg/telegram/messenger/Emoji$EmojiSpanRange;->code:Ljava/lang/CharSequence;

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    .line 918
    invoke-virtual {v8, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    if-nez v15, :cond_c

    .line 920
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v8, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 922
    :cond_c
    iget-wide v2, v11, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    goto :goto_5

    :cond_d
    :goto_6
    add-int/lit8 v10, v10, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    goto :goto_4

    .line 926
    :cond_e
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v9, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->packs:Ljava/util/ArrayList;

    .line 927
    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 928
    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;-><init>()V

    .line 929
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iput-object v10, v8, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->emoticon:Ljava/lang/String;

    .line 930
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    iput-object v3, v8, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->documents:Ljava/util/ArrayList;

    .line 931
    iget-object v3, v9, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->packs:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 933
    :cond_f
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->packsBySet:Ljava/util/HashMap;

    iget-object v3, v9, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v10, v3, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v8, v9, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->packs:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    move-object v8, v9

    .line 940
    :cond_11
    iget-object v2, v8, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-nez v2, :cond_12

    goto/16 :goto_a

    :cond_12
    const/4 v2, 0x0

    .line 943
    :goto_8
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->packs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_14

    .line 944
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->packs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    iget-object v3, v3, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-eqz v3, :cond_13

    .line 945
    iget-wide v9, v3, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    iget-object v3, v8, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v11, v3, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    cmp-long v3, v9, v11

    if-nez v3, :cond_13

    const/4 v2, 0x1

    goto :goto_9

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_14
    const/4 v2, 0x0

    :goto_9
    if-eqz v2, :cond_15

    goto :goto_a

    .line 954
    :cond_15
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 955
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->allStickerSets:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 958
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->positionToSection:Landroid/util/SparseIntArray;

    iget v3, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v4, v4, 0x1

    .line 960
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documents:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 961
    iget v2, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    .line 964
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documents:Ljava/util/ArrayList;

    iget-object v3, v8, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 965
    iget v2, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    iget-object v3, v8, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    .line 967
    new-instance v2, Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    invoke-direct {v2}, Lorg/telegram/ui/Components/EmojiView$EmojiPack;-><init>()V

    .line 968
    iget-object v3, v8, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    iput-object v3, v2, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->documents:Ljava/util/ArrayList;

    .line 969
    iget-object v3, v8, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iput-object v3, v2, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    const/4 v3, 0x0

    .line 970
    iput-boolean v3, v2, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->installed:Z

    const/4 v3, 0x1

    .line 971
    iput-boolean v3, v2, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->featured:Z

    .line 972
    iput-boolean v3, v2, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->expanded:Z

    .line 973
    iput-boolean v3, v2, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->free:Z

    .line 974
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->packs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_16
    :goto_a
    add-int/lit8 v7, v7, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    goto/16 :goto_3

    :cond_17
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 978
    :goto_b
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->allStickerSets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_19

    .line 980
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
    if-eqz v3, :cond_18

    goto :goto_c

    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_19
    :goto_c
    if-nez v3, :cond_1a

    .line 987
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->staticEmojiInput:Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetShortName;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MediaDataController;->getStickerSet(Lorg/telegram/tgnet/TLRPC$InputStickerSet;Z)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v1

    if-eqz v1, :cond_1a

    .line 989
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->allStickerSets:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 993
    :cond_1a
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->access$4502(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;Z)Z

    .line 995
    iget v1, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->lastAllSetsCount:I

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->allStickerSets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v1, v2, :cond_1f

    .line 996
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->allEmojis:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    const/4 v3, 0x0

    .line 997
    :goto_d
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->allStickerSets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_1e

    .line 998
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->allStickerSets:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-nez v1, :cond_1b

    goto :goto_f

    :cond_1b
    const/4 v2, 0x0

    .line 1002
    :goto_e
    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->packs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_1d

    .line 1003
    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->packs:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->emoticon:Ljava/lang/String;

    .line 1004
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->allEmojis:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    if-nez v6, :cond_1c

    .line 1006
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->allEmojis:Ljava/util/HashMap;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v7

    .line 1008
    :cond_1c
    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->packs:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_1d
    :goto_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 1011
    :cond_1e
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->allStickerSets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->lastAllSetsCount:I

    :cond_1f
    const/4 v1, 0x0

    .line 1014
    iput-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->includeNotFound:Z

    .line 1015
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->tabsStrip:Lorg/telegram/ui/Components/EmojiTabsStrip;

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->packs:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/EmojiTabsStrip;->updateEmojiPacks(Ljava/util/ArrayList;)V

    .line 1016
    iput-object v5, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->activeQuery:Ljava/lang/String;

    .line 1017
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1212
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    return v0
.end method

.method public getItemViewType(I)I
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1198
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->includeNotFound:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->itemsCount:I

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_1

    const/4 p1, 0x3

    return p1

    .line 1200
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->positionToSection:Landroid/util/SparseIntArray;

    const/4 v2, -0x1

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-ltz v0, :cond_2

    return v1

    :cond_2
    if-ltz p1, :cond_3

    .line 1203
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->documents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->widgets:Lorg/telegram/tgnet/TLRPC$Document;

    if-ne p1, v0, :cond_3

    const/4 p1, 0x4

    return p1

    :cond_3
    const/4 p1, 0x2

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 7

    .line 1148
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    if-nez v0, :cond_0

    .line 1150
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/16 v0, 0x22

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1151
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

    .line 1153
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->positionToSection:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result p2

    if-ltz p2, :cond_6

    .line 1154
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p2, v0, :cond_1

    goto :goto_2

    .line 1157
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-eqz p2, :cond_3

    .line 1158
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    goto :goto_1

    :cond_3
    :goto_0
    const-string p2, ""

    .line 1159
    :goto_1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/StickerSetNameCell;

    .line 1160
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->activeQuery:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_4

    .line 1161
    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/Cells/StickerSetNameCell;->setText(Ljava/lang/CharSequence;I)V

    goto/16 :goto_5

    .line 1163
    :cond_4
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->activeQuery:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_5

    .line 1165
    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/Cells/StickerSetNameCell;->setText(Ljava/lang/CharSequence;I)V

    goto/16 :goto_5

    .line 1167
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

    .line 1171
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

    .line 1172
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

    .line 1176
    :cond_a
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;

    .line 1177
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget p2, p2, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$IPage;->currentType:I

    if-nez p2, :cond_c

    if-eqz v0, :cond_b

    .line 1179
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->setSticker(Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 1180
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->setEmoji(Lorg/telegram/tgnet/TLRPC$Document;)V

    goto :goto_5

    .line 1182
    :cond_b
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->setSticker(Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 1183
    invoke-virtual {p1, v5, v6}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->setEmojiId(J)V

    goto :goto_5

    .line 1186
    :cond_c
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->setEmoji(Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 1187
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->setSticker(Lorg/telegram/tgnet/TLRPC$Document;)V

    goto :goto_5

    :cond_d
    const/4 p2, 0x3

    if-ne v0, p2, :cond_e

    .line 1190
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

    .line 1131
    new-instance p1, Landroid/view/View;

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    goto :goto_2

    :cond_0
    const/4 p1, 0x1

    if-ne p2, p1, :cond_1

    .line 1133
    new-instance p2, Lorg/telegram/ui/Cells/StickerSetNameCell;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$4600(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    invoke-direct {p2, v0, p1, v1}, Lorg/telegram/ui/Cells/StickerSetNameCell;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    :goto_0
    move-object p1, p2

    goto :goto_2

    :cond_1
    const/4 v0, 0x3

    if-ne p2, v0, :cond_3

    .line 1135
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

    .line 1137
    new-instance p1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell;

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget-object v0, p2, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell;-><init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;Landroid/content/Context;)V

    .line 1138
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget-object p2, p2, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    new-instance v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter$$ExternalSyntheticLambda2;

    invoke-direct {v0, p2}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell;->setOnButtonClickListener(Lorg/telegram/messenger/Utilities$Callback;)V

    goto :goto_2

    .line 1141
    :cond_4
    new-instance p1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->listView:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;)V

    .line 1143
    :goto_2
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public update()V
    .locals 1

    .line 796
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->query:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 797
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->updateItems(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
