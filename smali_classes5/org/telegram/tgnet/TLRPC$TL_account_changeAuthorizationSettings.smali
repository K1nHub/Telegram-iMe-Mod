.class public Lorg/telegram/tgnet/TLRPC$TL_account_changeAuthorizationSettings;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# static fields
.field public static constructor:I = 0x40f48462


# instance fields
.field public call_requests_disabled:Z

.field public confirmed:Z

.field public encrypted_requests_disabled:Z

.field public flags:I

.field public hash:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 54105
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 54115
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$Bool;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Bool;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2

    .line 54119
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_account_changeAuthorizationSettings;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 54120
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_account_changeAuthorizationSettings;->confirmed:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_account_changeAuthorizationSettings;->flags:I

    or-int/lit8 v0, v0, 0x8

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_account_changeAuthorizationSettings;->flags:I

    and-int/lit8 v0, v0, -0x9

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_account_changeAuthorizationSettings;->flags:I

    .line 54121
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 54122
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_account_changeAuthorizationSettings;->hash:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 54123
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_account_changeAuthorizationSettings;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 54124
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_account_changeAuthorizationSettings;->encrypted_requests_disabled:Z

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeBool(Z)V

    .line 54126
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_account_changeAuthorizationSettings;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 54127
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_account_changeAuthorizationSettings;->call_requests_disabled:Z

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeBool(Z)V

    :cond_2
    return-void
.end method
