.class public Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# instance fields
.field public email:Ljava/lang/String;

.field public flags:I

.field public hint:Ljava/lang/String;

.field public new_algo:Lorg/telegram/tgnet/TLRPC$PasswordKdfAlgo;

.field public new_password_hash:[B

.field public new_secure_settings:Lorg/telegram/tgnet/TLRPC$TL_secureSecretSettings;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 54825
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 1

    .line 54849
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 54851
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$PasswordKdfAlgo;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$PasswordKdfAlgo;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;->new_algo:Lorg/telegram/tgnet/TLRPC$PasswordKdfAlgo;

    .line 54853
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 54854
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readByteArray(Z)[B

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;->new_password_hash:[B

    .line 54856
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 54857
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;->hint:Ljava/lang/String;

    .line 54859
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    .line 54860
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;->email:Ljava/lang/String;

    .line 54862
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_4

    .line 54863
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$TL_secureSecretSettings;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_secureSecretSettings;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;->new_secure_settings:Lorg/telegram/tgnet/TLRPC$TL_secureSecretSettings;

    :cond_4
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    const v0, -0x3dc8d837

    .line 54868
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 54869
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 54870
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 54871
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;->new_algo:Lorg/telegram/tgnet/TLRPC$PasswordKdfAlgo;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 54873
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 54874
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;->new_password_hash:[B

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeByteArray([B)V

    .line 54876
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 54877
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;->hint:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 54879
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    .line 54880
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;->email:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 54882
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_4

    .line 54883
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;->new_secure_settings:Lorg/telegram/tgnet/TLRPC$TL_secureSecretSettings;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_secureSecretSettings;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    :cond_4
    return-void
.end method
