.class public Lorg/telegram/tgnet/TLRPC$TL_upload_getCdnFile;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# static fields
.field public static constructor:I = 0x395f69da


# instance fields
.field public file_token:[B

.field public limit:I

.field public offset:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 65417
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 65425
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$upload_CdnFile;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$upload_CdnFile;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2

    .line 65429
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_upload_getCdnFile;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 65430
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_upload_getCdnFile;->file_token:[B

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeByteArray([B)V

    .line 65431
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_upload_getCdnFile;->offset:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 65432
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_upload_getCdnFile;->limit:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    return-void
.end method
