.class public Lorg/telegram/messenger/MessagesController$PeerColors;
.super Ljava/lang/Object;
.source "MessagesController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/MessagesController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PeerColors"
.end annotation


# static fields
.field public static final TYPE_NAME:I = 0x0

.field public static final TYPE_PROFILE:I = 0x1


# instance fields
.field public final colors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessagesController$PeerColor;",
            ">;"
        }
    .end annotation
.end field

.field private final colorsById:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Lorg/telegram/messenger/MessagesController$PeerColor;",
            ">;"
        }
    .end annotation
.end field

.field public final hash:I

.field public final type:I


# direct methods
.method private constructor <init>(II)V
    .locals 1

    .line 4136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4089
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MessagesController$PeerColors;->colors:Ljava/util/ArrayList;

    .line 4090
    new-instance v0, Landroidx/collection/LongSparseArray;

    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MessagesController$PeerColors;->colorsById:Landroidx/collection/LongSparseArray;

    .line 4137
    iput p1, p0, Lorg/telegram/messenger/MessagesController$PeerColors;->type:I

    .line 4138
    iput p2, p0, Lorg/telegram/messenger/MessagesController$PeerColors;->hash:I

    return-void
.end method

.method private static color(Ljava/lang/String;)I
    .locals 2

    .line 4185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ff"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x10

    invoke-static {p0, v0}, Lorg/telegram/messenger/MessagesController$PeerColors$$ExternalSyntheticBackport0;->m(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static fromJSON(ILorg/telegram/tgnet/TLRPC$TL_jsonObject;Lorg/telegram/tgnet/TLRPC$TL_jsonObject;Lorg/telegram/tgnet/TLRPC$TL_jsonArray;)Lorg/telegram/messenger/MessagesController$PeerColors;
    .locals 10

    .line 4214
    :try_start_0
    new-instance v0, Lorg/telegram/messenger/MessagesController$PeerColors;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/telegram/messenger/MessagesController$PeerColors;-><init>(II)V

    const/4 v2, 0x6

    if-eqz p1, :cond_5

    .line 4216
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_jsonObject;->value:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_jsonObjectValue;

    .line 4217
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_jsonObjectValue;->key:Ljava/lang/String;

    invoke-static {v4}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 4218
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_jsonObjectValue;->value:Lorg/telegram/tgnet/TLRPC$JSONValue;

    instance-of v5, v3, Lorg/telegram/tgnet/TLRPC$TL_jsonArray;

    if-nez v5, :cond_0

    goto :goto_0

    .line 4220
    :cond_0
    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_jsonArray;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_jsonArray;->value:Ljava/util/ArrayList;

    .line 4221
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    .line 4224
    :cond_1
    new-instance v5, Lorg/telegram/messenger/MessagesController$PeerColor;

    invoke-direct {v5}, Lorg/telegram/messenger/MessagesController$PeerColor;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 4226
    :try_start_1
    iput v4, v5, Lorg/telegram/messenger/MessagesController$PeerColor;->id:I

    move v6, v1

    :goto_1
    if-ge v6, v2, :cond_3

    .line 4228
    invoke-static {v5}, Lorg/telegram/messenger/MessagesController$PeerColor;->access$000(Lorg/telegram/messenger/MessagesController$PeerColor;)[I

    move-result-object v7

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController$PeerColor;->access$100(Lorg/telegram/messenger/MessagesController$PeerColor;)[I

    move-result-object v8

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-le v9, v6, :cond_2

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$TL_jsonString;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$TL_jsonString;->value:Ljava/lang/String;

    invoke-static {v9}, Lorg/telegram/messenger/MessagesController$PeerColors;->color(Ljava/lang/String;)I

    move-result v9

    goto :goto_2

    :cond_2
    invoke-static {v5}, Lorg/telegram/messenger/MessagesController$PeerColor;->access$000(Lorg/telegram/messenger/MessagesController$PeerColor;)[I

    move-result-object v9

    aget v9, v9, v1

    :goto_2
    aput v9, v8, v6

    aput v9, v7, v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 4233
    :cond_3
    :try_start_2
    iget v3, v5, Lorg/telegram/messenger/MessagesController$PeerColor;->id:I

    const/4 v6, 0x7

    if-ge v3, v6, :cond_4

    if-nez p0, :cond_4

    const/4 v3, 0x1

    goto :goto_3

    :cond_4
    move v3, v1

    :goto_3
    iput-boolean v3, v5, Lorg/telegram/messenger/MessagesController$PeerColor;->isDefaultName:Z

    .line 4234
    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$PeerColors;->colorsById:Landroidx/collection/LongSparseArray;

    int-to-long v6, v4

    invoke-virtual {v3, v6, v7, v5}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception v3

    .line 4230
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_5
    if-eqz p2, :cond_b

    .line 4238
    iget-object p0, p2, Lorg/telegram/tgnet/TLRPC$TL_jsonObject;->value:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_jsonObjectValue;

    .line 4239
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_jsonObjectValue;->key:Ljava/lang/String;

    invoke-static {p2}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 4240
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_jsonObjectValue;->value:Lorg/telegram/tgnet/TLRPC$JSONValue;

    instance-of v3, p1, Lorg/telegram/tgnet/TLRPC$TL_jsonArray;

    if-nez v3, :cond_6

    goto :goto_4

    .line 4242
    :cond_6
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_jsonArray;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_jsonArray;->value:Ljava/util/ArrayList;

    .line 4243
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_4

    .line 4246
    :cond_7
    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$PeerColors;->colorsById:Landroidx/collection/LongSparseArray;

    int-to-long v4, p2

    invoke-virtual {v3, v4, v5}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessagesController$PeerColor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-nez v3, :cond_8

    goto :goto_4

    .line 4249
    :cond_8
    :try_start_3
    iput p2, v3, Lorg/telegram/messenger/MessagesController$PeerColor;->id:I

    move p2, v1

    :goto_5
    if-ge p2, v2, :cond_a

    .line 4251
    invoke-static {v3}, Lorg/telegram/messenger/MessagesController$PeerColor;->access$100(Lorg/telegram/messenger/MessagesController$PeerColor;)[I

    move-result-object v6

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-le v7, p2, :cond_9

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$TL_jsonString;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$TL_jsonString;->value:Ljava/lang/String;

    invoke-static {v7}, Lorg/telegram/messenger/MessagesController$PeerColors;->color(Ljava/lang/String;)I

    move-result v7

    goto :goto_6

    :cond_9
    invoke-static {v3}, Lorg/telegram/messenger/MessagesController$PeerColor;->access$100(Lorg/telegram/messenger/MessagesController$PeerColor;)[I

    move-result-object v7

    aget v7, v7, v1

    :goto_6
    aput v7, v6, p2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    .line 4256
    :cond_a
    :try_start_4
    iget-object p1, v0, Lorg/telegram/messenger/MessagesController$PeerColors;->colorsById:Landroidx/collection/LongSparseArray;

    invoke-virtual {p1, v4, v5, v3}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_4

    :catch_1
    move-exception p1

    .line 4253
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 4259
    :cond_b
    iget-object p0, v0, Lorg/telegram/messenger/MessagesController$PeerColors;->colors:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    if-eqz p3, :cond_e

    .line 4261
    iget-object p0, p3, Lorg/telegram/tgnet/TLRPC$TL_jsonArray;->value:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$JSONValue;

    .line 4262
    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$TL_jsonNumber;

    if-nez p2, :cond_c

    goto :goto_7

    .line 4264
    :cond_c
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_jsonNumber;

    iget-wide p1, p1, Lorg/telegram/tgnet/TLRPC$TL_jsonNumber;->value:D

    double-to-int p1, p1

    .line 4265
    iget-object p2, v0, Lorg/telegram/messenger/MessagesController$PeerColors;->colorsById:Landroidx/collection/LongSparseArray;

    int-to-long v1, p1

    invoke-virtual {p2, v1, v2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessagesController$PeerColor;

    if-nez p1, :cond_d

    goto :goto_7

    .line 4267
    :cond_d
    iget-object p2, v0, Lorg/telegram/messenger/MessagesController$PeerColors;->colors:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_7

    :cond_e
    return-object v0

    :catch_2
    move-exception p0

    .line 4272
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static fromString(ILjava/lang/String;)Lorg/telegram/messenger/MessagesController$PeerColors;
    .locals 8

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "@"

    .line 4163
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const-string v0, "^"

    .line 4164
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 4166
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v0, v2

    .line 4167
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    move v3, v1

    .line 4170
    :goto_0
    new-instance v0, Lorg/telegram/messenger/MessagesController$PeerColors;

    invoke-direct {v0, p0, v3}, Lorg/telegram/messenger/MessagesController$PeerColors;-><init>(II)V

    const-string v3, ";"

    .line 4171
    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    move v3, v1

    .line 4172
    :goto_1
    array-length v4, p1

    if-ge v3, v4, :cond_5

    .line 4173
    aget-object v4, p1, v3

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController$PeerColor;->fromString(Ljava/lang/String;)Lorg/telegram/messenger/MessagesController$PeerColor;

    move-result-object v4

    if-nez v4, :cond_2

    goto :goto_3

    .line 4176
    :cond_2
    iget v5, v4, Lorg/telegram/messenger/MessagesController$PeerColor;->id:I

    const/4 v6, 0x7

    if-ge v5, v6, :cond_3

    if-nez p0, :cond_3

    move v5, v2

    goto :goto_2

    :cond_3
    move v5, v1

    :goto_2
    iput-boolean v5, v4, Lorg/telegram/messenger/MessagesController$PeerColor;->isDefaultName:Z

    .line 4177
    iget-boolean v5, v4, Lorg/telegram/messenger/MessagesController$PeerColor;->hidden:Z

    if-nez v5, :cond_4

    .line 4178
    iget-object v5, v0, Lorg/telegram/messenger/MessagesController$PeerColors;->colors:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4179
    :cond_4
    iget-object v5, v0, Lorg/telegram/messenger/MessagesController$PeerColors;->colorsById:Landroidx/collection/LongSparseArray;

    iget v6, v4, Lorg/telegram/messenger/MessagesController$PeerColor;->id:I

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7, v4}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    return-object v0
.end method

.method public static fromTL(ILorg/telegram/tgnet/TLRPC$TL_help_peerColors;)Lorg/telegram/messenger/MessagesController$PeerColors;
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 4191
    :cond_0
    :try_start_0
    new-instance v1, Lorg/telegram/messenger/MessagesController$PeerColors;

    iget v2, p1, Lorg/telegram/tgnet/TLRPC$TL_help_peerColors;->hash:I

    invoke-direct {v1, p0, v2}, Lorg/telegram/messenger/MessagesController$PeerColors;-><init>(II)V

    const/4 v2, 0x0

    move v3, v2

    .line 4192
    :goto_0
    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$TL_help_peerColors;->colors:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 4193
    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$TL_help_peerColors;->colors:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_help_peerColorOption;

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController$PeerColor;->fromTL(Lorg/telegram/tgnet/TLRPC$TL_help_peerColorOption;)Lorg/telegram/messenger/MessagesController$PeerColor;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_2

    .line 4195
    :cond_1
    iget v5, v4, Lorg/telegram/messenger/MessagesController$PeerColor;->id:I

    const/4 v6, 0x7

    if-ge v5, v6, :cond_2

    if-nez p0, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    move v5, v2

    :goto_1
    iput-boolean v5, v4, Lorg/telegram/messenger/MessagesController$PeerColor;->isDefaultName:Z

    .line 4196
    iget-boolean v5, v4, Lorg/telegram/messenger/MessagesController$PeerColor;->hidden:Z

    if-nez v5, :cond_3

    .line 4197
    iget-object v5, v1, Lorg/telegram/messenger/MessagesController$PeerColors;->colors:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4198
    :cond_3
    iget-object v5, v1, Lorg/telegram/messenger/MessagesController$PeerColors;->colorsById:Landroidx/collection/LongSparseArray;

    iget v6, v4, Lorg/telegram/messenger/MessagesController$PeerColor;->id:I

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7, v4}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-object v1

    :catch_0
    move-exception p0

    .line 4202
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-object v0
.end method


# virtual methods
.method public colorsAvailable(I)I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 4108
    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$PeerColors;->colors:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 4109
    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$PeerColors;->colors:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessagesController$PeerColor;

    iget-boolean v2, v2, Lorg/telegram/messenger/MessagesController$PeerColor;->hidden:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$PeerColors;->colors:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessagesController$PeerColor;

    iget v2, v2, Lorg/telegram/messenger/MessagesController$PeerColor;->lvl:I

    if-lt p1, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public getColor(I)Lorg/telegram/messenger/MessagesController$PeerColor;
    .locals 3

    .line 4143
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$PeerColors;->colorsById:Landroidx/collection/LongSparseArray;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessagesController$PeerColor;

    return-object p1
.end method

.method public maxLevel()I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 4118
    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$PeerColors;->colors:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 4119
    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$PeerColors;->colors:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessagesController$PeerColor;

    iget-boolean v2, v2, Lorg/telegram/messenger/MessagesController$PeerColor;->hidden:Z

    if-nez v2, :cond_0

    .line 4120
    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$PeerColors;->colors:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessagesController$PeerColor;

    iget v2, v2, Lorg/telegram/messenger/MessagesController$PeerColor;->lvl:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public minLevel()I
    .locals 3

    .line 4127
    invoke-virtual {p0}, Lorg/telegram/messenger/MessagesController$PeerColors;->maxLevel()I

    move-result v0

    const/4 v1, 0x0

    .line 4128
    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$PeerColors;->colors:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 4129
    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$PeerColors;->colors:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessagesController$PeerColor;

    iget-boolean v2, v2, Lorg/telegram/messenger/MessagesController$PeerColor;->hidden:Z

    if-nez v2, :cond_0

    .line 4130
    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$PeerColors;->colors:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessagesController$PeerColor;

    iget v2, v2, Lorg/telegram/messenger/MessagesController$PeerColor;->lvl:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public needUpdate()Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    move v2, v0

    move v4, v2

    move v3, v1

    .line 4095
    :goto_0
    iget-object v5, p0, Lorg/telegram/messenger/MessagesController$PeerColors;->colors:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 4096
    iget-object v5, p0, Lorg/telegram/messenger/MessagesController$PeerColors;->colors:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/MessagesController$PeerColor;

    iget v5, v5, Lorg/telegram/messenger/MessagesController$PeerColor;->lvl:I

    if-lez v5, :cond_0

    move v3, v0

    .line 4099
    :cond_0
    iget-object v5, p0, Lorg/telegram/messenger/MessagesController$PeerColors;->colors:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/MessagesController$PeerColor;

    iget v5, v5, Lorg/telegram/messenger/MessagesController$PeerColor;->id:I

    const/4 v6, 0x7

    if-ge v5, v6, :cond_1

    move v4, v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-nez v3, :cond_3

    .line 4103
    iget v2, p0, Lorg/telegram/messenger/MessagesController$PeerColors;->type:I

    if-nez v2, :cond_4

    if-nez v4, :cond_4

    :cond_3
    move v0, v1

    :cond_4
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 4148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4149
    iget v1, p0, Lorg/telegram/messenger/MessagesController$PeerColors;->hash:I

    if-eqz v1, :cond_0

    const-string v1, "@"

    .line 4150
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/telegram/messenger/MessagesController$PeerColors;->hash:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "^"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/4 v1, 0x0

    .line 4152
    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$PeerColors;->colors:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 4153
    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$PeerColors;->colors:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessagesController$PeerColor;

    if-lez v1, :cond_1

    const-string v3, ";"

    .line 4154
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4155
    :cond_1
    invoke-virtual {v2, v0}, Lorg/telegram/messenger/MessagesController$PeerColor;->appendString(Ljava/lang/StringBuilder;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4157
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
