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
.field public audioAuthor:Ljava/lang/String;

.field public audioDuration:J

.field public audioLeft:F

.field public audioOffset:J

.field public audioPath:Ljava/lang/String;

.field public audioRight:F

.field public audioTitle:Ljava/lang/String;

.field public audioVolume:F

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

.field public editDocumentId:J

.field public editExpireDate:J

.field public editPhotoId:J

.field public editStoryId:I

.field public editStoryPeerId:J

.field public error:Lorg/telegram/tgnet/TLRPC$TL_error;

.field public file:Ljava/lang/String;

.field public fileDeletable:Z

.field private filterFilePath:Ljava/lang/String;

.field private filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

.field public fullThumb:Ljava/lang/String;

.field public gradientBottomColor:I

.field public gradientTopColor:I

.field public height:I

.field public id:J

.field public invert:I

.field public isEdit:Z

.field public isError:Z

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

.field public paintEntitiesFilePath:Ljava/lang/String;

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

.field public peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

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

    .line 757
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 462
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->matrixValues:[F

    .line 467
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->privacyRules:Ljava/util/ArrayList;

    .line 480
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->parts:Ljava/util/ArrayList;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 496
    iput v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioRight:F

    .line 497
    iput v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioVolume:F

    .line 758
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    const v1, -0x4e94ff4b

    if-eq v0, v1, :cond_1

    if-nez p2, :cond_0

    return-void

    .line 760
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "StoryDraft parse error"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 765
    :cond_1
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->date:J

    .line 766
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->thumb:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 767
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 768
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->thumb:Ljava/lang/String;

    .line 770
    :cond_2
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readBool(Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->isVideo:Z

    .line 771
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->file:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 772
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 773
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->file:Ljava/lang/String;

    .line 775
    :cond_3
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readBool(Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->fileDeletable:Z

    .line 776
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readBool(Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->muted:Z

    .line 777
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->left:J

    .line 778
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->right:J

    .line 779
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->orientation:I

    .line 780
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->invert:I

    .line 781
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->width:I

    .line 782
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->height:I

    .line 783
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->resultWidth:I

    .line 784
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->resultHeight:I

    .line 785
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->duration:J

    const/4 v0, 0x0

    move v2, v0

    .line 786
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->matrixValues:[F

    array-length v4, v3

    if-ge v2, v4, :cond_4

    .line 787
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readFloat(Z)F

    move-result v4

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 789
    :cond_4
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    iput v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->gradientTopColor:I

    .line 790
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    iput v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->gradientBottomColor:I

    .line 791
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->caption:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 792
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_5

    .line 793
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->caption:Ljava/lang/String;

    .line 795
    :cond_5
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    const v3, 0x1cb5c415

    if-eq v2, v3, :cond_7

    if-nez p2, :cond_6

    return-void

    .line 798
    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Vector magic in StoryDraft parse error (1)"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 801
    :cond_7
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    move v4, v0

    :goto_1
    if-ge v4, v2, :cond_9

    .line 803
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->captionEntities:Ljava/util/ArrayList;

    if-nez v5, :cond_8

    .line 804
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->captionEntities:Ljava/util/ArrayList;

    .line 806
    :cond_8
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->captionEntities:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v6

    invoke-static {p1, v6, p2}, Lorg/telegram/tgnet/TLRPC$MessageEntity;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessageEntity;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 808
    :cond_9
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    if-eq v2, v3, :cond_b

    if-nez p2, :cond_a

    return-void

    .line 811
    :cond_a
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Vector magic in StoryDraft parse error (2)"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 814
    :cond_b
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    .line 815
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->privacyRules:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    move v4, v0

    :goto_2
    if-ge v4, v2, :cond_c

    .line 817
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->privacyRules:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v6

    invoke-static {p1, v6, p2}, Lorg/telegram/tgnet/TLRPC$InputPrivacyRule;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputPrivacyRule;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 819
    :cond_c
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readBool(Z)Z

    .line 820
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->paintFilePath:Ljava/lang/String;

    if-eqz v2, :cond_d

    .line 821
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_d

    .line 822
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->paintFilePath:Ljava/lang/String;

    .line 824
    :cond_d
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v4

    iput-wide v4, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->averageDuration:J

    .line 825
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    if-eq v2, v3, :cond_f

    if-nez p2, :cond_e

    return-void

    .line 828
    :cond_e
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Vector magic in StoryDraft parse error (3)"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 831
    :cond_f
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    move v4, v0

    :goto_3
    if-ge v4, v2, :cond_11

    .line 833
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->mediaEntities:Ljava/util/ArrayList;

    if-nez v5, :cond_10

    .line 834
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->mediaEntities:Ljava/util/ArrayList;

    .line 836
    :cond_10
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->mediaEntities:Ljava/util/ArrayList;

    new-instance v6, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;

    const/4 v7, 0x1

    invoke-direct {v6, p1, v7}, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;-><init>(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 838
    :cond_11
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    if-eq v2, v3, :cond_13

    if-nez p2, :cond_12

    return-void

    .line 841
    :cond_12
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Vector magic in StoryDraft parse error (4)"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 844
    :cond_13
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    move v4, v0

    :goto_4
    if-ge v4, v2, :cond_15

    .line 846
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->stickers:Ljava/util/List;

    if-nez v5, :cond_14

    .line 847
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->stickers:Ljava/util/List;

    .line 849
    :cond_14
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->stickers:Ljava/util/List;

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v6

    invoke-static {p1, v6, p2}, Lorg/telegram/tgnet/TLRPC$InputDocument;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputDocument;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 851
    :cond_15
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->filterFilePath:Ljava/lang/String;

    if-eqz v2, :cond_16

    .line 852
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_16

    .line 853
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->filterFilePath:Ljava/lang/String;

    .line 855
    :cond_16
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    const v4, 0x56730bcc

    if-ne v2, v4, :cond_17

    .line 857
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    goto :goto_5

    :cond_17
    const v5, -0x4e94ff4a

    if-ne v2, v5, :cond_18

    .line 859
    new-instance v2, Lorg/telegram/messenger/MediaController$SavedFilterState;

    invoke-direct {v2}, Lorg/telegram/messenger/MediaController$SavedFilterState;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    .line 860
    invoke-virtual {v2, p1, p2}, Lorg/telegram/messenger/MediaController$SavedFilterState;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 862
    :cond_18
    :goto_5
    invoke-virtual {p1}, Lorg/telegram/tgnet/AbstractSerializedData;->remaining()I

    move-result v2

    const/4 v5, 0x4

    if-lt v2, v5, :cond_19

    .line 863
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    iput v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->period:I

    .line 865
    :cond_19
    invoke-virtual {p1}, Lorg/telegram/tgnet/AbstractSerializedData;->remaining()I

    move-result v2

    if-lez v2, :cond_1c

    .line 866
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    if-eq v2, v3, :cond_1b

    if-nez p2, :cond_1a

    return-void

    .line 869
    :cond_1a
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Vector magic in StoryDraft parse error (5)"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 872
    :cond_1b
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    .line 873
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->parts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    :goto_6
    if-ge v0, v2, :cond_1c

    .line 875
    new-instance v3, Lorg/telegram/ui/Stories/recorder/StoryEntry$Part;

    invoke-direct {v3}, Lorg/telegram/ui/Stories/recorder/StoryEntry$Part;-><init>()V

    .line 876
    invoke-virtual {v3, p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryEntry$Part;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 877
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->parts:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 880
    :cond_1c
    invoke-virtual {p1}, Lorg/telegram/tgnet/AbstractSerializedData;->remaining()I

    move-result v0

    if-lez v0, :cond_1d

    .line 881
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readBool(Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->isEdit:Z

    .line 882
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->editStoryId:I

    .line 883
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->editStoryPeerId:J

    .line 884
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->editExpireDate:J

    .line 885
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->editPhotoId:J

    .line 886
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->editDocumentId:J

    .line 888
    :cond_1d
    invoke-virtual {p1}, Lorg/telegram/tgnet/AbstractSerializedData;->remaining()I

    move-result v0

    if-lez v0, :cond_1e

    .line 889
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->paintEntitiesFilePath:Ljava/lang/String;

    if-eqz v0, :cond_1e

    .line 890
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1e

    .line 891
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->paintEntitiesFilePath:Ljava/lang/String;

    .line 894
    :cond_1e
    invoke-virtual {p1}, Lorg/telegram/tgnet/AbstractSerializedData;->remaining()I

    move-result v0

    if-lez v0, :cond_20

    .line 895
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readBool(Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->isError:Z

    .line 896
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    if-ne v0, v4, :cond_1f

    .line 898
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->error:Lorg/telegram/tgnet/TLRPC$TL_error;

    goto :goto_7

    .line 900
    :cond_1f
    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$TL_error;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_error;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->error:Lorg/telegram/tgnet/TLRPC$TL_error;

    .line 902
    :goto_7
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->fullThumb:Ljava/lang/String;

    .line 904
    :cond_20
    invoke-virtual {p1}, Lorg/telegram/tgnet/AbstractSerializedData;->remaining()I

    move-result v0

    if-lez v0, :cond_23

    .line 905
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    const v1, -0x67ad063a

    if-ne v0, v1, :cond_23

    .line 907
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioPath:Ljava/lang/String;

    .line 908
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    const v1, -0x48e18986

    if-ne v0, v1, :cond_21

    .line 910
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioAuthor:Ljava/lang/String;

    .line 912
    :cond_21
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    if-ne v0, v1, :cond_22

    .line 914
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioTitle:Ljava/lang/String;

    .line 916
    :cond_22
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioDuration:J

    .line 917
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioOffset:J

    .line 918
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readFloat(Z)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioLeft:F

    .line 919
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readFloat(Z)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioRight:F

    .line 920
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readFloat(Z)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioVolume:F

    .line 923
    :cond_23
    invoke-virtual {p1}, Lorg/telegram/tgnet/AbstractSerializedData;->remaining()I

    move-result v0

    if-lez v0, :cond_24

    .line 924
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$InputPeer;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    :cond_24
    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V
    .locals 9

    .line 501
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 462
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->matrixValues:[F

    .line 467
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->privacyRules:Ljava/util/ArrayList;

    .line 480
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->parts:Ljava/util/ArrayList;

    const/high16 v3, 0x3f800000    # 1.0f

    .line 496
    iput v3, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioRight:F

    .line 497
    iput v3, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioVolume:F

    .line 502
    iget-wide v3, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->draftId:J

    iput-wide v3, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->id:J

    .line 503
    iget-wide v3, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->draftDate:J

    iput-wide v3, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->date:J

    .line 504
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

    .line 505
    iget-object v3, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->uploadThumbFile:Ljava/io/File;

    if-nez v3, :cond_1

    move-object v3, v4

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    iput-object v3, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->fullThumb:Ljava/lang/String;

    .line 506
    iget-boolean v3, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    iput-boolean v3, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->isVideo:Z

    .line 507
    iget-object v3, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->file:Ljava/io/File;

    if-nez v3, :cond_2

    move-object v3, v4

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    iput-object v3, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->file:Ljava/lang/String;

    .line 508
    iget-boolean v3, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->fileDeletable:Z

    iput-boolean v3, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->fileDeletable:Z

    .line 509
    iget-boolean v3, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->muted:Z

    iput-boolean v3, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->muted:Z

    .line 510
    iget v3, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->left:F

    iget-wide v5, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->duration:J

    long-to-float v7, v5

    mul-float/2addr v3, v7

    float-to-long v7, v3

    iput-wide v7, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->left:J

    .line 511
    iget v3, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->right:F

    long-to-float v7, v5

    mul-float/2addr v3, v7

    float-to-long v7, v3

    iput-wide v7, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->right:J

    .line 512
    iget v3, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->orientation:I

    iput v3, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->orientation:I

    .line 513
    iget v3, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->invert:I

    iput v3, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->invert:I

    .line 514
    iget v3, p1, Lorg/telegram/ui/Stories/recorder/IStoryPart;->width:I

    iput v3, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->width:I

    .line 515
    iget v3, p1, Lorg/telegram/ui/Stories/recorder/IStoryPart;->height:I

    iput v3, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->height:I

    .line 516
    iget v3, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultWidth:I

    iput v3, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->resultWidth:I

    .line 517
    iget v3, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultHeight:I

    iput v3, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->resultHeight:I

    .line 518
    iput-wide v5, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->duration:J

    .line 519
    iget-object v3, p1, Lorg/telegram/ui/Stories/recorder/IStoryPart;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 520
    iget v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->gradientTopColor:I

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->gradientTopColor:I

    .line 521
    iget v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->gradientBottomColor:I

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->gradientBottomColor:I

    .line 522
    iget-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->caption:Ljava/lang/CharSequence;

    .line 523
    iget-boolean v3, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->captionEntitiesAllowed:Z

    if-eqz v3, :cond_3

    iget v3, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v3

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/CharSequence;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-virtual {v3, v6, v5}, Lorg/telegram/messenger/MediaDataController;->getEntities([Ljava/lang/CharSequence;Z)Ljava/util/ArrayList;

    move-result-object v3

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    :goto_3
    iput-object v3, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->captionEntities:Ljava/util/ArrayList;

    if-nez v0, :cond_4

    move-object v0, v4

    goto :goto_4

    .line 524
    :cond_4
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->caption:Ljava/lang/String;

    .line 525
    iget-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->privacyRules:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 526
    iget-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintFile:Ljava/io/File;

    if-nez v0, :cond_5

    move-object v0, v4

    goto :goto_5

    :cond_5
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_5
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->paintFilePath:Ljava/lang/String;

    .line 527
    iget-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintEntitiesFile:Ljava/io/File;

    if-nez v0, :cond_6

    move-object v0, v4

    goto :goto_6

    :cond_6
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_6
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->paintEntitiesFilePath:Ljava/lang/String;

    .line 528
    iget-wide v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->averageDuration:J

    iput-wide v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->averageDuration:J

    .line 529
    iget-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->mediaEntities:Ljava/util/ArrayList;

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->mediaEntities:Ljava/util/ArrayList;

    .line 530
    iget-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->stickers:Ljava/util/List;

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->stickers:Ljava/util/List;

    .line 531
    iget-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->filterFile:Ljava/io/File;

    if-nez v0, :cond_7

    goto :goto_7

    :cond_7
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_7
    iput-object v4, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->filterFilePath:Ljava/lang/String;

    .line 532
    iget-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    .line 533
    iget v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->period:I

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->period:I

    .line 534
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 535
    iget-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->parts:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 536
    iget-boolean v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isError:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->isError:Z

    .line 537
    iget-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->error:Lorg/telegram/tgnet/TLRPC$TL_error;

    .line 539
    iget-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioPath:Ljava/lang/String;

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioPath:Ljava/lang/String;

    .line 540
    iget-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioAuthor:Ljava/lang/String;

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioAuthor:Ljava/lang/String;

    .line 541
    iget-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioTitle:Ljava/lang/String;

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioTitle:Ljava/lang/String;

    .line 542
    iget-wide v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioDuration:J

    iput-wide v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioDuration:J

    .line 543
    iget-wide v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioOffset:J

    iput-wide v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioOffset:J

    .line 544
    iget v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioLeft:F

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioLeft:F

    .line 545
    iget v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioRight:F

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioRight:F

    .line 546
    iget v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioVolume:F

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioVolume:F

    .line 548
    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    return-void
.end method


# virtual methods
.method public getObjectSize()I
    .locals 2

    .line 752
    new-instance v0, Lorg/telegram/tgnet/NativeByteBuffer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(Z)V

    .line 753
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->toStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 754
    invoke-virtual {v0}, Lorg/telegram/tgnet/NativeByteBuffer;->length()I

    move-result v0

    return v0
.end method

.method public toEntry()Lorg/telegram/ui/Stories/recorder/StoryEntry;
    .locals 10

    .line 552
    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;

    invoke-direct {v0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;-><init>()V

    .line 553
    iget-wide v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->id:J

    iput-wide v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->draftId:J

    const/4 v1, 0x1

    .line 554
    iput-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isDraft:Z

    .line 555
    iget-wide v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->date:J

    iput-wide v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->draftDate:J

    .line 556
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->thumb:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 557
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->thumb:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->draftThumbFile:Ljava/io/File;

    .line 559
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->fullThumb:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 560
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->fullThumb:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->uploadThumbFile:Ljava/io/File;

    .line 562
    :cond_1
    iget-boolean v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->isVideo:Z

    iput-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    .line 563
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->file:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 564
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->file:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->file:Ljava/io/File;

    .line 566
    :cond_2
    iget-boolean v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->fileDeletable:Z

    iput-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->fileDeletable:Z

    .line 567
    iget-boolean v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->muted:Z

    iput-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->muted:Z

    .line 568
    iget-wide v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->duration:J

    iput-wide v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->duration:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_3

    .line 570
    iget-wide v4, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->left:J

    long-to-float v4, v4

    long-to-float v5, v2

    div-float/2addr v4, v5

    iput v4, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->left:F

    .line 571
    iget-wide v4, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->right:J

    long-to-float v4, v4

    long-to-float v2, v2

    div-float/2addr v4, v2

    iput v4, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->right:F

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    .line 573
    iput v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->left:F

    const/high16 v2, 0x3f800000    # 1.0f

    .line 574
    iput v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->right:F

    .line 576
    :goto_0
    iget v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->orientation:I

    iput v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->orientation:I

    .line 577
    iget v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->invert:I

    iput v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->invert:I

    .line 578
    iget v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->width:I

    iput v2, v0, Lorg/telegram/ui/Stories/recorder/IStoryPart;->width:I

    .line 579
    iget v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->height:I

    iput v2, v0, Lorg/telegram/ui/Stories/recorder/IStoryPart;->height:I

    .line 580
    iget v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->resultWidth:I

    iput v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultWidth:I

    .line 581
    iget v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->resultHeight:I

    iput v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultHeight:I

    .line 582
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/IStoryPart;->matrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->matrixValues:[F

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->setValues([F)V

    .line 583
    iget v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->gradientTopColor:I

    iput v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->gradientTopColor:I

    .line 584
    iget v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->gradientBottomColor:I

    iput v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->gradientBottomColor:I

    .line 585
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->caption:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 586
    new-instance v2, Landroid/text/SpannableString;

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->caption:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 587
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextPaint:Landroid/text/TextPaint;

    if-nez v3, :cond_4

    .line 588
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->createCommonMessageResources()V

    .line 590
    :cond_4
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v1

    .line 591
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->captionEntities:Ljava/util/ArrayList;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v4, v1

    invoke-static/range {v4 .. v9}, Lorg/telegram/messenger/MessageObject;->addEntitiesToText(Ljava/lang/CharSequence;Ljava/util/ArrayList;ZZZZ)Z

    .line 592
    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->caption:Ljava/lang/CharSequence;

    goto :goto_1

    :cond_5
    const-string v1, ""

    .line 594
    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->caption:Ljava/lang/CharSequence;

    .line 596
    :goto_1
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->privacyRules:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 597
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->privacyRules:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->privacyRules:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 598
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->paintFilePath:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 599
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->paintFilePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintFile:Ljava/io/File;

    .line 601
    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->paintEntitiesFilePath:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 602
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->paintEntitiesFilePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintEntitiesFile:Ljava/io/File;

    .line 604
    :cond_7
    iget-wide v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->averageDuration:J

    iput-wide v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->averageDuration:J

    .line 605
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->mediaEntities:Ljava/util/ArrayList;

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->mediaEntities:Ljava/util/ArrayList;

    .line 606
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->stickers:Ljava/util/List;

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->stickers:Ljava/util/List;

    .line 607
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->filterFilePath:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 608
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->filterFilePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->filterFile:Ljava/io/File;

    .line 610
    :cond_8
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    .line 611
    iget v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->period:I

    iput v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->period:I

    .line 612
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->parts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 613
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->parts:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->parts:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v1, 0x0

    .line 614
    iput v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->partsMaxId:I

    .line 615
    :goto_2
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->parts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_9

    .line 616
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

    .line 618
    :cond_9
    iget-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->isEdit:Z

    iput-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEdit:Z

    .line 619
    iget v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->editStoryId:I

    iput v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editStoryId:I

    .line 620
    iget-wide v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->editStoryPeerId:J

    iput-wide v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editStoryPeerId:J

    .line 621
    iget-wide v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->editExpireDate:J

    iput-wide v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editExpireDate:J

    .line 622
    iget-wide v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->editPhotoId:J

    iput-wide v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editPhotoId:J

    .line 623
    iget-wide v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->editDocumentId:J

    iput-wide v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editDocumentId:J

    .line 624
    iget-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->isError:Z

    iput-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isError:Z

    .line 625
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->error:Lorg/telegram/tgnet/TLRPC$TL_error;

    .line 627
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioPath:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioPath:Ljava/lang/String;

    .line 628
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioAuthor:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioAuthor:Ljava/lang/String;

    .line 629
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioTitle:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioTitle:Ljava/lang/String;

    .line 630
    iget-wide v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioDuration:J

    iput-wide v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioDuration:J

    .line 631
    iget-wide v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioOffset:J

    iput-wide v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioOffset:J

    .line 632
    iget v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioLeft:F

    iput v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioLeft:F

    .line 633
    iget v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioRight:F

    iput v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioRight:F

    .line 634
    iget v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioVolume:F

    iput v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioVolume:F

    .line 635
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    return-object v0
.end method

.method public toStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 5

    const v0, -0x4e94ff4b

    .line 640
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 641
    iget-wide v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->date:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 642
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->thumb:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 643
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->isVideo:Z

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeBool(Z)V

    .line 644
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->file:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 645
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->fileDeletable:Z

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeBool(Z)V

    .line 646
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->muted:Z

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeBool(Z)V

    .line 647
    iget-wide v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->left:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 648
    iget-wide v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->right:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 649
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->orientation:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 650
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->invert:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 651
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->width:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 652
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->height:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 653
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->resultWidth:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 654
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->resultHeight:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 655
    iget-wide v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->duration:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    const/4 v0, 0x0

    move v1, v0

    .line 656
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->matrixValues:[F

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 657
    aget v2, v2, v1

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeFloat(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 659
    :cond_0
    iget v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->gradientTopColor:I

    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 660
    iget v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->gradientBottomColor:I

    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 661
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->caption:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    const v1, 0x1cb5c415

    .line 662
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 663
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->captionEntities:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_1
    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 664
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->captionEntities:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    move v2, v0

    .line 665
    :goto_2
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->captionEntities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 666
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->captionEntities:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    invoke-virtual {v3, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 669
    :cond_2
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 670
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->privacyRules:Ljava/util/ArrayList;

    if-nez v2, :cond_3

    move v2, v0

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_3
    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 671
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->privacyRules:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    move v2, v0

    .line 672
    :goto_4
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->privacyRules:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 673
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->privacyRules:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$InputPrivacyRule;

    invoke-virtual {v3, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 676
    :cond_4
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeBool(Z)V

    .line 677
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->paintFilePath:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 678
    iget-wide v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->averageDuration:J

    invoke-virtual {p1, v2, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 679
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 680
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->mediaEntities:Ljava/util/ArrayList;

    if-nez v2, :cond_5

    move v2, v0

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_5
    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 681
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->mediaEntities:Ljava/util/ArrayList;

    if-eqz v2, :cond_6

    move v2, v0

    .line 682
    :goto_6
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->mediaEntities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 683
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->mediaEntities:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->serializeTo(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 686
    :cond_6
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 687
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->stickers:Ljava/util/List;

    if-nez v2, :cond_7

    move v2, v0

    goto :goto_7

    :cond_7
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_7
    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 688
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->stickers:Ljava/util/List;

    if-eqz v2, :cond_8

    move v2, v0

    .line 689
    :goto_8
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->stickers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_8

    .line 690
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->stickers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$InputDocument;

    invoke-virtual {v3, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 693
    :cond_8
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->filterFilePath:Ljava/lang/String;

    if-nez v2, :cond_9

    const-string v2, ""

    :cond_9
    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 694
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    const v3, 0x56730bcc

    if-nez v2, :cond_a

    .line 695
    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    goto :goto_9

    :cond_a
    const v2, -0x4e94ff4a

    .line 697
    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 698
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    invoke-virtual {v2, p1}, Lorg/telegram/messenger/MediaController$SavedFilterState;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 700
    :goto_9
    iget v2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->period:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 701
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 702
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->parts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 703
    :goto_a
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->parts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_b

    .line 704
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->parts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Stories/recorder/StoryEntry$Part;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Stories/recorder/StoryEntry$Part;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 706
    :cond_b
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->isEdit:Z

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeBool(Z)V

    .line 707
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->editStoryId:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 708
    iget-wide v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->editStoryPeerId:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 709
    iget-wide v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->editExpireDate:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 710
    iget-wide v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->editPhotoId:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 711
    iget-wide v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->editDocumentId:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 712
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->paintEntitiesFilePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 713
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->isError:Z

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeBool(Z)V

    .line 714
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v0, :cond_c

    .line 715
    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    goto :goto_b

    .line 717
    :cond_c
    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_error;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 719
    :goto_b
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->fullThumb:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 721
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioPath:Ljava/lang/String;

    if-nez v0, :cond_d

    .line 722
    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    goto :goto_e

    :cond_d
    const v0, -0x67ad063a

    .line 724
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 725
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 726
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioAuthor:Ljava/lang/String;

    const v1, -0x48e18986

    if-nez v0, :cond_e

    .line 727
    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    goto :goto_c

    .line 729
    :cond_e
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 730
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioAuthor:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 732
    :goto_c
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioTitle:Ljava/lang/String;

    if-nez v0, :cond_f

    .line 733
    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    goto :goto_d

    .line 735
    :cond_f
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 736
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 738
    :goto_d
    iget-wide v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioDuration:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 739
    iget-wide v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioOffset:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 740
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioLeft:F

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeFloat(F)V

    .line 741
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioRight:F

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeFloat(F)V

    .line 742
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->audioVolume:F

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeFloat(F)V

    .line 744
    :goto_e
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    if-eqz v0, :cond_10

    .line 745
    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    goto :goto_f

    .line 747
    :cond_10
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerSelf;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerSelf;-><init>()V

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerSelf;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    :goto_f
    return-void
.end method
