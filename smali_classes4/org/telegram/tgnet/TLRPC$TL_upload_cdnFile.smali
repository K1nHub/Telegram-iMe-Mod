.class public Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFile;
.super Lorg/telegram/tgnet/TLRPC$upload_CdnFile;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0x566035b1


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 63359
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$upload_CdnFile;-><init>()V

    return-void
.end method


# virtual methods
.method public freeResources()V
    .locals 1

    .line 63374
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLObject;->disableFree:Z

    if-eqz v0, :cond_0

    return-void

    .line 63377
    :cond_0
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$upload_CdnFile;->bytes:Lorg/telegram/tgnet/NativeByteBuffer;

    if-eqz v0, :cond_1

    .line 63378
    invoke-virtual {v0}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    const/4 v0, 0x0

    .line 63379
    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$upload_CdnFile;->bytes:Lorg/telegram/tgnet/NativeByteBuffer;

    :cond_1
    return-void
.end method

.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 0

    .line 63364
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readByteBuffer(Z)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$upload_CdnFile;->bytes:Lorg/telegram/tgnet/NativeByteBuffer;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    .line 63368
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFile;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 63369
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$upload_CdnFile;->bytes:Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeByteBuffer(Lorg/telegram/tgnet/NativeByteBuffer;)V

    return-void
.end method
