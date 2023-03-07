.class public abstract Lorg/telegram/tgnet/TLRPC$MessageMedia;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# instance fields
.field public address:Ljava/lang/String;

.field public audio_unused:Lorg/telegram/tgnet/TLRPC$Audio;

.field public bytes:[B

.field public captionLegacy:Ljava/lang/String;

.field public currency:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public document:Lorg/telegram/tgnet/TLRPC$Document;

.field public extended_media:Lorg/telegram/tgnet/TLRPC$MessageExtendedMedia;

.field public first_name:Ljava/lang/String;

.field public flags:I

.field public game:Lorg/telegram/tgnet/TLRPC$TL_game;

.field public geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

.field public heading:I

.field public last_name:Ljava/lang/String;

.field public nopremium:Z

.field public period:I

.field public phone_number:Ljava/lang/String;

.field public photo:Lorg/telegram/tgnet/TLRPC$Photo;

.field public provider:Ljava/lang/String;

.field public proximity_notification_radius:I

.field public receipt_msg_id:I

.field public shipping_address_requested:Z

.field public spoiler:Z

.field public start_param:Ljava/lang/String;

.field public test:Z

.field public title:Ljava/lang/String;

.field public total_amount:J

.field public ttl_seconds:I

.field public user_id:J

.field public vcard:Ljava/lang/String;

.field public venue_id:Ljava/lang/String;

.field public venue_type:Ljava/lang/String;

.field public video_unused:Lorg/telegram/tgnet/TLRPC$Video;

.field public webpage:Lorg/telegram/tgnet/TLRPC$WebPage;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 59106
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessageMedia;
    .locals 6

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    goto/16 :goto_0

    .line 59210
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument_layer74;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument_layer74;-><init>()V

    goto/16 :goto_0

    .line 59192
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeoLive_layer119;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeoLive_layer119;-><init>()V

    goto/16 :goto_0

    .line 59186
    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue_layer71;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue_layer71;-><init>()V

    goto/16 :goto_0

    .line 59249
    :sswitch_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;-><init>()V

    goto/16 :goto_0

    .line 59216
    :sswitch_4
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;-><init>()V

    goto/16 :goto_0

    .line 59234
    :sswitch_5
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDice_layer111;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDice_layer111;-><init>()V

    goto/16 :goto_0

    .line 59213
    :sswitch_6
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact_layer81;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact_layer81;-><init>()V

    goto/16 :goto_0

    .line 59228
    :sswitch_7
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVideo_layer45;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVideo_layer45;-><init>()V

    goto/16 :goto_0

    .line 59237
    :sswitch_8
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;-><init>()V

    goto/16 :goto_0

    .line 59219
    :sswitch_9
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;-><init>()V

    goto/16 :goto_0

    .line 59231
    :sswitch_a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDice;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDice;-><init>()V

    goto/16 :goto_0

    .line 59183
    :sswitch_b
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    goto/16 :goto_0

    .line 59225
    :sswitch_c
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto_layer68;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto_layer68;-><init>()V

    goto/16 :goto_0

    .line 59201
    :sswitch_d
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument_old;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument_old;-><init>()V

    goto :goto_0

    .line 59195
    :sswitch_e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;-><init>()V

    goto :goto_0

    .line 59165
    :sswitch_f
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaUnsupported_old;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaUnsupported_old;-><init>()V

    goto :goto_0

    .line 59207
    :sswitch_10
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;-><init>()V

    goto :goto_0

    .line 59177
    :sswitch_11
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;-><init>()V

    goto :goto_0

    .line 59204
    :sswitch_12
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument_layer68;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument_layer68;-><init>()V

    goto :goto_0

    .line 59246
    :sswitch_13
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact_layer131;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact_layer131;-><init>()V

    goto :goto_0

    .line 59171
    :sswitch_14
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto_old;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto_old;-><init>()V

    goto :goto_0

    .line 59168
    :sswitch_15
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaAudio_layer45;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaAudio_layer45;-><init>()V

    goto :goto_0

    .line 59189
    :sswitch_16
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeoLive;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeoLive;-><init>()V

    goto :goto_0

    .line 59222
    :sswitch_17
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto_layer74;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto_layer74;-><init>()V

    goto :goto_0

    .line 59240
    :sswitch_18
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;-><init>()V

    goto :goto_0

    .line 59198
    :sswitch_19
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVideo_old;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVideo_old;-><init>()V

    goto :goto_0

    .line 59180
    :sswitch_1a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaUnsupported;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaUnsupported;-><init>()V

    goto :goto_0

    .line 59243
    :sswitch_1b
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;-><init>()V

    goto :goto_0

    .line 59174
    :sswitch_1c
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice_layer145;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice_layer145;-><init>()V

    :goto_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_1

    .line 59253
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v2

    const-string p1, "can\'t parse magic %x in MessageMedia"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_1
    if-eqz v0, :cond_8

    .line 59256
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLObject;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 59257
    iget-object p0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->video_unused:Lorg/telegram/tgnet/TLRPC$Video;

    const-string p1, ""

    const/4 p2, 0x3

    if-eqz p0, :cond_4

    .line 59258
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;-><init>()V

    .line 59259
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->video_unused:Lorg/telegram/tgnet/TLRPC$Video;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_videoEncrypted;

    if-eqz v1, :cond_2

    .line 59260
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_documentEncrypted;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_documentEncrypted;-><init>()V

    iput-object v1, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 59261
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->video_unused:Lorg/telegram/tgnet/TLRPC$Video;

    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$Video;->key:[B

    iput-object v4, v1, Lorg/telegram/tgnet/TLRPC$Document;->key:[B

    .line 59262
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Video;->iv:[B

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$Document;->iv:[B

    goto :goto_2

    .line 59264
    :cond_2
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_document;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_document;-><init>()V

    iput-object v1, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 59266
    :goto_2
    iput p2, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    .line 59267
    iget-object p2, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    new-array v1, v2, [B

    iput-object v1, p2, Lorg/telegram/tgnet/TLRPC$Document;->file_reference:[B

    .line 59268
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->video_unused:Lorg/telegram/tgnet/TLRPC$Video;

    iget-wide v2, v1, Lorg/telegram/tgnet/TLRPC$Video;->id:J

    iput-wide v2, p2, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    .line 59269
    iget-wide v2, v1, Lorg/telegram/tgnet/TLRPC$Video;->access_hash:J

    iput-wide v2, p2, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    .line 59270
    iget v2, v1, Lorg/telegram/tgnet/TLRPC$Video;->date:I

    iput v2, p2, Lorg/telegram/tgnet/TLRPC$Document;->date:I

    .line 59271
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$Video;->mime_type:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 59272
    iput-object v2, p2, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    goto :goto_3

    :cond_3
    const-string v2, "video/mp4"

    .line 59274
    iput-object v2, p2, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    .line 59276
    :goto_3
    iget v2, v1, Lorg/telegram/tgnet/TLRPC$Video;->size:I

    int-to-long v2, v2

    iput-wide v2, p2, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    .line 59277
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Video;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59278
    iget-object p2, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->video_unused:Lorg/telegram/tgnet/TLRPC$Video;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$Video;->dc_id:I

    iput v1, p2, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    .line 59279
    iget-object p2, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->captionLegacy:Ljava/lang/String;

    iput-object p2, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->captionLegacy:Ljava/lang/String;

    .line 59280
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;-><init>()V

    .line 59281
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->video_unused:Lorg/telegram/tgnet/TLRPC$Video;

    iget v1, v0, Lorg/telegram/tgnet/TLRPC$Video;->w:I

    iput v1, p2, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->w:I

    .line 59282
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$Video;->h:I

    iput v1, p2, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->h:I

    .line 59283
    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Video;->duration:I

    iput v0, p2, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->duration:I

    .line 59284
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59286
    iget-object p2, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->captionLegacy:Ljava/lang/String;

    if-nez p2, :cond_7

    .line 59287
    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->captionLegacy:Ljava/lang/String;

    goto/16 :goto_6

    .line 59289
    :cond_4
    iget-object p0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->audio_unused:Lorg/telegram/tgnet/TLRPC$Audio;

    if-eqz p0, :cond_8

    .line 59290
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;-><init>()V

    .line 59291
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->audio_unused:Lorg/telegram/tgnet/TLRPC$Audio;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_audioEncrypted;

    if-eqz v3, :cond_5

    .line 59292
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_documentEncrypted;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_documentEncrypted;-><init>()V

    iput-object v3, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 59293
    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->audio_unused:Lorg/telegram/tgnet/TLRPC$Audio;

    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$Audio;->key:[B

    iput-object v5, v3, Lorg/telegram/tgnet/TLRPC$Document;->key:[B

    .line 59294
    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Audio;->iv:[B

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$Document;->iv:[B

    goto :goto_4

    .line 59296
    :cond_5
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_document;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_document;-><init>()V

    iput-object v3, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 59298
    :goto_4
    iput p2, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    .line 59299
    iget-object p2, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    new-array v2, v2, [B

    iput-object v2, p2, Lorg/telegram/tgnet/TLRPC$Document;->file_reference:[B

    .line 59300
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->audio_unused:Lorg/telegram/tgnet/TLRPC$Audio;

    iget-wide v3, v2, Lorg/telegram/tgnet/TLRPC$Audio;->id:J

    iput-wide v3, p2, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    .line 59301
    iget-wide v3, v2, Lorg/telegram/tgnet/TLRPC$Audio;->access_hash:J

    iput-wide v3, p2, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    .line 59302
    iget v3, v2, Lorg/telegram/tgnet/TLRPC$Audio;->date:I

    iput v3, p2, Lorg/telegram/tgnet/TLRPC$Document;->date:I

    .line 59303
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$Audio;->mime_type:Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 59304
    iput-object v3, p2, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    goto :goto_5

    :cond_6
    const-string v3, "audio/ogg"

    .line 59306
    iput-object v3, p2, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    .line 59308
    :goto_5
    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Audio;->size:I

    int-to-long v2, v2

    iput-wide v2, p2, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    .line 59309
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;-><init>()V

    const-string v2, "s"

    .line 59310
    iput-object v2, p2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    .line 59311
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59312
    iget-object p2, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->audio_unused:Lorg/telegram/tgnet/TLRPC$Audio;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Audio;->dc_id:I

    iput v2, p2, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    .line 59313
    iget-object p2, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->captionLegacy:Ljava/lang/String;

    iput-object p2, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->captionLegacy:Ljava/lang/String;

    .line 59314
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;-><init>()V

    .line 59315
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->audio_unused:Lorg/telegram/tgnet/TLRPC$Audio;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Audio;->duration:I

    iput v0, p2, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->duration:I

    .line 59316
    iput-boolean v1, p2, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->voice:Z

    .line 59317
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59319
    iget-object p2, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->captionLegacy:Ljava/lang/String;

    if-nez p2, :cond_7

    .line 59320
    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->captionLegacy:Ljava/lang/String;

    :cond_7
    :goto_6
    move-object v0, p0

    :cond_8
    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x7baaecb9 -> :sswitch_1c
        -0x634f8f29 -> :sswitch_1b
        -0x607b0b62 -> :sswitch_1a
        -0x5d2dbd70 -> :sswitch_19
        -0x5cd22a00 -> :sswitch_18
        -0x4addc4f1 -> :sswitch_17
        -0x46bf399a -> :sswitch_16
        -0x39497d00 -> :sswitch_15
        -0x373ba5d6 -> :sswitch_14
        -0x340db6c0 -> :sswitch_13
        -0xc1fd158 -> :sswitch_12
        -0x95ab72d -> :sswitch_11
        -0x24e6ff8 -> :sswitch_10
        0x29632a36 -> :sswitch_f
        0x2ec0533f -> :sswitch_e
        0x2fda2204 -> :sswitch_d
        0x3d8ce53d -> :sswitch_c
        0x3ded6320 -> :sswitch_b
        0x3f7ee58b -> :sswitch_a
        0x4bd6e798 -> :sswitch_9
        0x56e0d474 -> :sswitch_8
        0x5bcf1675 -> :sswitch_7
        0x5e7d2f39 -> :sswitch_6
        0x638fe46b -> :sswitch_5
        0x695150d7 -> :sswitch_4
        0x70322949 -> :sswitch_3
        0x7912b71f -> :sswitch_2
        0x7c3c2609 -> :sswitch_1
        0x7c4414d3 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public copy()Lorg/telegram/tgnet/TLRPC$MessageMedia;
    .locals 3

    .line 59114
    :try_start_0
    new-instance v0, Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {p0}, Lorg/telegram/tgnet/TLObject;->getObjectSize()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    .line 59115
    invoke-virtual {p0, v0}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    const/4 v1, 0x0

    .line 59116
    invoke-virtual {v0, v1}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    return-object p0
.end method
