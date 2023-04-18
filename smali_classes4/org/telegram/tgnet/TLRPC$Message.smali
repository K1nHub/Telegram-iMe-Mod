.class public Lorg/telegram/tgnet/TLRPC$Message;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# instance fields
.field public action:Lorg/telegram/tgnet/TLRPC$MessageAction;

.field public attachPath:Ljava/lang/String;

.field public date:I

.field public destroyTime:I

.field public dialog_id:J

.field public edit_date:I

.field public edit_hide:Z

.field public entities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$MessageEntity;",
            ">;"
        }
    .end annotation
.end field

.field public flags:I

.field public forwards:I

.field public from_id:Lorg/telegram/tgnet/TLRPC$Peer;

.field public from_scheduled:Z

.field public fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

.field public fwd_msg_id:I

.field public groupedIdCache:J

.field public grouped_id:J

.field public id:I

.field public isThreadMessage:Z

.field public layer:I

.field public legacy:Z

.field public local_id:I

.field public media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

.field public media_unread:Z

.field public mentioned:Z

.field public message:Ljava/lang/String;

.field public noforwards:Z

.field public originalLanguage:Ljava/lang/String;

.field public out:Z

.field public params:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

.field public pinned:Z

.field public post:Z

.field public post_author:Ljava/lang/String;

.field public premiumEffectWasPlayed:Z

.field public random_id:J

.field public reactions:Lorg/telegram/tgnet/TLRPC$TL_messageReactions;

.field public realId:I

.field public replies:Lorg/telegram/tgnet/TLRPC$MessageReplies;

.field public replyMessage:Lorg/telegram/tgnet/TLRPC$Message;

.field public reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

.field public reply_to:Lorg/telegram/tgnet/TLRPC$TL_messageReplyHeader;

.field public reqId:I

.field public restriction_reason:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_restrictionReason;",
            ">;"
        }
    .end annotation
.end field

.field public send_state:I

.field public seq_in:I

.field public seq_out:I

.field public silent:Z

.field public stickerVerified:I

.field public topic_start:Z

.field public translatedText:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

.field public translatedToLanguage:Ljava/lang/String;

.field public ttl:I

.field public ttl_period:I

.field public unread:Z

.field public via_bot_id:J

.field public via_bot_name:Ljava/lang/String;

.field public views:I

.field public voiceTranscription:Ljava/lang/String;

.field public voiceTranscriptionFinal:Z

.field public voiceTranscriptionForce:Z

.field public voiceTranscriptionId:J

.field public voiceTranscriptionOpen:Z

.field public voiceTranscriptionRated:Z

