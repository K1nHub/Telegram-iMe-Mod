.class public abstract Lorg/telegram/tgnet/TLRPC$StoryItem;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# instance fields
.field public attachPath:Ljava/lang/String;

.field public caption:Ljava/lang/String;

.field public close_friends:Z

.field public contacts:Z

.field public date:I

.field public detectedLng:Ljava/lang/String;

.field public dialogId:J

.field public edited:Z

.field public entities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$MessageEntity;",
            ">;"
        }
    .end annotation
.end field

.field public expire_date:I

.field public fileReference:I

.field public firstFramePath:Ljava/lang/String;

.field public flags:I

.field public id:I

.field public isPublic:Z

.field public justUploaded:Z

.field public lastUpdateTime:J

.field public media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

.field public media_areas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$MediaArea;",
            ">;"
        }
    .end annotation
.end field

.field public messageId:I

.field public messageType:I

.field public min:Z

.field public noforwards:Z

.field public out:Z

.field public parsedPrivacy:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;

.field public pinned:Z

.field public privacy:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$PrivacyRule;",
            ">;"
        }
    .end annotation
.end field

.field public selected_contacts:Z

.field public sent_reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

.field public translated:Z

.field public translatedLng:Ljava/lang/String;

.field public translatedText:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

.field public views:Lorg/telegram/tgnet/TLRPC$StoryViews;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$StoryItem;->entities:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$StoryItem;->media_areas:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$StoryItem;->privacy:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$StoryItem;
    .locals 1

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_storyItem_layer160;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_storyItem_layer160;-><init>()V

    goto :goto_0

    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_storyItemDeleted;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_storyItemDeleted;-><init>()V

    goto :goto_0

    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_storyItem;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_storyItem;-><init>()V

    goto :goto_0

    :sswitch_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_storyItemSkipped;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_storyItemSkipped;-><init>()V

    :goto_0
    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "can\'t parse magic %x in StoryItem"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLObject;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    :cond_2
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5236ed -> :sswitch_3
        0x44c457ce -> :sswitch_2
        0x51e6ee4f -> :sswitch_1
        0x562aa637 -> :sswitch_0
    .end sparse-switch
.end method
