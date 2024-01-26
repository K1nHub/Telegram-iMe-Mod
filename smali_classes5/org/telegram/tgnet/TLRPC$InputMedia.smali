.class public abstract Lorg/telegram/tgnet/TLRPC$InputMedia;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# instance fields
.field public address:Ljava/lang/String;

.field public attributes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$DocumentAttribute;",
            ">;"
        }
    .end annotation
.end field

.field public file:Lorg/telegram/tgnet/TLRPC$InputFile;

.field public first_name:Ljava/lang/String;

.field public flags:I

.field public force_file:Z

.field public geo_point:Lorg/telegram/tgnet/TLRPC$InputGeoPoint;

.field public heading:I

.field public last_name:Ljava/lang/String;

.field public mime_type:Ljava/lang/String;

.field public nosound_video:Z

.field public period:I

.field public phone_number:Ljava/lang/String;

.field public provider:Ljava/lang/String;

.field public proximity_notification_radius:I

.field public spoiler:Z

.field public stickers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$InputDocument;",
            ">;"
        }
    .end annotation
.end field

.field public stopped:Z

.field public thumb:Lorg/telegram/tgnet/TLRPC$InputFile;

.field public title:Ljava/lang/String;

.field public ttl_seconds:I

.field public vcard:Ljava/lang/String;

.field public venue_id:Ljava/lang/String;

.field public venue_type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32609
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 32618
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$InputMedia;->stickers:Ljava/util/ArrayList;

    .line 32631
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$InputMedia;->attributes:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputMedia;
    .locals 1

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    .line 32672
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedDocument;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedDocument;-><init>()V

    goto :goto_0

    .line 32642
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;-><init>()V

    goto :goto_0

    .line 32663
    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedPhoto;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedPhoto;-><init>()V

    goto :goto_0

    .line 32660
    :sswitch_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPoll;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPoll;-><init>()V

    goto :goto_0

    .line 32654
    :sswitch_4
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocumentExternal;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocumentExternal;-><init>()V

    goto :goto_0

    .line 32651
    :sswitch_5
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaGeoPoint;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaGeoPoint;-><init>()V

    goto :goto_0

    .line 32639
    :sswitch_6
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaContact;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaContact;-><init>()V

    goto :goto_0

    .line 32648
    :sswitch_7
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDice;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDice;-><init>()V

    goto :goto_0

    .line 32675
    :sswitch_8
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhotoExternal;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhotoExternal;-><init>()V

    goto :goto_0

    .line 32645
    :sswitch_9
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaGame;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaGame;-><init>()V

    goto :goto_0

    .line 32681
    :sswitch_a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaWebPage;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaWebPage;-><init>()V

    goto :goto_0

    .line 32666
    :sswitch_b
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaVenue;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaVenue;-><init>()V

    goto :goto_0

    .line 32678
    :sswitch_c
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;-><init>()V

    goto :goto_0

    .line 32669
    :sswitch_d
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaGeoLive;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaGeoLive;-><init>()V

    goto :goto_0

    .line 32657
    :sswitch_e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaEmpty;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaEmpty;-><init>()V

    :goto_0
    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_1

    .line 32685
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "can\'t parse magic %x in InputMedia"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 32688
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLObject;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    :cond_2
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x699b0a81 -> :sswitch_e
        -0x68e057bd -> :sswitch_d
        -0x4c45f9cb -> :sswitch_c
        -0x3ec2e3ef -> :sswitch_b
        -0x3de477b7 -> :sswitch_a
        -0x2cc0bc0d -> :sswitch_9
        -0x1a4401e6 -> :sswitch_8
        -0x19904085 -> :sswitch_7
        -0x7548205 -> :sswitch_6
        -0x63bbebc -> :sswitch_5
        -0x4ad2367 -> :sswitch_4
        0xf94e5f1 -> :sswitch_3
        0x1e287d04 -> :sswitch_2
        0x33473058 -> :sswitch_1
        0x5b38c6c1 -> :sswitch_0
    .end sparse-switch
.end method
