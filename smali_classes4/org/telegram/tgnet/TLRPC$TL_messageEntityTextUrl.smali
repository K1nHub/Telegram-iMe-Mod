.class public Lorg/telegram/tgnet/TLRPC$TL_messageEntityTextUrl;
.super Lorg/telegram/tgnet/TLRPC$MessageEntity;
.source "TLRPC.java"


# static fields
.field public static constructor:I = 0x76a6d327


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35025
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$MessageEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 1

    .line 35030
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    .line 35031
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    .line 35032
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->url:Ljava/lang/String;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    .line 35036
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityTextUrl;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 35037
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 35038
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 35039
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    return-void
.end method
