.class public Lorg/telegram/tgnet/TLRPC$TL_help_appConfig;
.super Lorg/telegram/tgnet/TLRPC$help_AppConfig;
.source "TLRPC.java"


# instance fields
.field public config:Lorg/telegram/tgnet/TLRPC$JSONValue;

.field public hash:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10098
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$help_AppConfig;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 1

    .line 10105
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_appConfig;->hash:I

    .line 10106
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$JSONValue;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$JSONValue;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_help_appConfig;->config:Lorg/telegram/tgnet/TLRPC$JSONValue;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    const v0, -0x22e787d2

    .line 10110
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 10111
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_appConfig;->hash:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 10112
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_appConfig;->config:Lorg/telegram/tgnet/TLRPC$JSONValue;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    return-void
.end method
