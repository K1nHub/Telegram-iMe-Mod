.class public Lorg/telegram/tgnet/TLRPC$TL_account_emailVerifiedLogin;
.super Lorg/telegram/tgnet/TLRPC$account_EmailVerified;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0x1e44f29f


# instance fields
.field public email:Ljava/lang/String;

.field public sent_code:Lorg/telegram/tgnet/TLRPC$auth_SentCode;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 399
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$account_EmailVerified;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 1

    .line 406
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_account_emailVerifiedLogin;->email:Ljava/lang/String;

    .line 407
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$auth_SentCode;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_account_emailVerifiedLogin;->sent_code:Lorg/telegram/tgnet/TLRPC$auth_SentCode;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    .line 411
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_account_emailVerifiedLogin;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 412
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_account_emailVerifiedLogin;->email:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 413
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_account_emailVerifiedLogin;->sent_code:Lorg/telegram/tgnet/TLRPC$auth_SentCode;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    return-void
.end method
