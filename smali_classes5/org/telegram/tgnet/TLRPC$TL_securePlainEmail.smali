.class public Lorg/telegram/tgnet/TLRPC$TL_securePlainEmail;
.super Lorg/telegram/tgnet/TLRPC$SecurePlainData;
.source "TLRPC.java"


# static fields
.field public static constructor:I = 0x21ec5a5f


# instance fields
.field public email:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37416
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$SecurePlainData;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 0

    .line 37422
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_securePlainEmail;->email:Ljava/lang/String;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    .line 37426
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_securePlainEmail;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 37427
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_securePlainEmail;->email:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    return-void
.end method
