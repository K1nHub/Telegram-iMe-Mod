.class public Lorg/telegram/tgnet/TLRPC$TL_messages_searchCustomEmoji;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# instance fields
.field public emoticon:Ljava/lang/String;

.field public hash:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 55893
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 55900
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$EmojiList;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$EmojiList;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2

    const v0, 0x2c11c0d7

    .line 55904
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 55905
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_searchCustomEmoji;->emoticon:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 55906
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_searchCustomEmoji;->hash:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    return-void
.end method
