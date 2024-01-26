.class public Lorg/telegram/tgnet/TLRPC$TL_textImage;
.super Lorg/telegram/tgnet/TLRPC$RichText;
.source "TLRPC.java"


# instance fields
.field public document_id:J

.field public h:I

.field public w:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2151
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$RichText;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 2

    .line 2159
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_textImage;->document_id:J

    .line 2160
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_textImage;->w:I

    .line 2161
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$TL_textImage;->h:I

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2

    const v0, 0x81ccf4f

    .line 2165
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 2166
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_textImage;->document_id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 2167
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_textImage;->w:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 2168
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_textImage;->h:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    return-void
.end method
