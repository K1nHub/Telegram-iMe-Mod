.class public Lorg/telegram/tgnet/TLRPC$TL_secureValue;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# instance fields
.field public data:Lorg/telegram/tgnet/TLRPC$TL_secureData;

.field public files:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$SecureFile;",
            ">;"
        }
    .end annotation
.end field

.field public flags:I

.field public front_side:Lorg/telegram/tgnet/TLRPC$SecureFile;

.field public hash:[B

.field public plain_data:Lorg/telegram/tgnet/TLRPC$SecurePlainData;

.field public reverse_side:Lorg/telegram/tgnet/TLRPC$SecureFile;

.field public selfie:Lorg/telegram/tgnet/TLRPC$SecureFile;

.field public translation:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$SecureFile;",
            ">;"
        }
    .end annotation
.end field

.field public type:Lorg/telegram/tgnet/TLRPC$SecureValueType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22701
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 22710
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->translation:Ljava/util/ArrayList;

    .line 22711
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->files:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_secureValue;
    .locals 1

    const v0, 0x187fa0ca

    if-eq v0, p1, :cond_1

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 22718
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "can\'t parse magic %x in TL_secureValue"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 22723
    :cond_1
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_secureValue;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_secureValue;-><init>()V

    .line 22724
    invoke-virtual {p1, p0, p2}, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    return-object p1
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 8

    .line 22729
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->flags:I

    .line 22730
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$SecureValueType;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$SecureValueType;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->type:Lorg/telegram/tgnet/TLRPC$SecureValueType;

    .line 22731
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 22732
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$TL_secureData;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_secureData;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->data:Lorg/telegram/tgnet/TLRPC$TL_secureData;

    .line 22734
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 22735
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$SecureFile;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$SecureFile;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->front_side:Lorg/telegram/tgnet/TLRPC$SecureFile;

    .line 22737
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 22738
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$SecureFile;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$SecureFile;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->reverse_side:Lorg/telegram/tgnet/TLRPC$SecureFile;

    .line 22740
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 22741
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$SecureFile;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$SecureFile;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->selfie:Lorg/telegram/tgnet/TLRPC$SecureFile;

    .line 22743
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->flags:I

    and-int/lit8 v0, v0, 0x40

    const-string v2, "wrong Vector magic, got %x"

    const v3, 0x1cb5c415

    const/4 v4, 0x0

    if-eqz v0, :cond_7

    .line 22744
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    if-eq v0, v3, :cond_5

    if-nez p2, :cond_4

    return-void

    .line 22747
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v4

    invoke-static {v2, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 22751
    :cond_5
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    move v5, v4

    :goto_0
    if-ge v5, v0, :cond_7

    .line 22753
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v6

    invoke-static {p1, v6, p2}, Lorg/telegram/tgnet/TLRPC$SecureFile;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$SecureFile;

    move-result-object v6

    if-nez v6, :cond_6

    return-void

    .line 22757
    :cond_6
    iget-object v7, p0, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->translation:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 22760
    :cond_7
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_b

    .line 22761
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    if-eq v0, v3, :cond_9

    if-nez p2, :cond_8

    return-void

    .line 22764
    :cond_8
    new-instance p1, Ljava/lang/RuntimeException;

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v4

    invoke-static {v2, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 22768
    :cond_9
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    :goto_1
    if-ge v4, v0, :cond_b

    .line 22770
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    invoke-static {p1, v1, p2}, Lorg/telegram/tgnet/TLRPC$SecureFile;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$SecureFile;

    move-result-object v1

    if-nez v1, :cond_a

    return-void

    .line 22774
    :cond_a
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->files:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 22777
    :cond_b
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_c

    .line 22778
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$SecurePlainData;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$SecurePlainData;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->plain_data:Lorg/telegram/tgnet/TLRPC$SecurePlainData;

    .line 22780
    :cond_c
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readByteArray(Z)[B

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->hash:[B

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 5

    const v0, 0x187fa0ca

    .line 22784
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 22785
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 22786
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->type:Lorg/telegram/tgnet/TLRPC$SecureValueType;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 22787
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 22788
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->data:Lorg/telegram/tgnet/TLRPC$TL_secureData;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_secureData;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 22790
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 22791
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->front_side:Lorg/telegram/tgnet/TLRPC$SecureFile;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 22793
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 22794
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->reverse_side:Lorg/telegram/tgnet/TLRPC$SecureFile;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 22796
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 22797
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->selfie:Lorg/telegram/tgnet/TLRPC$SecureFile;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 22799
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->flags:I

    and-int/lit8 v0, v0, 0x40

    const/4 v1, 0x0

    const v2, 0x1cb5c415

    if-eqz v0, :cond_4

    .line 22800
    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 22801
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->translation:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 22802
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_4

    .line 22804
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->translation:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$SecureFile;

    invoke-virtual {v4, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 22807
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_5

    .line 22808
    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 22809
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->files:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 22810
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    :goto_1
    if-ge v1, v0, :cond_5

    .line 22812
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->files:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$SecureFile;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 22815
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_6

    .line 22816
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->plain_data:Lorg/telegram/tgnet/TLRPC$SecurePlainData;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 22818
    :cond_6
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->hash:[B

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeByteArray([B)V

    return-void
.end method
