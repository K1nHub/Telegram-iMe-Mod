.class public Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;
.super Ljava/lang/Object;
.source "AnimatedEmojiDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/AnimatedEmojiDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmojiDocumentFetcher"
.end annotation


# instance fields
.field private final currentAccount:I

.field private emojiDocumentsCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lorg/telegram/tgnet/TLRPC$Document;",
            ">;"
        }
    .end annotation
.end field

.field private fetchRunnable:Ljava/lang/Runnable;

.field private loadingDocuments:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Components/AnimatedEmojiDrawable$ReceivedDocument;",
            ">;>;"
        }
    .end annotation
.end field

.field private toFetchDocuments:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$06iRd7bQd3_Ohy0--PgTKEs7YcA(Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;Ljava/util/ArrayList;Ljava/util/HashSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;->lambda$loadFromDatabase$1(Ljava/util/ArrayList;Ljava/util/HashSet;)V

    return-void
.end method

.method public static synthetic $r8$lambda$A2eqp1hK_MwBDYucP6z_a53DZDc(Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;->lambda$loadFromServer$3(Ljava/util/ArrayList;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HEcIpDIn3lL_UJic2pogiTjxwrc(Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;->lambda$putToStorage$5(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PTRckL6O-qa81tfP_EnhRabaCWU(Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;->lambda$loadFromDatabase$2(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZwcDPg0R4SsyVeDqgvww7EfAhfM(Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;->lambda$loadFromServer$4(Ljava/util/ArrayList;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fFEz_0C4ZwD5g7VyDsxglNH4IYE(Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;->lambda$fetchDocument$0()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iput p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;->currentAccount:I

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;)Ljava/util/HashMap;
    .locals 0

    .line 159
    iget-object p0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;->emojiDocumentsCache:Ljava/util/HashMap;

    return-object p0
.end method

.method private checkThread()Z
    .locals 2

    .line 213
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 214
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v0, :cond_0

    .line 215
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Wrong thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const-string v1, "EmojiDocumentFetcher"

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private synthetic lambda$fetchDocument$0()V
    .locals 2

    .line 205
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;->toFetchDocuments:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 206
    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;->toFetchDocuments:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 207
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;->loadFromDatabase(Ljava/util/ArrayList;)V

    const/4 v0, 0x0

    .line 208
    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;->fetchRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private synthetic lambda$loadFromDatabase$1(Ljava/util/ArrayList;Ljava/util/HashSet;)V
    .locals 0

    .line 251
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;->processDocuments(Ljava/util/ArrayList;)V

    .line 252
    invoke-virtual {p2}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 253
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;->loadFromServer(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$loadFromDatabase$2(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;)V
    .locals 11

    .line 225
    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v1, ","

    .line 230
    invoke-static {v1, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    .line 231
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "SELECT data FROM animated_emoji WHERE document_id IN (%s)"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-static {v2, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v0

    .line 232
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 233
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 234
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 235
    invoke-virtual {v0, v6}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object p2
    :try_end_0
    .catch Lorg/telegram/SQLite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 237
    :try_start_1
    invoke-virtual {p2, v4}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v3

    invoke-static {p2, v3, v4}, Lorg/telegram/tgnet/TLRPC$Document;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 238
    iget-wide v7, v3, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    const-wide/16 v9, 0x0

    cmp-long v5, v7, v9

    if-eqz v5, :cond_2

    .line 239
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    iget-wide v7, v3, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 243
    :try_start_2
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    if-eqz p2, :cond_1

    .line 246
    invoke-virtual {p2}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    goto :goto_0

    .line 250
    :cond_3
    new-instance p2, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0, v1, v2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;Ljava/util/ArrayList;Ljava/util/HashSet;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 256
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V
    :try_end_2
    .catch Lorg/telegram/SQLite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p2

    .line 258
    invoke-virtual {p1, p2}, Lorg/telegram/messenger/MessagesStorage;->checkSQLException(Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method private synthetic lambda$loadFromServer$3(Ljava/util/ArrayList;Lorg/telegram/tgnet/TLObject;)V
    .locals 3

    .line 267
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 268
    instance-of p1, p2, Lorg/telegram/tgnet/TLRPC$Vector;

    if-eqz p1, :cond_2

    .line 269
    check-cast p2, Lorg/telegram/tgnet/TLRPC$Vector;

    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$Vector;->objects:Ljava/util/ArrayList;

    .line 270
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;->putToStorage(Ljava/util/ArrayList;)V

    .line 271
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;->processDocuments(Ljava/util/ArrayList;)V

    const/4 p2, 0x0

    .line 272
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p2, v1, :cond_1

    .line 273
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v1, :cond_0

    .line 274
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Document;

    .line 275
    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 279
    :cond_1
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 280
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;->loadFromServer(Ljava/util/ArrayList;)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$loadFromServer$4(Ljava/util/ArrayList;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 266
    new-instance p3, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher$$ExternalSyntheticLambda3;

    invoke-direct {p3, p0, p1, p2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$putToStorage$5(Ljava/util/ArrayList;)V
    .locals 6

    .line 288
    iget v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v0

    :try_start_0
    const-string v1, "REPLACE INTO animated_emoji VALUES(?, ?)"

    .line 290
    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    const/4 v1, 0x0

    .line 291
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 292
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v2, :cond_0

    .line 293
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Document;
    :try_end_0
    .catch Lorg/telegram/SQLite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v3, 0x0

    .line 296
    :try_start_1
    new-instance v4, Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {v2}, Lorg/telegram/tgnet/TLObject;->getObjectSize()I

    move-result v5

    invoke-direct {v4, v5}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 297
    :try_start_2
    invoke-virtual {v2, v4}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 298
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 299
    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    const/4 v5, 0x1

    invoke-virtual {v0, v5, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    const/4 v2, 0x2

    .line 300
    invoke-virtual {v0, v2, v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    .line 301
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    move-object v3, v4

    goto :goto_1

    :catch_1
    move-exception v2

    .line 303
    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move-object v4, v3

    :goto_2
    if-eqz v4, :cond_0

    .line 306
    invoke-virtual {v4}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 310
    :cond_1
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_3
    .catch Lorg/telegram/SQLite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception p1

    .line 312
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method

.method private loadFromDatabase(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 223
    iget v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    .line 224
    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, v0, p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private loadFromServer(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 264
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getCustomEmojiDocuments;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_getCustomEmojiDocuments;-><init>()V

    .line 265
    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getCustomEmojiDocuments;->document_id:Ljava/util/ArrayList;

    .line 266
    iget v1, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private putToStorage(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 287
    iget v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public fetchDocument(JLorg/telegram/ui/Components/AnimatedEmojiDrawable$ReceivedDocument;)V
    .locals 2

    .line 171
    monitor-enter p0

    .line 172
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;->emojiDocumentsCache:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 173
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    .line 176
    invoke-interface {p3, v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$ReceivedDocument;->run(Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 178
    :cond_0
    monitor-exit p0

    return-void

    .line 181
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    invoke-direct {p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;->checkThread()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 185
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;->loadingDocuments:Ljava/util/HashMap;

    if-nez v0, :cond_3

    .line 186
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;->loadingDocuments:Ljava/util/HashMap;

    .line 188
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;->loadingDocuments:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 190
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 193
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 194
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    iget-object p3, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;->loadingDocuments:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    iget-object p3, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;->toFetchDocuments:Ljava/util/HashSet;

    if-nez p3, :cond_5

    .line 198
    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    iput-object p3, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;->toFetchDocuments:Ljava/util/HashSet;

    .line 200
    :cond_5
    iget-object p3, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;->toFetchDocuments:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 201
    iget-object p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;->fetchRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_6

    return-void

    .line 204
    :cond_6
    new-instance p1, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;->fetchRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 181
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public processDocuments(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "*>;)V"
        }
    .end annotation

    .line 318
    invoke-direct {p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;->checkThread()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 321
    :cond_0
    invoke-static {}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->access$000()V

    const/4 v0, 0x0

    move v1, v0

    .line 322
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 323
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v2, :cond_3

    .line 324
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Document;

    .line 325
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;->putDocument(Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 326
    iget-object v3, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;->loadingDocuments:Ljava/util/HashMap;

    if-eqz v3, :cond_3

    .line 327
    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-eqz v3, :cond_3

    move v4, v0

    .line 329
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 330
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$ReceivedDocument;

    if-eqz v5, :cond_1

    .line 332
    invoke-interface {v5, v2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$ReceivedDocument;->run(Lorg/telegram/tgnet/TLRPC$Document;)V

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 335
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public putDocument(Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 346
    :cond_0
    monitor-enter p0

    .line 347
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;->emojiDocumentsCache:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 348
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;->emojiDocumentsCache:Ljava/util/HashMap;

    .line 350
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;->emojiDocumentsCache:Ljava/util/HashMap;

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
