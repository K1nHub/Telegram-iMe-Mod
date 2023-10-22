.class public Lorg/telegram/tgnet/TLRPC$TL_jsonObjectValue;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0x3f21e427


# instance fields
.field public key:Ljava/lang/String;

.field public value:Lorg/telegram/tgnet/TLRPC$JSONValue;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28990
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_jsonObjectValue;
    .locals 1

    .line 28997
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_jsonObjectValue;->constructor:I

    if-eq v0, p1, :cond_1

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 28999
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "can\'t parse magic %x in TL_jsonObjectValue"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 29004
    :cond_1
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_jsonObjectValue;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_jsonObjectValue;-><init>()V

    .line 29005
    invoke-virtual {p1, p0, p2}, Lorg/telegram/tgnet/TLRPC$TL_jsonObjectValue;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    return-object p1
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 1

    .line 29010
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_jsonObjectValue;->key:Ljava/lang/String;

    .line 29011
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$JSONValue;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$JSONValue;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_jsonObjectValue;->value:Lorg/telegram/tgnet/TLRPC$JSONValue;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    .line 29015
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_jsonObjectValue;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 29016
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_jsonObjectValue;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 29017
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_jsonObjectValue;->value:Lorg/telegram/tgnet/TLRPC$JSONValue;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    return-void
.end method
