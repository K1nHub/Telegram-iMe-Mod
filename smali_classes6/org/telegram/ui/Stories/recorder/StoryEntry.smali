.class public Lorg/telegram/ui/Stories/recorder/StoryEntry;
.super Lorg/telegram/ui/Stories/recorder/IStoryPart;
.source "StoryEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;,
        Lorg/telegram/ui/Stories/recorder/StoryEntry$DecodeBitmap;,
        Lorg/telegram/ui/Stories/recorder/StoryEntry$Part;
    }
.end annotation


# instance fields
.field public allowScreenshots:Z

.field public audioAuthor:Ljava/lang/String;

.field public audioDuration:J

.field public audioLeft:F

.field public audioOffset:J

.field public audioPath:Ljava/lang/String;

.field public audioRight:F

.field public audioTitle:Ljava/lang/String;

.field public audioVolume:F

.field public averageDuration:J

.field public blurredVideoThumb:Landroid/graphics/Bitmap;

.field public caption:Ljava/lang/CharSequence;

.field public captionEntitiesAllowed:Z

.field private checkStickersReqId:I

.field public final currentAccount:I

.field public draftDate:J

.field public draftId:J

.field public draftThumbFile:Ljava/io/File;

.field public duration:J

.field public editDocumentId:J

.field public editExpireDate:J

.field public editPhotoId:J

.field public editStickers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/telegram/tgnet/TLRPC$InputDocument;",
            ">;"
        }
    .end annotation
.end field

.field public editStoryId:I

.field public editStoryPeerId:J

.field public editedCaption:Z

.field public editedMedia:Z

.field public editedMediaAreas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$MediaArea;",
            ">;"
        }
    .end annotation
.end field

.field public editedPrivacy:Z

.field public error:Lorg/telegram/tgnet/TLRPC$TL_error;

.field public file:Ljava/io/File;

.field public fileDeletable:Z

.field public fileDuration:D

.field public filterFile:Ljava/io/File;

.field public filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

.field private fromCamera:Z

.field public gradientBottomColor:I

.field public gradientTopColor:I

.field public hdrInfo:Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;

.field public invert:I

.field public isDraft:Z

.field public isEdit:Z

.field public isEditSaved:Z

.field public isError:Z

.field public isVideo:Z

.field public left:F

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

.field public paintBlurFile:Ljava/io/File;

.field public paintEntitiesFile:Ljava/io/File;

.field public paintFile:Ljava/io/File;

.field public final parts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Stories/recorder/StoryEntry$Part;",
            ">;"
        }
    .end annotation
.end field

.field public partsMaxId:I

.field public peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field public period:I

.field public pinned:Z

.field public privacy:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;

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

.field public right:F

.field public scheduleDate:I

.field public shareUserIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public silent:Z

.field public stickers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/telegram/tgnet/TLRPC$InputDocument;",
            ">;"
        }
    .end annotation
.end field

.field public thumbBitmap:Landroid/graphics/Bitmap;

.field public thumbPath:Ljava/lang/String;

.field public thumbPathBitmap:Landroid/graphics/Bitmap;

.field public uploadThumbFile:Ljava/io/File;


