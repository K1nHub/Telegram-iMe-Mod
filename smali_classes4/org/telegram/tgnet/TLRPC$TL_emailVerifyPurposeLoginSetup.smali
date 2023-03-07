.class public Lorg/telegram/tgnet/TLRPC$TL_emailVerifyPurposeLoginSetup;
.super Lorg/telegram/tgnet/TLRPC$EmailVerifyPurpose;
.source "TLRPC.java"


# static fields
.field public static constructor:I = 0x4345be73


# instance fields
.field public phone_code_hash:Ljava/lang/String;

.field public phone_number:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 256
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$EmailVerifyPurpose;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 1

    .line 263
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_emailVerifyPurposeLoginSetup;->phone_number:Ljava/lang/String;

    .line 264
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_emailVerifyPurposeLoginSetup;->phone_code_hash:Ljava/lang/String;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    .line 268
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_emailVerifyPurposeLoginSetup;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 269
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_emailVerifyPurposeLoginSetup;->phone_number:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_emailVerifyPurposeLoginSetup;->phone_code_hash:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    return-void
.end method
