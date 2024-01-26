.class public Lorg/telegram/messenger/MessagesController$PeerColor;
.super Ljava/lang/Object;
.source "MessagesController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/MessagesController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PeerColor"
.end annotation


# instance fields
.field private final colors:[I

.field private final darkColors:[I

.field public hidden:Z

.field public id:I

.field public isDefaultName:Z

.field public lvl:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 4278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    new-array v1, v0, [I

    .line 4283
    iput-object v1, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->colors:[I

    new-array v0, v0, [I

    .line 4284
    iput-object v0, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->darkColors:[I

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/messenger/MessagesController$PeerColor;)[I
    .locals 0

    .line 4278
    iget-object p0, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->colors:[I

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/messenger/MessagesController$PeerColor;)[I
    .locals 0

    .line 4278
    iget-object p0, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->darkColors:[I

    return-object p0
.end method

.method public static fromString(Ljava/lang/String;)Lorg/telegram/messenger/MessagesController$PeerColor;
    .locals 12

    const-string v0, ","

    const/4 v1, 0x0

    if-eqz p0, :cond_a

    .line 4457
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x23

    if-eq v3, v4, :cond_0

    goto/16 :goto_8

    .line 4460
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x48

    if-ne v3, v5, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    const/4 v5, 0x2

    if-eqz v3, :cond_2

    move v6, v5

    goto :goto_1

    :cond_2
    move v6, v4

    .line 4465
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v6, :cond_3

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x5b

    if-ne v7, v8, :cond_3

    const/16 v7, 0x5d

    .line 4466
    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-le v7, v6, :cond_3

    add-int/lit8 v6, v6, 0x1

    .line 4468
    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v7, v4

    move v11, v7

    move v7, v6

    move v6, v11

    goto :goto_2

    :cond_3
    move v7, v2

    :goto_2
    const/16 v8, 0x7b

    .line 4472
    invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-gez v8, :cond_4

    return-object v1

    .line 4475
    :cond_4
    :try_start_0
    new-instance v9, Lorg/telegram/messenger/MessagesController$PeerColor;

    invoke-direct {v9}, Lorg/telegram/messenger/MessagesController$PeerColor;-><init>()V

    .line 4476
    invoke-virtual {p0, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v9, Lorg/telegram/messenger/MessagesController$PeerColor;->id:I

    .line 4477
    iput-boolean v3, v9, Lorg/telegram/messenger/MessagesController$PeerColor;->hidden:Z

    .line 4478
    iput v7, v9, Lorg/telegram/messenger/MessagesController$PeerColor;->lvl:I

    add-int/2addr v8, v4

    .line 4479
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-virtual {p0, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v3, "@"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 4480
    aget-object v3, p0, v2

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move v6, v2

    :goto_3
    const/4 v7, 0x6

    if-ge v6, v7, :cond_6

    .line 4482
    iget-object v7, v9, Lorg/telegram/messenger/MessagesController$PeerColor;->colors:[I

    array-length v8, v3

    add-int/lit8 v10, v6, 0x1

    if-lt v8, v10, :cond_5

    aget-object v8, v3, v6

    invoke-static {v8}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    goto :goto_4

    :cond_5
    aget v8, v7, v2

    :goto_4
    aput v8, v7, v6

    move v6, v10

    goto :goto_3

    .line 4483
    :cond_6
    array-length v3, p0

    if-lt v3, v5, :cond_8

    .line 4484
    aget-object p0, p0, v4

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    move v0, v2

    :goto_5
    if-ge v0, v7, :cond_9

    .line 4486
    iget-object v3, v9, Lorg/telegram/messenger/MessagesController$PeerColor;->darkColors:[I

    array-length v4, p0

    add-int/lit8 v5, v0, 0x1

    if-lt v4, v5, :cond_7

    aget-object v4, p0, v0

    invoke-static {v4}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_6

    :cond_7
    aget v4, v3, v2

    :goto_6
    aput v4, v3, v0

    move v0, v5

    goto :goto_5

    :cond_8
    :goto_7
    if-ge v2, v7, :cond_9

    .line 4489
    iget-object p0, v9, Lorg/telegram/messenger/MessagesController$PeerColor;->darkColors:[I

    iget-object v0, v9, Lorg/telegram/messenger/MessagesController$PeerColor;->colors:[I

    aget v0, v0, v2

    aput v0, p0, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_9
    return-object v9

    :catch_0
    move-exception p0

    .line 4493
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_a
    :goto_8
    return-object v1
.end method

.method public static fromTL(Lorg/telegram/tgnet/TLRPC$TL_help_peerColorOption;)Lorg/telegram/messenger/MessagesController$PeerColor;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 4410
    :cond_0
    new-instance v0, Lorg/telegram/messenger/MessagesController$PeerColor;

    invoke-direct {v0}, Lorg/telegram/messenger/MessagesController$PeerColor;-><init>()V

    .line 4411
    iget v1, p0, Lorg/telegram/tgnet/TLRPC$TL_help_peerColorOption;->color_id:I

    iput v1, v0, Lorg/telegram/messenger/MessagesController$PeerColor;->id:I

    .line 4412
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_help_peerColorOption;->hidden:Z

    iput-boolean v1, v0, Lorg/telegram/messenger/MessagesController$PeerColor;->hidden:Z

    .line 4413
    iget v1, p0, Lorg/telegram/tgnet/TLRPC$TL_help_peerColorOption;->flags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_1

    .line 4414
    iget v1, p0, Lorg/telegram/tgnet/TLRPC$TL_help_peerColorOption;->channel_min_level:I

    iput v1, v0, Lorg/telegram/messenger/MessagesController$PeerColor;->lvl:I

    .line 4417
    :cond_1
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$TL_help_peerColorOption;->colors:Lorg/telegram/tgnet/TLRPC$help_PeerColorSet;

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController$PeerColor;->optionToColors(Lorg/telegram/tgnet/TLRPC$help_PeerColorSet;)[I

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$PeerColor;->colors:[I

    const/4 v3, 0x0

    const/4 v4, 0x6

    invoke-static {v1, v3, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4418
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_peerColorOption;->dark_colors:Lorg/telegram/tgnet/TLRPC$help_PeerColorSet;

    invoke-static {p0}, Lorg/telegram/messenger/MessagesController$PeerColor;->optionToColors(Lorg/telegram/tgnet/TLRPC$help_PeerColorSet;)[I

    move-result-object p0

    iget-object v1, v0, Lorg/telegram/messenger/MessagesController$PeerColor;->darkColors:[I

    invoke-static {p0, v3, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static optionToColors(Lorg/telegram/tgnet/TLRPC$help_PeerColorSet;)[I
    .locals 9

    const/4 v0, 0x6

    new-array v1, v0, [I

    .line 4423
    fill-array-data v1, :array_0

    .line 4425
    instance-of v2, p0, Lorg/telegram/tgnet/TLRPC$TL_help_peerColorSet;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 4426
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_help_peerColorSet;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_peerColorSet;->colors:Ljava/util/ArrayList;

    goto :goto_3

    .line 4427
    :cond_0
    instance-of v2, p0, Lorg/telegram/tgnet/TLRPC$TL_help_peerColorProfileSet;

    if-eqz v2, :cond_4

    .line 4428
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_help_peerColorProfileSet;

    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_help_peerColorProfileSet;->palette_colors:Ljava/util/ArrayList;

    .line 4429
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_help_peerColorProfileSet;->bg_colors:Ljava/util/ArrayList;

    .line 4430
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_peerColorProfileSet;->story_colors:Ljava/util/ArrayList;

    .line 4431
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x2

    if-eqz v2, :cond_1

    move v7, v3

    .line 4433
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    if-ge v7, v8, :cond_1

    .line 4434
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_2

    move v2, v3

    .line 4437
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    if-ge v2, v7, :cond_2

    .line 4438
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    if-eqz p0, :cond_3

    move v2, v3

    .line 4441
    :goto_2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 4442
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    move-object p0, v5

    goto :goto_3

    :cond_4
    const/4 p0, 0x0

    :goto_3
    if-eqz p0, :cond_6

    .line 4446
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/high16 v4, -0x1000000

    if-lez v2, :cond_5

    .line 4447
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    or-int/2addr v2, v4

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 4449
    :cond_5
    :goto_4
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-ge v3, v2, :cond_6

    .line 4450
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    or-int/2addr v2, v4

    aput v2, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_6
    return-object v1

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public appendString(Ljava/lang/StringBuilder;)V
    .locals 11

    const-string v0, "#"

    .line 4360
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4361
    iget-boolean v0, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->hidden:Z

    if-eqz v0, :cond_0

    const-string v0, "H"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4362
    :cond_0
    iget v0, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->lvl:I

    if-lez v0, :cond_1

    const-string v0, "["

    .line 4363
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->lvl:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4365
    :cond_1
    iget v0, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->id:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "{"

    .line 4366
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4367
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->colors:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4368
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->colors:[I

    const/4 v2, 0x1

    aget v3, v0, v2

    aget v0, v0, v1

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const-string v8, ","

    if-eq v3, v0, :cond_4

    .line 4369
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4370
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->colors:[I

    aget v0, v0, v2

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4371
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->colors:[I

    aget v3, v0, v7

    aget v9, v0, v1

    if-ne v3, v9, :cond_2

    aget v3, v0, v6

    aget v0, v0, v1

    if-eq v3, v0, :cond_4

    .line 4372
    :cond_2
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4373
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->colors:[I

    aget v0, v0, v7

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4374
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4375
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->colors:[I

    aget v0, v0, v6

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4376
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->colors:[I

    aget v3, v0, v5

    aget v9, v0, v1

    if-ne v3, v9, :cond_3

    aget v3, v0, v4

    aget v0, v0, v1

    if-eq v3, v0, :cond_4

    .line 4377
    :cond_3
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4378
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->colors:[I

    aget v0, v0, v5

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4379
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4380
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->colors:[I

    aget v0, v0, v4

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4384
    :cond_4
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->darkColors:[I

    aget v3, v0, v1

    iget-object v9, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->colors:[I

    aget v10, v9, v1

    if-ne v3, v10, :cond_5

    aget v3, v0, v2

    aget v10, v9, v2

    if-ne v3, v10, :cond_5

    aget v0, v0, v7

    aget v3, v9, v7

    if-eq v0, v3, :cond_8

    :cond_5
    const-string v0, "@"

    .line 4385
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4386
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->darkColors:[I

    aget v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4387
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->darkColors:[I

    aget v3, v0, v2

    aget v0, v0, v1

    if-eq v3, v0, :cond_8

    .line 4388
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4389
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->darkColors:[I

    aget v0, v0, v2

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4390
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->darkColors:[I

    aget v2, v0, v7

    aget v3, v0, v1

    if-ne v2, v3, :cond_6

    aget v2, v0, v6

    aget v0, v0, v1

    if-eq v2, v0, :cond_8

    .line 4391
    :cond_6
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4392
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->darkColors:[I

    aget v0, v0, v7

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4393
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4394
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->darkColors:[I

    aget v0, v0, v6

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4395
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->darkColors:[I

    aget v2, v0, v5

    aget v3, v0, v1

    if-ne v2, v3, :cond_7

    aget v2, v0, v4

    aget v0, v0, v1

    if-eq v2, v0, :cond_8

    .line 4396
    :cond_7
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4397
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->darkColors:[I

    aget v0, v0, v5

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4398
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4399
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->darkColors:[I

    aget v0, v0, v4

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_8
    const-string/jumbo v0, "}"

    .line 4404
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public getAvatarColor1()I
    .locals 3

    const/4 v0, 0x0

    .line 4354
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MessagesController$PeerColor;->getBgColor2(Z)I

    move-result v1

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MessagesController$PeerColor;->getStoryColor2(Z)I

    move-result v0

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-static {v1, v0, v2}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    return v0
.end method

.method public getAvatarColor2()I
    .locals 3

    const/4 v0, 0x0

    .line 4357
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MessagesController$PeerColor;->getBgColor1(Z)I

    move-result v1

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MessagesController$PeerColor;->getStoryColor1(Z)I

    move-result v0

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-static {v1, v0, v2}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    return v0
.end method

.method public getBgColor1(Z)I
    .locals 1

    .line 4342
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MessagesController$PeerColor;->hasColor6(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MessagesController$PeerColor;->getColor3(Z)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MessagesController$PeerColor;->getColor2(Z)I

    move-result p1

    :goto_0
    return p1
.end method

.method public getBgColor2(Z)I
    .locals 1

    .line 4345
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MessagesController$PeerColor;->hasColor6(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MessagesController$PeerColor;->getColor4(Z)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MessagesController$PeerColor;->getColor2(Z)I

    move-result p1

    :goto_0
    return p1
.end method

.method public getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I
    .locals 2

    if-ltz p1, :cond_4

    const/4 v0, 0x5

    if-le p1, v0, :cond_0

    goto :goto_2

    .line 4287
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->isDefaultName:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->id:I

    if-ltz v0, :cond_1

    const/4 v1, 0x7

    if-ge v0, v1, :cond_1

    .line 4288
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_nameInMessage:[I

    aget p1, p1, v0

    invoke-static {p1, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1

    :cond_1
    if-eqz p2, :cond_2

    .line 4290
    invoke-interface {p2}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->isDark()Z

    move-result p2

    goto :goto_0

    :cond_2
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result p2

    :goto_0
    if-eqz p2, :cond_3

    .line 4291
    iget-object p2, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->darkColors:[I

    goto :goto_1

    :cond_3
    iget-object p2, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->colors:[I

    :goto_1
    aget p1, p2, p1

    return p1

    :cond_4
    :goto_2
    const/4 p1, 0x0

    return p1
.end method

.method public getColor1()I
    .locals 2

    .line 4312
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->darkColors:[I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->colors:[I

    :goto_0
    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getColor1(Z)I
    .locals 1

    if-eqz p1, :cond_0

    .line 4294
    iget-object p1, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->darkColors:[I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->colors:[I

    :goto_0
    const/4 v0, 0x0

    aget p1, p1, v0

    return p1
.end method

.method public getColor2()I
    .locals 2

    .line 4315
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->darkColors:[I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->colors:[I

    :goto_0
    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getColor2(Z)I
    .locals 1

    if-eqz p1, :cond_0

    .line 4297
    iget-object p1, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->darkColors:[I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->colors:[I

    :goto_0
    const/4 v0, 0x1

    aget p1, p1, v0

    return p1
.end method

.method public getColor3()I
    .locals 2

    .line 4318
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->darkColors:[I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->colors:[I

    :goto_0
    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public getColor3(Z)I
    .locals 1

    if-eqz p1, :cond_0

    .line 4300
    iget-object p1, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->darkColors:[I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->colors:[I

    :goto_0
    const/4 v0, 0x2

    aget p1, p1, v0

    return p1
.end method

.method public getColor4()I
    .locals 2

    .line 4321
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->darkColors:[I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->colors:[I

    :goto_0
    const/4 v1, 0x3

    aget v0, v0, v1

    return v0
.end method

.method public getColor4(Z)I
    .locals 1

    if-eqz p1, :cond_0

    .line 4303
    iget-object p1, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->darkColors:[I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->colors:[I

    :goto_0
    const/4 v0, 0x3

    aget p1, p1, v0

    return p1
.end method

.method public getColor5()I
    .locals 2

    .line 4324
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->darkColors:[I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->colors:[I

    :goto_0
    const/4 v1, 0x4

    aget v0, v0, v1

    return v0
.end method

.method public getColor5(Z)I
    .locals 1

    if-eqz p1, :cond_0

    .line 4306
    iget-object p1, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->darkColors:[I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->colors:[I

    :goto_0
    const/4 v0, 0x4

    aget p1, p1, v0

    return p1
.end method

.method public getColor6(Z)I
    .locals 1

    if-eqz p1, :cond_0

    .line 4309
    iget-object p1, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->darkColors:[I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->colors:[I

    :goto_0
    const/4 v0, 0x5

    aget p1, p1, v0

    return p1
.end method

.method public getStoryColor1(Z)I
    .locals 1

    .line 4348
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MessagesController$PeerColor;->hasColor6(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MessagesController$PeerColor;->getColor5(Z)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MessagesController$PeerColor;->getColor3(Z)I

    move-result p1

    :goto_0
    return p1
.end method

.method public getStoryColor2(Z)I
    .locals 1

    .line 4351
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MessagesController$PeerColor;->hasColor6(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MessagesController$PeerColor;->getColor6(Z)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MessagesController$PeerColor;->getColor4(Z)I

    move-result p1

    :goto_0
    return p1
.end method

.method public hasColor2()Z
    .locals 2

    .line 4327
    invoke-virtual {p0}, Lorg/telegram/messenger/MessagesController$PeerColor;->getColor2()I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/messenger/MessagesController$PeerColor;->getColor1()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasColor2(Z)Z
    .locals 1

    .line 4333
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MessagesController$PeerColor;->getColor2(Z)I

    move-result v0

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MessagesController$PeerColor;->getColor1(Z)I

    move-result p1

    if-eq v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hasColor3()Z
    .locals 2

    .line 4330
    invoke-virtual {p0}, Lorg/telegram/messenger/MessagesController$PeerColor;->getColor3()I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/messenger/MessagesController$PeerColor;->getColor1()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasColor3(Z)Z
    .locals 1

    .line 4336
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MessagesController$PeerColor;->getColor3(Z)I

    move-result v0

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MessagesController$PeerColor;->getColor1(Z)I

    move-result p1

    if-eq v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hasColor6(Z)Z
    .locals 1

    .line 4339
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MessagesController$PeerColor;->getColor6(Z)I

    move-result v0

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MessagesController$PeerColor;->getColor1(Z)I

    move-result p1

    if-eq v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
