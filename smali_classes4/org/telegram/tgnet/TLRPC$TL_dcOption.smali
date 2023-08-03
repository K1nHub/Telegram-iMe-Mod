.class public Lorg/telegram/tgnet/TLRPC$TL_dcOption;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# static fields
.field public static constructor:I = 0x18b7a10d


# instance fields
.field public cdn:Z

.field public flags:I

.field public id:I

.field public ip_address:Ljava/lang/String;

.field public ipv6:Z

.field public isStatic:Z

.field public media_only:Z

.field public port:I

.field public secret:[B

.field public tcpo_only:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 51705
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_dcOption;
    .locals 1

    .line 51720
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_dcOption;->constructor:I

    if-eq v0, p1, :cond_1

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 51722
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "can\'t parse magic %x in TL_dcOption"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 51727
    :cond_1
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_dcOption;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_dcOption;-><init>()V

    .line 51728
    invoke-virtual {p1, p0, p2}, Lorg/telegram/tgnet/TLRPC$TL_dcOption;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    return-object p1
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 4

    .line 51733
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_dcOption;->flags:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 51734
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_dcOption;->ipv6:Z

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    .line 51735
    :goto_1
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_dcOption;->media_only:Z

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v2

    .line 51736
    :goto_2
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_dcOption;->tcpo_only:Z

    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_3

    :cond_3
    move v1, v2

    .line 51737
    :goto_3
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_dcOption;->cdn:Z

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    move v2, v3

    .line 51738
    :cond_4
    iput-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_dcOption;->isStatic:Z

    .line 51739
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_dcOption;->id:I

    .line 51740
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_dcOption;->ip_address:Ljava/lang/String;

    .line 51741
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_dcOption;->port:I

    .line 51742
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_dcOption;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_5

    .line 51743
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readByteArray(Z)[B

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_dcOption;->secret:[B

    :cond_5
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2

    .line 51748
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_dcOption;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 51749
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_dcOption;->ipv6:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_dcOption;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_dcOption;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_dcOption;->flags:I

    .line 51750
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_dcOption;->media_only:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x3

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_dcOption;->flags:I

    .line 51751
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_dcOption;->tcpo_only:Z

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x4

    goto :goto_2

    :cond_2
    and-int/lit8 v0, v0, -0x5

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_dcOption;->flags:I

    .line 51752
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_dcOption;->cdn:Z

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x8

    goto :goto_3

    :cond_3
    and-int/lit8 v0, v0, -0x9

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_dcOption;->flags:I

    .line 51753
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_dcOption;->isStatic:Z

    if-eqz v1, :cond_4

    or-int/lit8 v0, v0, 0x10

    goto :goto_4

    :cond_4
    and-int/lit8 v0, v0, -0x11

    :goto_4
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_dcOption;->flags:I

    .line 51754
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 51755
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_dcOption;->id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 51756
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_dcOption;->ip_address:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 51757
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_dcOption;->port:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 51758
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_dcOption;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_5

    .line 51759
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_dcOption;->secret:[B

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeByteArray([B)V

    :cond_5
    return-void
.end method
