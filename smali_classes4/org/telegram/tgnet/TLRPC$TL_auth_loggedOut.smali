.class public Lorg/telegram/tgnet/TLRPC$TL_auth_loggedOut;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0x3c5d7ca1


# instance fields
.field public flags:I

.field public future_auth_token:[B


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35559
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_auth_loggedOut;
    .locals 1

    .line 35566
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_auth_loggedOut;->constructor:I

    if-eq v0, p1, :cond_1

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 35568
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "can\'t parse magic %x in TL_auth_loggedOut"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 35573
    :cond_1
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_auth_loggedOut;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_auth_loggedOut;-><init>()V

    .line 35574
    invoke-virtual {p1, p0, p2}, Lorg/telegram/tgnet/TLRPC$TL_auth_loggedOut;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    return-object p1
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 1

    .line 35579
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_auth_loggedOut;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 35581
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readByteArray(Z)[B

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_auth_loggedOut;->future_auth_token:[B

    :cond_0
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    .line 35586
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_auth_loggedOut;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 35587
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_auth_loggedOut;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 35588
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_auth_loggedOut;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 35589
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_auth_loggedOut;->future_auth_token:[B

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeByteArray([B)V

    :cond_0
    return-void
.end method
