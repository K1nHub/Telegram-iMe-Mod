.class public Lorg/telegram/tgnet/TLRPC$TL_storage_fileMov;
.super Lorg/telegram/tgnet/TLRPC$storage_FileType;
.source "TLRPC.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48128
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$storage_FileType;-><init>()V

    return-void
.end method


# virtual methods
.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    const v0, 0x4b09ebbc    # 9038780.0f

    .line 48133
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    return-void
.end method
