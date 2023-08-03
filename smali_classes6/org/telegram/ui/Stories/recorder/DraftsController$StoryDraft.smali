.class public Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;
.super Ljava/lang/Object;
.source "DraftsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stories/recorder/DraftsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StoryDraft"
.end annotation


# instance fields
.field public averageDuration:J

.field public caption:Ljava/lang/String;

.field public captionEntities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$MessageEntity;",
            ">;"
        }
    .end annotation
.end field

.field public date:J

.field public duration:J

.field public file:Ljava/lang/String;

.field public fileDeletable:Z

.field private filterFilePath:Ljava/lang/String;

.field private filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

.field public gradientBottomColor:I

.field public gradientTopColor:I

.field public height:I

.field public id:J

.field public invert:I

.field public isVideo:Z

.field public left:J

.field public final matrixValues:[F

.field public mediaEntities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;",
            ">;"
        }
    .end annotation
.end field

.field public muted:Z

.field public orientation:I

.field public paintFilePath:Ljava/lang/String;

.field private final parts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Stories/recorder/StoryEntry$Part;",
            ">;"
        }
    .end annotation
.end field

.field private period:I

.field public final privacyRules:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$InputPrivacyRule;",
            ">;"
        }
    .end annotation
.end field

.field public resultHeight:I

.field public resultWidth:I

.field public right:J

.field public stickers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/telegram/tgnet/TLRPC$InputDocument;",
            ">;"
        }
    .end annotation
.end field

.field public thumb:Ljava/lang/String;

.field public width:I


