.class Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "EmojiView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/EmojiView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EmojiSearchAdapter"
.end annotation


# instance fields
.field private addedSets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private lastSearchAlias:Ljava/lang/String;

.field private lastSearchEmojiString:Ljava/lang/String;

.field private result:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MediaDataController$KeywordResult;",
            ">;"
        }
    .end annotation
.end field

.field private searchRunnable:Ljava/lang/Runnable;

.field private searchWas:Z

.field final synthetic this$0:Lorg/telegram/ui/Components/EmojiView;


# direct methods
.method public static synthetic $r8$lambda$HRueT9IWCrFf5EKPjW1h8RRrdOM(Ljava/util/LinkedHashSet;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLRPC$TL_emojiList;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->lambda$search$1(Ljava/util/LinkedHashSet;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLRPC$TL_emojiList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QMw5P4C-evTAFK5xGYbHoCLXlpM(Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;Ljava/lang/String;Ljava/util/LinkedHashSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->lambda$search$0(Ljava/lang/String;Ljava/util/LinkedHashSet;)V

    return-void
.end method

.method public static synthetic $r8$lambda$u7t43vH0WrcwWumrMce836KXLzo(Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->lambda$search$2()V

    return-void
.end method

.method private constructor <init>(Lorg/telegram/ui/Components/EmojiView;)V
    .locals 0

    .line 8391
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 8393
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->result:Ljava/util/ArrayList;

    .line 8670
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->addedSets:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/Components/EmojiView;Lorg/telegram/ui/Components/EmojiView$1;)V
    .locals 0

    .line 8391
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    return-void
.end method

.method static synthetic access$20000(Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;)Ljava/lang/String;
    .locals 0

    .line 8391
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->lastSearchAlias:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$20002(Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 8391
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->lastSearchAlias:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$20100(Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;Ljava/lang/String;Ljava/util/LinkedHashSet;)V
    .locals 0

    .line 8391
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->searchByPackname(Ljava/lang/String;Ljava/util/LinkedHashSet;)V

    return-void
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;)Ljava/lang/String;
    .locals 0

    .line 8391
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->lastSearchEmojiString:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$7600(Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;)Z
    .locals 0

    .line 8391
    iget-boolean p0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->searchWas:Z

    return p0
.end method

.method static synthetic access$7602(Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;Z)Z
    .locals 0

    .line 8391
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->searchWas:Z

    return p1
.end method

.method static synthetic access$7700(Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 8391
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->result:Ljava/util/ArrayList;

    return-object p0
.end method

.method private checkAddPackToResults(Lorg/telegram/tgnet/TLRPC$StickerSet;Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/LinkedHashSet;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$StickerSet;",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$Document;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 8710
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->addedSets:Ljava/util/ArrayList;

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/LocaleController;->getTranslitString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 8711
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/telegram/tgnet/TLRPC$Document;

    if-nez p3, :cond_0

    goto :goto_0

    .line 8715
    :cond_0
    iget-wide v0, p3, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8717
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->addedSets:Ljava/util/ArrayList;

    iget-wide p3, p1, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method private synthetic lambda$search$0(Ljava/lang/String;Ljava/util/LinkedHashSet;)V
    .locals 11

    .line 8622
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getCurrentKeyboardLanguage()[Ljava/lang/String;

    move-result-object v0

    .line 8623
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$9700(Lorg/telegram/ui/Components/EmojiView;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 8624
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget v1, v1, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/MediaDataController;->fetchNewEmojiKeywords([Ljava/lang/String;)V

    .line 8626
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1, v0}, Lorg/telegram/ui/Components/EmojiView;->access$9702(Lorg/telegram/ui/Components/EmojiView;[Ljava/lang/String;)[Ljava/lang/String;

    .line 8627
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget v0, v0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$9700(Lorg/telegram/ui/Components/EmojiView;)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->lastSearchEmojiString:Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$3;

    invoke-direct {v5, p0, p1, p2}, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$3;-><init>(Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;Ljava/lang/String;Ljava/util/LinkedHashSet;)V

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/16 p1, 0x19

    .line 8654
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 8627
    invoke-virtual/range {v1 .. v10}, Lorg/telegram/messenger/MediaDataController;->getEmojiSuggestions([Ljava/lang/String;Ljava/lang/String;ZLorg/telegram/messenger/MediaDataController$KeywordResultCallback;Ljava/util/concurrent/CountDownLatch;ZZZLjava/lang/Integer;)V

    return-void
.end method

.method private static synthetic lambda$search$1(Ljava/util/LinkedHashSet;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLRPC$TL_emojiList;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 8659
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_emojiList;->document_id:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 8661
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$search$2()V
    .locals 6

    .line 8619
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 8620
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->lastSearchEmojiString:Ljava/lang/String;

    .line 8621
    new-instance v2, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v1, v0}, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;Ljava/lang/String;Ljava/util/LinkedHashSet;)V

    .line 8656
    invoke-static {v1}, Lorg/telegram/messenger/Emoji;->fullyConsistsOfEmojis(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8657
    sget-object v3, Lorg/telegram/ui/Components/StickerCategoriesListView;->search:Lorg/telegram/messenger/Fetcher;

    sget v4, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    new-instance v5, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v5, v0, v2}, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$$ExternalSyntheticLambda2;-><init>(Ljava/util/LinkedHashSet;Ljava/lang/Runnable;)V

    invoke-virtual {v3, v4, v1, v5}, Lorg/telegram/messenger/Fetcher;->fetch(ILjava/lang/Object;Lorg/telegram/messenger/Utilities$Callback;)V

    goto :goto_0

    .line 8664
    :cond_0
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method private searchByPackname(Ljava/lang/String;Ljava/util/LinkedHashSet;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_8

    .line 8673
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget v0, v0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 8676
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/LocaleController;->getTranslitString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 8678
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget v0, v0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaDataController;->getStickerSets(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 8679
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget v1, v1, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MediaDataController;->getFeaturedEmojiSets()Ljava/util/ArrayList;

    move-result-object v1

    .line 8680
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->addedSets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 8682
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 8683
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-eqz v4, :cond_2

    .line 8684
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-nez v5, :cond_1

    goto :goto_1

    .line 8687
    :cond_1
    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-direct {p0, v5, v4, p1, p2}, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->checkAddPackToResults(Lorg/telegram/tgnet/TLRPC$StickerSet;Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/LinkedHashSet;)V

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8689
    :cond_3
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_8

    .line 8690
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    if-eqz v0, :cond_7

    .line 8691
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-nez v3, :cond_4

    goto :goto_3

    .line 8694
    :cond_4
    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_stickerSetFullCovered;

    if-eqz v4, :cond_5

    .line 8695
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_stickerSetFullCovered;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_stickerSetFullCovered;->documents:Ljava/util/ArrayList;

    invoke-direct {p0, v3, v0, p1, p2}, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->checkAddPackToResults(Lorg/telegram/tgnet/TLRPC$StickerSet;Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/LinkedHashSet;)V

    goto :goto_3

    .line 8696
    :cond_5
    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_stickerSetNoCovered;

    if-eqz v4, :cond_6

    .line 8697
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;-><init>()V

    .line 8698
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    iput-wide v4, v3, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->id:J

    .line 8699
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget v0, v0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lorg/telegram/messenger/MediaDataController;->getStickerSet(Lorg/telegram/tgnet/TLRPC$InputStickerSet;Z)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 8701
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-direct {p0, v3, v0, p1, p2}, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->checkAddPackToResults(Lorg/telegram/tgnet/TLRPC$StickerSet;Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/LinkedHashSet;)V

    goto :goto_3

    .line 8704
    :cond_6
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->covers:Ljava/util/ArrayList;

    invoke-direct {p0, v3, v0, p1, p2}, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->checkAddPackToResults(Lorg/telegram/tgnet/TLRPC$StickerSet;Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/LinkedHashSet;)V

    :cond_7
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_8
    :goto_4
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 8401
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->result:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->searchWas:Z

    if-nez v0, :cond_0

    .line 8402
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView;->getRecentEmoji()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1

    return v0

    .line 8404
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->result:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 8405
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->result:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-ne p1, v0, :cond_1

    .line 8592
    iget-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->searchWas:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->result:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    .line 8412
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 8

    .line 8540
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 8542
    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    .line 8543
    iput p2, p1, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->position:I

    const/4 v0, 0x0

    .line 8544
    invoke-static {p1, v0}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->access$19602(Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;Lorg/telegram/ui/Components/EmojiView$EmojiPack;)Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    add-int/lit8 p2, p2, -0x1

    .line 8552
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->result:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->searchWas:Z

    if-nez v1, :cond_1

    .line 8553
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EmojiView;->getRecentEmoji()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const/4 v1, 0x1

    goto :goto_0

    .line 8556
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->result:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/messenger/MediaDataController$KeywordResult;

    iget-object p2, p2, Lorg/telegram/messenger/MediaDataController$KeywordResult;->emoji:Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    if-eqz p2, :cond_2

    const-string v3, "animated_"

    .line 8560
    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x9

    .line 8562
    :try_start_0
    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v0

    move-object v4, v3

    goto :goto_1

    :catch_0
    :cond_2
    move-object v3, p2

    move-object v4, v3

    move-object p2, v0

    :goto_1
    if-eqz p2, :cond_3

    const/4 v2, 0x3

    .line 8569
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {p1, v5, v6, v7, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    goto :goto_2

    .line 8571
    :cond_3
    invoke-virtual {p1, v2, v2, v2, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    :goto_2
    if-eqz p2, :cond_5

    .line 8574
    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->setImageDrawable(Landroid/graphics/drawable/Drawable;Z)V

    .line 8575
    invoke-virtual {p1}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->getSpan()Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->getSpan()Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v1

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v3, v1, v5

    if-eqz v3, :cond_6

    .line 8576
    :cond_4
    new-instance v1, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, v0}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;-><init>(JLandroid/graphics/Paint$FontMetricsInt;)V

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->setSpan(Lorg/telegram/ui/Components/AnimatedEmojiSpan;)V

    goto :goto_3

    .line 8579
    :cond_5
    invoke-static {v3}, Lorg/telegram/messenger/Emoji;->getEmojiBigDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->setImageDrawable(Landroid/graphics/drawable/Drawable;Z)V

    .line 8580
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->setSpan(Lorg/telegram/ui/Components/AnimatedEmojiSpan;)V

    .line 8582
    :cond_6
    :goto_3
    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    :goto_4
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 10

    if-eqz p2, :cond_1

    const/4 p1, -0x1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    .line 8428
    new-instance p2, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$1;

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p2, p0, v1}, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$1;-><init>(Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;Landroid/content/Context;)V

    .line 8442
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 8443
    sget v2, Lorg/telegram/messenger/R$string;->NoEmojiFound:I

    const-string v3, "NoEmojiFound"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v2, 0x41800000    # 16.0f

    .line 8444
    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 8445
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    const-string v2, "chat_emojiPanelEmptyText"

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/EmojiView;->access$2300(Lorg/telegram/ui/Components/EmojiView;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v3, -0x2

    const/4 v4, -0x2

    const/16 v5, 0x31

    const/4 v6, 0x0

    const/16 v7, 0xa

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 8446
    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 8448
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 8449
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 8450
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_emoji_question:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 8451
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v3, v2}, Lorg/telegram/ui/Components/EmojiView;->access$2300(Lorg/telegram/ui/Components/EmojiView;Ljava/lang/String;)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const/16 v1, 0x55

    const/16 v2, 0x30

    .line 8452
    invoke-static {v2, v2, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 8453
    new-instance v1, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$2;-><init>(Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8532
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 8423
    :cond_0
    new-instance p2, Landroid/view/View;

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 8424
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$2500(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v1

    invoke-direct {v0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 8420
    :cond_1
    new-instance p2, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;-><init>(Landroid/content/Context;)V

    .line 8535
    :goto_0
    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public search(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 8599
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->search(Ljava/lang/String;Z)V

    return-void
.end method

.method public search(Ljava/lang/String;Z)V
    .locals 2

    .line 8603
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    .line 8604
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->lastSearchEmojiString:Ljava/lang/String;

    .line 8605
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$1100(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$1400(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 8606
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$1100(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$1400(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const/4 p1, 0x0

    .line 8607
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->searchWas:Z

    .line 8609
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 8611
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->lastSearchEmojiString:Ljava/lang/String;

    .line 8613
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->searchRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_2

    .line 8614
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 8616
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->lastSearchEmojiString:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 8617
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$9000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$SearchField;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/EmojiView$SearchField;->showProgress(Z)V

    .line 8618
    new-instance p1, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->searchRunnable:Ljava/lang/Runnable;

    if-eqz p2, :cond_3

    const-wide/16 v0, 0x12c

    goto :goto_1

    :cond_3
    const-wide/16 v0, 0x0

    :goto_1
    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_4
    return-void
.end method
