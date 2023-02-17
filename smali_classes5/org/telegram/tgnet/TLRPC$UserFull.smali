.class public abstract Lorg/telegram/tgnet/TLRPC$UserFull;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# instance fields
.field public about:Ljava/lang/String;

.field public blocked:Z

.field public bot_broadcast_admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

.field public bot_group_admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

.field public bot_info:Lorg/telegram/tgnet/TLRPC$BotInfo;

.field public can_pin_message:Z

.field public common_chats_count:I

.field public fallback_photo:Lorg/telegram/tgnet/TLRPC$Photo;

.field public flags:I

.field public folder_id:I

.field public has_scheduled:Z

.field public id:J

.field public link:Lorg/telegram/tgnet/TLRPC$TL_contacts_link_layer101;

.field public notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

.field public personal_photo:Lorg/telegram/tgnet/TLRPC$Photo;

.field public phone_calls_available:Z

.field public phone_calls_private:Z

.field public pinned_msg_id:I

.field public premium_gifts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_premiumGiftOption;",
            ">;"
        }
    .end annotation
.end field

.field public private_forward_name:Ljava/lang/String;

.field public profile_photo:Lorg/telegram/tgnet/TLRPC$Photo;

.field public settings:Lorg/telegram/tgnet/TLRPC$TL_peerSettings;

.field public theme_emoticon:Ljava/lang/String;

.field public translations_disabled:Z

.field public ttl_period:I

.field public user:Lorg/telegram/tgnet/TLRPC$User;

.field public video_calls_available:Z

.field public voice_messages_forbidden:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46806
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 46834
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->premium_gifts:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$UserFull;
    .locals 1

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    .line 46862
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_userFull_layer101;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_userFull_layer101;-><init>()V

    goto :goto_0

    .line 46859
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_userFull_layer131;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_userFull_layer131;-><init>()V

    goto :goto_0

    .line 46841
    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_userFull;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_userFull;-><init>()V

    goto :goto_0

    .line 46868
    :sswitch_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_userFull_layer123;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_userFull_layer123;-><init>()V

    goto :goto_0

    .line 46844
    :sswitch_4
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_userFull_layer150_rev2;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_userFull_layer150_rev2;-><init>()V

    goto :goto_0

    .line 46856
    :sswitch_5
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_userFull_layer134;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_userFull_layer134;-><init>()V

    goto :goto_0

    .line 46853
    :sswitch_6
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_userFull_layer139;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_userFull_layer139;-><init>()V

    goto :goto_0

    .line 46847
    :sswitch_7
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_userFull_layer150;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_userFull_layer150;-><init>()V

    goto :goto_0

    .line 46865
    :sswitch_8
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_userFull_layer98;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_userFull_layer98;-><init>()V

    goto :goto_0

    .line 46850
    :sswitch_9
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_userFull_layer143;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_userFull_layer143;-><init>()V

    :goto_0
    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_1

    .line 46872
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "can\'t parse magic %x in UserFull"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 46875
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLObject;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    :cond_2
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x738d157f -> :sswitch_9
        -0x715b577f -> :sswitch_8
        -0x3b4e03c1 -> :sswitch_7
        -0x30c99adf -> :sswitch_6
        -0x296800fb -> :sswitch_5
        -0x1392be1d -> :sswitch_4
        -0x120e83ee -> :sswitch_3
        -0x72cd513 -> :sswitch_2
        0x139a9a77 -> :sswitch_1
        0x745559cc -> :sswitch_0
    .end sparse-switch
.end method
