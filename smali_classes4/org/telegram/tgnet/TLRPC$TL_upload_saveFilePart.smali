.class public Lorg/telegram/tgnet/TLRPC$TL_upload_saveFilePart;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0x4cfb59df


# instance fields
.field public bytes:Lorg/telegram/tgnet/NativeByteBuffer;

.field public file_id:J

.field public file_part:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 64342
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 64350
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$Bool;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Bool;

    move-result-object p1

    return-object p1
.end method

.method public freeResources()V
    .locals 1

    .line 64362
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLObject;->disableFree:Z

    if-eqz v0, :cond_0

    return-void

    .line 64365
    :cond_0
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_upload_saveFilePart;->bytes:Lorg/telegram/tgnet/NativeByteBuffer;

    if-eqz v0, :cond_1

    .line 64366
    invoke-virtual {v0}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    const/4 v0, 0x0

    .line 64367
    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_upload_saveFilePart;->bytes:Lorg/telegram/tgnet/NativeByteBuffer;

    :cond_1
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2

    .line 64354
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_upload_saveFilePart;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 64355
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_upload_saveFilePart;->file_id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 64356
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_upload_saveFilePart;->file_part:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 64357
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_upload_saveFilePart;->bytes:Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeByteBuffer(Lorg/telegram/tgnet/NativeByteBuffer;)V

    return-void
.end method
