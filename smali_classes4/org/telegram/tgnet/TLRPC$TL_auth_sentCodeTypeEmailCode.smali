.class public Lorg/telegram/tgnet/TLRPC$TL_auth_sentCodeTypeEmailCode;
.super Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0xbaf0a65


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7340
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 4

    .line 7345
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->flags:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 7346
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->apple_signin_allowed:Z

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    move v2, v3

    .line 7347
    :cond_1
    iput-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->google_signin_allowed:Z

    .line 7348
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->email_pattern:Ljava/lang/String;

    .line 7349
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->length:I

    .line 7350
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2

    .line 7351
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->reset_available_period:I

    .line 7353
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_3

    .line 7354
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->reset_pending_date:I

    :cond_3
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2

    .line 7359
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCodeTypeEmailCode;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 7360
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->apple_signin_allowed:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->flags:I

    .line 7361
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->google_signin_allowed:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x3

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->flags:I

    .line 7362
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 7363
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->email_pattern:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 7364
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->length:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 7365
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2

    .line 7366
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->reset_available_period:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 7368
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_3

    .line 7369
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->reset_pending_date:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    :cond_3
    return-void
.end method
