.class public Lorg/telegram/tgnet/TLRPC$TL_jsonNumber;
.super Lorg/telegram/tgnet/TLRPC$JSONValue;
.source "TLRPC.java"


# static fields
.field public static constructor:I = 0x2be0dfa4


# instance fields
.field public value:D


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3043
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$JSONValue;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 0

    .line 3049
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readDouble(Z)D

    move-result-wide p1

    iput-wide p1, p0, Lorg/telegram/tgnet/TLRPC$TL_jsonNumber;->value:D

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2

    .line 3053
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_jsonNumber;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 3054
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_jsonNumber;->value:D

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeDouble(D)V

    return-void
.end method
