.class public Lorg/telegram/tgnet/TLRPC$TL_account_uploadTheme;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# static fields
.field public static constructor:I = 0x1c3db333


# instance fields
.field public file:Lorg/telegram/tgnet/TLRPC$InputFile;

.field public file_name:Ljava/lang/String;

.field public flags:I

.field public mime_type:Ljava/lang/String;

.field public thumb:Lorg/telegram/tgnet/TLRPC$InputFile;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 54950
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 54960
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$Document;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    .line 54964
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_account_uploadTheme;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 54965
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_account_uploadTheme;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 54966
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_account_uploadTheme;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 54967
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_account_uploadTheme;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 54968
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_account_uploadTheme;->thumb:Lorg/telegram/tgnet/TLRPC$InputFile;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 54970
    :cond_0
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_account_uploadTheme;->file_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 54971
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_account_uploadTheme;->mime_type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    return-void
.end method
