.class public Lorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsSaved;
.super Lorg/telegram/tgnet/TLRPC$InputPaymentCredentials;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0x3ef14d31


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26697
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$InputPaymentCredentials;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 1

    .line 26702
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$InputPaymentCredentials;->id:Ljava/lang/String;

    .line 26703
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readByteArray(Z)[B

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$InputPaymentCredentials;->tmp_password:[B

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    .line 26707
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsSaved;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 26708
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$InputPaymentCredentials;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 26709
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$InputPaymentCredentials;->tmp_password:[B

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeByteArray([B)V

    return-void
.end method
