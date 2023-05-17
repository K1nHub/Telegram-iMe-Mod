.class public Lorg/telegram/tgnet/TLRPC$TL_config;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0x33e5dbe2


# instance fields
.field public autologin_token:Ljava/lang/String;

.field public autoupdate_url_prefix:Ljava/lang/String;

.field public base_lang_pack_version:I

.field public blocked_mode:Z

.field public call_connect_timeout_ms:I

.field public call_packet_timeout_ms:I

.field public call_receive_timeout_ms:I

.field public call_ring_timeout_ms:I

.field public caption_length_max:I

.field public channels_read_media_period:I

.field public chat_size_max:I

.field public date:I

.field public dc_options:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_dcOption;",
            ">;"
        }
    .end annotation
.end field

.field public dc_txt_domain_name:Ljava/lang/String;

.field public default_p2p_contacts:Z

.field public edit_time_limit:I

.field public expires:I

.field public flags:I

.field public force_try_ipv6:Z

.field public forwarded_count_max:I

.field public gif_search_username:Ljava/lang/String;

.field public img_search_username:Ljava/lang/String;

.field public lang_pack_version:I

.field public me_url_prefix:Ljava/lang/String;

.field public megagroup_size_max:I

.field public message_length_max:I

.field public notify_cloud_delay_ms:I

.field public notify_default_delay_ms:I

.field public offline_blur_timeout_ms:I

.field public offline_idle_timeout_ms:I

.field public online_cloud_timeout_ms:I

.field public online_update_period_ms:I

.field public preload_featured_stickers:Z

.field public push_chat_limit:I

.field public push_chat_period_ms:I

.field public rating_e_decay:I

.field public reactions_default:Lorg/telegram/tgnet/TLRPC$Reaction;

.field public revoke_pm_inbox:Z

.field public revoke_pm_time_limit:I

.field public revoke_time_limit:I

.field public static_maps_provider:Ljava/lang/String;

.field public stickers_recent_limit:I

.field public suggested_lang_code:Ljava/lang/String;

.field public test_mode:Z

.field public this_dc:I

.field public tmp_sessions:I

.field public venue_search_username:Ljava/lang/String;

