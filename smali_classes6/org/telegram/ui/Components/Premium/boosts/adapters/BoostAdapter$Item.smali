.class public Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;
.super Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;
.source "BoostAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# instance fields
.field public boolValue:Z

.field public chat:Lorg/telegram/tgnet/TLRPC$Chat;

.field public floatValue:F

.field public intValue:I

.field public intValue2:I

.field public intValue3:I

.field public longValue:J

.field public object:Ljava/lang/Object;

.field public peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field public subType:I

.field public text:Ljava/lang/CharSequence;

.field public user:Ljava/lang/Object;

.field public values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(IZ)V
    .locals 0

    .line 368
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;-><init>(IZ)V

    return-void
.end method

.method public static asAddChannel()Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;
    .locals 3

    .line 446
    new-instance v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;-><init>(IZ)V

    return-object v0
.end method

.method public static asBoost(IILjava/lang/Object;I)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;
    .locals 2

    .line 425
    new-instance v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    if-ne p3, p0, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    const/4 v1, 0x2

    invoke-direct {v0, v1, p3}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;-><init>(IZ)V

    .line 426
    iput p0, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->subType:I

    .line 427
    iput p1, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->intValue:I

    .line 428
    iput-object p2, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->user:Ljava/lang/Object;

    return-object v0
.end method

.method public static asChat(Lorg/telegram/tgnet/TLRPC$Chat;ZI)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;
    .locals 3

    .line 387
    new-instance v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;-><init>(IZ)V

    .line 388
    iput-object p0, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    const/4 p0, 0x0

    .line 389
    iput-object p0, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 390
    iput-boolean p1, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->boolValue:Z

    .line 391
    iput p2, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->intValue:I

    return-object v0
.end method

.method public static asDateEnd(J)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;
    .locals 3

    .line 433
    new-instance v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;-><init>(IZ)V

    .line 434
    iput-wide p0, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->longValue:J

    return-object v0
.end method

.method public static asDivider()Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;
    .locals 3

    .line 376
    new-instance v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;-><init>(IZ)V

    return-object v0
.end method

.method public static asDivider(Ljava/lang/CharSequence;Z)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;
    .locals 3

    .line 380
    new-instance v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;-><init>(IZ)V

    .line 381
    iput-object p0, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->text:Ljava/lang/CharSequence;

    .line 382
    iput-boolean p1, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->boolValue:Z

    return-object v0
.end method

.method public static asDuration(Ljava/lang/Object;IIJILjava/lang/String;Z)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;
    .locals 2

    .line 463
    new-instance v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    if-ne p1, p5, :cond_0

    const/4 p5, 0x1

    goto :goto_0

    :cond_0
    const/4 p5, 0x0

    :goto_0
    const/16 v1, 0xc

    invoke-direct {v0, v1, p5}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;-><init>(IZ)V

    .line 464
    iput p1, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->intValue:I

    .line 465
    iput p2, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->intValue2:I

    .line 466
    iput-wide p3, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->longValue:J

    .line 467
    iput-boolean p7, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->boolValue:Z

    .line 468
    iput-object p6, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->text:Ljava/lang/CharSequence;

    .line 469
    iput-object p0, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->object:Ljava/lang/Object;

    return-object v0
.end method

.method public static asEnterPrize(I)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;
    .locals 3

    .line 405
    new-instance v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;-><init>(IZ)V

    .line 406
    iput p0, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->intValue:I

    return-object v0
.end method

.method public static asHeader()Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;
    .locals 2

    .line 372
    new-instance v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;-><init>(IZ)V

    return-object v0
.end method

.method public static asParticipants(IIZLjava/util/List;)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ",
            "Ljava/util/List<",
            "Lorg/telegram/tgnet/TLObject;",
            ">;)",
            "Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;"
        }
    .end annotation

    .line 474
    new-instance v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/16 v1, 0xb

    invoke-direct {v0, v1, p1}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;-><init>(IZ)V

    .line 475
    iput p0, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->subType:I

    .line 476
    iput-boolean p2, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->boolValue:Z

    .line 477
    iput-object p3, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->user:Ljava/lang/Object;

    return-object v0
.end method

.method public static asPeer(Lorg/telegram/tgnet/TLRPC$InputPeer;ZI)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;
    .locals 3

    .line 396
    new-instance v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;-><init>(IZ)V

    .line 397
    iput-object p0, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    const/4 p0, 0x0

    .line 398
    iput-object p0, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 399
    iput-boolean p1, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->boolValue:Z

    .line 400
    iput p2, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->intValue:I

    return-object v0
.end method

.method public static asSingleBoost(Ljava/lang/Object;)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;
    .locals 3

    .line 419
    new-instance v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;-><init>(IZ)V

    .line 420
    iput-object p0, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->user:Ljava/lang/Object;

    return-object v0
.end method

.method public static asSlider(Ljava/util/List;I)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I)",
            "Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;"
        }
    .end annotation

    .line 439
    new-instance v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;-><init>(IZ)V

    .line 440
    iput-object p0, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->values:Ljava/util/List;

    .line 441
    iput p1, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->intValue:I

    return-object v0
.end method

.method public static asSubTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;
    .locals 3

    .line 450
    new-instance v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;-><init>(IZ)V

    .line 451
    iput-object p0, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->text:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public static asSubTitleWithCounter(Ljava/lang/CharSequence;I)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;
    .locals 3

    .line 456
    new-instance v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;-><init>(IZ)V

    .line 457
    iput-object p0, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->text:Ljava/lang/CharSequence;

    .line 458
    iput p1, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->intValue:I

    return-object v0
.end method

.method public static asSwitcher(Ljava/lang/CharSequence;ZZI)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;
    .locals 2

    .line 411
    new-instance v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    const/16 v1, 0xf

    invoke-direct {v0, v1, p1}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;-><init>(IZ)V

    .line 412
    iput-object p0, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->text:Ljava/lang/CharSequence;

    .line 413
    iput-boolean p2, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->boolValue:Z

    .line 414
    iput p3, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->subType:I

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 484
    const-class v2, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 485
    :cond_1
    check-cast p1, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    .line 486
    iget v2, p0, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    iget v3, p1, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    if-eq v2, v3, :cond_2

    return v1

    .line 489
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v3, p1, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->user:Ljava/lang/Object;

    iget-object v3, p1, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->user:Ljava/lang/Object;

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget-object v3, p1, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->object:Ljava/lang/Object;

    iget-object v3, p1, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->object:Ljava/lang/Object;

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->boolValue:Z

    iget-boolean v3, p1, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->boolValue:Z

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->values:Ljava/util/List;

    iget-object v3, p1, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->values:Ljava/util/List;

    if-ne v2, v3, :cond_4

    iget v2, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->intValue:I

    iget v3, p1, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->intValue:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->intValue2:I

    iget v3, p1, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->intValue2:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->intValue3:I

    iget v3, p1, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->intValue3:I

    if-ne v2, v3, :cond_4

    iget-wide v2, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->longValue:J

    iget-wide v4, p1, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->longValue:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    iget v2, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->subType:I

    iget v3, p1, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->subType:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->floatValue:F

    iget v3, p1, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->floatValue:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->text:Ljava/lang/CharSequence;

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->text:Ljava/lang/CharSequence;

    .line 496
    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v1
.end method
