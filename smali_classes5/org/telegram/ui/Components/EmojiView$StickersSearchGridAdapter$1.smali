.class Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;
.super Ljava/lang/Object;
.source "EmojiView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final emojiArrays:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$Document;",
            ">;>;"
        }
    .end annotation
.end field

.field final emojiStickers:Ljava/util/HashMap;
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

.field final emojiStickersArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$Document;",
            ">;"
        }
    .end annotation
.end field

.field final emojiStickersMap:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lorg/telegram/tgnet/TLRPC$Document;",
            ">;"
        }
    .end annotation
.end field

.field lastId:I

.field final localPacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;",
            ">;"
        }
    .end annotation
.end field

.field final localPacksByName:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final localPacksByShortName:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field query:Ljava/lang/String;

.field final serverPacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$StickerSetCovered;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;


# direct methods
.method public static synthetic $r8$lambda$-pY-rsWwz1YetE08MDSiGEq8nSI(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->searchStickerSets(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9UOcE_6ldEKR6ayVAHfc3is6W5o(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->searchFinish()V

    return-void
.end method

.method public static synthetic $r8$lambda$Ro8TA8j9g_HHxr2afawAg7hN3dA(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;Ljava/util/HashMap;Ljava/lang/Runnable;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->lambda$addFromSuggestions$0(Ljava/util/HashMap;Ljava/lang/Runnable;Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZPKVmwOWrMNS2lNWyeTYRlK2ub0(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;Lorg/telegram/tgnet/TLRPC$TL_messages_getStickers;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->lambda$searchStickers$4(Lorg/telegram/tgnet/TLRPC$TL_messages_getStickers;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$daKg7nSyj2UmgMbYndqntD-aTCQ(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->addFromAllStickers(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kTEQRUQM24fO7YOlDrEJAAZGpDs(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->addFromSuggestions(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kWw8hrbcYW1LdnjMLMiS1CXeYsE(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;Lorg/telegram/tgnet/TLRPC$TL_messages_getStickers;Lorg/telegram/tgnet/TLObject;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->lambda$searchStickers$3(Lorg/telegram/tgnet/TLRPC$TL_messages_getStickers;Lorg/telegram/tgnet/TLObject;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kjUaWSciFo5Sd3IiCBYjsmg5Kns(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->addLocalPacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mBFJVQOPeL5KrJ32-4Yjqs4oMGU(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->searchStickers(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qQ1XSxwZVZEkwSyeMJNzn5OhQaU(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->lambda$searchStickerSets$2(Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rny81L4BR_vrZ27uM_-4qMxJdLM(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;Lorg/telegram/tgnet/TLObject;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->lambda$searchStickerSets$1(Lorg/telegram/tgnet/TLObject;Ljava/lang/Runnable;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;)V
    .locals 1

    .line 9608
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9612
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->serverPacks:Ljava/util/ArrayList;

    .line 9613
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->localPacks:Ljava/util/ArrayList;

    .line 9614
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->localPacksByShortName:Ljava/util/HashMap;

    .line 9615
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->localPacksByName:Ljava/util/HashMap;

    .line 9616
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->emojiStickers:Ljava/util/HashMap;

    .line 9617
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->emojiArrays:Ljava/util/ArrayList;

    .line 9619
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->emojiStickersArray:Ljava/util/ArrayList;

    .line 9620
    new-instance p1, Landroid/util/LongSparseArray;

    invoke-direct {p1, v0}, Landroid/util/LongSparseArray;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->emojiStickersMap:Landroid/util/LongSparseArray;

    return-void
.end method

.method private addFromAllStickers(Ljava/lang/Runnable;)V
    .locals 10

    .line 9642
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget v0, v0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaDataController;->getAllStickers()Ljava/util/HashMap;

    move-result-object v0

    .line 9644
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->query:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xe

    if-gt v1, v2, :cond_7

    .line 9645
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->query:Ljava/lang/String;

    .line 9646
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_4

    add-int/lit8 v5, v2, -0x1

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ge v4, v5, :cond_2

    .line 9648
    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const v8, 0xd83c

    if-ne v5, v8, :cond_0

    add-int/lit8 v5, v4, 0x1

    invoke-interface {v1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    const v9, 0xdffb

    if-lt v8, v9, :cond_0

    invoke-interface {v1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const v8, 0xdfff

    if-le v5, v8, :cond_1

    :cond_0
    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v8, 0x200d

    if-ne v5, v8, :cond_2

    add-int/lit8 v5, v4, 0x1

    invoke-interface {v1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    const/16 v9, 0x2640

    if-eq v8, v9, :cond_1

    invoke-interface {v1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v8, 0x2642

    if-ne v5, v8, :cond_2

    :cond_1
    new-array v5, v6, [Ljava/lang/CharSequence;

    .line 9649
    invoke-interface {v1, v3, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v5, v3

    add-int/lit8 v6, v4, 0x2

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    invoke-interface {v1, v6, v8}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v5, v7

    invoke-static {v5}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    add-int/lit8 v2, v2, -0x2

    goto :goto_1

    .line 9652
    :cond_2
    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const v8, 0xfe0f

    if-ne v5, v8, :cond_3

    new-array v5, v6, [Ljava/lang/CharSequence;

    .line 9653
    invoke-interface {v1, v3, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v5, v3

    add-int/lit8 v6, v4, 0x1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    invoke-interface {v1, v6, v8}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v5, v7

    invoke-static {v5}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    add-int/lit8 v2, v2, -0x1

    :goto_1
    add-int/lit8 v4, v4, -0x1

    :cond_3
    add-int/2addr v4, v7

    goto/16 :goto_0

    :cond_4
    if-eqz v0, :cond_5

    .line 9658
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_7

    .line 9659
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 9660
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->emojiStickersArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 9661
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_3
    if-ge v3, v1, :cond_6

    .line 9662
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Document;

    .line 9663
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->emojiStickersMap:Landroid/util/LongSparseArray;

    iget-wide v5, v2, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-virtual {v4, v5, v6, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 9665
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->emojiStickers:Ljava/util/HashMap;

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->emojiStickersArray:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->access$22300(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9666
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->emojiArrays:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->emojiStickersArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9669
    :cond_7
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private addFromSuggestions(Ljava/lang/Runnable;)V
    .locals 8

    .line 9673
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget v0, v0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaDataController;->getAllStickers()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 9675
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->query:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 9676
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getCurrentKeyboardLanguage()[Ljava/lang/String;

    move-result-object v1

    .line 9677
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    iget-object v2, v2, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView;->access$9700(Lorg/telegram/ui/Components/EmojiView;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9678
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    iget-object v2, v2, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget v2, v2, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/MediaDataController;->fetchNewEmojiKeywords([Ljava/lang/String;)V

    .line 9680
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    iget-object v2, v2, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v2, v1}, Lorg/telegram/ui/Components/EmojiView;->access$9702(Lorg/telegram/ui/Components/EmojiView;[Ljava/lang/String;)[Ljava/lang/String;

    .line 9681
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    iget-object v1, v1, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget v1, v1, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v2

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    iget-object v1, v1, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$9700(Lorg/telegram/ui/Components/EmojiView;)[Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->access$22300(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-instance v6, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1$$ExternalSyntheticLambda3;

    invoke-direct {v6, p0, v0, p1}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;Ljava/util/HashMap;Ljava/lang/Runnable;)V

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/messenger/MediaDataController;->getEmojiSuggestions([Ljava/lang/String;Ljava/lang/String;ZLorg/telegram/messenger/MediaDataController$KeywordResultCallback;Z)V

    goto :goto_0

    .line 9699
    :cond_1
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method private addLocalPacks(Ljava/lang/Runnable;)V
    .locals 9

    .line 9704
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget v0, v0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaDataController;->getStickerSets(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 9705
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    iget-object v2, v2, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget v2, v2, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/MessagesController;->filterPremiumStickers(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 9707
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x20

    if-ge v3, v2, :cond_4

    .line 9708
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .line 9709
    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    invoke-static {v7}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->access$22300(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/telegram/messenger/AndroidUtilities;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_1

    if-eqz v6, :cond_0

    .line 9710
    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    add-int/lit8 v8, v6, -0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v4, :cond_3

    .line 9711
    :cond_0
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->localPacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9712
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->localPacksByName:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 9714
    :cond_1
    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$StickerSet;->short_name:Ljava/lang/String;

    if-eqz v6, :cond_3

    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    invoke-static {v7}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->access$22300(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/telegram/messenger/AndroidUtilities;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_3

    if-eqz v6, :cond_2

    .line 9715
    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$StickerSet;->short_name:Ljava/lang/String;

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v4, :cond_3

    .line 9716
    :cond_2
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->localPacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9717
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->localPacksByShortName:Ljava/util/HashMap;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 9721
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget v0, v0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MediaDataController;->getStickerSets(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 9722
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    iget-object v2, v2, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget v2, v2, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/MessagesController;->filterPremiumStickers(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 9723
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_2
    if-ge v1, v2, :cond_9

    .line 9724
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .line 9725
    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    invoke-static {v6}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->access$22300(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/telegram/messenger/AndroidUtilities;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_6

    if-eqz v5, :cond_5

    .line 9726
    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    add-int/lit8 v7, v5, -0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v4, :cond_8

    .line 9727
    :cond_5
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->localPacks:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9728
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->localPacksByName:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 9730
    :cond_6
    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$StickerSet;->short_name:Ljava/lang/String;

    if-eqz v5, :cond_8

    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    invoke-static {v6}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->access$22300(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/telegram/messenger/AndroidUtilities;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_8

    if-eqz v5, :cond_7

    .line 9731
    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$StickerSet;->short_name:Ljava/lang/String;

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v4, :cond_8

    .line 9732
    :cond_7
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->localPacks:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9733
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->localPacksByShortName:Ljava/util/HashMap;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v5, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 9737
    :cond_9
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$addFromSuggestions$0(Ljava/util/HashMap;Ljava/lang/Runnable;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 4

    .line 9682
    iget-object p4, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    invoke-static {p4}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->access$21600(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;)I

    move-result p4

    iget v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->lastId:I

    if-eq p4, v0, :cond_0

    return-void

    :cond_0
    const/4 p4, 0x0

    .line 9686
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge p4, v0, :cond_2

    .line 9687
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MediaDataController$KeywordResult;

    iget-object v1, v1, Lorg/telegram/messenger/MediaDataController$KeywordResult;->emoji:Ljava/lang/String;

    .line 9688
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 9689
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 9690
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->emojiStickers:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 9691
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->emojiStickers:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9692
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->emojiArrays:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 9696
    :cond_2
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$searchStickerSets$1(Lorg/telegram/tgnet/TLObject;Ljava/lang/Runnable;)V
    .locals 2

    .line 9744
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->access$21600(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;)I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->lastId:I

    if-eq v0, v1, :cond_0

    return-void

    .line 9748
    :cond_0
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_foundStickerSets;

    if-eqz v0, :cond_1

    .line 9749
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->access$22402(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;I)I

    .line 9750
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_messages_foundStickerSets;

    .line 9751
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->serverPacks:Ljava/util/ArrayList;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_foundStickerSets;->sets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 9753
    :cond_1
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$searchStickerSets$2(Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 9743
    new-instance p3, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0, p2, p1}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;Lorg/telegram/tgnet/TLObject;Ljava/lang/Runnable;)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$searchStickers$3(Lorg/telegram/tgnet/TLRPC$TL_messages_getStickers;Lorg/telegram/tgnet/TLObject;Ljava/lang/Runnable;)V
    .locals 6

    .line 9763
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->access$21600(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;)I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->lastId:I

    if-eq v0, v1, :cond_0

    return-void

    .line 9767
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->access$22502(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;I)I

    .line 9768
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_getStickers;->emoticon:Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->query:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 9769
    instance-of p1, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickers;

    if-nez p1, :cond_1

    .line 9770
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    return-void

    .line 9773
    :cond_1
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickers;

    .line 9774
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->emojiStickersArray:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 9775
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickers;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 9776
    iget-object v2, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickers;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Document;

    .line 9777
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->emojiStickersMap:Landroid/util/LongSparseArray;

    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-virtual {v3, v4, v5}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    move-result v3

    if-ltz v3, :cond_2

    goto :goto_1

    .line 9780
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->emojiStickersArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9782
    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->emojiStickersArray:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-eq p1, p2, :cond_4

    .line 9784
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->emojiStickers:Ljava/util/HashMap;

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->emojiStickersArray:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->access$22300(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_4

    .line 9786
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->emojiArrays:Ljava/util/ArrayList;

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->emojiStickersArray:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9790
    :cond_4
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$searchStickers$4(Lorg/telegram/tgnet/TLRPC$TL_messages_getStickers;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 9762
    new-instance p4, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1$$ExternalSyntheticLambda2;

    invoke-direct {p4, p0, p1, p3, p2}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;Lorg/telegram/tgnet/TLRPC$TL_messages_getStickers;Lorg/telegram/tgnet/TLObject;Ljava/lang/Runnable;)V

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private searchFinish()V
    .locals 2

    .line 9623
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->access$21600(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;)I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->lastId:I

    if-eq v0, v1, :cond_0

    return-void

    .line 9627
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->localPacks:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->access$21702(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 9628
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->serverPacks:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->access$21802(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 9629
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->localPacksByShortName:Ljava/util/HashMap;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->access$21902(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 9630
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->localPacksByName:Ljava/util/HashMap;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->access$22002(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 9631
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->emojiStickers:Ljava/util/HashMap;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->access$22102(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 9632
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->emojiArrays:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->access$22202(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 9633
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$13400(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$SearchField;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmojiView$SearchField;->showProgress(Z)V

    .line 9635
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$10100(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    iget-object v1, v1, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$3600(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 9636
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$10100(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    iget-object v1, v1, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$3600(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 9638
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private searchStickerSets(Ljava/lang/Runnable;)V
    .locals 4

    .line 9741
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_searchStickerSets;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_searchStickerSets;-><init>()V

    .line 9742
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->query:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_searchStickerSets;->q:Ljava/lang/String;

    .line 9743
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    iget-object v2, v1, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget v2, v2, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1$$ExternalSyntheticLambda9;

    invoke-direct {v3, p0, p1}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v0, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result p1

    invoke-static {v1, p1}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->access$22402(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;I)I

    return-void
.end method

.method private searchStickers(Ljava/lang/Runnable;)V
    .locals 4

    .line 9758
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->access$22300(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/Emoji;->fullyConsistsOfEmojis(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9759
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getStickers;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_getStickers;-><init>()V

    .line 9760
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->query:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getStickers;->emoticon:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 9761
    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getStickers;->hash:J

    .line 9762
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    iget-object v2, v1, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget v2, v2, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1$$ExternalSyntheticLambda10;

    invoke-direct {v3, p0, v0, p1}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;Lorg/telegram/tgnet/TLRPC$TL_messages_getStickers;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v0, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result p1

    invoke-static {v1, p1}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->access$22502(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;I)I

    goto :goto_0

    .line 9793
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 9799
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->access$22300(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9800
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$10100(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    iget-object v1, v1, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$10300(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 9801
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$10100(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    iget-object v1, v1, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$10300(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 9803
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->notifyDataSetChanged()V

    return-void

    .line 9806
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->access$21604(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->lastId:I

    .line 9807
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->access$22300(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->query:Ljava/lang/String;

    .line 9809
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->serverPacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 9810
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->localPacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 9811
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->localPacksByShortName:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 9812
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->localPacksByName:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 9813
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->emojiStickers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 9814
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->emojiArrays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 9816
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->emojiStickersArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 9817
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->emojiStickersMap:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 9819
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;->this$1:Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$13400(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$SearchField;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmojiView$SearchField;->showProgress(Z)V

    .line 9821
    new-instance v0, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;)V

    const/4 v2, 0x5

    new-array v2, v2, [Lorg/telegram/messenger/Utilities$Callback;

    const/4 v3, 0x0

    new-instance v4, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1$$ExternalSyntheticLambda5;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;)V

    aput-object v4, v2, v3

    new-instance v3, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;)V

    aput-object v3, v2, v1

    const/4 v1, 0x2

    new-instance v3, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1$$ExternalSyntheticLambda7;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;)V

    aput-object v3, v2, v1

    const/4 v1, 0x3

    new-instance v3, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;)V

    aput-object v3, v2, v1

    const/4 v1, 0x4

    new-instance v3, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1$$ExternalSyntheticLambda8;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter$1;)V

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lorg/telegram/messenger/Utilities;->raceCallbacks(Ljava/lang/Runnable;[Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method
