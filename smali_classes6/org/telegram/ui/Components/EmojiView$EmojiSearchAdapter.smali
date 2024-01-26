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
.field private lastSearchAlias:Ljava/lang/String;

.field private lastSearchEmojiString:Ljava/lang/String;

.field private final packs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$Document;",
            ">;"
        }
    .end annotation
.end field

.field private final result:Ljava/util/ArrayList;
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
.method public static synthetic $r8$lambda$TcJJ_cwMyM0igp_riUa8qZuP0Ks(Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->lambda$search$4(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UhaOuOTAZ8ZVVxbB5kbQ-9gU4LA(Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->lambda$search$2(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$g9beRkJiBOnt4JW1PD9THEGKPYQ(Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->lambda$search$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$mr30mpMHWuKMYQgglFqLpN5LrmU(Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->lambda$search$1(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pmm_ywJP8PS5BvtPxhnU8bEaZoU(Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->lambda$search$3(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$q1wQ2iWUbrSgsU3EF3Q5Lkd1Mno(Ljava/util/LinkedHashSet;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLRPC$TL_emojiList;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->lambda$search$5(Ljava/util/LinkedHashSet;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLRPC$TL_emojiList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rYonByOKbUnDDQHq7rUFKxLhPqM(Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/Runnable;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->lambda$search$0(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/Runnable;Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lorg/telegram/ui/Components/EmojiView;)V
    .locals 0

    .line 8129
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 8131
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->result:Ljava/util/ArrayList;

    .line 8132
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->packs:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/Components/EmojiView;Lorg/telegram/ui/Components/EmojiView$1;)V
    .locals 0

    .line 8129
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    return-void
.end method

.method static synthetic access$19500(Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;)Ljava/lang/String;
    .locals 0

    .line 8129
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->lastSearchAlias:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;)Ljava/lang/String;
    .locals 0

    .line 8129
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->lastSearchEmojiString:Ljava/lang/String;

    return-object p0
.end method

.method private synthetic lambda$search$0(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/Runnable;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 1

    .line 8419
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->lastSearchEmojiString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 8422
    :cond_0
    iput-object p5, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->lastSearchAlias:Ljava/lang/String;

    .line 8423
    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 8425
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$search$1(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/Runnable;)V
    .locals 11

    .line 8418
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget v0, v0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$9100(Lorg/telegram/ui/Components/EmojiView;)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->lastSearchEmojiString:Ljava/lang/String;

    new-instance v5, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0, p1, p2, p3}, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->suggestAnimatedEmoji:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget p1, p1, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    .line 8426
    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    move v7, p1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/16 p1, 0x19

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 8418
    invoke-virtual/range {v1 .. v10}, Lorg/telegram/messenger/MediaDataController;->getEmojiSuggestions([Ljava/lang/String;Ljava/lang/String;ZLorg/telegram/messenger/MediaDataController$KeywordResultCallback;Ljava/util/concurrent/CountDownLatch;ZZZLjava/lang/Integer;)V

    return-void
.end method

.method private synthetic lambda$search$2(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/Runnable;)V
    .locals 10

    .line 8429
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->suggestAnimatedEmoji:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget v0, v0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 8430
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->translitSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 8431
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget v0, v0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaDataController;->getStickerSets(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 8433
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const-string v2, " "

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    move v4, v3

    .line 8435
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 8436
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-eqz v5, :cond_3

    .line 8437
    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-eqz v6, :cond_3

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    if-eqz v6, :cond_3

    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v6, v6, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    .line 8440
    :cond_1
    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->translitSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 8441
    invoke-virtual {v6, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 8442
    :cond_2
    new-instance v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SetTitleDocument;

    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    invoke-direct {v6, v7}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SetTitleDocument;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8443
    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 8444
    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 8449
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget v0, v0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaDataController;->getFeaturedEmojiSets()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 8451
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_b

    .line 8452
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    if-eqz v4, :cond_a

    .line 8453
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-eqz v5, :cond_a

    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    if-eqz v6, :cond_a

    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto/16 :goto_4

    .line 8454
    :cond_5
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->translitSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 8455
    invoke-virtual {v5, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a

    :cond_6
    const/4 v5, 0x0

    .line 8457
    instance-of v6, v4, Lorg/telegram/tgnet/TLRPC$TL_stickerSetFullCovered;

    if-eqz v6, :cond_7

    .line 8458
    move-object v5, v4

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_stickerSetFullCovered;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_stickerSetFullCovered;->documents:Ljava/util/ArrayList;

    goto :goto_3

    .line 8459
    :cond_7
    instance-of v6, v4, Lorg/telegram/tgnet/TLRPC$TL_stickerSetNoCovered;

    if-eqz v6, :cond_8

    .line 8460
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget v6, v6, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v6

    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    invoke-static {v7}, Lorg/telegram/messenger/MediaDataController;->getInputStickerSet(Lorg/telegram/tgnet/TLRPC$StickerSet;)Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    move-result-object v7

    iget-object v8, v4, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$StickerSet;->hash:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v6, v7, v8, v9}, Lorg/telegram/messenger/MediaDataController;->getStickerSet(Lorg/telegram/tgnet/TLRPC$InputStickerSet;Ljava/lang/Integer;Z)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v6

    if-eqz v6, :cond_9

    .line 8462
    iget-object v5, v6, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    goto :goto_3

    .line 8465
    :cond_8
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->covers:Ljava/util/ArrayList;

    :cond_9
    :goto_3
    if-eqz v5, :cond_a

    .line 8467
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_a

    .line 8468
    new-instance v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SetTitleDocument;

    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    invoke-direct {v6, v7}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SetTitleDocument;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8469
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 8470
    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_a
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 8476
    :cond_b
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$search$3(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Runnable;)V
    .locals 0

    .line 8479
    iget-object p4, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->lastSearchEmojiString:Ljava/lang/String;

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 8482
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$6100(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$SearchField;

    move-result-object p1

    const/4 p4, 0x0

    invoke-virtual {p1, p4}, Lorg/telegram/ui/Components/EmojiView$SearchField;->showProgress(Z)V

    const/4 p1, 0x1

    .line 8483
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->searchWas:Z

    .line 8484
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$1200(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    iget-object p4, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p4}, Lorg/telegram/ui/Components/EmojiView;->access$2100(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;

    move-result-object p4

    if-eq p1, p4, :cond_1

    .line 8485
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$1200(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    move-result-object p1

    iget-object p4, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p4}, Lorg/telegram/ui/Components/EmojiView;->access$2100(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;

    move-result-object p4

    invoke-virtual {p1, p4}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 8487
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->result:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 8488
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->result:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 8489
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->packs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 8490
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->packs:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 8491
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private synthetic lambda$search$4(Ljava/lang/String;)V
    .locals 5

    .line 8409
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getCurrentKeyboardLanguage()[Ljava/lang/String;

    move-result-object v0

    .line 8410
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$9100(Lorg/telegram/ui/Components/EmojiView;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 8411
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget v1, v1, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/MediaDataController;->fetchNewEmojiKeywords([Ljava/lang/String;)V

    .line 8413
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1, v0}, Lorg/telegram/ui/Components/EmojiView;->access$9102(Lorg/telegram/ui/Components/EmojiView;[Ljava/lang/String;)[Ljava/lang/String;

    .line 8414
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8415
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x3

    new-array v2, v2, [Lorg/telegram/messenger/Utilities$Callback;

    const/4 v3, 0x0

    .line 8416
    new-instance v4, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$$ExternalSyntheticLambda5;

    invoke-direct {v4, p0, p1, v0}, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;Ljava/lang/String;Ljava/util/ArrayList;)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$$ExternalSyntheticLambda4;

    invoke-direct {v4, p0, p1, v1}, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;Ljava/lang/String;Ljava/util/ArrayList;)V

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-instance v4, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$$ExternalSyntheticLambda6;

    invoke-direct {v4, p0, p1, v0, v1}, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    aput-object v4, v2, v3

    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->doCallbacks([Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method private static synthetic lambda$search$5(Ljava/util/LinkedHashSet;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLRPC$TL_emojiList;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 8499
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_emojiList;->document_id:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 8501
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$search$6()V
    .locals 6

    .line 8406
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 8407
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->lastSearchEmojiString:Ljava/lang/String;

    .line 8408
    new-instance v2, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v1}, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;Ljava/lang/String;)V

    .line 8496
    invoke-static {v1}, Lorg/telegram/messenger/Emoji;->fullyConsistsOfEmojis(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8497
    sget-object v3, Lorg/telegram/ui/Components/StickerCategoriesListView;->search:Lorg/telegram/messenger/CacheFetcher;

    sget v4, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    new-instance v5, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v5, v0, v2}, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$$ExternalSyntheticLambda3;-><init>(Ljava/util/LinkedHashSet;Ljava/lang/Runnable;)V

    invoke-virtual {v3, v4, v1, v5}, Lorg/telegram/messenger/CacheFetcher;->fetch(ILjava/lang/Object;Lorg/telegram/messenger/Utilities$Callback;)V

    goto :goto_0

    .line 8504
    :cond_0
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 2

    .line 8145
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->result:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->packs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->searchWas:Z

    if-nez v0, :cond_0

    .line 8146
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView;->getRecentEmoji()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1

    return v0

    .line 8148
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->result:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->packs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x2

    return v0

    .line 8149
    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->result:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->packs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-ne p1, v0, :cond_1

    .line 8373
    iget-boolean v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->searchWas:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->result:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->packs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x2

    return p1

    .line 8376
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->packs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 8377
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->result:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v1, v0

    sub-int/2addr p1, v1

    if-ltz p1, :cond_2

    .line 8378
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->packs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->packs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SetTitleDocument;

    if-eqz p1, :cond_2

    const/4 p1, 0x3

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    .line 8156
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
    .locals 9

    .line 8287
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    if-eq v0, v2, :cond_0

    goto/16 :goto_7

    :cond_0
    add-int/2addr p2, v1

    .line 8350
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->result:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr p2, v0

    if-ltz p2, :cond_11

    .line 8351
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->packs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_11

    .line 8352
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->packs:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$Document;

    .line 8353
    instance-of v0, p2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SetTitleDocument;

    if-eqz v0, :cond_11

    .line 8354
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/StickerSetNameCell;

    .line 8355
    check-cast p2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SetTitleDocument;

    iget-object p2, p2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SetTitleDocument;->title:Ljava/lang/String;

    .line 8356
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->lastSearchEmojiString:Ljava/lang/String;

    if-eqz v0, :cond_2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->lastSearchEmojiString:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    :cond_2
    :goto_0
    if-ltz v1, :cond_3

    .line 8358
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->lastSearchEmojiString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, p2, v3, v1, v0}, Lorg/telegram/ui/Cells/StickerSetNameCell;->setText(Ljava/lang/CharSequence;III)V

    goto/16 :goto_7

    .line 8360
    :cond_3
    invoke-virtual {p1, p2, v3}, Lorg/telegram/ui/Cells/StickerSetNameCell;->setText(Ljava/lang/CharSequence;I)V

    goto/16 :goto_7

    .line 8289
    :cond_4
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    .line 8290
    iput p2, p1, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->position:I

    const/4 v0, 0x0

    .line 8291
    invoke-static {p1, v0}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->access$19102(Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;Lorg/telegram/ui/Components/EmojiView$EmojiPack;)Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    add-int/2addr p2, v1

    .line 8300
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->result:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->searchWas:Z

    if-nez v1, :cond_5

    .line 8301
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EmojiView;->getRecentEmoji()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const/4 v1, 0x1

    move-object v5, v0

    move v4, v1

    move-object v1, p2

    goto :goto_2

    :cond_5
    if-ltz p2, :cond_6

    .line 8304
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->result:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p2, v1, :cond_6

    .line 8305
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->result:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/messenger/MediaDataController$KeywordResult;

    iget-object p2, p2, Lorg/telegram/messenger/MediaDataController$KeywordResult;->emoji:Ljava/lang/String;

    move-object v1, p2

    move-object v4, v0

    goto :goto_1

    .line 8307
    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->result:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr p2, v1

    if-ltz p2, :cond_7

    .line 8308
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->packs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p2, v1, :cond_7

    .line 8309
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->packs:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$Document;

    move-object v4, p2

    move-object p2, v0

    move-object v1, p2

    goto :goto_1

    :cond_7
    move-object p2, v0

    move-object v1, p2

    move-object v4, v1

    :goto_1
    move-object v5, v4

    move v4, v3

    :goto_2
    if-eqz p2, :cond_8

    const-string v6, "animated_"

    .line 8315
    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    const/16 v6, 0x9

    .line 8317
    :try_start_0
    invoke-virtual {p2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    move-object v6, v1

    goto :goto_3

    :catch_0
    :cond_8
    move-object v6, v1

    move-object v1, p2

    move-object p2, v0

    :goto_3
    if-nez v5, :cond_a

    if-eqz p2, :cond_9

    goto :goto_4

    .line 8326
    :cond_9
    invoke-virtual {p1, v3, v3, v3, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    goto :goto_5

    .line 8324
    :cond_a
    :goto_4
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {p1, v3, v7, v8, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    :goto_5
    if-eqz v5, :cond_c

    .line 8329
    invoke-virtual {p1, v0, v4}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->setImageDrawable(Landroid/graphics/drawable/Drawable;Z)V

    .line 8330
    invoke-virtual {p1}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->getSpan()Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    move-result-object p2

    if-eqz p2, :cond_b

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->getSpan()Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eq p2, v5, :cond_10

    .line 8331
    :cond_b
    new-instance p2, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-direct {p2, v5, v0}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;-><init>(Lorg/telegram/tgnet/TLRPC$Document;Landroid/graphics/Paint$FontMetricsInt;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->setSpan(Lorg/telegram/ui/Components/AnimatedEmojiSpan;)V

    goto :goto_6

    :cond_c
    if-eqz p2, :cond_e

    .line 8334
    invoke-virtual {p1, v0, v4}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->setImageDrawable(Landroid/graphics/drawable/Drawable;Z)V

    .line 8335
    invoke-virtual {p1}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->getSpan()Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->getSpan()Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_10

    .line 8336
    :cond_d
    new-instance v2, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {v2, v3, v4, v0}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;-><init>(JLandroid/graphics/Paint$FontMetricsInt;)V

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->setSpan(Lorg/telegram/ui/Components/AnimatedEmojiSpan;)V

    goto :goto_6

    :cond_e
    if-eqz v6, :cond_f

    .line 8339
    invoke-static {v6}, Lorg/telegram/messenger/Emoji;->getEmojiBigDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2, v4}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->setImageDrawable(Landroid/graphics/drawable/Drawable;Z)V

    .line 8340
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->setSpan(Lorg/telegram/ui/Components/AnimatedEmojiSpan;)V

    goto :goto_6

    .line 8342
    :cond_f
    invoke-virtual {p1, v0, v4}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->setImageDrawable(Landroid/graphics/drawable/Drawable;Z)V

    .line 8343
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->setSpan(Lorg/telegram/ui/Components/AnimatedEmojiSpan;)V

    .line 8345
    :cond_10
    :goto_6
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    :cond_11
    :goto_7
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 10

    if-eqz p2, :cond_2

    const/4 p1, -0x1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v1, 0x3

    if-eq p2, v1, :cond_0

    .line 8175
    new-instance p2, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$1;

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p2, p0, v1}, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$1;-><init>(Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;Landroid/content/Context;)V

    .line 8189
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 8190
    sget v2, Lorg/telegram/messenger/R$string;->NoEmojiFound:I

    const-string v3, "NoEmojiFound"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v2, 0x41800000    # 16.0f

    .line 8191
    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 8192
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelEmptyText:I

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/EmojiView;->access$2400(Lorg/telegram/ui/Components/EmojiView;I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v3, -0x2

    const/4 v4, -0x2

    const/16 v5, 0x31

    const/4 v6, 0x0

    const/16 v7, 0xa

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 8193
    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 8195
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 8196
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 8197
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_emoji_question:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 8198
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v3, v2}, Lorg/telegram/ui/Components/EmojiView;->access$2400(Lorg/telegram/ui/Components/EmojiView;I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const/16 v1, 0x55

    const/16 v2, 0x30

    .line 8199
    invoke-static {v2, v2, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 8200
    new-instance v1, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$2;-><init>(Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8279
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 8171
    :cond_0
    new-instance p2, Lorg/telegram/ui/Cells/StickerSetNameCell;

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$1300(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    invoke-direct {p2, p1, v0, v1}, Lorg/telegram/ui/Cells/StickerSetNameCell;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_0

    .line 8167
    :cond_1
    new-instance p2, Landroid/view/View;

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 8168
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$2500(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v1

    invoke-direct {v0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 8164
    :cond_2
    new-instance p2, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;-><init>(Landroid/content/Context;)V

    .line 8282
    :goto_0
    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public search(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 8386
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->search(Ljava/lang/String;Z)V

    return-void
.end method

.method public search(Ljava/lang/String;Z)V
    .locals 2

    .line 8390
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    .line 8391
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->lastSearchEmojiString:Ljava/lang/String;

    .line 8392
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$1200(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$1500(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 8393
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$1200(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$1500(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const/4 p1, 0x0

    .line 8394
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->searchWas:Z

    .line 8396
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 8398
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->lastSearchEmojiString:Ljava/lang/String;

    .line 8400
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->searchRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_2

    .line 8401
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 8403
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->lastSearchEmojiString:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 8404
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$6100(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$SearchField;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/EmojiView$SearchField;->showProgress(Z)V

    .line 8405
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
