.class public Lorg/telegram/tgnet/TLRPC$TL_help_passportConfig;
.super Lorg/telegram/tgnet/TLRPC$help_PassportConfig;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0x5f672951


# instance fields
.field public countries_langs:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

.field public hash:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 50690
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$help_PassportConfig;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 1

    .line 50697
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_passportConfig;->hash:I

    .line 50698
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_help_passportConfig;->countries_langs:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    .line 50702
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_help_passportConfig;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 50703
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_passportConfig;->hash:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 50704
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_passportConfig;->countries_langs:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    return-void
.end method
