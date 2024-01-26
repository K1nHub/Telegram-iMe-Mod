.class public Lorg/telegram/tgnet/TLRPC$TL_invoice;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# instance fields
.field public currency:Ljava/lang/String;

.field public email_requested:Z

.field public email_to_provider:Z

.field public flags:I

.field public flexible:Z

.field public max_tip_amount:J

.field public name_requested:Z

.field public phone_requested:Z

.field public phone_to_provider:Z

.field public prices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_labeledPrice;",
            ">;"
        }
    .end annotation
.end field

.field public recurring:Z

.field public shipping_address_requested:Z

.field public suggested_tip_amounts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public terms_url:Ljava/lang/String;

.field public test:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28379
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 28393
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->prices:Ljava/util/ArrayList;

    .line 28395
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->suggested_tip_amounts:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_invoice;
    .locals 1

    const v0, 0x3e85a91b

    if-eq p1, v0, :cond_1

    const v0, 0x5db95a15

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 28402
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_invoice;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_invoice;-><init>()V

    goto :goto_0

    .line 28405
    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_invoice_layer163;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_invoice_layer163;-><init>()V

    :goto_0
    if-nez v0, :cond_3

    if-nez p2, :cond_2

    goto :goto_1

    .line 28409
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "can\'t parse magic %x in TL_invoice"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    .line 28412
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$TL_invoice;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    :cond_4
    return-object v0
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 8

    .line 28418
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->flags:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 28419
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->test:Z

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    .line 28420
    :goto_1
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->name_requested:Z

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v2

    .line 28421
    :goto_2
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->phone_requested:Z

    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_3

    :cond_3
    move v1, v2

    .line 28422
    :goto_3
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->email_requested:Z

    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_4

    move v1, v3

    goto :goto_4

    :cond_4
    move v1, v2

    .line 28423
    :goto_4
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->shipping_address_requested:Z

    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_5

    move v1, v3

    goto :goto_5

    :cond_5
    move v1, v2

    .line 28424
    :goto_5
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->flexible:Z

    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_6

    move v1, v3

    goto :goto_6

    :cond_6
    move v1, v2

    .line 28425
    :goto_6
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->phone_to_provider:Z

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_7

    move v1, v3

    goto :goto_7

    :cond_7
    move v1, v2

    .line 28426
    :goto_7
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->email_to_provider:Z

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_8

    move v0, v3

    goto :goto_8

    :cond_8
    move v0, v2

    .line 28427
    :goto_8
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->recurring:Z

    .line 28428
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->currency:Ljava/lang/String;

    .line 28429
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    const-string v1, "wrong Vector magic, got %x"

    const v4, 0x1cb5c415

    if-eq v0, v4, :cond_a

    if-nez p2, :cond_9

    return-void

    .line 28432
    :cond_9
    new-instance p1, Ljava/lang/RuntimeException;

    new-array p2, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v2

    invoke-static {v1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28436
    :cond_a
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    move v5, v2

    :goto_9
    if-ge v5, v0, :cond_c

    .line 28438
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v6

    invoke-static {p1, v6, p2}, Lorg/telegram/tgnet/TLRPC$TL_labeledPrice;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_labeledPrice;

    move-result-object v6

    if-nez v6, :cond_b

    return-void

    .line 28442
    :cond_b
    iget-object v7, p0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->prices:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 28444
    :cond_c
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_d

    .line 28445
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v5

    iput-wide v5, p0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->max_tip_amount:J

    .line 28447
    :cond_d
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_10

    .line 28448
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    if-eq v0, v4, :cond_f

    if-nez p2, :cond_e

    return-void

    .line 28451
    :cond_e
    new-instance p1, Ljava/lang/RuntimeException;

    new-array p2, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v2

    invoke-static {v1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28455
    :cond_f
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    :goto_a
    if-ge v2, v0, :cond_10

    .line 28457
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->suggested_tip_amounts:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 28460
    :cond_10
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_11

    .line 28461
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->terms_url:Ljava/lang/String;

    :cond_11
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 5

    const v0, 0x5db95a15

    .line 28466
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 28467
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->test:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->flags:I

    .line 28468
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->name_requested:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x3

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->flags:I

    .line 28469
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->phone_requested:Z

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x4

    goto :goto_2

    :cond_2
    and-int/lit8 v0, v0, -0x5

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->flags:I

    .line 28470
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->email_requested:Z

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x8

    goto :goto_3

    :cond_3
    and-int/lit8 v0, v0, -0x9

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->flags:I

    .line 28471
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->shipping_address_requested:Z

    if-eqz v1, :cond_4

    or-int/lit8 v0, v0, 0x10

    goto :goto_4

    :cond_4
    and-int/lit8 v0, v0, -0x11

    :goto_4
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->flags:I

    .line 28472
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->flexible:Z

    if-eqz v1, :cond_5

    or-int/lit8 v0, v0, 0x20

    goto :goto_5

    :cond_5
    and-int/lit8 v0, v0, -0x21

    :goto_5
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->flags:I

    .line 28473
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->phone_to_provider:Z

    if-eqz v1, :cond_6

    or-int/lit8 v0, v0, 0x40

    goto :goto_6

    :cond_6
    and-int/lit8 v0, v0, -0x41

    :goto_6
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->flags:I

    .line 28474
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->email_to_provider:Z

    if-eqz v1, :cond_7

    or-int/lit16 v0, v0, 0x80

    goto :goto_7

    :cond_7
    and-int/lit16 v0, v0, -0x81

    :goto_7
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->flags:I

    .line 28475
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->recurring:Z

    if-eqz v1, :cond_8

    or-int/lit16 v0, v0, 0x200

    goto :goto_8

    :cond_8
    and-int/lit16 v0, v0, -0x201

    :goto_8
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->flags:I

    .line 28476
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 28477
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->currency:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    const v0, 0x1cb5c415

    .line 28478
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 28479
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->prices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 28480
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    const/4 v2, 0x0

    move v3, v2

    :goto_9
    if-ge v3, v1, :cond_9

    .line 28482
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->prices:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_labeledPrice;

    invoke-virtual {v4, p1}, Lorg/telegram/tgnet/TLRPC$TL_labeledPrice;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 28484
    :cond_9
    iget v1, p0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->flags:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_a

    .line 28485
    iget-wide v3, p0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->max_tip_amount:J

    invoke-virtual {p1, v3, v4}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 28487
    :cond_a
    iget v1, p0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->flags:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_b

    .line 28488
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 28489
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->suggested_tip_amounts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 28490
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    :goto_a
    if-ge v2, v0, :cond_b

    .line 28492
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->suggested_tip_amounts:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 28495
    :cond_b
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_c

    .line 28496
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->terms_url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    :cond_c
    return-void
.end method
