.class public Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeDriverLicense;
.super Lorg/telegram/tgnet/TLRPC$SecureValueType;
.source "TLRPC.java"


# static fields
.field public static constructor:I = 0x6e425c4


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29464
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$SecureValueType;-><init>()V

    return-void
.end method


# virtual methods
.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    .line 29469
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_secureValueTypeDriverLicense;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    return-void
.end method