.field public webfile_dc_id:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 37248
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 37261
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->dc_options:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_config;
    .locals 1

    .line 37301
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_config;->constructor:I

    if-eq v0, p1, :cond_1

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 37303
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "can\'t parse magic %x in TL_config"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 37308
    :cond_1
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_config;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_config;-><init>()V

    .line 37309
    invoke-virtual {p1, p0, p2}, Lorg/telegram/tgnet/TLRPC$TL_config;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    return-object p1
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 5

    .line 37314
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->flags:I

    and-int/lit8 v1, v0, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 37315
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->default_p2p_contacts:Z

    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    .line 37316
    :goto_1
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->preload_featured_stickers:Z

    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v2

    .line 37317
    :goto_2
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->revoke_pm_inbox:Z

    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_3

    :cond_3
    move v1, v2

    .line 37318
    :goto_3
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->blocked_mode:Z

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_4

    move v0, v3

    goto :goto_4

    :cond_4
    move v0, v2

    .line 37319
    :goto_4
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->force_try_ipv6:Z

    .line 37320
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->date:I

    .line 37321
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->expires:I

    .line 37322
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readBool(Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->test_mode:Z

    .line 37323
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->this_dc:I

    .line 37324
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    const v1, 0x1cb5c415

    if-eq v0, v1, :cond_6

    if-nez p2, :cond_5

    return-void

    .line 37327
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    new-array p2, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v2

    const-string/jumbo v0, "wrong Vector magic, got %x"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 37331
    :cond_6
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    :goto_5
    if-ge v2, v0, :cond_8

    .line 37333
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    invoke-static {p1, v1, p2}, Lorg/telegram/tgnet/TLRPC$TL_dcOption;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_dcOption;

    move-result-object v1

    if-nez v1, :cond_7

    return-void

    .line 37337
    :cond_7
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->dc_options:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 37339
    :cond_8
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->dc_txt_domain_name:Ljava/lang/String;

    .line 37340
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->chat_size_max:I

    .line 37341
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->megagroup_size_max:I

    .line 37342
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->forwarded_count_max:I

    .line 37343
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->online_update_period_ms:I

    .line 37344
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->offline_blur_timeout_ms:I

    .line 37345
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->offline_idle_timeout_ms:I

    .line 37346
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->online_cloud_timeout_ms:I

    .line 37347
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->notify_cloud_delay_ms:I

    .line 37348
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->notify_default_delay_ms:I

    .line 37349
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->push_chat_period_ms:I

    .line 37350
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->push_chat_limit:I

    .line 37351
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->edit_time_limit:I

    .line 37352
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->revoke_time_limit:I

    .line 37353
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->revoke_pm_time_limit:I

    .line 37354
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->rating_e_decay:I

    .line 37355
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->stickers_recent_limit:I

    .line 37356
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->channels_read_media_period:I

    .line 37357
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->flags:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_9

    .line 37358
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->tmp_sessions:I

    .line 37360
    :cond_9
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->call_receive_timeout_ms:I

    .line 37361
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->call_ring_timeout_ms:I

    .line 37362
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->call_connect_timeout_ms:I

    .line 37363
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->call_packet_timeout_ms:I

    .line 37364
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->me_url_prefix:Ljava/lang/String;

    .line 37365
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_a

    .line 37366
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->autoupdate_url_prefix:Ljava/lang/String;

    .line 37368
    :cond_a
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_b

    .line 37369
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->gif_search_username:Ljava/lang/String;

    .line 37371
    :cond_b
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_c

    .line 37372
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->venue_search_username:Ljava/lang/String;

    .line 37374
    :cond_c
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->flags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_d

    .line 37375
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->img_search_username:Ljava/lang/String;

    .line 37377
    :cond_d
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->flags:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_e

    .line 37378
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->static_maps_provider:Ljava/lang/String;

    .line 37380
    :cond_e
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->caption_length_max:I

    .line 37381
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->message_length_max:I

    .line 37382
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->webfile_dc_id:I

    .line 37383
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_f

    .line 37384
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->suggested_lang_code:Ljava/lang/String;

    .line 37386
    :cond_f
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_10

    .line 37387
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->lang_pack_version:I

    .line 37389
    :cond_10
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_11

    .line 37390
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->base_lang_pack_version:I

    .line 37392
    :cond_11
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->flags:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_12

    .line 37393
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Reaction;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Reaction;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->reactions_default:Lorg/telegram/tgnet/TLRPC$Reaction;

    .line 37395
    :cond_12
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->flags:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_13

    .line 37396
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->autologin_token:Ljava/lang/String;

    :cond_13
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 3

    .line 37401
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_config;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 37402
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->default_p2p_contacts:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->flags:I

    or-int/lit8 v0, v0, 0x8

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->flags:I

    and-int/lit8 v0, v0, -0x9

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->flags:I

    .line 37403
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->preload_featured_stickers:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x10

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x11

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->flags:I

    .line 37404
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->revoke_pm_inbox:Z

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x40

    goto :goto_2

    :cond_2
    and-int/lit8 v0, v0, -0x41

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->flags:I

    .line 37405
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->blocked_mode:Z

    if-eqz v1, :cond_3

    or-int/lit16 v0, v0, 0x100

    goto :goto_3

    :cond_3
    and-int/lit16 v0, v0, -0x101

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->flags:I

    .line 37406
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->force_try_ipv6:Z

    if-eqz v1, :cond_4

    or-int/lit16 v0, v0, 0x4000

    goto :goto_4

    :cond_4
    and-int/lit16 v0, v0, -0x4001

    :goto_4
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->flags:I

    .line 37407
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 37408
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->date:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 37409
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->expires:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 37410
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->test_mode:Z

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeBool(Z)V

    .line 37411
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->this_dc:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    const v0, 0x1cb5c415

    .line 37412
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 37413
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->dc_options:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 37414
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_5

    .line 37416
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->dc_options:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_dcOption;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$TL_dcOption;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 37418
    :cond_5
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->dc_txt_domain_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 37419
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->chat_size_max:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 37420
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->megagroup_size_max:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 37421
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->forwarded_count_max:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 37422
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->online_update_period_ms:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 37423
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->offline_blur_timeout_ms:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 37424
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->offline_idle_timeout_ms:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 37425
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->online_cloud_timeout_ms:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 37426
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->notify_cloud_delay_ms:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 37427
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->notify_default_delay_ms:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 37428
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->push_chat_period_ms:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 37429
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->push_chat_limit:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 37430
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->edit_time_limit:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 37431
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->revoke_time_limit:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 37432
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->revoke_pm_time_limit:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 37433
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->rating_e_decay:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 37434
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->stickers_recent_limit:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 37435
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->channels_read_media_period:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 37436
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_6

    .line 37437
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->tmp_sessions:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 37439
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->call_receive_timeout_ms:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 37440
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->call_ring_timeout_ms:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 37441
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->call_connect_timeout_ms:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 37442
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->call_packet_timeout_ms:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 37443
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->me_url_prefix:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 37444
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    .line 37445
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->autoupdate_url_prefix:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 37447
    :cond_7
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_8

    .line 37448
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->gif_search_username:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 37450
    :cond_8
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_9

    .line 37451
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->venue_search_username:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 37453
    :cond_9
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->flags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_a

    .line 37454
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->img_search_username:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 37456
    :cond_a
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->flags:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_b

    .line 37457
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->static_maps_provider:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 37459
    :cond_b
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->caption_length_max:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 37460
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->message_length_max:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 37461
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->webfile_dc_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 37462
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_c

    .line 37463
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->suggested_lang_code:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 37465
    :cond_c
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_d

    .line 37466
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->lang_pack_version:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 37468
    :cond_d
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_e

    .line 37469
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->base_lang_pack_version:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 37471
    :cond_e
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->flags:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_f

    .line 37472
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->reactions_default:Lorg/telegram/tgnet/TLRPC$Reaction;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 37474
    :cond_f
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->flags:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_10

    .line 37475
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->autologin_token:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    :cond_10
    return-void
.end method
