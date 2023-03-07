.class public Lorg/telegram/tgnet/TLRPC$TL_account_uploadRingtone;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0x7ce57c5e


# instance fields
.field public file:Lorg/telegram/tgnet/TLRPC$InputFile;

.field public file_name:Ljava/lang/String;

.field public mime_type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 64609
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 64617
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$Document;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    .line 64621
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_account_uploadRingtone;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 64622
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_account_uploadRingtone;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 64623
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_account_uploadRingtone;->file_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 64624
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_account_uploadRingtone;->mime_type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    return-void
.end method