# direct methods
.method public constructor <init>(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 8

    .line 499
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 309
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->matrixValues:[F

    .line 314
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->privacyRules:Ljava/util/ArrayList;

    .line 326
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->parts:Ljava/util/ArrayList;

    .line 500
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    const v1, -0x4e94ff4b

    if-eq v0, v1, :cond_1

    if-nez p2, :cond_0

    return-void

    .line 502
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "StoryDraft parse error"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 507
    :cond_1
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->date:J

    .line 508
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->thumb:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 509
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 510
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->thumb:Ljava/lang/String;

    .line 512
    :cond_2
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readBool(Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->isVideo:Z

    .line 513
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->file:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 514
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 515
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->file:Ljava/lang/String;

    .line 517
    :cond_3
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readBool(Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->fileDeletable:Z

    .line 518
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readBool(Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->muted:Z

    .line 519
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->left:J

    .line 520
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->right:J

    .line 521
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->orientation:I

    .line 522
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->invert:I

    .line 523
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->width:I

    .line 524
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->height:I

    .line 525
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->resultWidth:I

    .line 526
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->resultHeight:I

    .line 527
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->duration:J

    const/4 v0, 0x0

    move v2, v0

    .line 528
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->matrixValues:[F

    array-length v4, v3

    if-ge v2, v4, :cond_4

    .line 529
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readFloat(Z)F

    move-result v4

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 531
    :cond_4
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    iput v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->gradientTopColor:I

    .line 532
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    iput v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->gradientBottomColor:I

    .line 533
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->caption:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 534
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_5

    .line 535
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->caption:Ljava/lang/String;

    .line 537
    :cond_5
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    const v3, 0x1cb5c415

    if-eq v2, v3, :cond_7

    if-nez p2, :cond_6

    return-void

    .line 540
    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Vector magic in StoryDraft parse error (1)"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 543
    :cond_7
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    move v4, v0

    :goto_1
    if-ge v4, v2, :cond_9

    .line 545
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->captionEntities:Ljava/util/ArrayList;

    if-nez v5, :cond_8

    .line 546
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->captionEntities:Ljava/util/ArrayList;

    .line 548
    :cond_8
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->captionEntities:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v6

    invoke-static {p1, v6, p2}, Lorg/telegram/tgnet/TLRPC$MessageEntity;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessageEntity;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 550
    :cond_9
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    if-eq v2, v3, :cond_b

    if-nez p2, :cond_a

    return-void

    .line 553
    :cond_a
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Vector magic in StoryDraft parse error (2)"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 556
    :cond_b
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    .line 557
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->privacyRules:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    move v4, v0

    :goto_2
    if-ge v4, v2, :cond_c

    .line 559
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->privacyRules:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v6

    invoke-static {p1, v6, p2}, Lorg/telegram/tgnet/TLRPC$InputPrivacyRule;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputPrivacyRule;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 561
    :cond_c
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readBool(Z)Z

    .line 562
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->paintFilePath:Ljava/lang/String;

    if-eqz v2, :cond_d

    .line 563
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_d

    .line 564
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->paintFilePath:Ljava/lang/String;

    .line 566
    :cond_d
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v4

    iput-wide v4, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->averageDuration:J

    .line 567
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    if-eq v2, v3, :cond_f

    if-nez p2, :cond_e

    return-void

    .line 570
    :cond_e
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Vector magic in StoryDraft parse error (3)"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 573
    :cond_f
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    move v4, v0

    :goto_3
    if-ge v4, v2, :cond_11

    .line 575
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->mediaEntities:Ljava/util/ArrayList;

    if-nez v5, :cond_10

    .line 576
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->mediaEntities:Ljava/util/ArrayList;

    .line 578
    :cond_10
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->mediaEntities:Ljava/util/ArrayList;

    new-instance v6, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;

    const/4 v7, 0x1

    invoke-direct {v6, p1, v7}, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;-><init>(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 580
    :cond_11
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    if-eq v2, v3, :cond_13

    if-nez p2, :cond_12

    return-void

    .line 583
    :cond_12
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Vector magic in StoryDraft parse error (4)"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 586
    :cond_13
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    move v4, v0

    :goto_4
    if-ge v4, v2, :cond_15

    .line 588
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->stickers:Ljava/util/List;

    if-nez v5, :cond_14

    .line 589
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->stickers:Ljava/util/List;

    .line 591
    :cond_14
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->stickers:Ljava/util/List;

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v6

    invoke-static {p1, v6, p2}, Lorg/telegram/tgnet/TLRPC$InputDocument;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputDocument;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 593
    :cond_15
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->filterFilePath:Ljava/lang/String;

    if-eqz v2, :cond_16

    .line 594
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_16

    .line 595
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->filterFilePath:Ljava/lang/String;

    .line 597
    :cond_16
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    const v4, 0x56730bcc

    if-ne v2, v4, :cond_17

    .line 599
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    goto :goto_5

    :cond_17
    const v1, -0x4e94ff4a

    if-ne v2, v1, :cond_18

    .line 601
    new-instance v1, Lorg/telegram/messenger/MediaController$SavedFilterState;

    invoke-direct {v1}, Lorg/telegram/messenger/MediaController$SavedFilterState;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    .line 602
    invoke-virtual {v1, p1, p2}, Lorg/telegram/messenger/MediaController$SavedFilterState;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 604
    :cond_18
    :goto_5
    invoke-virtual {p1}, Lorg/telegram/tgnet/AbstractSerializedData;->remaining()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_19

    .line 605
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->period:I

    .line 607
    :cond_19
    invoke-virtual {p1}, Lorg/telegram/tgnet/AbstractSerializedData;->remaining()I

    move-result v1

    if-lez v1, :cond_1c

    .line 608
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    if-eq v1, v3, :cond_1b

    if-nez p2, :cond_1a

    return-void

    .line 611
    :cond_1a
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Vector magic in StoryDraft parse error (5)"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 614
    :cond_1b
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    .line 615
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->parts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :goto_6
    if-ge v0, v1, :cond_1c

    .line 617
    new-instance v2, Lorg/telegram/ui/Stories/recorder/StoryEntry$Part;

    invoke-direct {v2}, Lorg/telegram/ui/Stories/recorder/StoryEntry$Part;-><init>()V

    .line 618
    invoke-virtual {v2, p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryEntry$Part;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 619
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->parts:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_1c
    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V
    .locals 9

    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 309
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->matrixValues:[F

    .line 314
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->privacyRules:Ljava/util/ArrayList;

    .line 326
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->parts:Ljava/util/ArrayList;

    .line 329
    iget-wide v3, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->draftId:J

    iput-wide v3, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->id:J

    .line 330
    iget-wide v3, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->draftDate:J

    iput-wide v3, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->date:J

    .line 331
    iget-object v3, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->draftThumbFile:Ljava/io/File;

    const-string v4, ""

    if-nez v3, :cond_0

    move-object v3, v4

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    iput-object v3, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->thumb:Ljava/lang/String;

    .line 332
    iget-boolean v3, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    iput-boolean v3, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->isVideo:Z

    .line 333
    iget-object v3, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->file:Ljava/io/File;

    if-nez v3, :cond_1

    move-object v3, v4

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    iput-object v3, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->file:Ljava/lang/String;

    .line 334
    iget-boolean v3, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->fileDeletable:Z

    iput-boolean v3, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->fileDeletable:Z

    .line 335
    iget-boolean v3, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->muted:Z

    iput-boolean v3, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->muted:Z

    .line 336
    iget v3, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->left:F

    iget-wide v5, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->duration:J

    long-to-float v7, v5

    mul-float/2addr v3, v7

    float-to-long v7, v3

    iput-wide v7, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->left:J

    .line 337
    iget v3, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->right:F

    long-to-float v7, v5

    mul-float/2addr v3, v7

    float-to-long v7, v3

    iput-wide v7, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->right:J

    .line 338
    iget v3, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->orientation:I

    iput v3, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->orientation:I

    .line 339
    iget v3, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->invert:I

    iput v3, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->invert:I

    .line 340
    iget v3, p1, Lorg/telegram/ui/Stories/recorder/IStoryPart;->width:I

    iput v3, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->width:I

    .line 341
    iget v3, p1, Lorg/telegram/ui/Stories/recorder/IStoryPart;->height:I

    iput v3, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->height:I

    .line 342
    iget v3, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultWidth:I

    iput v3, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->resultWidth:I

    .line 343
    iget v3, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultHeight:I

    iput v3, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->resultHeight:I

    .line 344
    iput-wide v5, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->duration:J

    .line 345
    iget-object v3, p1, Lorg/telegram/ui/Stories/recorder/IStoryPart;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 346
    iget v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->gradientTopColor:I

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->gradientTopColor:I

    .line 347
    iget v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->gradientBottomColor:I

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->gradientBottomColor:I

    .line 348
    iget-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->caption:Ljava/lang/CharSequence;

    .line 349
    iget v3, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v3

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/CharSequence;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-virtual {v3, v6, v5}, Lorg/telegram/messenger/MediaDataController;->getEntities([Ljava/lang/CharSequence;Z)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->captionEntities:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    move-object v0, v4

    goto :goto_2

    .line 350
    :cond_2
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->caption:Ljava/lang/String;

    .line 351
    iget-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->privacyRules:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 352
    iget-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintFile:Ljava/io/File;

    if-nez v0, :cond_3

    move-object v0, v4

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->paintFilePath:Ljava/lang/String;

    .line 353
    iget-wide v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->averageDuration:J

    iput-wide v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->averageDuration:J

    .line 354
    iget-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->mediaEntities:Ljava/util/ArrayList;

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->mediaEntities:Ljava/util/ArrayList;

    .line 355
    iget-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->stickers:Ljava/util/List;

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->stickers:Ljava/util/List;

    .line 356
    iget-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->filterFile:Ljava/io/File;

    if-nez v0, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_4
    iput-object v4, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->filterFilePath:Ljava/lang/String;

    .line 357
    iget-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    .line 358
    iget v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->period:I

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->period:I

    .line 359
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 360
    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->parts:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public getObjectSize()I
    .locals 2

    .line 494
    new-instance v0, Lorg/telegram/tgnet/NativeByteBuffer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(Z)V

    .line 495
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->toStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 496
    invoke-virtual {v0}, Lorg/telegram/tgnet/NativeByteBuffer;->length()I

    move-result v0

    return v0
.end method

.method public toEntry()Lorg/telegram/ui/Stories/recorder/StoryEntry;
    .locals 10

    .line 364
    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;

    invoke-direct {v0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;-><init>()V

    .line 365
    iget-wide v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->id:J

    iput-wide v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->draftId:J

    const/4 v1, 0x1

    .line 366
    iput-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isDraft:Z

    .line 367
    iget-wide v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->date:J

    iput-wide v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->draftDate:J

    .line 368
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->thumb:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 369
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->thumb:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->draftThumbFile:Ljava/io/File;

    .line 371
    :cond_0
    iget-boolean v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->isVideo:Z

    iput-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    .line 372
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->file:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 373
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->file:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->file:Ljava/io/File;

    .line 375
    :cond_1
    iget-boolean v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->fileDeletable:Z

    iput-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->fileDeletable:Z

    .line 376
    iget-boolean v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->muted:Z

    iput-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->muted:Z

    .line 377
    iget-wide v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->duration:J

    iput-wide v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->duration:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_2

    .line 379
    iget-wide v4, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->left:J

    long-to-float v4, v4

    long-to-float v5, v2

    div-float/2addr v4, v5

    iput v4, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->left:F

    .line 380
    iget-wide v4, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->right:J

    long-to-float v4, v4

    long-to-float v2, v2

    div-float/2addr v4, v2

    iput v4, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->right:F

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 382
    iput v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->left:F

    const/high16 v2, 0x3f800000    # 1.0f

    .line 383
    iput v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->right:F

    .line 385
    :goto_0
    iget v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->orientation:I

    iput v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->orientation:I

    .line 386
    iget v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->invert:I

    iput v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->invert:I

    .line 387
    iget v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->width:I

    iput v2, v0, Lorg/telegram/ui/Stories/recorder/IStoryPart;->width:I

    .line 388
    iget v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->height:I

    iput v2, v0, Lorg/telegram/ui/Stories/recorder/IStoryPart;->height:I

    .line 389
    iget v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->resultWidth:I

    iput v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultWidth:I

    .line 390
    iget v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->resultHeight:I

    iput v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultHeight:I

    .line 391
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/IStoryPart;->matrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->matrixValues:[F

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->setValues([F)V

    .line 392
    iget v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->gradientTopColor:I

    iput v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->gradientTopColor:I

    .line 393
    iget v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->gradientBottomColor:I

    iput v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->gradientBottomColor:I

    .line 394
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->caption:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 395
    new-instance v2, Landroid/text/SpannableString;

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->caption:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 396
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v1

    .line 397
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->captionEntities:Ljava/util/ArrayList;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v4, v1

    invoke-static/range {v4 .. v9}, Lorg/telegram/messenger/MessageObject;->addEntitiesToText(Ljava/lang/CharSequence;Ljava/util/ArrayList;ZZZZ)Z

    .line 398
    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->caption:Ljava/lang/CharSequence;

    goto :goto_1

    :cond_3
    const-string v1, ""

    .line 400
    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->caption:Ljava/lang/CharSequence;

    .line 402
    :goto_1
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->privacyRules:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 403
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->privacyRules:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->privacyRules:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 404
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->paintFilePath:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 405
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->paintFilePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintFile:Ljava/io/File;

    .line 407
    :cond_4
    iget-wide v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->averageDuration:J

    iput-wide v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->averageDuration:J

    .line 408
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->mediaEntities:Ljava/util/ArrayList;

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->mediaEntities:Ljava/util/ArrayList;

    .line 409
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->stickers:Ljava/util/List;

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->stickers:Ljava/util/List;

    .line 410
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->filterFilePath:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 411
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->filterFilePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->filterFile:Ljava/io/File;

    .line 413
    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    .line 414
    iget v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->period:I

    iput v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->period:I

    .line 415
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->parts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 416
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->parts:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->parts:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v1, 0x0

    .line 417
    iput v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->partsMaxId:I

    .line 418
    :goto_2
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->parts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 419
    iget v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->partsMaxId:I

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->parts:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Stories/recorder/StoryEntry$Part;

    iget v3, v3, Lorg/telegram/ui/Stories/recorder/IStoryPart;->id:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->partsMaxId:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    return-object v0
.end method

.method public toStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 5

    const v0, -0x4e94ff4b

    .line 425
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 426
    iget-wide v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->date:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 427
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->thumb:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 428
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->isVideo:Z

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeBool(Z)V

    .line 429
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->file:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 430
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->fileDeletable:Z

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeBool(Z)V

    .line 431
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->muted:Z

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeBool(Z)V

    .line 432
    iget-wide v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->left:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 433
    iget-wide v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->right:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 434
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->orientation:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 435
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->invert:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 436
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->width:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 437
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->height:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 438
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->resultWidth:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 439
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->resultHeight:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 440
    iget-wide v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->duration:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    const/4 v0, 0x0

    move v1, v0

    .line 441
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->matrixValues:[F

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 442
    aget v2, v2, v1

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeFloat(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 444
    :cond_0
    iget v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->gradientTopColor:I

    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 445
    iget v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->gradientBottomColor:I

    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 446
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->caption:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    const v1, 0x1cb5c415

    .line 447
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 448
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->captionEntities:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_1
    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 449
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->captionEntities:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    move v2, v0

    .line 450
    :goto_2
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->captionEntities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 451
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->captionEntities:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    invoke-virtual {v3, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 454
    :cond_2
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 455
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->privacyRules:Ljava/util/ArrayList;

    if-nez v2, :cond_3

    move v2, v0

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_3
    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 456
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->privacyRules:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    move v2, v0

    .line 457
    :goto_4
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->privacyRules:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 458
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->privacyRules:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$InputPrivacyRule;

    invoke-virtual {v3, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 461
    :cond_4
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeBool(Z)V

    .line 462
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->paintFilePath:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 463
    iget-wide v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->averageDuration:J

    invoke-virtual {p1, v2, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 464
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 465
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->mediaEntities:Ljava/util/ArrayList;

    if-nez v2, :cond_5

    move v2, v0

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_5
    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 466
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->mediaEntities:Ljava/util/ArrayList;

    if-eqz v2, :cond_6

    move v2, v0

    .line 467
    :goto_6
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->mediaEntities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 468
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->mediaEntities:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->serializeTo(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 471
    :cond_6
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 472
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->stickers:Ljava/util/List;

    if-nez v2, :cond_7

    move v2, v0

    goto :goto_7

    :cond_7
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_7
    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 473
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->stickers:Ljava/util/List;

    if-eqz v2, :cond_8

    move v2, v0

    .line 474
    :goto_8
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->stickers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_8

    .line 475
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->stickers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$InputDocument;

    invoke-virtual {v3, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 478
    :cond_8
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->filterFilePath:Ljava/lang/String;

    if-nez v2, :cond_9

    const-string v2, ""

    :cond_9
    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 479
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    if-nez v2, :cond_a

    const v2, 0x56730bcc

    .line 480
    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    goto :goto_9

    :cond_a
    const v2, -0x4e94ff4a

    .line 482
    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 483
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    invoke-virtual {v2, p1}, Lorg/telegram/messenger/MediaController$SavedFilterState;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 485
    :goto_9
    iget v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->period:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 486
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 487
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->parts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 488
    :goto_a
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->parts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_b

    .line 489
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->parts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Stories/recorder/StoryEntry$Part;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Stories/recorder/StoryEntry$Part;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_b
    return-void
.end method