.field public with_my_score:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 59942
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 59964
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    .line 59983
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->restriction_reason:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 59987
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    .line 59988
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_msg_id:I

    const-string v1, ""

    .line 59989
    iput-object v1, p0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 59992
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->local_id:I

    const/4 v0, 0x1

    .line 60003
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->stickerVerified:I

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Message;
    .locals 3

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    goto/16 :goto_0

    .line 60044
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_message_old7;-><init>()V

    goto/16 :goto_0

    .line 60092
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_message_layer123;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_message_layer123;-><init>()V

    goto/16 :goto_0

    .line 60071
    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_message_old2;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_message_old2;-><init>()V

    goto/16 :goto_0

    .line 60029
    :sswitch_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_message_secret;-><init>()V

    goto/16 :goto_0

    .line 60032
    :sswitch_4
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_message_secret_layer72;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_message_secret_layer72;-><init>()V

    goto/16 :goto_0

    .line 60080
    :sswitch_5
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_message_secret_old;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_message_secret_old;-><init>()V

    goto/16 :goto_0

    .line 60086
    :sswitch_6
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_message_layer117;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_message_layer117;-><init>()V

    goto/16 :goto_0

    .line 60056
    :sswitch_7
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_message_layer104;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_message_layer104;-><init>()V

    goto/16 :goto_0

    .line 60101
    :sswitch_8
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    goto/16 :goto_0

    .line 60053
    :sswitch_9
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_message_old6;-><init>()V

    goto/16 :goto_0

    .line 60110
    :sswitch_a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageService;-><init>()V

    goto/16 :goto_0

    .line 60107
    :sswitch_b
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer123;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer123;-><init>()V

    goto/16 :goto_0

    .line 60077
    :sswitch_c
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_message_old;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_message_old;-><init>()V

    goto/16 :goto_0

    .line 60020
    :sswitch_d
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageService_old2;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageService_old2;-><init>()V

    goto/16 :goto_0

    .line 60062
    :sswitch_e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_message_layer104_2;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_message_layer104_2;-><init>()V

    goto/16 :goto_0

    .line 60068
    :sswitch_f
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageForwarded_old;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageForwarded_old;-><init>()V

    goto/16 :goto_0

    .line 60089
    :sswitch_10
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_message_layer118;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_message_layer118;-><init>()V

    goto :goto_0

    .line 60113
    :sswitch_11
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_message_old5;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_message_old5;-><init>()V

    goto :goto_0

    .line 60041
    :sswitch_12
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;-><init>()V

    goto :goto_0

    .line 60026
    :sswitch_13
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_message_old4;-><init>()V

    goto :goto_0

    .line 60038
    :sswitch_14
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_message_layer68;-><init>()V

    goto :goto_0

    .line 60047
    :sswitch_15
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;-><init>()V

    goto :goto_0

    .line 60095
    :sswitch_16
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_message_layer131;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_message_layer131;-><init>()V

    goto :goto_0

    .line 60023
    :sswitch_17
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_message_old3;-><init>()V

    goto :goto_0

    .line 60065
    :sswitch_18
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageForwarded_old2;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageForwarded_old2;-><init>()V

    goto :goto_0

    .line 60074
    :sswitch_19
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageService_old;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageService_old;-><init>()V

    goto :goto_0

    .line 60104
    :sswitch_1a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer118;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer118;-><init>()V

    goto :goto_0

    .line 60083
    :sswitch_1b
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_message_layer104_3;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_message_layer104_3;-><init>()V

    goto :goto_0

    .line 60035
    :sswitch_1c
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_message_layer72;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_message_layer72;-><init>()V

    goto :goto_0

    .line 60059
    :sswitch_1d
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageEmpty;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageEmpty;-><init>()V

    goto :goto_0

    .line 60098
    :sswitch_1e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_message_layer135;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_message_layer135;-><init>()V

    goto :goto_0

    .line 60050
    :sswitch_1f
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageEmpty_layer122;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageEmpty_layer122;-><init>()V

    :goto_0
    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_1

    .line 60117
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "can\'t parse magic %x in Message"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_1
    if-eqz v0, :cond_3

    .line 60120
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLObject;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 60121
    iget-object p0, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    if-nez p0, :cond_3

    .line 60122
    iget p0, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-gez p0, :cond_2

    iget-wide p0, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    const-wide/16 v1, 0x0

    cmp-long p0, p0, v1

    if-nez p0, :cond_2

    .line 60123
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object p0, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    goto :goto_2

    .line 60125
    :cond_2
    iget-object p0, v0, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iput-object p0, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    :cond_3
    :goto_2
    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x7c1a21ac -> :sswitch_1f
        -0x7a29341e -> :sswitch_1e
        -0x6f59357c -> :sswitch_1d
        -0x6f2223ef -> :sswitch_1c
        -0x6876253c -> :sswitch_1b
        -0x61e65e0a -> :sswitch_1a
        -0x60729f45 -> :sswitch_19
        -0x5c9818ea -> :sswitch_18
        -0x5854e66f -> :sswitch_17
        -0x431c7c2e -> :sswitch_16
        -0x3f9469f9 -> :sswitch_15
        -0x3f641ba1 -> :sswitch_14
        -0x3cf9fcdb -> :sswitch_13
        -0x366d1ea4 -> :sswitch_12
        -0xf87eb38 -> :sswitch_11
        -0xad19481 -> :sswitch_10
        0x5f46804 -> :sswitch_f
        0x1c9b1027 -> :sswitch_e
        0x1d86f70e -> :sswitch_d
        0x22eb6aba -> :sswitch_c
        0x286fa604 -> :sswitch_b
        0x2b085862 -> :sswitch_a
        0x2bebfa86 -> :sswitch_9
        0x38116ee0 -> :sswitch_8
        0x44f9b43d -> :sswitch_7
        0x452c0e65 -> :sswitch_6
        0x555555f8 -> :sswitch_5
        0x555555f9 -> :sswitch_4
        0x555555fa -> :sswitch_3
        0x567699b3 -> :sswitch_2
        0x58ae39c9 -> :sswitch_1
        0x5ba66c13 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public readAttachPath(Lorg/telegram/tgnet/AbstractSerializedData;J)V
    .locals 11

    .line 60133
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    if-nez v3, :cond_0

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 60134
    :goto_0
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto_old;

    if-nez v4, :cond_1

    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto_layer68;

    if-nez v4, :cond_1

    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto_layer74;

    if-nez v4, :cond_1

    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument_old;

    if-nez v4, :cond_1

    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument_layer68;

    if-nez v4, :cond_1

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument_layer74;

    if-eqz v3, :cond_2

    :cond_1
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    const-string v4, "-1"

    .line 60141
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v1

    .line 60142
    :goto_1
    iget-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    const/4 v5, 0x3

    if-nez v4, :cond_3

    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v4, :cond_4

    iget-object v6, p0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v6, :cond_4

    iget-wide v7, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    const-wide/16 v9, 0x0

    cmp-long v4, v7, v9

    if-eqz v4, :cond_4

    iget-wide v9, v6, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    cmp-long v4, v7, v9

    if-nez v4, :cond_4

    cmp-long p2, v9, p2

    if-nez p2, :cond_4

    :cond_3
    iget p2, p0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-ltz p2, :cond_5

    if-nez v0, :cond_5

    iget p2, p0, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    if-eq p2, v5, :cond_5

    :cond_4
    iget-boolean p2, p0, Lorg/telegram/tgnet/TLRPC$Message;->legacy:Z

    if-eqz p2, :cond_e

    :cond_5
    const/4 p2, 0x2

    if-eqz v0, :cond_8

    if-eqz v3, :cond_8

    .line 60144
    iget-object p3, p0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    const/4 v0, 0x6

    if-le p3, v0, :cond_6

    iget-object p3, p0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/lang/String;->charAt(I)C

    move-result p3

    const/16 v0, 0x5f

    if-ne p3, v0, :cond_6

    .line 60145
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Lorg/telegram/tgnet/TLRPC$Message;->params:Ljava/util/HashMap;

    .line 60146
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    const-string/jumbo v3, "ve"

    invoke-virtual {p3, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60148
    :cond_6
    iget-object p3, p0, Lorg/telegram/tgnet/TLRPC$Message;->params:Ljava/util/HashMap;

    if-nez p3, :cond_7

    iget-object p3, p0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    if-ne p3, p2, :cond_8

    :cond_7
    const-string p3, ""

    .line 60149
    iput-object p3, p0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 60152
    :cond_8
    invoke-virtual {p1}, Lorg/telegram/tgnet/AbstractSerializedData;->remaining()I

    move-result p3

    if-lez p3, :cond_e

    .line 60153
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-eqz p3, :cond_e

    .line 60155
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-ltz v0, :cond_9

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    if-eq v0, v5, :cond_9

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->legacy:Z

    if-eqz v0, :cond_d

    :cond_9
    const-string/jumbo v0, "||"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_d

    .line 60156
    iget-object p3, p0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    const-string v0, "\\|\\|"

    invoke-virtual {p3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    .line 60157
    array-length v0, p3

    if-lez v0, :cond_e

    .line 60158
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->params:Ljava/util/HashMap;

    if-nez v0, :cond_a

    .line 60159
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->params:Ljava/util/HashMap;

    :cond_a
    move v0, v2

    .line 60161
    :goto_2
    array-length v3, p3

    sub-int/2addr v3, v2

    if-ge v0, v3, :cond_c

    .line 60162
    aget-object v3, p3, v0

    const-string v4, "\\|=\\|"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 60163
    array-length v4, v3

    if-ne v4, p2, :cond_b

    .line 60164
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$Message;->params:Ljava/util/HashMap;

    aget-object v5, v3, v1

    aget-object v3, v3, v2

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 60167
    :cond_c
    array-length p2, p3

    sub-int/2addr p2, v2

    aget-object p2, p3, p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 60168
    iget-boolean p2, p0, Lorg/telegram/tgnet/TLRPC$Message;->legacy:Z

    if-eqz p2, :cond_e

    .line 60169
    iget-object p2, p0, Lorg/telegram/tgnet/TLRPC$Message;->params:Ljava/util/HashMap;

    const-string p3, "legacy_layer"

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-static {p2}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Lorg/telegram/tgnet/TLRPC$Message;->layer:I

    goto :goto_3

    .line 60173
    :cond_d
    iget-object p2, p0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 60178
    :cond_e
    :goto_3
    iget p2, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    and-int/lit8 p2, p2, 0x4

    if-eqz p2, :cond_f

    iget p2, p0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-gez p2, :cond_f

    .line 60179
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_msg_id:I

    :cond_f
    return-void
.end method

.method protected writeAttachPath(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 7

    .line 60184
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;

    const-string/jumbo v1, "|=|"

    const-string/jumbo v2, "||"

    if-nez v0, :cond_7

    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret_layer72;

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 60194
    :cond_0
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, " "

    .line 60195
    :goto_0
    iget-boolean v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->legacy:Z

    if-eqz v3, :cond_3

    .line 60196
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->params:Ljava/util/HashMap;

    if-nez v3, :cond_2

    .line 60197
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->params:Ljava/util/HashMap;

    :cond_2
    const/16 v3, 0x9d

    .line 60199
    iput v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->layer:I

    .line 60200
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->params:Ljava/util/HashMap;

    const-string v4, "legacy_layer"

    const-string v5, "157"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60202
    :cond_3
    iget v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-ltz v3, :cond_4

    iget v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_4

    iget-boolean v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->legacy:Z

    if-eqz v3, :cond_6

    :cond_4
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->params:Ljava/util/HashMap;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_6

    .line 60203
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->params:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 60204
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 60206
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 60208
    :cond_6
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 60209
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_b

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-gez v0, :cond_b

    .line 60210
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_msg_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    goto :goto_5

    .line 60185
    :cond_7
    :goto_2
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-eqz v0, :cond_8

    goto :goto_3

    :cond_8
    const-string v0, ""

    .line 60186
    :goto_3
    iget v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_a

    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->params:Ljava/util/HashMap;

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_a

    .line 60187
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$Message;->params:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 60188
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 60190
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 60192
    :cond_a
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    :cond_b
    :goto_5
    return-void
.end method
