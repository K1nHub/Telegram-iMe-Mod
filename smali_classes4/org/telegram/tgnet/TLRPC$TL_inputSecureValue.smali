.class public Lorg/telegram/tgnet/TLRPC$TL_inputSecureValue;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0x24de2f59


# instance fields
.field public data:Lorg/telegram/tgnet/TLRPC$TL_secureData;

.field public files:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$InputSecureFile;",
            ">;"
        }
    .end annotation
.end field

.field public flags:I

.field public front_side:Lorg/telegram/tgnet/TLRPC$InputSecureFile;

.field public plain_data:Lorg/telegram/tgnet/TLRPC$SecurePlainData;

.field public reverse_side:Lorg/telegram/tgnet/TLRPC$InputSecureFile;

.field public selfie:Lorg/telegram/tgnet/TLRPC$InputSecureFile;

.field public translation:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$InputSecureFile;",
            ">;"
        }
    .end annotation
.end field

.field public type:Lorg/telegram/tgnet/TLRPC$SecureValueType;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 9451
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 9460
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputSecureValue;->translation:Ljava/util/ArrayList;

    .line 9461
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputSecureValue;->files:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 8

    .line 9478
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputSecureValue;->flags:I

    .line 9479
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$SecureValueType;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$SecureValueType;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputSecureValue;->type:Lorg/telegram/tgnet/TLRPC$SecureValueType;

    .line 9480
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputSecureValue;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 9481
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$TL_secureData;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_secureData;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputSecureValue;->data:Lorg/telegram/tgnet/TLRPC$TL_secureData;

    .line 9483
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputSecureValue;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 9484
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$InputSecureFile;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputSecureFile;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputSecureValue;->front_side:Lorg/telegram/tgnet/TLRPC$InputSecureFile;

    .line 9486
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputSecureValue;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 9487
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$InputSecureFile;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputSecureFile;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputSecureValue;->reverse_side:Lorg/telegram/tgnet/TLRPC$InputSecureFile;

    .line 9489
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputSecureValue;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 9490
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$InputSecureFile;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputSecureFile;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputSecureValue;->selfie:Lorg/telegram/tgnet/TLRPC$InputSecureFile;

    .line 9492
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputSecureValue;->flags:I

    and-int/lit8 v0, v0, 0x40

    const-string/jumbo v2, "wrong Vector magic, got %x"

    const v3, 0x1cb5c415

    const/4 v4, 0x0

    if-eqz v0, :cond_7

    .line 9493
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    if-eq v0, v3, :cond_5

    if-nez p2, :cond_4

    return-void

    .line 9496
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

    .line 9500
    :cond_5
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    move v5, v4

    :goto_0
    if-ge v5, v0, :cond_7

    .line 9502
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v6

    invoke-static {p1, v6, p2}, Lorg/telegram/tgnet/TLRPC$InputSecureFile;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputSecureFile;

    move-result-object v6

    if-nez v6, :cond_6

    return-void

    .line 9506
    :cond_6
    iget-object v7, p0, Lorg/telegram/tgnet/TLRPC$TL_inputSecureValue;->translation:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 9509
    :cond_7
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputSecureValue;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_b

    .line 9510
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    if-eq v0, v3, :cond_9

    if-nez p2, :cond_8

    return-void

    .line 9513
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

    .line 9517
    :cond_9
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    :goto_1
    if-ge v4, v0, :cond_b

    .line 9519
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    invoke-static {p1, v1, p2}, Lorg/telegram/tgnet/TLRPC$InputSecureFile;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputSecureFile;

    move-result-object v1

    if-nez v1, :cond_a

    return-void

    .line 9523
    :cond_a
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_inputSecureValue;->files:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 9526
    :cond_b
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputSecureValue;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_c

    .line 9527
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$SecurePlainData;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$SecurePlainData;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_inputSecureValue;->plain_data:Lorg/telegram/tgnet/TLRPC$SecurePlainData;

    :cond_c
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 5

    .line 9532
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_inputSecureValue;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 9533
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputSecureValue;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 9534
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputSecureValue;->type:Lorg/telegram/tgnet/TLRPC$SecureValueType;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 9535
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputSecureValue;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 9536
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputSecureValue;->data:Lorg/telegram/tgnet/TLRPC$TL_secureData;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_secureData;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 9538
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputSecureValue;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 9539
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputSecureValue;->front_side:Lorg/telegram/tgnet/TLRPC$InputSecureFile;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 9541
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputSecureValue;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 9542
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputSecureValue;->reverse_side:Lorg/telegram/tgnet/TLRPC$InputSecureFile;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 9544
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputSecureValue;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 9545
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputSecureValue;->selfie:Lorg/telegram/tgnet/TLRPC$InputSecureFile;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 9547
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputSecureValue;->flags:I

    and-int/lit8 v0, v0, 0x40

    const/4 v1, 0x0

    const v2, 0x1cb5c415

    if-eqz v0, :cond_4

    .line 9548
    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 9549
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputSecureValue;->translation:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 9550
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_4

    .line 9552
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_inputSecureValue;->translation:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$InputSecureFile;

    invoke-virtual {v4, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 9555
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputSecureValue;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_5

    .line 9556
    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 9557
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputSecureValue;->files:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 9558
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    :goto_1
    if-ge v1, v0, :cond_5

    .line 9560
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_inputSecureValue;->files:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$InputSecureFile;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 9563
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputSecureValue;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_6

    .line 9564
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputSecureValue;->plain_data:Lorg/telegram/tgnet/TLRPC$SecurePlainData;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    :cond_6
    return-void
.end method
