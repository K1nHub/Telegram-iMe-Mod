.class public Lorg/telegram/tgnet/TLRPC$TL_account_password;
.super Lorg/telegram/tgnet/TLRPC$account_Password;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0x6a84af05


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34381
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$account_Password;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 4

    .line 34385
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$account_Password;->flags:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 34386
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$account_Password;->has_recovery:Z

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 34387
    :goto_1
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$account_Password;->has_secure_values:Z

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    .line 34388
    :cond_2
    iput-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$account_Password;->has_password:Z

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 34390
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$PasswordKdfAlgo;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$PasswordKdfAlgo;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$account_Password;->current_algo:Lorg/telegram/tgnet/TLRPC$PasswordKdfAlgo;

    .line 34392
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$account_Password;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_4

    .line 34393
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readByteArray(Z)[B

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$account_Password;->srp_B:[B

    .line 34395
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$account_Password;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_5

    .line 34396
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$account_Password;->srp_id:J

    .line 34398
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$account_Password;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_6

    .line 34399
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$account_Password;->hint:Ljava/lang/String;

    .line 34401
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$account_Password;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_7

    .line 34402
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$account_Password;->email_unconfirmed_pattern:Ljava/lang/String;

    .line 34404
    :cond_7
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$PasswordKdfAlgo;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$PasswordKdfAlgo;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$account_Password;->new_algo:Lorg/telegram/tgnet/TLRPC$PasswordKdfAlgo;

    .line 34405
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$SecurePasswordKdfAlgo;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$SecurePasswordKdfAlgo;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$account_Password;->new_secure_algo:Lorg/telegram/tgnet/TLRPC$SecurePasswordKdfAlgo;

    .line 34406
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readByteArray(Z)[B

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$account_Password;->secure_random:[B

    .line 34407
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$account_Password;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_8

    .line 34408
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$account_Password;->pending_reset_date:I

    .line 34410
    :cond_8
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$account_Password;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_9

    .line 34411
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$account_Password;->login_email_pattern:Ljava/lang/String;

    :cond_9
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2

    .line 34416
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_account_password;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 34417
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$account_Password;->has_recovery:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$account_Password;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$account_Password;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$account_Password;->flags:I

    .line 34418
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$account_Password;->has_secure_values:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x3

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$account_Password;->flags:I

    .line 34419
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$account_Password;->has_password:Z

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x4

    goto :goto_2

    :cond_2
    and-int/lit8 v0, v0, -0x5

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$account_Password;->flags:I

    .line 34420
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 34421
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$account_Password;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 34422
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$account_Password;->current_algo:Lorg/telegram/tgnet/TLRPC$PasswordKdfAlgo;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 34424
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$account_Password;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_4

    .line 34425
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$account_Password;->srp_B:[B

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeByteArray([B)V

    .line 34427
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$account_Password;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_5

    .line 34428
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$account_Password;->srp_id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 34430
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$account_Password;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_6

    .line 34431
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$account_Password;->hint:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 34433
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$account_Password;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_7

    .line 34434
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$account_Password;->email_unconfirmed_pattern:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 34436
    :cond_7
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$account_Password;->new_algo:Lorg/telegram/tgnet/TLRPC$PasswordKdfAlgo;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 34437
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$account_Password;->new_secure_algo:Lorg/telegram/tgnet/TLRPC$SecurePasswordKdfAlgo;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 34438
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$account_Password;->secure_random:[B

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeByteArray([B)V

    .line 34439
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$account_Password;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_8

    .line 34440
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$account_Password;->pending_reset_date:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 34442
    :cond_8
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$account_Password;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_9

    .line 34443
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$account_Password;->login_email_pattern:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    :cond_9
    return-void
.end method
