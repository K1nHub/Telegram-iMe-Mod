.class public Lorg/telegram/messenger/CacheByChatsController;
.super Ljava/lang/Object;
.source "CacheByChatsController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/CacheByChatsController$KeepMediaFile;,
        Lorg/telegram/messenger/CacheByChatsController$KeepMediaException;
    }
.end annotation


# static fields
.field public static KEEP_MEDIA_DELETE:I = 0x4

.field public static KEEP_MEDIA_FOREVER:I = 0x2

.field public static KEEP_MEDIA_ONE_DAY:I = 0x3

.field public static KEEP_MEDIA_ONE_MINUTE:I = 0x5

.field public static KEEP_MEDIA_ONE_MONTH:I = 0x1

.field public static KEEP_MEDIA_ONE_WEEK:I = 0x0

.field public static final KEEP_MEDIA_TYPE_CHANNEL:I = 0x2

.field public static final KEEP_MEDIA_TYPE_GROUP:I = 0x1

.field public static final KEEP_MEDIA_TYPE_USER:I


# instance fields
.field private final currentAccount:I

.field keepMediaByTypes:[I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(I)V
    .locals 5

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 29
    fill-array-data v1, :array_0

    iput-object v1, p0, Lorg/telegram/messenger/CacheByChatsController;->keepMediaByTypes:[I

    .line 32
    iput p1, p0, Lorg/telegram/messenger/CacheByChatsController;->currentAccount:I

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v0, :cond_0

    .line 34
    iget-object v1, p0, Lorg/telegram/messenger/CacheByChatsController;->keepMediaByTypes:[I

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "keep_media_type_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lorg/telegram/messenger/CacheByChatsController;->getDefault(I)I

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    aput v2, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public static getDaysInSeconds(I)J
    .locals 2

    .line 64
    sget v0, Lorg/telegram/messenger/CacheByChatsController;->KEEP_MEDIA_FOREVER:I

    if-ne p0, v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0

    .line 66
    :cond_0
    sget v0, Lorg/telegram/messenger/CacheByChatsController;->KEEP_MEDIA_ONE_WEEK:I

    if-ne p0, v0, :cond_1

    const-wide/32 v0, 0x93a80

    goto :goto_0

    .line 68
    :cond_1
    sget v0, Lorg/telegram/messenger/CacheByChatsController;->KEEP_MEDIA_ONE_MONTH:I

    if-ne p0, v0, :cond_2

    const-wide/32 v0, 0x278d00

    goto :goto_0

    .line 70
    :cond_2
    sget v0, Lorg/telegram/messenger/CacheByChatsController;->KEEP_MEDIA_ONE_DAY:I

    if-ne p0, v0, :cond_3

    const-wide/32 v0, 0x15180

    goto :goto_0

    :cond_3
    const-wide/16 v0, 0x3c

    :goto_0
    return-wide v0
.end method

.method public static getDefault(I)I
    .locals 1

    if-nez p0, :cond_0

    .line 40
    sget p0, Lorg/telegram/messenger/CacheByChatsController;->KEEP_MEDIA_FOREVER:I

    return p0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 42
    sget p0, Lorg/telegram/messenger/CacheByChatsController;->KEEP_MEDIA_ONE_MONTH:I

    return p0

    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 44
    sget p0, Lorg/telegram/messenger/CacheByChatsController;->KEEP_MEDIA_ONE_MONTH:I

    return p0

    .line 46
    :cond_2
    sget p0, Lorg/telegram/messenger/SharedConfig;->keepMedia:I

    return p0
.end method

.method public static getKeepMediaString(I)Ljava/lang/String;
    .locals 3

    .line 50
    sget v0, Lorg/telegram/messenger/CacheByChatsController;->KEEP_MEDIA_ONE_MINUTE:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p0, v0, :cond_0

    new-array p0, v1, [Ljava/lang/Object;

    const-string v0, "Minutes"

    .line 51
    invoke-static {v0, v2, p0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 52
    :cond_0
    sget v0, Lorg/telegram/messenger/CacheByChatsController;->KEEP_MEDIA_ONE_DAY:I

    if-ne p0, v0, :cond_1

    new-array p0, v1, [Ljava/lang/Object;

    const-string v0, "Days"

    .line 53
    invoke-static {v0, v2, p0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 54
    :cond_1
    sget v0, Lorg/telegram/messenger/CacheByChatsController;->KEEP_MEDIA_ONE_WEEK:I

    if-ne p0, v0, :cond_2

    new-array p0, v1, [Ljava/lang/Object;

    const-string v0, "Weeks"

    .line 55
    invoke-static {v0, v2, p0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 56
    :cond_2
    sget v0, Lorg/telegram/messenger/CacheByChatsController;->KEEP_MEDIA_ONE_MONTH:I

    if-ne p0, v0, :cond_3

    new-array p0, v1, [Ljava/lang/Object;

    const-string v0, "Months"

    .line 57
    invoke-static {v0, v2, p0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 59
    :cond_3
    sget p0, Lorg/telegram/messenger/R$string;->AutoDeleteMediaNever:I

    const-string v0, "AutoDeleteMediaNever"

    invoke-static {v0, p0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getKeepMedia(I)I
    .locals 3

    .line 117
    iget-object v0, p0, Lorg/telegram/messenger/CacheByChatsController;->keepMediaByTypes:[I

    aget v1, v0, p1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 118
    sget p1, Lorg/telegram/messenger/SharedConfig;->keepMedia:I

    return p1

    .line 120
    :cond_0
    aget p1, v0, p1

    return p1
.end method

.method public getKeepMediaExceptions(I)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/CacheByChatsController$KeepMediaException;",
            ">;"
        }
    .end annotation

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 80
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 81
    iget v2, p0, Lorg/telegram/messenger/CacheByChatsController;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "keep_media_exceptions_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, ""

    invoke-interface {v2, p1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 82
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    .line 85
    :cond_0
    invoke-static {p1}, Lorg/telegram/messenger/Utilities;->hexToBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 86
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 88
    new-instance v4, Lorg/telegram/messenger/CacheByChatsController$KeepMediaException;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v5

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    invoke-direct {v4, v5, v6, v7}, Lorg/telegram/messenger/CacheByChatsController$KeepMediaException;-><init>(JI)V

    .line 89
    iget-wide v5, v4, Lorg/telegram/messenger/CacheByChatsController$KeepMediaException;->dialogId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 90
    iget-wide v5, v4, Lorg/telegram/messenger/CacheByChatsController$KeepMediaException;->dialogId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 91
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 94
    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    return-object v0
.end method

.method public getKeepMediaExceptionsByDialogs()Landroid/util/LongSparseArray;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/LongSparseArray<",
            "Lorg/telegram/messenger/CacheByChatsController$KeepMediaException;",
            ">;"
        }
    .end annotation

    .line 164
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_1

    .line 166
    invoke-virtual {p0, v2}, Lorg/telegram/messenger/CacheByChatsController;->getKeepMediaExceptions(I)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v4, 0x0

    .line 168
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 169
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/CacheByChatsController$KeepMediaException;

    iget-wide v5, v5, Lorg/telegram/messenger/CacheByChatsController$KeepMediaException;->dialogId:J

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/messenger/CacheByChatsController$KeepMediaException;

    invoke-virtual {v0, v5, v6, v7}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public lookupFiles(Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "+",
            "Lorg/telegram/messenger/CacheByChatsController$KeepMediaFile;",
            ">;)V"
        }
    .end annotation

    .line 129
    iget v0, p0, Lorg/telegram/messenger/CacheByChatsController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/FileLoader;->getFileDatabase()Lorg/telegram/messenger/FilePathDatabase;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/FilePathDatabase;->lookupFiles(Ljava/util/ArrayList;)Landroid/util/LongSparseArray;

    move-result-object p1

    .line 130
    invoke-virtual {p0}, Lorg/telegram/messenger/CacheByChatsController;->getKeepMediaExceptionsByDialogs()Landroid/util/LongSparseArray;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 131
    :goto_0
    invoke-virtual {p1}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_7

    .line 132
    invoke-virtual {p1, v2}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v3

    .line 133
    invoke-virtual {p1, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    const-wide/16 v6, 0x0

    cmp-long v8, v3, v6

    if-ltz v8, :cond_0

    const/4 v6, 0x0

    goto :goto_1

    .line 138
    :cond_0
    iget v6, p0, Lorg/telegram/messenger/CacheByChatsController;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    neg-long v7, v3

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v6, v9}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v6

    if-nez v6, :cond_1

    .line 140
    iget v6, p0, Lorg/telegram/messenger/CacheByChatsController;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v6

    invoke-virtual {v6, v7, v8}, Lorg/telegram/messenger/MessagesStorage;->getChatSync(J)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v6

    :cond_1
    if-nez v6, :cond_2

    const/4 v6, -0x1

    goto :goto_1

    .line 144
    :cond_2
    invoke-static {v6}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, 0x2

    goto :goto_1

    :cond_3
    const/4 v6, 0x1

    .line 150
    :goto_1
    invoke-virtual {v0, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/CacheByChatsController$KeepMediaException;

    const/4 v4, 0x0

    .line 151
    :goto_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_6

    .line 152
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/messenger/CacheByChatsController$KeepMediaFile;

    if-ltz v6, :cond_4

    .line 154
    iput v6, v7, Lorg/telegram/messenger/CacheByChatsController$KeepMediaFile;->dialogType:I

    :cond_4
    if-eqz v3, :cond_5

    .line 157
    iget v8, v3, Lorg/telegram/messenger/CacheByChatsController$KeepMediaException;->keepMedia:I

    iput v8, v7, Lorg/telegram/messenger/CacheByChatsController$KeepMediaFile;->keepMedia:I

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method public saveKeepMediaExceptions(ILjava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/CacheByChatsController$KeepMediaException;",
            ">;)V"
        }
    .end annotation

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "keep_media_exceptions_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 101
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget p2, p0, Lorg/telegram/messenger/CacheByChatsController;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/UserConfig;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    .line 104
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    mul-int/lit8 v1, v0, 0xc

    add-int/lit8 v1, v1, 0x4

    .line 105
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 106
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 108
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/CacheByChatsController$KeepMediaException;

    iget-wide v3, v3, Lorg/telegram/messenger/CacheByChatsController$KeepMediaException;->dialogId:J

    invoke-virtual {v1, v3, v4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 109
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/CacheByChatsController$KeepMediaException;

    iget v3, v3, Lorg/telegram/messenger/CacheByChatsController$KeepMediaException;->keepMedia:I

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 111
    :cond_1
    iget p2, p0, Lorg/telegram/messenger/CacheByChatsController;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/UserConfig;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 112
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :goto_1
    return-void
.end method

.method public setKeepMedia(II)V
    .locals 3

    .line 124
    iget-object v0, p0, Lorg/telegram/messenger/CacheByChatsController;->keepMediaByTypes:[I

    aput p2, v0, p1

    .line 125
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keep_media_type_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
