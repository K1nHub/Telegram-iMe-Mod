.class public Lorg/telegram/tgnet/TLRPC$TL_messages_getStickers;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0x2a5a2c5f


# instance fields
.field public emoticon:Ljava/lang/String;

.field public hash:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 63074
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 63081
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$messages_Stickers;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$messages_Stickers;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2

    .line 63085
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getStickers;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 63086
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getStickers;->emoticon:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 63087
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getStickers;->hash:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    return-void
.end method