# direct methods
.method public static synthetic $r8$lambda$0L5WFWHgzGURpeYt7a7yJu6BRWE(Lorg/telegram/ui/Stories/recorder/StoryEntry;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->lambda$checkStickers$11(Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$0UlVdLy4ZyAqcPjlgayN_4H0HDw(Lorg/telegram/ui/Stories/recorder/StoryEntry;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->lambda$buildBitmap$2(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$2EaYXj4DKWTMl86QF1aaBTPhygw(Lorg/telegram/ui/Stories/recorder/StoryEntry$Part;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->lambda$buildBitmap$1(Lorg/telegram/ui/Stories/recorder/StoryEntry$Part;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$3GETyLo9F9_bWDE_MrbPmQrySqQ(Lorg/telegram/ui/Stories/recorder/StoryEntry;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->lambda$buildBitmap$3(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$7RtcvAkQ2oVb-QprWqNM63tT1OY(Lorg/telegram/ui/Stories/recorder/StoryEntry;Lorg/telegram/tgnet/TLRPC$StoryItem;Lorg/telegram/tgnet/TLRPC$TL_messages_getAttachedStickers;Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->lambda$checkStickers$13(Lorg/telegram/tgnet/TLRPC$StoryItem;Lorg/telegram/tgnet/TLRPC$TL_messages_getAttachedStickers;Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EL4ZzJYcl4tuwRewHib6dtTY2oY(Lorg/telegram/ui/Stories/recorder/StoryEntry;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->lambda$getVideoEditedInfo$8(Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FcHR1r92m4Gx6kDYYAqPImOmR10(Lorg/telegram/ui/Stories/recorder/StoryEntry;Ljava/lang/String;[ILorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->lambda$getVideoEditedInfo$7(Ljava/lang/String;[ILorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Mbf6fUUJfjOtdn45Jmv_CBr1U98(Lorg/telegram/ui/Stories/recorder/StoryEntry;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->lambda$checkStickers$12(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PhF9rVXo6N0uaZR2193rW9gnaEc(Ljava/io/File;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->lambda$buildBitmap$0(Ljava/io/File;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$fP1l_KphTL_rzLKFYK0tVZehIgw(Lorg/telegram/ui/Stories/recorder/StoryEntry;Ljava/lang/Runnable;[I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->lambda$setupGradient$6(Ljava/lang/Runnable;[I)V

    return-void
.end method

.method public static synthetic $r8$lambda$pfmJSf2RemMjppXZYzuETC8jBmk(Lorg/telegram/ui/Stories/recorder/StoryEntry;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->lambda$detectHDR$10(Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rajmes3koNTTqHNd92Z6SxwQ0Oo(Lorg/telegram/ui/Stories/recorder/StoryEntry;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->lambda$detectHDR$9(Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$v2tIHHfyq0Q7h7EhOFnkOfk3d_g(Lorg/telegram/ui/Stories/recorder/StoryEntry;Landroid/graphics/Bitmap;ZLjava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->lambda$updateFilter$4(Landroid/graphics/Bitmap;ZLjava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zsb2AUwsICisnMCI9MGDz_NHAVM(Lorg/telegram/ui/Stories/recorder/StoryEntry;Landroid/graphics/Bitmap;Ljava/lang/Runnable;[I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->lambda$setupGradient$5(Landroid/graphics/Bitmap;Ljava/lang/Runnable;[I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 55
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/IStoryPart;-><init>()V

    .line 57
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->currentAccount:I

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 67
    iput-wide v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->fileDuration:D

    const/high16 v0, 0x3f800000    # 1.0f

    .line 78
    iput v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioRight:F

    .line 79
    iput v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioVolume:F

    .line 92
    iput v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->right:F

    const/16 v0, 0x2d0

    .line 100
    iput v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultWidth:I

    const/16 v0, 0x500

    .line 101
    iput v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultHeight:I

    const/4 v0, 0x1

    .line 103
    iput v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->partsMaxId:I

    .line 104
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->parts:Ljava/util/ArrayList;

    .line 147
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->captionEntitiesAllowed:Z

    .line 149
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->privacyRules:Ljava/util/ArrayList;

    .line 151
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->pinned:Z

    const v0, 0x15180

    .line 154
    iput v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->period:I

    const-wide/16 v0, 0x1388

    .line 169
    iput-wide v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->averageDuration:J

    const/4 v0, 0x0

    .line 1033
    iput v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->checkStickersReqId:I

    return-void
.end method

.method public static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 6

    .line 733
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 734
    iget p0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v1, 0x1

    if-gt v0, p2, :cond_1

    if-le p0, p1, :cond_0

    goto :goto_0

    :cond_0
    move p0, v1

    goto :goto_1

    :cond_1
    :goto_0
    int-to-float v0, v0

    int-to-float p2, p2

    div-float/2addr v0, p2

    float-to-double v2, v0

    .line 737
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int p2, v2

    int-to-float p0, p0

    int-to-float p1, p1

    div-float/2addr p0, p1

    float-to-double p0, p0

    .line 738
    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-int p0, p0

    .line 739
    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    :goto_1
    int-to-double p0, p0

    .line 741
    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    invoke-static {p0, p1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    double-to-int p0, p0

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private ext(Ljava/io/File;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 383
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x2e

    .line 385
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-lez v1, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 386
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0
.end method

.method public static fromPhotoEntry(Lorg/telegram/messenger/MediaController$PhotoEntry;)Lorg/telegram/ui/Stories/recorder/StoryEntry;
    .locals 5

    .line 580
    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;

    invoke-direct {v0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;-><init>()V

    .line 581
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->file:Ljava/io/File;

    .line 582
    iget v1, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->orientation:I

    iput v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->orientation:I

    .line 583
    iget v1, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->invert:I

    iput v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->invert:I

    .line 584
    iget-boolean v1, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    iput-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    .line 585
    iget-object v1, p0, Lorg/telegram/messenger/MediaController$MediaEditState;->thumbPath:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->thumbPath:Ljava/lang/String;

    .line 586
    iget v1, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->duration:I

    int-to-long v1, v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    iput-wide v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->duration:J

    const/4 v3, 0x0

    .line 587
    iput v3, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->left:F

    long-to-float v1, v1

    const v2, 0x47686c00    # 59500.0f

    div-float/2addr v2, v1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 588
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->right:F

    .line 589
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->thumbPath:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 590
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vthumb://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->thumbPath:Ljava/lang/String;

    .line 592
    :cond_0
    iget v1, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->gradientTopColor:I

    iput v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->gradientTopColor:I

    .line 593
    iget p0, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->gradientBottomColor:I

    iput p0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->gradientBottomColor:I

    .line 594
    iget-object p0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->file:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->decodeBounds(Ljava/lang/String;)V

    .line 595
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->setupMatrix()V

    return-object v0
.end method

.method public static fromPhotoShoot(Ljava/io/File;I)Lorg/telegram/ui/Stories/recorder/StoryEntry;
    .locals 2

    .line 600
    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;

    invoke-direct {v0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;-><init>()V

    .line 601
    iput-object p0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->file:Ljava/io/File;

    const/4 v1, 0x1

    .line 602
    iput-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->fileDeletable:Z

    .line 603
    iput p1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->orientation:I

    const/4 p1, 0x0

    .line 604
    iput p1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->invert:I

    .line 605
    iput-boolean p1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-eqz p0, :cond_0

    .line 607
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->decodeBounds(Ljava/lang/String;)V

    .line 609
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->setupMatrix()V

    return-object v0
.end method

.method public static fromStoryItem(Ljava/io/File;Lorg/telegram/tgnet/TLRPC$StoryItem;)Lorg/telegram/ui/Stories/recorder/StoryEntry;
    .locals 9

    .line 518
    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;

    invoke-direct {v0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;-><init>()V

    const/4 v1, 0x1

    .line 519
    iput-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEdit:Z

    .line 520
    iget v2, p1, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    iput v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editStoryId:I

    .line 521
    iput-object p0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->file:Ljava/io/File;

    const/4 v2, 0x0

    .line 522
    iput-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->fileDeletable:Z

    const/16 v3, 0x2d0

    .line 523
    iput v3, v0, Lorg/telegram/ui/Stories/recorder/IStoryPart;->width:I

    const/16 v3, 0x500

    .line 524
    iput v3, v0, Lorg/telegram/ui/Stories/recorder/IStoryPart;->height:I

    .line 525
    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v4, :cond_0

    .line 526
    iput-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-eqz p0, :cond_6

    .line 528
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->decodeBounds(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 530
    :cond_0
    instance-of p0, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz p0, :cond_6

    .line 531
    iput-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    .line 532
    iget-object p0, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz p0, :cond_2

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    if-eqz p0, :cond_2

    move p0, v2

    .line 533
    :goto_0
    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p0, v3, :cond_2

    .line 534
    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 535
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    if-eqz v4, :cond_1

    .line 536
    iget p0, v3, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->w:I

    iput p0, v0, Lorg/telegram/ui/Stories/recorder/IStoryPart;->width:I

    .line 537
    iget p0, v3, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->h:I

    iput p0, v0, Lorg/telegram/ui/Stories/recorder/IStoryPart;->height:I

    .line 538
    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->duration:D

    iput-wide v3, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->fileDuration:D

    goto :goto_1

    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 543
    :cond_2
    :goto_1
    iget-object p0, p1, Lorg/telegram/tgnet/TLRPC$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz p0, :cond_6

    .line 544
    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$StoryItem;->firstFramePath:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 545
    iput-object v3, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->thumbPath:Ljava/lang/String;

    goto :goto_3

    .line 546
    :cond_3
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    if-eqz p0, :cond_6

    .line 547
    :goto_2
    iget-object p0, p1, Lorg/telegram/tgnet/TLRPC$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-ge v2, p0, :cond_6

    .line 548
    iget-object p0, p1, Lorg/telegram/tgnet/TLRPC$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 549
    instance-of v3, p0, Lorg/telegram/tgnet/TLRPC$TL_photoStrippedSize;

    if-eqz v3, :cond_4

    .line 550
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    const/4 v2, 0x0

    invoke-static {p0, v2}, Lorg/telegram/messenger/ImageLoader;->getStrippedPhotoBitmap([BLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    iput-object p0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->thumbPathBitmap:Landroid/graphics/Bitmap;

    goto :goto_3

    .line 553
    :cond_4
    iget v3, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    invoke-virtual {v3, p0, v1}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 554
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 555
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->thumbPath:Ljava/lang/String;

    goto :goto_3

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 562
    :cond_6
    :goto_3
    iget-object p0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->privacyRules:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 563
    iget-object p0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->privacyRules:Ljava/util/ArrayList;

    iget v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->currentAccount:I

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$StoryItem;->privacy:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->toInput(ILjava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 564
    iget p0, p1, Lorg/telegram/tgnet/TLRPC$StoryItem;->expire_date:I

    iget v2, p1, Lorg/telegram/tgnet/TLRPC$StoryItem;->date:I

    sub-int/2addr p0, v2

    iput p0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->period:I

    .line 566
    :try_start_0
    new-instance p0, Landroid/text/SpannableString;

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$StoryItem;->caption:Ljava/lang/String;

    invoke-direct {p0, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 567
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    invoke-static {p0, v2, v1}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object p0

    .line 568
    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$StoryItem;->entities:Ljava/util/ArrayList;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v3, p0

    invoke-static/range {v3 .. v8}, Lorg/telegram/messenger/MessageObject;->addEntitiesToText(Ljava/lang/CharSequence;Ljava/util/ArrayList;ZZZZ)Z

    .line 569
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$StoryItem;->entities:Ljava/util/ArrayList;

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lorg/telegram/messenger/MessageObject;->replaceAnimatedEmoji(Ljava/lang/CharSequence;Ljava/util/ArrayList;Landroid/graphics/Paint$FontMetricsInt;)Landroid/text/Spannable;

    move-result-object p0

    .line 570
    iput-object p0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->caption:Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 572
    :catch_0
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->setupMatrix()V

    .line 573
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->checkStickers(Lorg/telegram/tgnet/TLRPC$StoryItem;)V

    .line 574
    iget-object p0, p1, Lorg/telegram/tgnet/TLRPC$StoryItem;->media_areas:Ljava/util/ArrayList;

    iput-object p0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editedMediaAreas:Ljava/util/ArrayList;

    .line 575
    iget p0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->currentAccount:I

    invoke-static {p0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$StoryItem;->dialogId:J

    invoke-virtual {p0, v1, v2}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p0

    iput-object p0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    return-object v0
.end method

.method public static fromVideoShoot(Ljava/io/File;Ljava/lang/String;J)Lorg/telegram/ui/Stories/recorder/StoryEntry;
    .locals 2

    .line 718
    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;

    invoke-direct {v0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;-><init>()V

    const/4 v1, 0x1

    .line 719
    iput-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->fromCamera:Z

    .line 720
    iput-object p0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->file:Ljava/io/File;

    .line 721
    iput-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->fileDeletable:Z

    const/4 p0, 0x0

    .line 722
    iput p0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->orientation:I

    .line 723
    iput p0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->invert:I

    .line 724
    iput-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    .line 725
    iput-wide p2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->duration:J

    .line 726
    iput-object p1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->thumbPath:Ljava/lang/String;

    const/4 p0, 0x0

    .line 727
    iput p0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->left:F

    long-to-float p0, p2

    const p1, 0x47686c00    # 59500.0f

    div-float/2addr p1, p0

    const/high16 p0, 0x3f800000    # 1.0f

    .line 728
    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    iput p0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->right:F

    return-object v0
.end method

.method public static getScaledBitmap(Lorg/telegram/ui/Stories/recorder/StoryEntry$DecodeBitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 12

    .line 319
    new-instance p3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v0, 0x1

    .line 320
    iput-boolean v0, p3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 321
    invoke-interface {p0, p3}, Lorg/telegram/ui/Stories/recorder/StoryEntry$DecodeBitmap;->decode(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    .line 323
    iput-boolean v1, p3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 324
    iput-boolean v1, p3, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 326
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    .line 327
    invoke-virtual {v2}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v3

    invoke-virtual {v2}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v5

    invoke-virtual {v2}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v7

    sub-long/2addr v5, v7

    sub-long/2addr v3, v5

    .line 328
    iget v2, p3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v5, p3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    mul-int v6, v2, v5

    int-to-long v6, v6

    const-wide/16 v8, 0x4

    mul-long/2addr v6, v8

    mul-int v10, p1, p2

    int-to-long v10, v10

    mul-long/2addr v10, v8

    add-long/2addr v6, v10

    long-to-double v6, v6

    const-wide v8, 0x3ff199999999999aL    # 1.1

    mul-double/2addr v6, v8

    long-to-double v3, v3

    cmpg-double v3, v6, v3

    if-gtz v3, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    if-gt v2, p1, :cond_1

    if-gt v5, p2, :cond_1

    .line 331
    invoke-interface {p0, p3}, Lorg/telegram/ui/Stories/recorder/StoryEntry$DecodeBitmap;->decode(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_1
    if-eqz v3, :cond_2

    .line 334
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v2

    if-lt v2, v0, :cond_2

    .line 335
    invoke-interface {p0, p3}, Lorg/telegram/ui/Stories/recorder/StoryEntry$DecodeBitmap;->decode(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    int-to-float p1, p1

    .line 337
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p1, p3

    int-to-float p2, p2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p2, p3

    .line 338
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 342
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p2, p1

    float-to-int p2, p2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p3, p1

    float-to-int p3, p3

    .line 344
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 345
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 347
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 348
    new-instance v4, Landroid/graphics/BitmapShader;

    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v4, p0, v5, v5}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 349
    new-instance v7, Landroid/graphics/Paint;

    const/4 p0, 0x3

    invoke-direct {v7, p0}, Landroid/graphics/Paint;-><init>(I)V

    .line 350
    invoke-virtual {v7, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/high16 p0, 0x3f800000    # 1.0f

    div-float/2addr p0, p1

    .line 352
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    const/16 v5, 0x8

    invoke-static {p0, v5, v1}, Lorg/telegram/messenger/Utilities;->clamp(III)I

    .line 354
    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    .line 355
    invoke-virtual {v3, p1, p1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 356
    invoke-virtual {v4, v3}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    int-to-float v5, p2

    int-to-float v6, p3

    .line 357
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-object v0

    .line 365
    :cond_2
    iput-boolean v0, p3, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 366
    iget p2, p3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput p2, p3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 367
    iput p1, p3, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 368
    invoke-interface {p0, p3}, Lorg/telegram/ui/Stories/recorder/StoryEntry$DecodeBitmap;->decode(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private isAnimated(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 209
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    const-string v2, "video/webm"

    .line 210
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    const-string v2, "video/mp4"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 211
    invoke-static {p1, v0}, Lorg/telegram/messenger/MessageObject;->isAnimatedStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-static {p2, p1}, Lorg/telegram/ui/Components/RLottieDrawable;->getFramesCount(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide p1

    const-wide/16 v1, 0x1

    cmp-long p1, p1, v1

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private static synthetic lambda$buildBitmap$0(Ljava/io/File;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 0

    .line 237
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$buildBitmap$1(Lorg/telegram/ui/Stories/recorder/StoryEntry$Part;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 0

    .line 251
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry$Part;->file:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$buildBitmap$2(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1

    .line 265
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$buildBitmap$3(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1

    .line 280
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintEntitiesFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$checkStickers$11(Lorg/telegram/tgnet/TLObject;)V
    .locals 6

    const/4 v0, 0x0

    .line 998
    iput v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->checkStickersReqId:I

    .line 999
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$Vector;

    if-eqz v1, :cond_3

    .line 1000
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editStickers:Ljava/util/List;

    .line 1001
    check-cast p1, Lorg/telegram/tgnet/TLRPC$Vector;

    move v1, v0

    .line 1002
    :goto_0
    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$Vector;->objects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 1003
    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$Vector;->objects:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    .line 1004
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->cover:Lorg/telegram/tgnet/TLRPC$Document;

    if-nez v3, :cond_0

    .line 1005
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->covers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1006
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->covers:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Document;

    :cond_0
    if-nez v3, :cond_1

    .line 1008
    instance-of v4, v2, Lorg/telegram/tgnet/TLRPC$TL_stickerSetFullCovered;

    if-eqz v4, :cond_1

    .line 1009
    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_stickerSetFullCovered;

    .line 1010
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_stickerSetFullCovered;->documents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1011
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_stickerSetFullCovered;->documents:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Document;

    :cond_1
    if-eqz v3, :cond_2

    .line 1015
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;-><init>()V

    .line 1016
    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iput-wide v4, v2, Lorg/telegram/tgnet/TLRPC$InputDocument;->id:J

    .line 1017
    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    iput-wide v4, v2, Lorg/telegram/tgnet/TLRPC$InputDocument;->access_hash:J

    .line 1018
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Document;->file_reference:[B

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$InputDocument;->file_reference:[B

    .line 1019
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editStickers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private synthetic lambda$checkStickers$12(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 997
    new-instance p2, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Stories/recorder/StoryEntry;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$checkStickers$13(Lorg/telegram/tgnet/TLRPC$StoryItem;Lorg/telegram/tgnet/TLRPC$TL_messages_getAttachedStickers;Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    if-eqz p5, :cond_0

    .line 1025
    iget-object v0, p5, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-static {v0}, Lorg/telegram/messenger/FileRefController;->isFileRefError(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1026
    iget p4, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->currentAccount:I

    invoke-static {p4}, Lorg/telegram/messenger/FileRefController;->getInstance(I)Lorg/telegram/messenger/FileRefController;

    move-result-object p4

    const/4 p5, 0x2

    new-array p5, p5, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p2, p5, v0

    const/4 p2, 0x1

    aput-object p3, p5, p2

    invoke-virtual {p4, p1, p5}, Lorg/telegram/messenger/FileRefController;->requestReference(Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void

    .line 1029
    :cond_0
    invoke-interface {p3, p4, p5}, Lorg/telegram/tgnet/RequestDelegate;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method private synthetic lambda$detectHDR$10(Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 6

    const-string v0, "color-range"

    const-string v1, "color-standard"

    const-string v2, "color-transfer"

    .line 931
    :try_start_0
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->hdrInfo:Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;

    if-nez v3, :cond_0

    .line 932
    new-instance v3, Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;

    invoke-direct {v3}, Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->hdrInfo:Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;

    .line 938
    :cond_0
    new-instance v4, Landroid/media/MediaExtractor;

    invoke-direct {v4}, Landroid/media/MediaExtractor;-><init>()V

    .line 939
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->file:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 940
    invoke-static {v4, v5}, Lorg/telegram/messenger/MediaController;->findTrack(Landroid/media/MediaExtractor;Z)I

    move-result v5

    .line 941
    invoke-virtual {v4, v5}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 942
    invoke-virtual {v4, v5}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v4

    .line 943
    invoke-virtual {v4, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 944
    invoke-virtual {v4, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    iput v2, v3, Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;->colorTransfer:I

    .line 946
    :cond_1
    invoke-virtual {v4, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 947
    invoke-virtual {v4, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    iput v1, v3, Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;->colorStandard:I

    .line 949
    :cond_2
    invoke-virtual {v4, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 950
    invoke-virtual {v4, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, v3, Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;->colorRange:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 955
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->hdrInfo:Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->hdrInfo:Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;

    .line 956
    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Stories/recorder/StoryEntry;Lorg/telegram/messenger/Utilities$Callback;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 953
    :try_start_1
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 955
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->hdrInfo:Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->hdrInfo:Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;

    .line 956
    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Stories/recorder/StoryEntry;Lorg/telegram/messenger/Utilities$Callback;)V

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    .line 955
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->hdrInfo:Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->hdrInfo:Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;

    .line 956
    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Stories/recorder/StoryEntry;Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 957
    throw v0
.end method

.method private synthetic lambda$detectHDR$9(Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 1

    .line 956
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->hdrInfo:Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;

    invoke-interface {p1, v0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$getVideoEditedInfo$7(Ljava/lang/String;[ILorg/telegram/messenger/Utilities$Callback;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 774
    new-instance v2, Lorg/telegram/messenger/VideoEditedInfo;

    invoke-direct {v2}, Lorg/telegram/messenger/VideoEditedInfo;-><init>()V

    const/4 v3, 0x1

    .line 776
    iput-boolean v3, v2, Lorg/telegram/messenger/VideoEditedInfo;->isStory:Z

    .line 777
    iget-boolean v4, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->fromCamera:Z

    iput-boolean v4, v2, Lorg/telegram/messenger/VideoEditedInfo;->fromCamera:Z

    .line 778
    iget v4, v0, Lorg/telegram/ui/Stories/recorder/IStoryPart;->width:I

    iput v4, v2, Lorg/telegram/messenger/VideoEditedInfo;->originalWidth:I

    .line 779
    iget v4, v0, Lorg/telegram/ui/Stories/recorder/IStoryPart;->height:I

    iput v4, v2, Lorg/telegram/messenger/VideoEditedInfo;->originalHeight:I

    .line 780
    iget v4, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultWidth:I

    iput v4, v2, Lorg/telegram/messenger/VideoEditedInfo;->resultWidth:I

    .line 781
    iget v4, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultHeight:I

    iput v4, v2, Lorg/telegram/messenger/VideoEditedInfo;->resultHeight:I

    .line 782
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintFile:Ljava/io/File;

    if-nez v4, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    :goto_0
    iput-object v4, v2, Lorg/telegram/messenger/VideoEditedInfo;->paintPath:Ljava/lang/String;

    .line 784
    iget v4, v2, Lorg/telegram/messenger/VideoEditedInfo;->resultWidth:I

    iget v6, v2, Lorg/telegram/messenger/VideoEditedInfo;->resultHeight:I

    iget v7, v2, Lorg/telegram/messenger/VideoEditedInfo;->bitrate:I

    invoke-static {v4, v6, v7, v3}, Lorg/telegram/messenger/MediaController;->extractRealEncoderBitrate(IIIZ)I

    move-result v4

    .line 785
    iget-boolean v6, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    const/high16 v7, 0x41000000    # 8.0f

    const/high16 v8, 0x447a0000    # 1000.0f

    const-wide/16 v9, -0x1

    const/4 v11, -0x1

    const-wide/16 v12, 0x3e8

    if-eqz v6, :cond_5

    .line 786
    iput-object v1, v2, Lorg/telegram/messenger/VideoEditedInfo;->originalPath:Ljava/lang/String;

    const/4 v6, 0x0

    .line 787
    iput-boolean v6, v2, Lorg/telegram/messenger/VideoEditedInfo;->isPhoto:Z

    const/16 v6, 0x3b

    const/4 v14, 0x7

    .line 788
    aget v14, p2, v14

    invoke-static {v6, v14}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, v2, Lorg/telegram/messenger/VideoEditedInfo;->framerate:I

    .line 789
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/MediaController;->getVideoBitrate(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v11, :cond_1

    const/4 v1, 0x3

    .line 790
    aget v1, p2, v1

    :cond_1
    iput v1, v2, Lorg/telegram/messenger/VideoEditedInfo;->originalBitrate:I

    const v6, 0xf4240

    if-ge v1, v6, :cond_2

    .line 791
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->mediaEntities:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const v1, 0x1e8480

    .line 792
    iput v1, v2, Lorg/telegram/messenger/VideoEditedInfo;->bitrate:I

    .line 793
    iput v11, v2, Lorg/telegram/messenger/VideoEditedInfo;->originalBitrate:I

    goto :goto_1

    .line 794
    :cond_2
    iget v1, v2, Lorg/telegram/messenger/VideoEditedInfo;->originalBitrate:I

    const v6, 0x7a120

    if-ge v1, v6, :cond_3

    const v1, 0x2625a0

    .line 795
    iput v1, v2, Lorg/telegram/messenger/VideoEditedInfo;->bitrate:I

    .line 796
    iput v11, v2, Lorg/telegram/messenger/VideoEditedInfo;->originalBitrate:I

    goto :goto_1

    :cond_3
    const v11, 0x2dc6c0

    .line 798
    invoke-static {v1, v11, v6}, Lorg/telegram/messenger/Utilities;->clamp(III)I

    move-result v1

    iput v1, v2, Lorg/telegram/messenger/VideoEditedInfo;->bitrate:I

    .line 800
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "story bitrate, original = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Lorg/telegram/messenger/VideoEditedInfo;->originalBitrate:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " => "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Lorg/telegram/messenger/VideoEditedInfo;->bitrate:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    const/4 v1, 0x4

    .line 801
    aget v6, p2, v1

    int-to-long v14, v6

    iput-wide v14, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->duration:J

    mul-long v5, v14, v12

    iput-wide v5, v2, Lorg/telegram/messenger/VideoEditedInfo;->originalDuration:J

    .line 802
    iget v5, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->left:F

    long-to-float v6, v14

    mul-float/2addr v5, v6

    float-to-long v5, v5

    mul-long/2addr v5, v12

    iput-wide v5, v2, Lorg/telegram/messenger/VideoEditedInfo;->startTime:J

    .line 803
    iget v11, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->right:F

    long-to-float v14, v14

    mul-float/2addr v11, v14

    float-to-long v14, v11

    mul-long/2addr v14, v12

    iput-wide v14, v2, Lorg/telegram/messenger/VideoEditedInfo;->endTime:J

    sub-long/2addr v14, v5

    .line 804
    iput-wide v14, v2, Lorg/telegram/messenger/VideoEditedInfo;->estimatedDuration:J

    .line 805
    iget-boolean v5, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->muted:Z

    iput-boolean v5, v2, Lorg/telegram/messenger/VideoEditedInfo;->muted:Z

    const/4 v5, 0x5

    .line 806
    aget v5, p2, v5

    int-to-float v5, v5

    aget v1, p2, v1

    int-to-float v1, v1

    div-float/2addr v1, v8

    int-to-float v4, v4

    mul-float/2addr v1, v4

    div-float/2addr v1, v7

    add-float/2addr v5, v1

    float-to-long v4, v5

    iput-wide v4, v2, Lorg/telegram/messenger/VideoEditedInfo;->estimatedSize:J

    .line 807
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    iget-wide v6, v2, Lorg/telegram/messenger/VideoEditedInfo;->estimatedSize:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v2, Lorg/telegram/messenger/VideoEditedInfo;->estimatedSize:J

    .line 808
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iput-object v1, v2, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    .line 809
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintBlurFile:Ljava/io/File;

    if-nez v1, :cond_4

    const/4 v5, 0x0

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    :goto_2
    iput-object v5, v2, Lorg/telegram/messenger/VideoEditedInfo;->blurPath:Ljava/lang/String;

    goto :goto_5

    .line 811
    :cond_5
    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->filterFile:Ljava/io/File;

    if-eqz v5, :cond_6

    .line 812
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lorg/telegram/messenger/VideoEditedInfo;->originalPath:Ljava/lang/String;

    goto :goto_3

    .line 814
    :cond_6
    iput-object v1, v2, Lorg/telegram/messenger/VideoEditedInfo;->originalPath:Ljava/lang/String;

    .line 816
    :goto_3
    iput-boolean v3, v2, Lorg/telegram/messenger/VideoEditedInfo;->isPhoto:Z

    .line 817
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioPath:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 818
    iget v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioRight:F

    iget v5, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioLeft:F

    sub-float/2addr v1, v5

    iget-wide v5, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioDuration:J

    long-to-float v5, v5

    mul-float/2addr v1, v5

    float-to-long v5, v1

    iput-wide v5, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->duration:J

    iput-wide v5, v2, Lorg/telegram/messenger/VideoEditedInfo;->originalDuration:J

    iput-wide v5, v2, Lorg/telegram/messenger/VideoEditedInfo;->estimatedDuration:J

    goto :goto_4

    .line 820
    :cond_7
    iget-wide v5, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->averageDuration:J

    iput-wide v5, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->duration:J

    iput-wide v5, v2, Lorg/telegram/messenger/VideoEditedInfo;->originalDuration:J

    iput-wide v5, v2, Lorg/telegram/messenger/VideoEditedInfo;->estimatedDuration:J

    .line 822
    :goto_4
    iput-wide v9, v2, Lorg/telegram/messenger/VideoEditedInfo;->startTime:J

    .line 823
    iput-wide v9, v2, Lorg/telegram/messenger/VideoEditedInfo;->endTime:J

    .line 824
    iput-boolean v3, v2, Lorg/telegram/messenger/VideoEditedInfo;->muted:Z

    .line 825
    iput v11, v2, Lorg/telegram/messenger/VideoEditedInfo;->originalBitrate:I

    .line 826
    iput v11, v2, Lorg/telegram/messenger/VideoEditedInfo;->bitrate:I

    const/16 v1, 0x1e

    .line 827
    iput v1, v2, Lorg/telegram/messenger/VideoEditedInfo;->framerate:I

    .line 828
    iget-wide v5, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->duration:J

    long-to-float v1, v5

    div-float/2addr v1, v8

    int-to-float v4, v4

    mul-float/2addr v1, v4

    div-float/2addr v1, v7

    float-to-long v4, v1

    iput-wide v4, v2, Lorg/telegram/messenger/VideoEditedInfo;->estimatedSize:J

    const/4 v1, 0x0

    .line 829
    iput-object v1, v2, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    .line 831
    :goto_5
    iput-wide v9, v2, Lorg/telegram/messenger/VideoEditedInfo;->avatarStartTime:J

    .line 833
    new-instance v1, Lorg/telegram/messenger/MediaController$CropState;

    invoke-direct {v1}, Lorg/telegram/messenger/MediaController$CropState;-><init>()V

    iput-object v1, v2, Lorg/telegram/messenger/VideoEditedInfo;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    .line 834
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    iput-object v4, v1, Lorg/telegram/messenger/MediaController$CropState;->useMatrix:Landroid/graphics/Matrix;

    .line 835
    iget-object v1, v2, Lorg/telegram/messenger/VideoEditedInfo;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$CropState;->useMatrix:Landroid/graphics/Matrix;

    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/IStoryPart;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 837
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->mediaEntities:Ljava/util/ArrayList;

    iput-object v1, v2, Lorg/telegram/messenger/VideoEditedInfo;->mediaEntities:Ljava/util/ArrayList;

    .line 839
    iget v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->gradientTopColor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v2, Lorg/telegram/messenger/VideoEditedInfo;->gradientTopColor:Ljava/lang/Integer;

    .line 840
    iget v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->gradientBottomColor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v2, Lorg/telegram/messenger/VideoEditedInfo;->gradientBottomColor:Ljava/lang/Integer;

    .line 841
    iput-boolean v3, v2, Lorg/telegram/messenger/VideoEditedInfo;->forceFragmenting:Z

    .line 843
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->hdrInfo:Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;

    iput-object v1, v2, Lorg/telegram/messenger/VideoEditedInfo;->hdrInfo:Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;

    .line 844
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->parts:Ljava/util/ArrayList;

    iput-object v1, v2, Lorg/telegram/messenger/VideoEditedInfo;->parts:Ljava/util/ArrayList;

    .line 846
    iget-object v1, v2, Lorg/telegram/messenger/VideoEditedInfo;->mixedSoundInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 847
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioPath:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 848
    new-instance v3, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$MixedSoundInfo;

    invoke-direct {v3, v1}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$MixedSoundInfo;-><init>(Ljava/lang/String;)V

    .line 849
    iget v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioVolume:F

    iput v1, v3, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$MixedSoundInfo;->volume:F

    .line 850
    iget v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioLeft:F

    iget-wide v4, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioDuration:J

    long-to-float v6, v4

    mul-float/2addr v6, v1

    float-to-long v6, v6

    mul-long/2addr v6, v12

    iput-wide v6, v3, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$MixedSoundInfo;->audioOffset:J

    .line 851
    iget-boolean v6, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-eqz v6, :cond_8

    .line 852
    iget-wide v6, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioOffset:J

    long-to-float v6, v6

    iget v7, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->left:F

    iget-wide v8, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->duration:J

    long-to-float v8, v8

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    float-to-long v6, v6

    mul-long/2addr v6, v12

    iput-wide v6, v3, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$MixedSoundInfo;->startTime:J

    goto :goto_6

    :cond_8
    const-wide/16 v6, 0x0

    .line 854
    iput-wide v6, v3, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$MixedSoundInfo;->startTime:J

    .line 856
    :goto_6
    iget v6, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioRight:F

    sub-float/2addr v6, v1

    long-to-float v1, v4

    mul-float/2addr v6, v1

    float-to-long v4, v6

    mul-long/2addr v4, v12

    iput-wide v4, v3, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$MixedSoundInfo;->duration:J

    .line 857
    iget-object v1, v2, Lorg/telegram/messenger/VideoEditedInfo;->mixedSoundInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    move-object/from16 v1, p3

    .line 860
    invoke-interface {v1, v2}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$getVideoEditedInfo$8(Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 2

    const/16 v0, 0xb

    new-array v0, v0, [I

    .line 772
    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getVideoInfo(Ljava/lang/String;[I)V

    .line 773
    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, v0, p2}, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stories/recorder/StoryEntry;Ljava/lang/String;[ILorg/telegram/messenger/Utilities$Callback;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$setupGradient$5(Landroid/graphics/Bitmap;Ljava/lang/Runnable;[I)V
    .locals 1

    const/4 v0, 0x0

    .line 696
    aget v0, p3, v0

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->gradientTopColor:I

    const/4 v0, 0x1

    .line 697
    aget p3, p3, v0

    iput p3, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->gradientBottomColor:I

    .line 698
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    if-eqz p2, :cond_0

    .line 701
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$setupGradient$6(Ljava/lang/Runnable;[I)V
    .locals 1

    const/4 v0, 0x0

    .line 707
    aget v0, p2, v0

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->gradientTopColor:I

    const/4 v0, 0x1

    .line 708
    aget p2, p2, v0

    iput p2, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->gradientBottomColor:I

    if-eqz p1, :cond_0

    .line 710
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateFilter$4(Landroid/graphics/Bitmap;ZLjava/lang/Runnable;)V
    .locals 3

    const/16 v0, 0x5a

    .line 437
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->filterFile:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    if-eqz p2, :cond_0

    .line 438
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->WEBP:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_0

    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    :goto_0
    invoke-virtual {p1, v2, v0, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const/4 v2, 0x0

    .line 440
    invoke-static {v1, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;Z)V

    if-eqz p2, :cond_1

    .line 443
    :try_start_1
    new-instance p2, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->filterFile:Ljava/io/File;

    invoke-direct {p2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 444
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p1, v1, v0, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p2

    .line 446
    invoke-static {p2, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;Z)V

    .line 450
    :cond_1
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 451
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static makeCacheFile(ILjava/lang/String;)Ljava/io/File;
    .locals 3

    .line 870
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;-><init>()V

    const-wide/32 v1, -0x80000000

    .line 871
    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    const/high16 v1, -0x80000000

    .line 872
    iput v1, v0, Lorg/telegram/tgnet/TLRPC$FileLocation;->dc_id:I

    .line 873
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getLastLocalId()I

    move-result v1

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    const/4 v1, 0x0

    new-array v1, v1, [B

    .line 874
    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$FileLocation;->file_reference:[B

    const-string v1, "mp4"

    .line 877
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 878
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_videoSize_layer127;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_videoSize_layer127;-><init>()V

    .line 879
    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$VideoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto :goto_0

    .line 882
    :cond_0
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_photoSize_layer127;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_photoSize_layer127;-><init>()V

    .line 883
    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 887
    :goto_0
    invoke-static {p0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v1, p1, v0}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static makeCacheFile(IZ)Ljava/io/File;
    .locals 0

    if-eqz p1, :cond_0

    const-string p1, "mp4"

    goto :goto_0

    :cond_0
    const-string p1, "jpg"

    .line 866
    :goto_0
    invoke-static {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->makeCacheFile(ILjava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static setupScale(Landroid/graphics/BitmapFactory$Options;II)V
    .locals 7

    .line 745
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p2

    .line 746
    invoke-virtual {p2}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    .line 747
    invoke-virtual {p2}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v2

    invoke-virtual {p2}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v4

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    .line 749
    iget p2, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v2, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    mul-int v3, p2, v2

    int-to-long v3, v3

    const-wide/16 v5, 0x4

    mul-long/2addr v3, v5

    const-wide/16 v5, 0x2

    mul-long/2addr v3, v5

    cmp-long v0, v3, v0

    const/4 v1, 0x1

    if-gtz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 750
    invoke-static {p2, v2}, Ljava/lang/Math;->max(II)I

    move-result p2

    const/16 v0, 0x1068

    if-gt p2, v0, :cond_1

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result p2

    if-gtz p2, :cond_2

    .line 752
    :cond_1
    iput-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 753
    iget p2, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput p2, p0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 754
    iput p1, p0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    :cond_2
    return-void
.end method


# virtual methods
.method public buildBitmap(FLandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 24

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v0, p2

    .line 216
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 218
    new-instance v4, Landroid/graphics/Paint;

    const/4 v5, 0x7

    invoke-direct {v4, v5}, Landroid/graphics/Paint;-><init>(I)V

    .line 219
    iget v5, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultWidth:I

    int-to-float v5, v5

    mul-float/2addr v5, v2

    float-to-int v5, v5

    iget v6, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultHeight:I

    int-to-float v6, v6

    mul-float/2addr v6, v2

    float-to-int v6, v6

    .line 220
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 221
    new-instance v14, Landroid/graphics/Canvas;

    invoke-direct {v14, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 223
    new-instance v13, Landroid/graphics/Paint;

    const/4 v15, 0x1

    invoke-direct {v13, v15}, Landroid/graphics/Paint;-><init>(I)V

    .line 224
    new-instance v8, Landroid/graphics/LinearGradient;

    invoke-virtual {v14}, Landroid/graphics/Canvas;->getHeight()I

    move-result v9

    int-to-float v9, v9

    const/4 v10, 0x2

    new-array v11, v10, [I

    iget v12, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->gradientTopColor:I

    const/4 v10, 0x0

    aput v12, v11, v10

    iget v12, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->gradientBottomColor:I

    aput v12, v11, v15

    const/4 v12, 0x2

    new-array v12, v12, [F

    fill-array-data v12, :array_0

    sget-object v23, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v16, v8

    move/from16 v20, v9

    move-object/from16 v21, v11

    move-object/from16 v22, v12

    invoke-direct/range {v16 .. v23}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v13, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 225
    invoke-virtual {v14}, Landroid/graphics/Canvas;->getWidth()I

    move-result v8

    int-to-float v11, v8

    invoke-virtual {v14}, Landroid/graphics/Canvas;->getHeight()I

    move-result v8

    int-to-float v12, v8

    const/4 v9, 0x0

    const/16 v16, 0x0

    move-object v8, v14

    move/from16 v10, v16

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 227
    iget-object v8, v1, Lorg/telegram/ui/Stories/recorder/IStoryPart;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v8}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    if-eqz v0, :cond_0

    .line 229
    iget v5, v1, Lorg/telegram/ui/Stories/recorder/IStoryPart;->width:I

    int-to-float v5, v5

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 230
    invoke-virtual {v3, v5, v5}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 231
    invoke-virtual {v3, v2, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 232
    invoke-virtual {v14, v0, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto/16 :goto_6

    .line 234
    :cond_0
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->filterFile:Ljava/io/File;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->file:Ljava/io/File;

    :goto_0
    if-eqz v0, :cond_2

    .line 237
    :try_start_0
    new-instance v8, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda10;

    invoke-direct {v8, v0}, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda10;-><init>(Ljava/io/File;)V

    invoke-static {v8, v5, v6, v15}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->getScaledBitmap(Lorg/telegram/ui/Stories/recorder/StoryEntry$DecodeBitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 238
    iget v8, v1, Lorg/telegram/ui/Stories/recorder/IStoryPart;->width:I

    int-to-float v8, v8

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    .line 239
    invoke-virtual {v3, v8, v8}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 240
    invoke-virtual {v3, v2, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 241
    invoke-virtual {v14, v0, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 242
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 244
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    const/4 v10, 0x0

    .line 248
    :goto_2
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->parts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v10, v0, :cond_3

    .line 250
    :try_start_1
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->parts:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Stories/recorder/StoryEntry$Part;

    .line 251
    new-instance v8, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda11;

    invoke-direct {v8, v0}, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Stories/recorder/StoryEntry$Part;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    const/4 v9, 0x0

    :try_start_2
    invoke-static {v8, v5, v6, v9}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->getScaledBitmap(Lorg/telegram/ui/Stories/recorder/StoryEntry$DecodeBitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 252
    iget v11, v0, Lorg/telegram/ui/Stories/recorder/IStoryPart;->width:I

    int-to-float v11, v11

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v11, v12

    .line 253
    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/IStoryPart;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 254
    invoke-virtual {v3, v11, v11}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 255
    invoke-virtual {v3, v2, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 256
    invoke-virtual {v14, v8, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 257
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    const/4 v9, 0x0

    .line 259
    :goto_3
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_3
    const/4 v9, 0x0

    .line 263
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintFile:Ljava/io/File;

    const/4 v8, 0x0

    if-eqz v0, :cond_4

    .line 265
    :try_start_3
    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda12;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    invoke-static {v0, v5, v6, v9}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->getScaledBitmap(Lorg/telegram/ui/Stories/recorder/StoryEntry$DecodeBitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 266
    invoke-virtual {v14}, Landroid/graphics/Canvas;->save()I

    .line 267
    iget v10, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultWidth:I

    int-to-float v10, v10

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v10, v11

    .line 268
    invoke-virtual {v14, v10, v10}, Landroid/graphics/Canvas;->scale(FF)V

    .line 269
    invoke-virtual {v3, v2, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 270
    invoke-virtual {v14, v0, v8, v8, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 271
    invoke-virtual {v14}, Landroid/graphics/Canvas;->restore()V

    .line 272
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_5

    :catch_3
    move-exception v0

    .line 274
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 278
    :cond_4
    :goto_5
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintEntitiesFile:Ljava/io/File;

    if-eqz v0, :cond_5

    .line 280
    :try_start_4
    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda13;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    invoke-static {v0, v5, v6, v9}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->getScaledBitmap(Lorg/telegram/ui/Stories/recorder/StoryEntry$DecodeBitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 281
    invoke-virtual {v14}, Landroid/graphics/Canvas;->save()I

    .line 282
    iget v5, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultWidth:I

    int-to-float v5, v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 283
    invoke-virtual {v14, v5, v5}, Landroid/graphics/Canvas;->scale(FF)V

    .line 284
    invoke-virtual {v3, v2, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 285
    invoke-virtual {v14, v0, v8, v8, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 286
    invoke-virtual {v14}, Landroid/graphics/Canvas;->restore()V

    .line 287
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_6

    :catch_4
    move-exception v0

    .line 289
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_5
    :goto_6
    return-object v7

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public buildPhoto(Ljava/io/File;)V
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 298
    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->buildBitmap(FLandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 299
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->thumbBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 300
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 301
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->thumbBitmap:Landroid/graphics/Bitmap;

    :cond_0
    const/16 v1, 0x28

    const/16 v2, 0x16

    const/4 v3, 0x1

    .line 303
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->thumbBitmap:Landroid/graphics/Bitmap;

    .line 305
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 306
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x5f

    invoke-virtual {v0, p1, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 307
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 309
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 311
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method

.method public cancelCheckStickers()V
    .locals 3

    .line 1035
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->checkStickersReqId:I

    if-eqz v0, :cond_0

    .line 1036
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->checkStickersReqId:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    :cond_0
    return-void
.end method

.method public checkStickers(Lorg/telegram/tgnet/TLRPC$StoryItem;)V
    .locals 7

    if-eqz p1, :cond_6

    .line 962
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-nez v0, :cond_0

    goto :goto_1

    .line 965
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getAttachedStickers;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_getAttachedStickers;-><init>()V

    .line 966
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 968
    iget-boolean v1, v2, Lorg/telegram/tgnet/TLRPC$Photo;->has_stickers:Z

    if-nez v1, :cond_1

    return-void

    .line 971
    :cond_1
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputStickeredMediaPhoto;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputStickeredMediaPhoto;-><init>()V

    .line 972
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputPhoto;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputPhoto;-><init>()V

    iput-object v4, v1, Lorg/telegram/tgnet/TLRPC$TL_inputStickeredMediaPhoto;->id:Lorg/telegram/tgnet/TLRPC$InputPhoto;

    .line 973
    iget-wide v5, v2, Lorg/telegram/tgnet/TLRPC$Photo;->id:J

    iput-wide v5, v4, Lorg/telegram/tgnet/TLRPC$InputPhoto;->id:J

    .line 974
    iget-wide v5, v2, Lorg/telegram/tgnet/TLRPC$Photo;->access_hash:J

    iput-wide v5, v4, Lorg/telegram/tgnet/TLRPC$InputPhoto;->access_hash:J

    .line 975
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Photo;->file_reference:[B

    iput-object v2, v4, Lorg/telegram/tgnet/TLRPC$InputPhoto;->file_reference:[B

    if-nez v2, :cond_2

    new-array v2, v3, [B

    .line 977
    iput-object v2, v4, Lorg/telegram/tgnet/TLRPC$InputPhoto;->file_reference:[B

    .line 979
    :cond_2
    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getAttachedStickers;->media:Lorg/telegram/tgnet/TLRPC$InputStickeredMedia;

    goto :goto_0

    .line 980
    :cond_3
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v1, :cond_6

    .line 982
    invoke-static {v1}, Lorg/telegram/messenger/MessageObject;->isDocumentHasAttachedStickers(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v2

    if-nez v2, :cond_4

    return-void

    .line 985
    :cond_4
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputStickeredMediaDocument;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputStickeredMediaDocument;-><init>()V

    .line 986
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;-><init>()V

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_inputStickeredMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    .line 987
    iget-wide v5, v1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iput-wide v5, v4, Lorg/telegram/tgnet/TLRPC$InputDocument;->id:J

    .line 988
    iget-wide v5, v1, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    iput-wide v5, v4, Lorg/telegram/tgnet/TLRPC$InputDocument;->access_hash:J

    .line 989
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Document;->file_reference:[B

    iput-object v1, v4, Lorg/telegram/tgnet/TLRPC$InputDocument;->file_reference:[B

    if-nez v1, :cond_5

    new-array v1, v3, [B

    .line 991
    iput-object v1, v4, Lorg/telegram/tgnet/TLRPC$InputDocument;->file_reference:[B

    .line 993
    :cond_5
    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getAttachedStickers;->media:Lorg/telegram/tgnet/TLRPC$InputStickeredMedia;

    .line 997
    :goto_0
    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    .line 1024
    iget v2, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda9;

    invoke-direct {v3, p0, p1, v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Stories/recorder/StoryEntry;Lorg/telegram/tgnet/TLRPC$StoryItem;Lorg/telegram/tgnet/TLRPC$TL_messages_getAttachedStickers;Lorg/telegram/tgnet/RequestDelegate;)V

    invoke-virtual {v2, v0, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->checkStickersReqId:I

    :cond_6
    :goto_1
    return-void
.end method

.method public clearFilter()V
    .locals 1

    .line 462
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->filterFile:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 463
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const/4 v0, 0x0

    .line 464
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->filterFile:Ljava/io/File;

    :cond_0
    return-void
.end method

.method public clearPaint()V
    .locals 2

    .line 469
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintFile:Ljava/io/File;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 470
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 471
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintFile:Ljava/io/File;

    .line 473
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintEntitiesFile:Ljava/io/File;

    if-eqz v0, :cond_1

    .line 474
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 475
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintEntitiesFile:Ljava/io/File;

    :cond_1
    return-void
.end method

.method public copy()Lorg/telegram/ui/Stories/recorder/StoryEntry;
    .locals 4

    .line 1041
    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;

    invoke-direct {v0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;-><init>()V

    .line 1042
    iget-wide v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->draftId:J

    iput-wide v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->draftId:J

    .line 1043
    iget-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isDraft:Z

    iput-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isDraft:Z

    .line 1044
    iget-wide v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->draftDate:J

    iput-wide v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->draftDate:J

    .line 1045
    iget-wide v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editStoryPeerId:J

    iput-wide v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editStoryPeerId:J

    .line 1046
    iget v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editStoryId:I

    iput v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editStoryId:I

    .line 1047
    iget-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEdit:Z

    iput-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEdit:Z

    .line 1048
    iget-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEditSaved:Z

    iput-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEditSaved:Z

    .line 1049
    iget-wide v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->fileDuration:D

    iput-wide v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->fileDuration:D

    .line 1050
    iget-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editedMedia:Z

    iput-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editedMedia:Z

    .line 1051
    iget-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editedCaption:Z

    iput-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editedCaption:Z

    .line 1052
    iget-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editedPrivacy:Z

    iput-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editedPrivacy:Z

    .line 1053
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editedMediaAreas:Ljava/util/ArrayList;

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editedMediaAreas:Ljava/util/ArrayList;

    .line 1054
    iget-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isError:Z

    iput-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isError:Z

    .line 1055
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->error:Lorg/telegram/tgnet/TLRPC$TL_error;

    .line 1056
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioPath:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioPath:Ljava/lang/String;

    .line 1057
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioAuthor:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioAuthor:Ljava/lang/String;

    .line 1058
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioTitle:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioTitle:Ljava/lang/String;

    .line 1059
    iget-wide v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioDuration:J

    iput-wide v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioDuration:J

    .line 1060
    iget-wide v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioOffset:J

    iput-wide v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioOffset:J

    .line 1061
    iget v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioLeft:F

    iput v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioLeft:F

    .line 1062
    iget v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioRight:F

    iput v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioRight:F

    .line 1063
    iget v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioVolume:F

    iput v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioVolume:F

    .line 1064
    iget-wide v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editDocumentId:J

    iput-wide v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editDocumentId:J

    .line 1065
    iget-wide v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editPhotoId:J

    iput-wide v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editPhotoId:J

    .line 1066
    iget-wide v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editExpireDate:J

    iput-wide v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editExpireDate:J

    .line 1067
    iget-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    iput-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    .line 1068
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->file:Ljava/io/File;

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->file:Ljava/io/File;

    .line 1069
    iget-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->fileDeletable:Z

    iput-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->fileDeletable:Z

    .line 1070
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->thumbPath:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->thumbPath:Ljava/lang/String;

    .line 1071
    iget-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->muted:Z

    iput-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->muted:Z

    .line 1072
    iget v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->left:F

    iput v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->left:F

    .line 1073
    iget v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->right:F

    iput v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->right:F

    .line 1074
    iget-wide v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->duration:J

    iput-wide v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->duration:J

    .line 1075
    iget v1, p0, Lorg/telegram/ui/Stories/recorder/IStoryPart;->width:I

    iput v1, v0, Lorg/telegram/ui/Stories/recorder/IStoryPart;->width:I

    .line 1076
    iget v1, p0, Lorg/telegram/ui/Stories/recorder/IStoryPart;->height:I

    iput v1, v0, Lorg/telegram/ui/Stories/recorder/IStoryPart;->height:I

    .line 1077
    iget v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultWidth:I

    iput v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultWidth:I

    .line 1078
    iget v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultHeight:I

    iput v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultHeight:I

    .line 1079
    iget v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->partsMaxId:I

    iput v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->partsMaxId:I

    .line 1080
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->parts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1081
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->parts:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->parts:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1082
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 1083
    iget v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->invert:I

    iput v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->invert:I

    .line 1084
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/IStoryPart;->matrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/IStoryPart;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 1085
    iget v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->gradientTopColor:I

    iput v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->gradientTopColor:I

    .line 1086
    iget v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->gradientBottomColor:I

    iput v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->gradientBottomColor:I

    .line 1087
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->caption:Ljava/lang/CharSequence;

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->caption:Ljava/lang/CharSequence;

    .line 1088
    iget-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->captionEntitiesAllowed:Z

    iput-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->captionEntitiesAllowed:Z

    .line 1089
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->privacy:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->privacy:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;

    .line 1090
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->privacyRules:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1091
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->privacyRules:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->privacyRules:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1092
    iget-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->pinned:Z

    iput-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->pinned:Z

    .line 1093
    iget-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->allowScreenshots:Z

    iput-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->allowScreenshots:Z

    .line 1094
    iget v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->period:I

    iput v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->period:I

    .line 1095
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->shareUserIds:Ljava/util/ArrayList;

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->shareUserIds:Ljava/util/ArrayList;

    .line 1096
    iget-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->silent:Z

    iput-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->silent:Z

    .line 1097
    iget v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->scheduleDate:I

    iput v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->scheduleDate:I

    .line 1098
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->blurredVideoThumb:Landroid/graphics/Bitmap;

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->blurredVideoThumb:Landroid/graphics/Bitmap;

    .line 1099
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->uploadThumbFile:Ljava/io/File;

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->uploadThumbFile:Ljava/io/File;

    .line 1100
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->draftThumbFile:Ljava/io/File;

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->draftThumbFile:Ljava/io/File;

    .line 1101
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintFile:Ljava/io/File;

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintFile:Ljava/io/File;

    .line 1102
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintBlurFile:Ljava/io/File;

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintBlurFile:Ljava/io/File;

    .line 1103
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintEntitiesFile:Ljava/io/File;

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->paintEntitiesFile:Ljava/io/File;

    .line 1104
    iget-wide v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->averageDuration:J

    iput-wide v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->averageDuration:J

    .line 1105
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->mediaEntities:Ljava/util/ArrayList;

    .line 1106
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->mediaEntities:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 1107
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->mediaEntities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1108
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->mediaEntities:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->mediaEntities:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;

    invoke-virtual {v3}, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->copy()Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1111
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->stickers:Ljava/util/List;

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->stickers:Ljava/util/List;

    .line 1112
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editStickers:Ljava/util/List;

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editStickers:Ljava/util/List;

    .line 1113
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->filterFile:Ljava/io/File;

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->filterFile:Ljava/io/File;

    .line 1114
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    .line 1115
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->thumbBitmap:Landroid/graphics/Bitmap;

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->thumbBitmap:Landroid/graphics/Bitmap;

    .line 1116
    iget-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->fromCamera:Z

    iput-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->fromCamera:Z

    .line 1117
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->thumbPathBitmap:Landroid/graphics/Bitmap;

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->thumbPathBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public decodeBounds(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 616
    :try_start_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 617
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 618
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 619
    iget p1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/IStoryPart;->width:I

    .line 620
    iget p1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/IStoryPart;->height:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 623
    :catch_0
    :cond_0
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-nez p1, :cond_2

    .line 624
    iget p1, p0, Lorg/telegram/ui/Stories/recorder/IStoryPart;->width:I

    int-to-float p1, p1

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/IStoryPart;->height:I

    int-to-float v0, v0

    const/high16 v1, 0x41800000    # 16.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x41100000    # 9.0f

    mul-float/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    float-to-int p1, p1

    const/16 v0, 0x384

    if-gt p1, v0, :cond_1

    const/16 p1, 0x2d0

    .line 630
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultWidth:I

    const/16 p1, 0x500

    .line 631
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultHeight:I

    goto :goto_0

    :cond_1
    const/16 p1, 0x438

    .line 633
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultWidth:I

    const/16 p1, 0x780

    .line 634
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultHeight:I

    :cond_2
    :goto_0
    return-void
.end method

.method public destroy(Z)V
    .locals 3

    .line 480
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->blurredVideoThumb:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 481
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->blurredVideoThumb:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 482
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->blurredVideoThumb:Landroid/graphics/Bitmap;

    .line 484
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->uploadThumbFile:Ljava/io/File;

    if-eqz v0, :cond_1

    .line 485
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 486
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->uploadThumbFile:Ljava/io/File;

    :cond_1
    if-nez p1, :cond_8

    .line 489
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->clearPaint()V

    .line 490
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->clearFilter()V

    .line 491
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->file:Ljava/io/File;

    if-eqz p1, :cond_4

    .line 492
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->fileDeletable:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEdit:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editedMedia:Z

    if-eqz v0, :cond_3

    .line 493
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 495
    :cond_3
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->file:Ljava/io/File;

    .line 497
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->thumbPath:Ljava/lang/String;

    if-eqz p1, :cond_6

    .line 498
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->fileDeletable:Z

    if-eqz p1, :cond_5

    .line 499
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->thumbPath:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 501
    :cond_5
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->thumbPath:Ljava/lang/String;

    .line 503
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->parts:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Stories/recorder/StoryEntry$Part;

    .line 504
    iget-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry$Part;->fileDeletable:Z

    if-eqz v2, :cond_7

    .line 505
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry$Part;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 507
    :cond_7
    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry$Part;->file:Ljava/io/File;

    goto :goto_0

    .line 510
    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->thumbPathBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_9

    .line 511
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 512
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->thumbPathBitmap:Landroid/graphics/Bitmap;

    .line 514
    :cond_9
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->cancelCheckStickers()V

    return-void
.end method

.method public detectHDR(Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/Utilities$Callback<",
            "Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 920
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->hdrInfo:Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;

    if-eqz v0, :cond_1

    .line 921
    invoke-interface {p1, v0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void

    .line 924
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-eqz v0, :cond_3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_2

    goto :goto_0

    .line 928
    :cond_2
    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Stories/recorder/StoryEntry;Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void

    .line 925
    :cond_3
    :goto_0
    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;

    invoke-direct {v0}, Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->hdrInfo:Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;

    invoke-interface {p1, v0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method public getOriginalFile()Ljava/io/File;
    .locals 1

    .line 373
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->filterFile:Ljava/io/File;

    if-eqz v0, :cond_0

    return-object v0

    .line 376
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->file:Ljava/io/File;

    return-object v0
.end method

.method public getVideoEditedInfo(Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/Utilities$Callback<",
            "Lorg/telegram/messenger/VideoEditedInfo;",
            ">;)V"
        }
    .end annotation

    .line 759
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->wouldBeVideo()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 760
    invoke-interface {p1, v0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void

    .line 763
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-nez v0, :cond_2

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultWidth:I

    const/16 v1, 0x500

    const/16 v2, 0x2d0

    if-gt v0, v2, :cond_1

    iget v3, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultHeight:I

    if-le v3, v1, :cond_2

    :cond_1
    const/high16 v3, 0x44340000    # 720.0f

    int-to-float v0, v0

    div-float/2addr v3, v0

    .line 765
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/IStoryPart;->matrix:Landroid/graphics/Matrix;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v3, v4, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 766
    iput v2, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultWidth:I

    .line 767
    iput v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultHeight:I

    .line 769
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 770
    sget-object v1, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0, p1}, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/recorder/StoryEntry;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setupGradient(Ljava/lang/Runnable;)V
    .locals 8

    .line 667
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->gradientTopColor:I

    if-nez v0, :cond_2

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->gradientBottomColor:I

    if-nez v0, :cond_2

    .line 668
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->thumbPath:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 671
    :try_start_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 672
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->thumbPath:Ljava/lang/String;

    const-string v4, "vthumb://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    const/16 v5, 0xf0

    if-eqz v3, :cond_0

    .line 673
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->thumbPath:Ljava/lang/String;

    const/16 v6, 0x9

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v6, v3

    .line 674
    iput-boolean v1, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 675
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v6, v7, v1, v2}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 677
    invoke-static {v2, v5, v5}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v3

    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 678
    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 679
    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v3, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 680
    iput-boolean v1, v2, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 681
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v6, v7, v1, v2}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 683
    :cond_0
    iput-boolean v1, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 684
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->thumbPath:Ljava/lang/String;

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 686
    invoke-static {v2, v5, v5}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v3

    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 687
    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 688
    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v3, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 689
    iput-boolean v1, v2, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 690
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->thumbPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    if-eqz v0, :cond_2

    .line 695
    new-instance v2, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0, v0, p1}, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Stories/recorder/StoryEntry;Landroid/graphics/Bitmap;Ljava/lang/Runnable;)V

    invoke-static {v1, v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/DominantColors;->getColors(ZLandroid/graphics/Bitmap;ZLorg/telegram/messenger/Utilities$Callback;)V

    goto :goto_1

    .line 705
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->thumbPathBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 706
    new-instance v2, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Stories/recorder/StoryEntry;Ljava/lang/Runnable;)V

    invoke-static {v1, v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/DominantColors;->getColors(ZLandroid/graphics/Bitmap;ZLorg/telegram/messenger/Utilities$Callback;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setupMatrix()V
    .locals 2

    .line 640
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/IStoryPart;->matrix:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->setupMatrix(Landroid/graphics/Matrix;I)V

    return-void
.end method

.method public setupMatrix(Landroid/graphics/Matrix;I)V
    .locals 8

    .line 644
    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    .line 645
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/IStoryPart;->width:I

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/IStoryPart;->height:I

    .line 646
    iget v2, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->orientation:I

    add-int/2addr v2, p2

    .line 647
    iget p2, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->invert:I

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    if-ne p2, v5, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    const/4 v6, 0x2

    if-ne p2, v6, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    int-to-float p2, v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr p2, v4

    int-to-float v6, v1

    div-float/2addr v6, v4

    invoke-virtual {p1, v5, v3, p2, v6}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    if-eqz v2, :cond_4

    neg-int p2, v0

    int-to-float p2, p2

    div-float/2addr p2, v4

    neg-int v3, v1

    int-to-float v3, v3

    div-float/2addr v3, v4

    .line 649
    invoke-virtual {p1, p2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    int-to-float p2, v2

    .line 650
    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/16 p2, 0x5a

    if-eq v2, p2, :cond_2

    const/16 p2, 0x10e

    if-ne v2, p2, :cond_3

    :cond_2
    move v7, v1

    move v1, v0

    move v0, v7

    :cond_3
    int-to-float p2, v0

    div-float/2addr p2, v4

    int-to-float v2, v1

    div-float/2addr v2, v4

    .line 656
    invoke-virtual {p1, p2, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 658
    :cond_4
    iget p2, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultWidth:I

    int-to-float p2, p2

    int-to-float v0, v0

    div-float/2addr p2, v0

    int-to-float v1, v1

    div-float v2, v1, v0

    const v3, 0x3fa51eb8    # 1.29f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_5

    .line 660
    iget v2, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultHeight:I

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-static {p2, v2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    .line 662
    :cond_5
    invoke-virtual {p1, p2, p2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 663
    iget v2, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultWidth:I

    int-to-float v2, v2

    mul-float/2addr v0, p2

    sub-float/2addr v2, v0

    div-float/2addr v2, v4

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultHeight:I

    int-to-float v0, v0

    mul-float/2addr v1, p2

    sub-float/2addr v0, v1

    div-float/2addr v0, v4

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method public updateFilter(Lorg/telegram/ui/Components/PhotoFilterView;Ljava/lang/Runnable;)V
    .locals 9

    .line 391
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->clearFilter()V

    .line 393
    invoke-virtual {p1}, Lorg/telegram/ui/Components/PhotoFilterView;->getSavedFilterState()Lorg/telegram/messenger/MediaController$SavedFilterState;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    .line 394
    iget-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-nez v1, :cond_c

    .line 395
    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController$SavedFilterState;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 397
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void

    .line 402
    :cond_1
    invoke-virtual {p1}, Lorg/telegram/ui/Components/PhotoFilterView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_3

    if-eqz p2, :cond_2

    .line 405
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_2
    return-void

    .line 410
    :cond_3
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 411
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->invert:I

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    if-ne v0, v8, :cond_4

    move v3, v1

    goto :goto_0

    :cond_4
    move v3, v2

    :goto_0
    const/4 v4, 0x2

    if-ne v0, v4, :cond_5

    goto :goto_1

    :cond_5
    move v1, v2

    :goto_1
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/IStoryPart;->width:I

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    iget v4, p0, Lorg/telegram/ui/Stories/recorder/IStoryPart;->height:I

    int-to-float v4, v4

    div-float/2addr v4, v2

    invoke-virtual {v6, v3, v1, v0, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 412
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->orientation:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {v6, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 413
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 414
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/IStoryPart;->matrix:Landroid/graphics/Matrix;

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/IStoryPart;->width:I

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget v3, p0, Lorg/telegram/ui/Stories/recorder/IStoryPart;->height:I

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 415
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Stories/recorder/IStoryPart;->width:I

    .line 416
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Stories/recorder/IStoryPart;->height:I

    .line 418
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 420
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->filterFile:Ljava/io/File;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 421
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->filterFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 423
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->file:Ljava/io/File;

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->ext(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "png"

    .line 424
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "webp"

    if-nez v1, :cond_8

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_2

    :cond_7
    const/4 v8, 0x0

    .line 425
    :cond_8
    :goto_2
    iget p1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->currentAccount:I

    if-eqz v8, :cond_9

    goto :goto_3

    :cond_9
    const-string v2, "jpg"

    :goto_3
    invoke-static {p1, v2}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->makeCacheFile(ILjava/lang/String;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->filterFile:Ljava/io/File;

    if-nez p2, :cond_b

    .line 428
    :try_start_0
    new-instance p1, Ljava/io/FileOutputStream;

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->filterFile:Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    if-eqz v8, :cond_a

    .line 429
    sget-object p2, Landroid/graphics/Bitmap$CompressFormat;->WEBP:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_4

    :cond_a
    sget-object p2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    :goto_4
    const/16 v1, 0x5a

    invoke-virtual {v0, p2, v1, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception p1

    .line 431
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 433
    :goto_5
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_6

    .line 435
    :cond_b
    sget-object p1, Lorg/telegram/messenger/Utilities;->themeQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0, v8, p2}, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/recorder/StoryEntry;Landroid/graphics/Bitmap;ZLjava/lang/Runnable;)V

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    goto :goto_6

    :cond_c
    if-eqz p2, :cond_d

    .line 456
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_d
    :goto_6
    return-void
.end method

.method public wouldBeVideo()Z
    .locals 7

    .line 182
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 185
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioPath:Ljava/lang/String;

    if-eqz v0, :cond_1

    return v1

    .line 188
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->mediaEntities:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v2

    .line 189
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->mediaEntities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 190
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->mediaEntities:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;

    .line 191
    iget-byte v4, v3, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->type:B

    if-nez v4, :cond_2

    .line 192
    iget-object v4, v3, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v3, v3, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->text:Ljava/lang/String;

    invoke-direct {p0, v4, v3}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isAnimated(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    return v1

    :cond_2
    if-ne v4, v1, :cond_4

    .line 195
    iget-object v4, v3, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->entities:Ljava/util/ArrayList;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    move v4, v2

    .line 196
    :goto_1
    iget-object v5, v3, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->entities:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 197
    iget-object v5, v3, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->entities:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;

    .line 198
    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v5, v5, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;->documentAbsolutePath:Ljava/lang/String;

    invoke-direct {p0, v6, v5}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isAnimated(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    return v1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return v2
.end method
