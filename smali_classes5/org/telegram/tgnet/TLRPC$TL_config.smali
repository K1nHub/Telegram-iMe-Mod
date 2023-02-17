.class public Lorg/telegram/tgnet/TLRPC$TL_config;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# static fields
.field public static constructor:I = 0x232566ac


# instance fields
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

.field public ignore_phone_entities:Z

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

.field public pfs_enabled:Z

.field public phonecalls_enabled:Z

.field public pinned_dialogs_count_max:I

.field public pinned_infolder_count_max:I

.field public preload_featured_stickers:Z

.field public push_chat_limit:I

.field public push_chat_period_ms:I

.field public rating_e_decay:I

.field public reactions_default:Lorg/telegram/tgnet/TLRPC$Reaction;

.field public revoke_pm_inbox:Z

.field public revoke_pm_time_limit:I

.field public revoke_time_limit:I

.field public saved_gifs_limit:I

.field public static_maps_provider:Ljava/lang/String;

.field public stickers_faved_limit:I

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

    .line 36222
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 36238
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->dc_options:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_config;
    .locals 1

    .line 36281
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_config;->constructor:I

    if-eq v0, p1, :cond_1

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 36283
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

    .line 36288
    :cond_1
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_config;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_config;-><init>()V

    .line 36289
    invoke-virtual {p1, p0, p2}, Lorg/telegram/tgnet/TLRPC$TL_config;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    return-object p1
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 5

    .line 36294
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->flags:I

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 36295
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->phonecalls_enabled:Z

    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 36296
    :goto_1
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->default_p2p_contacts:Z

    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    .line 36297
    :goto_2
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->preload_featured_stickers:Z

    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    .line 36298
    :goto_3
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->ignore_phone_entities:Z

    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    .line 36299
    :goto_4
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->revoke_pm_inbox:Z

    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    .line 36300
    :goto_5
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->blocked_mode:Z

    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    goto :goto_6

    :cond_6
    const/4 v1, 0x0

    .line 36301
    :goto_6
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->pfs_enabled:Z

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_7

    :cond_7
    const/4 v0, 0x0

    .line 36302
    :goto_7
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->force_try_ipv6:Z

    .line 36303
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->date:I

    .line 36304
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->expires:I

    .line 36305
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readBool(Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->test_mode:Z

    .line 36306
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->this_dc:I

    .line 36307
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    const v1, 0x1cb5c415

    if-eq v0, v1, :cond_9

    if-nez p2, :cond_8

    return-void

    .line 36310
    :cond_8
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

    .line 36314
    :cond_9
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    :goto_8
    if-ge v2, v0, :cond_b

    .line 36316
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    invoke-static {p1, v1, p2}, Lorg/telegram/tgnet/TLRPC$TL_dcOption;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_dcOption;

    move-result-object v1

    if-nez v1, :cond_a

    return-void

    .line 36320
    :cond_a
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->dc_options:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 36322
    :cond_b
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->dc_txt_domain_name:Ljava/lang/String;

    .line 36323
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->chat_size_max:I

    .line 36324
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->megagroup_size_max:I

    .line 36325
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->forwarded_count_max:I

    .line 36326
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->online_update_period_ms:I

    .line 36327
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->offline_blur_timeout_ms:I

    .line 36328
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->offline_idle_timeout_ms:I

    .line 36329
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->online_cloud_timeout_ms:I

    .line 36330
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->notify_cloud_delay_ms:I

    .line 36331
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->notify_default_delay_ms:I

    .line 36332
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->push_chat_period_ms:I

    .line 36333
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->push_chat_limit:I

    .line 36334
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->saved_gifs_limit:I

    .line 36335
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->edit_time_limit:I

    .line 36336
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->revoke_time_limit:I

    .line 36337
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->revoke_pm_time_limit:I

    .line 36338
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->rating_e_decay:I

    .line 36339
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->stickers_recent_limit:I

    .line 36340
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->stickers_faved_limit:I

    .line 36341
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->channels_read_media_period:I

    .line 36342
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->flags:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_c

    .line 36343
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->tmp_sessions:I

    .line 36345
    :cond_c
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->pinned_dialogs_count_max:I

    .line 36346
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->pinned_infolder_count_max:I

    .line 36347
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->call_receive_timeout_ms:I

    .line 36348
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->call_ring_timeout_ms:I

    .line 36349
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->call_connect_timeout_ms:I

    .line 36350
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->call_packet_timeout_ms:I

    .line 36351
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->me_url_prefix:Ljava/lang/String;

    .line 36352
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_d

    .line 36353
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->autoupdate_url_prefix:Ljava/lang/String;

    .line 36355
    :cond_d
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_e

    .line 36356
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->gif_search_username:Ljava/lang/String;

    .line 36358
    :cond_e
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_f

    .line 36359
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->venue_search_username:Ljava/lang/String;

    .line 36361
    :cond_f
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->flags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_10

    .line 36362
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->img_search_username:Ljava/lang/String;

    .line 36364
    :cond_10
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->flags:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_11

    .line 36365
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->static_maps_provider:Ljava/lang/String;

    .line 36367
    :cond_11
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->caption_length_max:I

    .line 36368
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->message_length_max:I

    .line 36369
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->webfile_dc_id:I

    .line 36370
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_12

    .line 36371
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->suggested_lang_code:Ljava/lang/String;

    .line 36373
    :cond_12
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_13

    .line 36374
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->lang_pack_version:I

    .line 36376
    :cond_13
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_14

    .line 36377
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->base_lang_pack_version:I

    .line 36379
    :cond_14
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->flags:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_15

    .line 36380
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Reaction;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Reaction;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->reactions_default:Lorg/telegram/tgnet/TLRPC$Reaction;

    :cond_15
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 3

    .line 36385
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_config;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 36386
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->phonecalls_enabled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->flags:I

    or-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->flags:I

    and-int/lit8 v0, v0, -0x3

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->flags:I

    .line 36387
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->default_p2p_contacts:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x8

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x9

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->flags:I

    .line 36388
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->preload_featured_stickers:Z

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x10

    goto :goto_2

    :cond_2
    and-int/lit8 v0, v0, -0x11

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->flags:I

    .line 36389
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->ignore_phone_entities:Z

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x20

    goto :goto_3

    :cond_3
    and-int/lit8 v0, v0, -0x21

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->flags:I

    .line 36390
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->revoke_pm_inbox:Z

    if-eqz v1, :cond_4

    or-int/lit8 v0, v0, 0x40

    goto :goto_4

    :cond_4
    and-int/lit8 v0, v0, -0x41

    :goto_4
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->flags:I

    .line 36391
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->blocked_mode:Z

    if-eqz v1, :cond_5

    or-int/lit16 v0, v0, 0x100

    goto :goto_5

    :cond_5
    and-int/lit16 v0, v0, -0x101

    :goto_5
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->flags:I

    .line 36392
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->pfs_enabled:Z

    if-eqz v1, :cond_6

    or-int/lit16 v0, v0, 0x2000

    goto :goto_6

    :cond_6
    and-int/lit16 v0, v0, -0x2001

    :goto_6
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->flags:I

    .line 36393
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->force_try_ipv6:Z

    if-eqz v1, :cond_7

    or-int/lit16 v0, v0, 0x4000

    goto :goto_7

    :cond_7
    and-int/lit16 v0, v0, -0x4001

    :goto_7
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->flags:I

    .line 36394
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 36395
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->date:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 36396
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->expires:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 36397
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->test_mode:Z

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeBool(Z)V

    .line 36398
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->this_dc:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    const v0, 0x1cb5c415

    .line 36399
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 36400
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->dc_options:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 36401
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_8

    .line 36403
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->dc_options:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_dcOption;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$TL_dcOption;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 36405
    :cond_8
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->dc_txt_domain_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 36406
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->chat_size_max:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 36407
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->megagroup_size_max:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 36408
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->forwarded_count_max:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 36409
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->online_update_period_ms:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 36410
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->offline_blur_timeout_ms:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 36411
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->offline_idle_timeout_ms:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 36412
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->online_cloud_timeout_ms:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 36413
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->notify_cloud_delay_ms:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 36414
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->notify_default_delay_ms:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 36415
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->push_chat_period_ms:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 36416
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->push_chat_limit:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 36417
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->saved_gifs_limit:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 36418
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->edit_time_limit:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 36419
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->revoke_time_limit:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 36420
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->revoke_pm_time_limit:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 36421
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->rating_e_decay:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 36422
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->stickers_recent_limit:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 36423
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->stickers_faved_limit:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 36424
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->channels_read_media_period:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 36425
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_9

    .line 36426
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->tmp_sessions:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 36428
    :cond_9
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->pinned_dialogs_count_max:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 36429
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->pinned_infolder_count_max:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 36430
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->call_receive_timeout_ms:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 36431
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->call_ring_timeout_ms:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 36432
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->call_connect_timeout_ms:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 36433
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->call_packet_timeout_ms:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 36434
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->me_url_prefix:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 36435
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_a

    .line 36436
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->autoupdate_url_prefix:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 36438
    :cond_a
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_b

    .line 36439
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->gif_search_username:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 36441
    :cond_b
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_c

    .line 36442
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->venue_search_username:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 36444
    :cond_c
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->flags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_d

    .line 36445
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->img_search_username:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 36447
    :cond_d
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->flags:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_e

    .line 36448
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->static_maps_provider:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 36450
    :cond_e
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->caption_length_max:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 36451
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->message_length_max:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 36452
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->webfile_dc_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 36453
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_f

    .line 36454
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->suggested_lang_code:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 36456
    :cond_f
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_10

    .line 36457
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->lang_pack_version:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 36459
    :cond_10
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_11

    .line 36460
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->base_lang_pack_version:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 36462
    :cond_11
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->flags:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_12

    .line 36463
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_config;->reactions_default:Lorg/telegram/tgnet/TLRPC$Reaction;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    :cond_12
    return-void
.end method
