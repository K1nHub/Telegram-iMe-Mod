.class public Lorg/telegram/tgnet/tl/TL_stories$TL_storyItem_layer160;
.super Lorg/telegram/tgnet/tl/TL_stories$TL_storyItem;
.source "TL_stories.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2513
    invoke-direct {p0}, Lorg/telegram/tgnet/tl/TL_stories$TL_storyItem;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 8

    .line 2517
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->flags:I

    and-int/lit8 v1, v0, 0x20

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 2518
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->pinned:Z

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    .line 2519
    :goto_1
    iput-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->isPublic:Z

    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v2

    .line 2520
    :goto_2
    iput-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->close_friends:Z

    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_3

    :cond_3
    move v1, v2

    .line 2521
    :goto_3
    iput-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->min:Z

    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_4

    move v1, v3

    goto :goto_4

    :cond_4
    move v1, v2

    .line 2522
    :goto_4
    iput-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->noforwards:Z

    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_5

    move v1, v3

    goto :goto_5

    :cond_5
    move v1, v2

    .line 2523
    :goto_5
    iput-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->edited:Z

    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_6

    move v1, v3

    goto :goto_6

    :cond_6
    move v1, v2

    .line 2524
    :goto_6
    iput-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->contacts:Z

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_7

    move v0, v3

    goto :goto_7

    :cond_7
    move v0, v2

    .line 2525
    :goto_7
    iput-boolean v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->selected_contacts:Z

    .line 2526
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    .line 2527
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->date:I

    .line 2528
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->expire_date:I

    .line 2529
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->flags:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_8

    .line 2530
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->caption:Ljava/lang/String;

    .line 2532
    :cond_8
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->flags:I

    and-int/lit8 v0, v0, 0x2

    const-string v1, "wrong Vector magic, got %x"

    const v4, 0x1cb5c415

    if-eqz v0, :cond_c

    .line 2533
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    if-eq v0, v4, :cond_a

    if-nez p2, :cond_9

    return-void

    .line 2536
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

    .line 2540
    :cond_a
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    move v5, v2

    :goto_8
    if-ge v5, v0, :cond_c

    .line 2542
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v6

    invoke-static {p1, v6, p2}, Lorg/telegram/tgnet/TLRPC$MessageEntity;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessageEntity;

    move-result-object v6

    if-nez v6, :cond_b

    return-void

    .line 2546
    :cond_b
    iget-object v7, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->entities:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 2549
    :cond_c
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 2550
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_10

    .line 2551
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    if-eq v0, v4, :cond_e

    if-nez p2, :cond_d

    return-void

    .line 2554
    :cond_d
    new-instance p1, Ljava/lang/RuntimeException;

    new-array p2, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v2

    invoke-static {v1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2558
    :cond_e
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    :goto_9
    if-ge v2, v0, :cond_10

    .line 2560
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    invoke-static {p1, v1, p2}, Lorg/telegram/tgnet/TLRPC$PrivacyRule;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$PrivacyRule;

    move-result-object v1

    if-nez v1, :cond_f

    return-void

    .line 2564
    :cond_f
    iget-object v3, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->privacy:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 2567
    :cond_10
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_11

    .line 2568
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_stories$StoryViews;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->views:Lorg/telegram/tgnet/tl/TL_stories$StoryViews;

    :cond_11
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 5

    const v0, 0x562aa637

    .line 2573
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 2574
    iget-boolean v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->pinned:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->flags:I

    or-int/lit8 v0, v0, 0x20

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->flags:I

    and-int/lit8 v0, v0, -0x21

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->flags:I

    .line 2575
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->isPublic:Z

    if-eqz v1, :cond_1

    or-int/lit16 v0, v0, 0x80

    goto :goto_1

    :cond_1
    and-int/lit16 v0, v0, -0x81

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->flags:I

    .line 2576
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->close_friends:Z

    if-eqz v1, :cond_2

    or-int/lit16 v0, v0, 0x100

    goto :goto_2

    :cond_2
    and-int/lit16 v0, v0, -0x101

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->flags:I

    .line 2577
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->min:Z

    if-eqz v1, :cond_3

    or-int/lit16 v0, v0, 0x200

    goto :goto_3

    :cond_3
    and-int/lit16 v0, v0, -0x201

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->flags:I

    .line 2578
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->noforwards:Z

    if-eqz v1, :cond_4

    or-int/lit16 v0, v0, 0x400

    goto :goto_4

    :cond_4
    and-int/lit16 v0, v0, -0x401

    :goto_4
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->flags:I

    .line 2579
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->edited:Z

    if-eqz v1, :cond_5

    or-int/lit16 v0, v0, 0x800

    goto :goto_5

    :cond_5
    and-int/lit16 v0, v0, -0x801

    :goto_5
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->flags:I

    .line 2580
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->contacts:Z

    if-eqz v1, :cond_6

    or-int/lit16 v0, v0, 0x1000

    goto :goto_6

    :cond_6
    and-int/lit16 v0, v0, -0x1001

    :goto_6
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->flags:I

    .line 2581
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->selected_contacts:Z

    if-eqz v1, :cond_7

    or-int/lit16 v0, v0, 0x2000

    goto :goto_7

    :cond_7
    and-int/lit16 v0, v0, -0x2001

    :goto_7
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->flags:I

    .line 2582
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 2583
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 2584
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->date:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 2585
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->expire_date:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 2586
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_8

    .line 2587
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->caption:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 2589
    :cond_8
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->flags:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const v2, 0x1cb5c415

    if-eqz v0, :cond_9

    .line 2590
    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 2591
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->entities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2592
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    move v3, v1

    :goto_8
    if-ge v3, v0, :cond_9

    .line 2594
    iget-object v4, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->entities:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    invoke-virtual {v4, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 2597
    :cond_9
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 2598
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_a

    .line 2599
    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 2600
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->privacy:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2601
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    :goto_9
    if-ge v1, v0, :cond_a

    .line 2603
    iget-object v2, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->privacy:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$PrivacyRule;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 2606
    :cond_a
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_b

    .line 2607
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->views:Lorg/telegram/tgnet/tl/TL_stories$StoryViews;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    :cond_b
    return-void
.end method
