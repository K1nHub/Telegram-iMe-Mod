.class public Lorg/telegram/tgnet/TLRPC$TL_inputGroupCallStream;
.super Lorg/telegram/tgnet/TLRPC$InputFileLocation;
.source "TLRPC.java"


# static fields
.field public static constructor:I = 0x598a92a


# instance fields
.field public call:Lorg/telegram/tgnet/TLRPC$TL_inputGroupCall;

.field public scale:I

.field public time_ms:J

.field public video_channel:I

.field public video_quality:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21876
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$InputFileLocation;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 2

    .line 21886
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->flags:I

    .line 21887
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$TL_inputGroupCall;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_inputGroupCall;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputGroupCallStream;->call:Lorg/telegram/tgnet/TLRPC$TL_inputGroupCall;

    .line 21888
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputGroupCallStream;->time_ms:J

    .line 21889
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputGroupCallStream;->scale:I

    .line 21890
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 21891
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputGroupCallStream;->video_channel:I

    .line 21893
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 21894
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$TL_inputGroupCallStream;->video_quality:I

    :cond_1
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2

    .line 21899
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_inputGroupCallStream;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 21900
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 21901
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputGroupCallStream;->call:Lorg/telegram/tgnet/TLRPC$TL_inputGroupCall;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_inputGroupCall;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 21902
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputGroupCallStream;->time_ms:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 21903
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputGroupCallStream;->scale:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 21904
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 21905
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputGroupCallStream;->video_channel:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 21907
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 21908
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputGroupCallStream;->video_quality:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    :cond_1
    return-void
.end method
