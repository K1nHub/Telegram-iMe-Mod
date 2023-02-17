.class public Lorg/telegram/tgnet/TLRPC$TL_inputChatUploadedPhoto;
.super Lorg/telegram/tgnet/TLRPC$InputChatPhoto;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0x42325140


# instance fields
.field public file:Lorg/telegram/tgnet/TLRPC$InputFile;

.field public flags:I

.field public video:Lorg/telegram/tgnet/TLRPC$InputFile;

.field public video_emoji_markup:Lorg/telegram/tgnet/TLRPC$VideoSize;

.field public video_start_ts:D


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 48525
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$InputChatPhoto;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 8

    .line 48535
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputChatUploadedPhoto;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 48537
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$InputFile;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputFile;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputChatUploadedPhoto;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 48539
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputChatUploadedPhoto;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 48540
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$InputFile;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputFile;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputChatUploadedPhoto;->video:Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 48542
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputChatUploadedPhoto;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 48543
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readDouble(Z)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputChatUploadedPhoto;->video_start_ts:D

    .line 48545
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputChatUploadedPhoto;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    .line 48546
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v6

    move-object v5, p1

    move v7, p2

    invoke-static/range {v1 .. v7}, Lorg/telegram/tgnet/TLRPC$VideoSize;->TLdeserialize(JJLorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$VideoSize;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_inputChatUploadedPhoto;->video_emoji_markup:Lorg/telegram/tgnet/TLRPC$VideoSize;

    :cond_3
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2

    .line 48551
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_inputChatUploadedPhoto;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 48552
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputChatUploadedPhoto;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 48553
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputChatUploadedPhoto;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 48554
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputChatUploadedPhoto;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 48556
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputChatUploadedPhoto;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 48557
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputChatUploadedPhoto;->video:Lorg/telegram/tgnet/TLRPC$InputFile;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 48559
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputChatUploadedPhoto;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 48560
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputChatUploadedPhoto;->video_start_ts:D

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeDouble(D)V

    .line 48562
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputChatUploadedPhoto;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 48563
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputChatUploadedPhoto;->video_emoji_markup:Lorg/telegram/tgnet/TLRPC$VideoSize;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    :cond_3
    return-void
.end method
