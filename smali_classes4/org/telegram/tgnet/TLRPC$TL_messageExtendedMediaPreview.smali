.class public Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMediaPreview;
.super Lorg/telegram/tgnet/TLRPC$MessageExtendedMedia;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0x529d7338


# instance fields
.field public flags:I

.field public h:I

.field public thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

.field public video_duration:I

.field public w:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8032
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$MessageExtendedMedia;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 10

    .line 8042
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMediaPreview;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 8044
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMediaPreview;->w:I

    .line 8046
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMediaPreview;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 8047
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMediaPreview;->h:I

    .line 8049
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMediaPreview;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    .line 8050
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v8

    move-object v7, p1

    move v9, p2

    invoke-static/range {v1 .. v9}, Lorg/telegram/tgnet/TLRPC$PhotoSize;->TLdeserialize(JJJLorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMediaPreview;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 8052
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMediaPreview;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 8053
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMediaPreview;->video_duration:I

    :cond_3
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    .line 8058
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMediaPreview;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 8059
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMediaPreview;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 8060
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMediaPreview;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 8061
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMediaPreview;->w:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 8063
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMediaPreview;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 8064
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMediaPreview;->h:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 8066
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMediaPreview;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 8067
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMediaPreview;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 8069
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMediaPreview;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 8070
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMediaPreview;->video_duration:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    :cond_3
    return-void
.end method
