.class public Lorg/telegram/tgnet/TLRPC$TL_messages_getSearchCounters;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# instance fields
.field public filters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$MessagesFilter;",
            ">;"
        }
    .end annotation
.end field

.field public flags:I

.field public peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field public top_msg_id:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 59172
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 59178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getSearchCounters;->filters:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 4

    .line 59181
    new-instance p2, Lorg/telegram/tgnet/TLRPC$Vector;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$Vector;-><init>()V

    .line 59182
    invoke-virtual {p1, p3}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 59184
    invoke-virtual {p1, p3}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    invoke-static {p1, v2, p3}, Lorg/telegram/tgnet/TLRPC$TL_messages_searchCounter;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_messages_searchCounter;

    move-result-object v2

    if-nez v2, :cond_0

    return-object p2

    .line 59188
    :cond_0
    iget-object v3, p2, Lorg/telegram/tgnet/TLRPC$Vector;->objects:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 3

    const v0, 0xae7cc1

    .line 59194
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 59195
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getSearchCounters;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 59196
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getSearchCounters;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 59197
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getSearchCounters;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 59198
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getSearchCounters;->top_msg_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    :cond_0
    const v0, 0x1cb5c415

    .line 59200
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 59201
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getSearchCounters;->filters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 59202
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 59204
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getSearchCounters;->filters:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
