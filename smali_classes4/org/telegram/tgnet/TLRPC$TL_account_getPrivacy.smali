.class public Lorg/telegram/tgnet/TLRPC$TL_account_getPrivacy;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0x252436b0


# instance fields
.field public key:Lorg/telegram/tgnet/TLRPC$InputPrivacyKey;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 53182
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 53188
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$TL_account_privacyRules;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_account_privacyRules;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    .line 53192
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_account_getPrivacy;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 53193
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_account_getPrivacy;->key:Lorg/telegram/tgnet/TLRPC$InputPrivacyKey;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    return-void
.end method
