.class public Lorg/telegram/messenger/PushListenerController;
.super Ljava/lang/Object;
.source "PushListenerController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/PushListenerController$GooglePushListenerServiceProvider;,
        Lorg/telegram/messenger/PushListenerController$IPushListenerServiceProvider;,
        Lorg/telegram/messenger/PushListenerController$PushType;
    }
.end annotation


# static fields
.field public static final NOTIFICATION_ID:I = 0x1

.field public static final PUSH_TYPE_FIREBASE:I = 0x2

.field public static final PUSH_TYPE_HUAWEI:I = 0xd

.field private static countDownLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public static synthetic $r8$lambda$31x6KyFM_8wt6VzORdYePnodFQQ(I)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/messenger/PushListenerController;->lambda$processRemoteMessage$4(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$8YJDbWjt3ibOVuA4TKtYaXsWsm0(I)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/messenger/PushListenerController;->lambda$processRemoteMessage$3(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$MeJUgzA4g2rYdiQ3EwhBF1J33H4(IILjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/PushListenerController;->lambda$sendRegistrationToServer$0(IILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RnNzy96er50m7BOW506q8-bj4sE(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;J)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/PushListenerController;->lambda$processRemoteMessage$6(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$XLMtR2AobzhGnvwLyd_hlUgGlBM(Ljava/lang/String;I)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/messenger/PushListenerController;->lambda$sendRegistrationToServer$1(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$b7abWDLvBglo08Wszb99zjQvssA(ILorg/telegram/tgnet/TLRPC$TL_updates;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/messenger/PushListenerController;->lambda$processRemoteMessage$2(ILorg/telegram/tgnet/TLRPC$TL_updates;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ot1rWNwDvknAQ0amgOTSUg5dqD0(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/PushListenerController;->lambda$processRemoteMessage$5(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 46
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v0, Lorg/telegram/messenger/PushListenerController;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getReactedText(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 1302
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "CHAT_REACT_TEXT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0x21

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "CHAT_REACT_QUIZ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0x20

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "CHAT_REACT_POLL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0x1f

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "CHAT_REACT_GAME"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0x1e

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "REACT_GIF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0x1d

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "REACT_GEO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v1, 0x1c

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "REACT_DOC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v1, 0x1b

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "REACT_VIDEO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v1, 0x1a

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "REACT_ROUND"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v1, 0x19

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "REACT_PHOTO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v1, 0x18

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "REACT_AUDIO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v1, 0x17

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "CHAT_REACT_GEOLIVE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v1, 0x16

    goto/16 :goto_0

    :sswitch_c
    const-string v0, "REACT_GIVEAWAY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v1, 0x15

    goto/16 :goto_0

    :sswitch_d
    const-string v0, "CHAT_REACT_GIVEAWAY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v1, 0x14

    goto/16 :goto_0

    :sswitch_e
    const-string v0, "CHAT_REACT_VIDEO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v1, 0x13

    goto/16 :goto_0

    :sswitch_f
    const-string v0, "CHAT_REACT_ROUND"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v1, 0x12

    goto/16 :goto_0

    :sswitch_10
    const-string v0, "CHAT_REACT_PHOTO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v1, 0x11

    goto/16 :goto_0

    :sswitch_11
    const-string v0, "CHAT_REACT_AUDIO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v1, 0x10

    goto/16 :goto_0

    :sswitch_12
    const-string v0, "REACT_STICKER"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v1, 0xf

    goto/16 :goto_0

    :sswitch_13
    const-string v0, "CHAT_REACT_GIF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v1, 0xe

    goto/16 :goto_0

    :sswitch_14
    const-string v0, "CHAT_REACT_GEO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v1, 0xd

    goto/16 :goto_0

    :sswitch_15
    const-string v0, "CHAT_REACT_DOC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v1, 0xc

    goto/16 :goto_0

    :sswitch_16
    const-string v0, "REACT_INVOICE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_17
    const-string v0, "REACT_TEXT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    goto/16 :goto_0

    :cond_17
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_18
    const-string v0, "REACT_QUIZ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_18

    goto/16 :goto_0

    :cond_18
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_19
    const-string v0, "REACT_POLL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_19

    goto/16 :goto_0

    :cond_19
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_1a
    const-string v0, "REACT_GAME"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1a

    goto :goto_0

    :cond_1a
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_1b
    const-string v0, "CHAT_REACT_STICKER"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1b

    goto :goto_0

    :cond_1b
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_1c
    const-string v0, "REACT_CONTACT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1c

    goto :goto_0

    :cond_1c
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_1d
    const-string v0, "CHAT_REACT_INVOICE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1d

    goto :goto_0

    :cond_1d
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_1e
    const-string v0, "REACT_NOTEXT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1e

    goto :goto_0

    :cond_1e
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_1f
    const-string v0, "CHAT_REACT_NOTEXT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1f

    goto :goto_0

    :cond_1f
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_20
    const-string v0, "REACT_GEOLIVE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_20

    goto :goto_0

    :cond_20
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_21
    const-string v0, "CHAT_REACT_CONTACT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_21

    goto :goto_0

    :cond_21
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 1358
    :pswitch_0
    sget p0, Lorg/telegram/messenger/R$string;->PushChatReactText:I

    const-string v0, "PushChatReactText"

    invoke-static {v0, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1394
    :pswitch_1
    sget p0, Lorg/telegram/messenger/R$string;->PushChatReactQuiz:I

    const-string v0, "PushChatReactQuiz"

    invoke-static {v0, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1391
    :pswitch_2
    sget p0, Lorg/telegram/messenger/R$string;->PushChatReactPoll:I

    const-string v0, "PushChatReactPoll"

    invoke-static {v0, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1397
    :pswitch_3
    sget p0, Lorg/telegram/messenger/R$string;->PushChatReactGame:I

    const-string v0, "PushChatReactGame"

    invoke-static {v0, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1349
    :pswitch_4
    sget p0, Lorg/telegram/messenger/R$string;->PushReactGif:I

    const-string v0, "PushReactGif"

    invoke-static {v0, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1331
    :pswitch_5
    sget p0, Lorg/telegram/messenger/R$string;->PushReactGeo:I

    const-string v0, "PushReactGeo"

    invoke-static {v0, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1319
    :pswitch_6
    sget p0, Lorg/telegram/messenger/R$string;->PushReactDoc:I

    const-string v0, "PushReactDoc"

    invoke-static {v0, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1313
    :pswitch_7
    sget p0, Lorg/telegram/messenger/R$string;->PushReactVideo:I

    const-string v0, "PushReactVideo"

    invoke-static {v0, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1316
    :pswitch_8
    sget p0, Lorg/telegram/messenger/R$string;->PushReactRound:I

    const-string v0, "PushReactRound"

    invoke-static {v0, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1310
    :pswitch_9
    sget p0, Lorg/telegram/messenger/R$string;->PushReactPhoto:I

    const-string v0, "PushReactPhoto"

    invoke-static {v0, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1325
    :pswitch_a
    sget p0, Lorg/telegram/messenger/R$string;->PushReactAudio:I

    const-string v0, "PushReactAudio"

    invoke-static {v0, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1388
    :pswitch_b
    sget p0, Lorg/telegram/messenger/R$string;->PushChatReactGeoLive:I

    const-string v0, "PushChatReactGeoLive"

    invoke-static {v0, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1352
    :pswitch_c
    sget p0, Lorg/telegram/messenger/R$string;->NotificationReactGiveaway:I

    const-string v0, "NotificationReactGiveaway"

    invoke-static {v0, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1355
    :pswitch_d
    sget p0, Lorg/telegram/messenger/R$string;->NotificationChatReactGiveaway:I

    const-string v0, "NotificationChatReactGiveaway"

    invoke-static {v0, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1367
    :pswitch_e
    sget p0, Lorg/telegram/messenger/R$string;->PushChatReactVideo:I

    const-string v0, "PushChatReactVideo"

    invoke-static {v0, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1370
    :pswitch_f
    sget p0, Lorg/telegram/messenger/R$string;->PushChatReactRound:I

    const-string v0, "PushChatReactRound"

    invoke-static {v0, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1364
    :pswitch_10
    sget p0, Lorg/telegram/messenger/R$string;->PushChatReactPhoto:I

    const-string v0, "PushChatReactPhoto"

    invoke-static {v0, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1379
    :pswitch_11
    sget p0, Lorg/telegram/messenger/R$string;->PushChatReactAudio:I

    const-string v0, "PushChatReactAudio"

    invoke-static {v0, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1322
    :pswitch_12
    sget p0, Lorg/telegram/messenger/R$string;->PushReactSticker:I

    const-string v0, "PushReactSticker"

    invoke-static {v0, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1403
    :pswitch_13
    sget p0, Lorg/telegram/messenger/R$string;->PushChatReactGif:I

    const-string v0, "PushChatReactGif"

    invoke-static {v0, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1385
    :pswitch_14
    sget p0, Lorg/telegram/messenger/R$string;->PushChatReactGeo:I

    const-string v0, "PushChatReactGeo"

    invoke-static {v0, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1373
    :pswitch_15
    sget p0, Lorg/telegram/messenger/R$string;->PushChatReactDoc:I

    const-string v0, "PushChatReactDoc"

    invoke-static {v0, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1346
    :pswitch_16
    sget p0, Lorg/telegram/messenger/R$string;->PushReactInvoice:I

    const-string v0, "PushReactInvoice"

    invoke-static {v0, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1304
    :pswitch_17
    sget p0, Lorg/telegram/messenger/R$string;->PushReactText:I

    const-string v0, "PushReactText"

    invoke-static {v0, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1340
    :pswitch_18
    sget p0, Lorg/telegram/messenger/R$string;->PushReactQuiz:I

    const-string v0, "PushReactQuiz"

    invoke-static {v0, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1337
    :pswitch_19
    sget p0, Lorg/telegram/messenger/R$string;->PushReactPoll:I

    const-string v0, "PushReactPoll"

    invoke-static {v0, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1343
    :pswitch_1a
    sget p0, Lorg/telegram/messenger/R$string;->PushReactGame:I

    const-string v0, "PushReactGame"

    invoke-static {v0, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1376
    :pswitch_1b
    sget p0, Lorg/telegram/messenger/R$string;->PushChatReactSticker:I

    const-string v0, "PushChatReactSticker"

    invoke-static {v0, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1328
    :pswitch_1c
    sget p0, Lorg/telegram/messenger/R$string;->PushReactContect:I

    const-string v0, "PushReactContect"

    invoke-static {v0, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1400
    :pswitch_1d
    sget p0, Lorg/telegram/messenger/R$string;->PushChatReactInvoice:I

    const-string v0, "PushChatReactInvoice"

    invoke-static {v0, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1307
    :pswitch_1e
    sget p0, Lorg/telegram/messenger/R$string;->PushReactNoText:I

    const-string v0, "PushReactNoText"

    invoke-static {v0, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1361
    :pswitch_1f
    sget p0, Lorg/telegram/messenger/R$string;->PushChatReactNotext:I

    const-string v0, "PushChatReactNotext"

    invoke-static {v0, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1334
    :pswitch_20
    sget p0, Lorg/telegram/messenger/R$string;->PushReactGeoLocation:I

    const-string v0, "PushReactGeoLocation"

    invoke-static {v0, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1382
    :pswitch_21
    sget p0, Lorg/telegram/messenger/R$string;->PushChatReactContact:I

    const-string v0, "PushChatReactContact"

    invoke-static {v0, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7e0af387 -> :sswitch_21
        -0x70c28b43 -> :sswitch_20
        -0x5461d12b -> :sswitch_1f
        -0x51f8deb2 -> :sswitch_1e
        -0x41ebd47a -> :sswitch_1d
        -0x335596e0 -> :sswitch_1c
        -0x276d0e6a -> :sswitch_1b
        0x3191ed2 -> :sswitch_1a
        0x31d6a9f -> :sswitch_19
        0x31df535 -> :sswitch_18
        0x31f180d -> :sswitch_17
        0x8c9882d -> :sswitch_16
        0xb7e8a11 -> :sswitch_15
        0xb7e942a -> :sswitch_14
        0xb7e949d -> :sswitch_13
        0x23484e3d -> :sswitch_12
        0x25dcca6f -> :sswitch_11
        0x26aa6ccb -> :sswitch_10
        0x26c9e027 -> :sswitch_f
        0x26ff4314 -> :sswitch_e
        0x2b9f8026 -> :sswitch_d
        0x3795b85f -> :sswitch_c
        0x44881816 -> :sswitch_b
        0x5fbf24d6 -> :sswitch_a
        0x608cc732 -> :sswitch_9
        0x60ac3a8e -> :sswitch_8
        0x60e19d7b -> :sswitch_7
        0x63325238 -> :sswitch_6
        0x63325c51 -> :sswitch_5
        0x63325cc4 -> :sswitch_4
        0x6453e219 -> :sswitch_3
        0x64582de6 -> :sswitch_2
        0x6458b87c -> :sswitch_1
        0x6459db54 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static synthetic lambda$processRemoteMessage$2(ILorg/telegram/tgnet/TLRPC$TL_updates;)V
    .locals 1

    .line 256
    invoke-static {p0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    return-void
.end method

.method private static synthetic lambda$processRemoteMessage$3(I)V
    .locals 4

    .line 263
    invoke-static {p0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 264
    invoke-static {p0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->clearConfig()V

    .line 265
    invoke-static {p0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MessagesController;->performLogout(I)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$processRemoteMessage$4(I)V
    .locals 0

    .line 272
    invoke-static {p0}, Lorg/telegram/messenger/LocationController;->getInstance(I)Lorg/telegram/messenger/LocationController;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/messenger/LocationController;->setNewLocationEndWatchTime()V

    return-void
.end method

.method private static synthetic lambda$processRemoteMessage$5(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 56

    move-object/from16 v1, p1

    const-string v2, "STORY_NOTEXT"

    const-string v3, "REACT_"

    .line 116
    const-class v4, Lcom/iMe/manager/notifications/PushNotificationsManager;

    invoke-static {v4}, Lorg/koin/java/KoinJavaComponent;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/iMe/manager/notifications/PushNotificationsManager;

    move-object/from16 v5, p0

    .line 117
    invoke-virtual {v4, v5}, Lcom/iMe/manager/notifications/PushNotificationsManager;->handlePushNotification(Ljava/util/Map;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 118
    sget-object v1, Lorg/telegram/messenger/PushListenerController;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    .line 122
    :cond_0
    sget-boolean v4, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v4, :cond_1

    .line 123
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " START PROCESSING"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_1
    const/16 v5, 0x8

    move-object/from16 v7, p2

    .line 129
    :try_start_0
    invoke-static {v7, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v7

    .line 130
    new-instance v8, Lorg/telegram/tgnet/NativeByteBuffer;

    array-length v9, v7

    invoke-direct {v8, v9}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    .line 131
    invoke-virtual {v8, v7}, Lorg/telegram/tgnet/NativeByteBuffer;->writeBytes([B)V

    const/4 v9, 0x0

    .line 132
    invoke-virtual {v8, v9}, Lorg/telegram/tgnet/NativeByteBuffer;->position(I)V

    .line 134
    sget-object v10, Lorg/telegram/messenger/SharedConfig;->pushAuthKeyId:[B

    if-nez v10, :cond_2

    new-array v10, v5, [B

    .line 135
    sput-object v10, Lorg/telegram/messenger/SharedConfig;->pushAuthKeyId:[B

    .line 136
    sget-object v10, Lorg/telegram/messenger/SharedConfig;->pushAuthKey:[B

    invoke-static {v10}, Lorg/telegram/messenger/Utilities;->computeSHA1([B)[B

    move-result-object v10

    .line 137
    array-length v11, v10

    sub-int/2addr v11, v5

    sget-object v12, Lorg/telegram/messenger/SharedConfig;->pushAuthKeyId:[B

    invoke-static {v10, v11, v12, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    new-array v10, v5, [B

    const/4 v11, 0x1

    .line 140
    invoke-virtual {v8, v10, v11}, Lorg/telegram/tgnet/NativeByteBuffer;->readBytes([BZ)V

    .line 141
    sget-object v12, Lorg/telegram/messenger/SharedConfig;->pushAuthKeyId:[B

    invoke-static {v12, v10}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v12

    const/4 v13, 0x3

    const/4 v14, 0x2

    if-nez v12, :cond_4

    .line 142
    invoke-static {}, Lorg/telegram/messenger/PushListenerController;->onDecryptError()V

    .line 143
    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v2, :cond_3

    .line 144
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " DECRYPT ERROR 2 k1=%s k2=%s, key=%s"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v13, [Ljava/lang/Object;

    sget-object v5, Lorg/telegram/messenger/SharedConfig;->pushAuthKeyId:[B

    invoke-static {v5}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v9

    invoke-static {v10}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v11

    sget-object v5, Lorg/telegram/messenger/SharedConfig;->pushAuthKey:[B

    invoke-static {v5}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v14

    invoke-static {v2, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_3
    return-void

    :cond_4
    const/16 v10, 0x10

    new-array v10, v10, [B

    .line 150
    invoke-virtual {v8, v10, v11}, Lorg/telegram/tgnet/NativeByteBuffer;->readBytes([BZ)V

    .line 152
    sget-object v12, Lorg/telegram/messenger/SharedConfig;->pushAuthKey:[B

    invoke-static {v12, v10, v11, v14}, Lorg/telegram/messenger/MessageKeyData;->generateMessageKeyData([B[BZI)Lorg/telegram/messenger/MessageKeyData;

    move-result-object v12

    .line 153
    iget-object v15, v8, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    iget-object v6, v12, Lorg/telegram/messenger/MessageKeyData;->aesKey:[B

    iget-object v12, v12, Lorg/telegram/messenger/MessageKeyData;->aesIv:[B

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x18

    array-length v7, v7

    add-int/lit8 v21, v7, -0x18

    move-object/from16 v16, v6

    move-object/from16 v17, v12

    invoke-static/range {v15 .. v21}, Lorg/telegram/messenger/Utilities;->aesIgeEncryption(Ljava/nio/ByteBuffer;[B[BZZII)V

    .line 155
    sget-object v22, Lorg/telegram/messenger/SharedConfig;->pushAuthKey:[B

    const/16 v23, 0x60

    const/16 v24, 0x20

    iget-object v6, v8, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    const/16 v26, 0x18

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->limit()I

    move-result v27

    move-object/from16 v25, v6

    invoke-static/range {v22 .. v27}, Lorg/telegram/messenger/Utilities;->computeSHA256([BIILjava/nio/ByteBuffer;II)[B

    move-result-object v6

    .line 156
    invoke-static {v10, v9, v6, v5}, Lorg/telegram/messenger/Utilities;->arraysEquals([BI[BI)Z

    move-result v6

    if-nez v6, :cond_6

    .line 157
    invoke-static {}, Lorg/telegram/messenger/PushListenerController;->onDecryptError()V

    .line 158
    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v2, :cond_5

    .line 159
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " DECRYPT ERROR 3, key = %s"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v11, [Ljava/lang/Object;

    sget-object v3, Lorg/telegram/messenger/SharedConfig;->pushAuthKey:[B

    invoke-static {v3}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_5
    return-void

    .line 164
    :cond_6
    invoke-virtual {v8, v11}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v6

    .line 165
    new-array v6, v6, [B

    .line 166
    invoke-virtual {v8, v6, v11}, Lorg/telegram/tgnet/NativeByteBuffer;->readBytes([BZ)V

    .line 167
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_f

    .line 168
    :try_start_1
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "loc_key"

    .line 170
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_e

    if-eqz v8, :cond_7

    :try_start_2
    const-string/jumbo v8, "loc_key"

    .line 171
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_60

    :cond_7
    :try_start_3
    const-string v8, ""
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_e

    :goto_0
    :try_start_4
    const-string v10, "custom"

    .line 179
    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 180
    instance-of v10, v10, Lorg/json/JSONObject;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_d

    if-eqz v10, :cond_8

    :try_start_5
    const-string v10, "custom"

    .line 181
    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    goto/16 :goto_5f

    .line 183
    :cond_8
    :try_start_6
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    :goto_1
    const-string/jumbo v12, "user_id"

    .line 187
    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_d

    if-eqz v12, :cond_9

    :try_start_7
    const-string/jumbo v12, "user_id"

    .line 188
    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    goto :goto_2

    :cond_9
    const/4 v12, 0x0

    :goto_2
    if-nez v12, :cond_a

    .line 194
    sget v12, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v12}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v15
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :goto_3
    move-wide v4, v15

    goto :goto_4

    .line 196
    :cond_a
    :try_start_8
    instance-of v15, v12, Ljava/lang/Long;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_d

    if-eqz v15, :cond_b

    .line 197
    :try_start_9
    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v15
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_3

    .line 198
    :cond_b
    :try_start_a
    instance-of v15, v12, Ljava/lang/Integer;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_d

    if-eqz v15, :cond_c

    .line 199
    :try_start_b
    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    int-to-long v4, v12

    goto :goto_4

    .line 200
    :cond_c
    :try_start_c
    instance-of v4, v12, Ljava/lang/String;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_d

    if-eqz v4, :cond_d

    .line 201
    :try_start_d
    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    int-to-long v4, v4

    goto :goto_4

    .line 203
    :cond_d
    :try_start_e
    sget v4, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v4

    .line 206
    :goto_4
    sget v12, Lorg/telegram/messenger/UserConfig;->selectedAccount:I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_d

    move v15, v9

    :goto_5
    const/4 v9, 0x5

    if-ge v15, v9, :cond_f

    .line 209
    :try_start_f
    invoke-static {v15}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v18

    cmp-long v9, v18, v4

    if-nez v9, :cond_e

    move v4, v11

    move v12, v15

    goto :goto_6

    :cond_e
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    :cond_f
    const/4 v4, 0x0

    :goto_6
    if-nez v4, :cond_11

    .line 216
    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v2, :cond_10

    .line 217
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ACCOUNT NOT FOUND"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 219
    :cond_10
    sget-object v1, Lorg/telegram/messenger/PushListenerController;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    return-void

    .line 223
    :cond_11
    :try_start_10
    invoke-static {v12}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/UserConfig;->isClientActivated()Z

    move-result v4
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_c

    if-nez v4, :cond_13

    .line 224
    :try_start_11
    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v2, :cond_12

    .line 225
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ACCOUNT NOT ACTIVATED"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 227
    :cond_12
    sget-object v1, Lorg/telegram/messenger/PushListenerController;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    return-void

    :catchall_2
    move-exception v0

    move-object v1, v0

    move v6, v12

    goto/16 :goto_5e

    .line 230
    :cond_13
    :try_start_12
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v4
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_c

    sparse-switch v4, :sswitch_data_0

    goto :goto_7

    :sswitch_0
    :try_start_13
    const-string v4, "GEO_LIVE_PENDING"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    move v4, v13

    goto :goto_8

    :sswitch_1
    const-string v4, "MESSAGE_ANNOUNCEMENT"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    move v4, v11

    goto :goto_8

    :sswitch_2
    const-string v4, "DC_UPDATE"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    const/4 v4, 0x0

    goto :goto_8

    :sswitch_3
    const-string v4, "SESSION_REVOKE"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    if-eqz v4, :cond_14

    move v4, v14

    goto :goto_8

    :cond_14
    :goto_7
    const/4 v4, -0x1

    :goto_8
    if-eqz v4, :cond_85

    if-eq v4, v11, :cond_84

    if-eq v4, v14, :cond_83

    if-eq v4, v13, :cond_82

    :try_start_14
    const-string v4, "channel_id"

    .line 285
    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_9

    if-eqz v4, :cond_15

    :try_start_15
    const-string v4, "channel_id"

    move-object v15, v6

    .line 286
    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    neg-long v13, v5

    move-wide/from16 v54, v5

    move-wide v4, v13

    move-wide/from16 v13, v54

    goto :goto_9

    :cond_15
    move-object v15, v6

    const-wide/16 v4, 0x0

    const-wide/16 v13, 0x0

    :goto_9
    :try_start_16
    const-string v6, "from_id"

    .line 291
    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_9

    if-eqz v6, :cond_16

    :try_start_17
    const-string v4, "from_id"

    .line 292
    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    move-wide/from16 v28, v4

    goto :goto_a

    :cond_16
    const-wide/16 v28, 0x0

    :goto_a
    :try_start_18
    const-string v6, "chat_id"

    .line 297
    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_9

    if-eqz v6, :cond_17

    :try_start_19
    const-string v4, "chat_id"

    .line 298
    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_3

    move v6, v12

    neg-long v11, v4

    move-wide/from16 v54, v4

    move-wide v4, v11

    move-wide/from16 v11, v54

    goto :goto_c

    :catchall_3
    move-exception v0

    move v6, v12

    :goto_b
    move-object v1, v0

    goto/16 :goto_5e

    :cond_17
    move v6, v12

    const-wide/16 v11, 0x0

    :goto_c
    :try_start_1a
    const-string/jumbo v9, "topic_id"

    .line 303
    invoke-virtual {v10, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_8

    if-eqz v9, :cond_18

    :try_start_1b
    const-string/jumbo v9, "topic_id"

    .line 304
    invoke-virtual {v10, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_4

    move-wide/from16 v22, v4

    goto :goto_d

    :catchall_4
    move-exception v0

    goto :goto_b

    :cond_18
    move-wide/from16 v22, v4

    const/4 v9, 0x0

    .line 306
    :goto_d
    :try_start_1c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "recived push notification {"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "} chatId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " custom topicId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    const-string v4, "encryption_id"

    .line 307
    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_8

    if-eqz v4, :cond_19

    :try_start_1d
    const-string v4, "encryption_id"

    .line 308
    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Lorg/telegram/messenger/DialogObject;->makeEncryptedDialogId(J)J

    move-result-wide v4
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_4

    move-object/from16 v30, v7

    goto :goto_e

    :cond_19
    move-object/from16 v30, v7

    move-wide/from16 v4, v22

    :goto_e
    :try_start_1e
    const-string/jumbo v7, "schedule"

    .line 310
    invoke-virtual {v10, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_7

    if-eqz v7, :cond_1a

    :try_start_1f
    const-string/jumbo v7, "schedule"

    .line 311
    invoke-virtual {v10, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v22, v15

    const/4 v15, 0x1

    if-ne v7, v15, :cond_1b

    const/4 v7, 0x1

    goto :goto_f

    :catchall_5
    move-exception v0

    goto/16 :goto_5a

    :cond_1a
    move-object/from16 v22, v15

    :cond_1b
    const/4 v7, 0x0

    :goto_f
    const-wide/16 v19, 0x0

    cmp-long v15, v4, v19

    if-nez v15, :cond_1c

    const-string v15, "ENCRYPTED_MESSAGE"

    .line 315
    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1c

    .line 316
    sget-wide v4, Lorg/telegram/messenger/NotificationsController;->globalSecretChatId:J
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_5

    :cond_1c
    const-wide/16 v19, 0x0

    cmp-long v15, v4, v19

    if-eqz v15, :cond_7f

    move/from16 v23, v7

    :try_start_20
    const-string v7, "READ_HISTORY"

    .line 320
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_7

    move/from16 v24, v15

    const-string v15, " for dialogId = "

    if-eqz v7, :cond_20

    :try_start_21
    const-string/jumbo v2, "max_id"

    .line 321
    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 322
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 323
    sget-boolean v7, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v7, :cond_1d

    .line 324
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " received read notification max_id = "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_1d
    const-wide/16 v4, 0x0

    cmp-long v1, v13, v4

    if-eqz v1, :cond_1e

    .line 327
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelInbox;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelInbox;-><init>()V

    .line 328
    iput-wide v13, v1, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelInbox;->channel_id:J

    .line 329
    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelInbox;->max_id:I

    const/4 v2, 0x0

    .line 330
    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelInbox;->still_unread_count:I

    .line 331
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 333
    :cond_1e
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryInbox;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryInbox;-><init>()V

    move-wide/from16 v4, v28

    const-wide/16 v9, 0x0

    cmp-long v7, v4, v9

    if-eqz v7, :cond_1f

    .line 335
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v7, v1, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryInbox;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 336
    iput-wide v4, v7, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    goto :goto_10

    .line 338
    :cond_1f
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_peerChat;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_peerChat;-><init>()V

    iput-object v4, v1, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryInbox;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 339
    iput-wide v11, v4, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:J

    .line 341
    :goto_10
    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryInbox;->max_id:I

    .line 342
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    :goto_11
    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v21

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v22, v3

    invoke-virtual/range {v21 .. v26}, Lorg/telegram/messenger/MessagesController;->processUpdateArray(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ZI)Z
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_5

    goto/16 :goto_58

    :cond_20
    move-wide/from16 v31, v28

    :try_start_22
    const-string v7, "READ_STORIES"

    .line 345
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_7

    if-eqz v7, :cond_21

    :try_start_23
    const-string/jumbo v1, "max_id"

    .line 346
    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 347
    invoke-static {v6}, Lorg/telegram/messenger/NotificationsController;->getInstance(I)Lorg/telegram/messenger/NotificationsController;

    move-result-object v2

    invoke-virtual {v2, v4, v5, v1}, Lorg/telegram/messenger/NotificationsController;->processReadStories(JI)V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_5

    goto/16 :goto_58

    :cond_21
    :try_start_24
    const-string v7, "STORY_DELETED"

    .line 348
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_7

    move-wide/from16 v25, v11

    const-string/jumbo v11, "story_id"

    if-eqz v7, :cond_22

    .line 349
    :try_start_25
    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 350
    invoke-static {v6}, Lorg/telegram/messenger/NotificationsController;->getInstance(I)Lorg/telegram/messenger/NotificationsController;

    move-result-object v2

    invoke-virtual {v2, v4, v5, v1}, Lorg/telegram/messenger/NotificationsController;->processDeleteStory(JI)V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_5

    goto/16 :goto_58

    :cond_22
    :try_start_26
    const-string v7, "MESSAGE_DELETED"

    .line 351
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_7

    const-string v12, ","

    move-object/from16 v27, v11

    const-string/jumbo v11, "messages"

    if-eqz v7, :cond_24

    .line 352
    :try_start_27
    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 353
    invoke-virtual {v2, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 354
    new-instance v3, Landroidx/collection/LongSparseArray;

    invoke-direct {v3}, Landroidx/collection/LongSparseArray;-><init>()V

    .line 355
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    .line 356
    :goto_12
    array-length v10, v2

    if-ge v9, v10, :cond_23

    .line 357
    aget-object v10, v2, v9

    invoke-static {v10}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_12

    :cond_23
    neg-long v9, v13

    .line 359
    invoke-virtual {v3, v9, v10, v7}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 360
    invoke-static {v6}, Lorg/telegram/messenger/NotificationsController;->getInstance(I)Lorg/telegram/messenger/NotificationsController;

    move-result-object v2

    const/4 v9, 0x0

    invoke-virtual {v2, v3, v9}, Lorg/telegram/messenger/NotificationsController;->removeDeletedMessagesFromNotifications(Landroidx/collection/LongSparseArray;Z)V

    .line 362
    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v21

    move-wide/from16 v22, v4

    move-object/from16 v24, v7

    move-wide/from16 v25, v13

    invoke-virtual/range {v21 .. v26}, Lorg/telegram/messenger/MessagesController;->deleteMessagesByPush(JLjava/util/ArrayList;J)V

    .line 363
    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v2, :cond_7f

    .line 364
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " received "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " mids = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12, v7}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_5

    goto/16 :goto_58

    :cond_24
    :try_start_28
    const-string v7, "READ_REACTION"

    .line 366
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_7

    if-eqz v7, :cond_26

    .line 367
    :try_start_29
    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 368
    invoke-virtual {v2, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 369
    new-instance v3, Landroidx/collection/LongSparseArray;

    invoke-direct {v3}, Landroidx/collection/LongSparseArray;-><init>()V

    .line 370
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 371
    new-instance v10, Landroid/util/SparseBooleanArray;

    invoke-direct {v10}, Landroid/util/SparseBooleanArray;-><init>()V

    move-object/from16 v28, v12

    const/4 v11, 0x0

    .line 372
    :goto_13
    array-length v12, v2

    if-ge v11, v12, :cond_25

    .line 373
    aget-object v12, v2, v11

    invoke-static {v12}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object/from16 p0, v2

    .line 374
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    .line 375
    invoke-virtual {v10, v12, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v2, p0

    goto :goto_13

    :cond_25
    neg-long v11, v13

    .line 377
    invoke-virtual {v3, v11, v12, v7}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 378
    invoke-static {v6}, Lorg/telegram/messenger/NotificationsController;->getInstance(I)Lorg/telegram/messenger/NotificationsController;

    move-result-object v2

    const/4 v11, 0x1

    invoke-virtual {v2, v3, v11}, Lorg/telegram/messenger/NotificationsController;->removeDeletedMessagesFromNotifications(Landroidx/collection/LongSparseArray;Z)V

    .line 380
    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2, v4, v5, v9, v10}, Lorg/telegram/messenger/MessagesController;->checkUnreadReactions(JILandroid/util/SparseBooleanArray;)V

    .line 381
    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v2, :cond_7f

    .line 382
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " received "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " mids = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v28

    invoke-static {v1, v7}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_5

    goto/16 :goto_58

    .line 384
    :cond_26
    :try_start_2a
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7f

    const-string/jumbo v7, "msg_id"

    .line 386
    invoke-virtual {v10, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_7

    if-eqz v7, :cond_27

    :try_start_2b
    const-string/jumbo v7, "msg_id"

    .line 387
    invoke-virtual {v10, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_5

    goto :goto_14

    :cond_27
    const/4 v7, 0x0

    :goto_14
    :try_start_2c
    const-string/jumbo v12, "random_id"

    .line 393
    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_7

    if-eqz v12, :cond_28

    :try_start_2d
    const-string/jumbo v12, "random_id"

    .line 394
    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lorg/telegram/messenger/Utilities;->parseLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    move-wide/from16 v54, v28

    move-object/from16 v28, v11

    move-wide/from16 v11, v54

    goto :goto_15

    :cond_28
    move-object/from16 v28, v11

    const-wide/16 v11, 0x0

    :goto_15
    if-eqz v7, :cond_2b

    move/from16 v29, v9

    .line 401
    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    iget-object v9, v9, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Lj$/util/concurrent/ConcurrentHashMap;

    move-object/from16 v33, v15

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v9, v15}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    if-nez v9, :cond_29

    .line 403
    invoke-static {v6}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v9

    const/4 v15, 0x0

    invoke-virtual {v9, v15, v4, v5}, Lorg/telegram/messenger/MessagesStorage;->getDialogReadMax(ZJ)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 404
    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v15

    iget-object v15, v15, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v15, v1, v9}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    :cond_29
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v7, v1, :cond_2a

    :goto_16
    const/4 v1, 0x1

    goto :goto_17

    :cond_2a
    const/4 v1, 0x0

    goto :goto_17

    :cond_2b
    move/from16 v29, v9

    move-object/from16 v33, v15

    const-wide/16 v19, 0x0

    cmp-long v1, v11, v19

    if-eqz v1, :cond_2a

    .line 410
    invoke-static {v6}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    invoke-virtual {v1, v11, v12}, Lorg/telegram/messenger/MessagesStorage;->checkMessageByRandomId(J)Z

    move-result v1
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_5

    if-nez v1, :cond_2a

    goto :goto_16

    .line 415
    :goto_17
    :try_start_2e
    invoke-virtual {v8, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_7

    const-string v15, "CHAT_REACT_"

    if-nez v9, :cond_2c

    :try_start_2f
    invoke-virtual {v8, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_5

    if-eqz v9, :cond_2d

    :cond_2c
    const/4 v1, 0x1

    .line 420
    :cond_2d
    :try_start_30
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_7

    move/from16 v34, v1

    const-string v1, "STORY_HIDDEN_AUTHOR"

    if-nez v9, :cond_2f

    :try_start_31
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_5

    if-eqz v9, :cond_2e

    goto :goto_18

    :cond_2e
    move/from16 v27, v34

    const/4 v9, -0x1

    goto :goto_1a

    :cond_2f
    :goto_18
    move-object/from16 v9, v27

    .line 421
    :try_start_32
    invoke-virtual {v10, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v27
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_7

    if-eqz v27, :cond_30

    .line 422
    :try_start_33
    invoke-virtual {v10, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_5

    goto :goto_19

    :cond_30
    const/4 v9, -0x1

    :goto_19
    if-ltz v9, :cond_31

    const/16 v27, 0x1

    goto :goto_1a

    :cond_31
    const/16 v27, 0x0

    :goto_1a
    if-eqz v27, :cond_7f

    move/from16 v27, v7

    :try_start_34
    const-string v7, "chat_from_id"
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_7

    move/from16 v36, v6

    move-wide/from16 v34, v11

    const-wide/16 v11, 0x0

    .line 428
    :try_start_35
    invoke-virtual {v10, v7, v11, v12}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    move/from16 v37, v9

    const-string v9, "chat_from_broadcast_id"

    move-object/from16 v39, v1

    move-object/from16 v38, v2

    .line 429
    invoke-virtual {v10, v9, v11, v12}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v1

    const-string v9, "chat_from_group_id"

    .line 430
    invoke-virtual {v10, v9, v11, v12}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v40

    cmp-long v42, v6, v11

    if-nez v42, :cond_33

    cmp-long v9, v40, v11

    if-eqz v9, :cond_32

    goto :goto_1b

    :cond_32
    const/4 v11, 0x0

    goto :goto_1c

    :cond_33
    :goto_1b
    const/4 v11, 0x1

    :goto_1c
    const-string/jumbo v9, "mention"

    .line 433
    invoke-virtual {v10, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_34

    const-string/jumbo v9, "mention"

    invoke-virtual {v10, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_34

    const/4 v12, 0x1

    goto :goto_1d

    :cond_34
    const/4 v12, 0x0

    :goto_1d
    const-string/jumbo v9, "silent"

    .line 434
    invoke-virtual {v10, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_35

    const-string/jumbo v9, "silent"

    invoke-virtual {v10, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_35

    const/16 v43, 0x1

    goto :goto_1e

    :cond_35
    const/16 v43, 0x0

    :goto_1e
    const-string/jumbo v9, "loc_args"

    move/from16 v44, v12

    move-object/from16 v12, v22

    .line 437
    invoke-virtual {v12, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_36

    const-string/jumbo v9, "loc_args"

    .line 438
    invoke-virtual {v12, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 439
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v12

    move-wide/from16 v45, v6

    new-array v6, v12, [Ljava/lang/String;

    const/4 v7, 0x0

    :goto_1f
    if-ge v7, v12, :cond_37

    .line 441
    invoke-virtual {v9, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1f

    :cond_36
    move-wide/from16 v45, v6

    const/4 v6, 0x0

    :cond_37
    if-eqz v6, :cond_39

    .line 448
    array-length v7, v6

    if-gtz v7, :cond_38

    goto :goto_20

    :cond_38
    const/4 v7, 0x0

    aget-object v9, v6, v7

    goto :goto_21

    :cond_39
    :goto_20
    const/4 v9, 0x0

    :goto_21
    const-string v7, "edit_date"

    .line 454
    invoke-virtual {v10, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    const-string v10, "CHAT_"

    .line 455
    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3c

    if-eqz v6, :cond_3c

    array-length v10, v6

    if-lez v10, :cond_3c

    .line 456
    invoke-static {v4, v5}, Lorg/telegram/messenger/UserObject;->isReplyUser(J)Z

    move-result v10

    if-eqz v10, :cond_3a

    .line 457
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " @ "

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, 0x1

    aget-object v12, v6, v9

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_25

    :cond_3a
    const-wide/16 v19, 0x0

    cmp-long v10, v13, v19

    if-eqz v10, :cond_3b

    const/4 v10, 0x1

    goto :goto_22

    :cond_3b
    const/4 v10, 0x0

    :goto_22
    const/4 v12, 0x1

    .line 461
    aget-object v22, v6, v12

    move-object v12, v9

    move/from16 v48, v10

    const/4 v10, 0x0

    goto :goto_24

    :cond_3c
    const-string v10, "PINNED_"

    .line 463
    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3e

    const-wide/16 v19, 0x0

    cmp-long v10, v13, v19

    if-eqz v10, :cond_3d

    const/4 v10, 0x1

    goto :goto_23

    :cond_3d
    const/4 v10, 0x0

    :goto_23
    move-object/from16 v22, v9

    move/from16 v48, v10

    const/4 v10, 0x1

    const/4 v12, 0x0

    :goto_24
    const/16 v47, 0x0

    goto :goto_27

    :cond_3e
    const-string v10, "CHANNEL_"

    .line 466
    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3f

    move-object/from16 v22, v9

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/16 v47, 0x1

    goto :goto_26

    :cond_3f
    :goto_25
    move-object/from16 v22, v9

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/16 v47, 0x0

    :goto_26
    const/16 v48, 0x0

    .line 471
    :goto_27
    invoke-virtual {v8, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_6e

    invoke-virtual {v8, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_40

    goto/16 :goto_49

    .line 474
    :cond_40
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v9

    move-wide/from16 v49, v4

    sparse-switch v9, :sswitch_data_1

    :cond_41
    move-object/from16 v9, v38

    move-object/from16 v5, v39

    goto/16 :goto_2a

    :sswitch_4
    const-string v5, "CHAT_MESSAGE_GEOLIVE"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    const/16 v5, 0x49

    goto/16 :goto_28

    :sswitch_5
    const-string v5, "CHANNEL_MESSAGE_PHOTOS"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    const/16 v5, 0x36

    goto/16 :goto_28

    :sswitch_6
    const-string v5, "CHANNEL_MESSAGE_NOTEXT"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    const/16 v5, 0x26

    goto/16 :goto_28

    :sswitch_7
    const-string v5, "CHANNEL_MESSAGE_PLAYLIST"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    const/16 v5, 0x38

    goto/16 :goto_28

    :sswitch_8
    const-string v5, "PINNED_CONTACT"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    const/16 v5, 0x6b

    goto/16 :goto_28

    :sswitch_9
    const-string v5, "CHAT_PHOTO_EDITED"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    const/16 v5, 0x51

    goto/16 :goto_28

    :sswitch_a
    const-string v5, "LOCKED_MESSAGE"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    const/16 v5, 0x7a

    goto/16 :goto_28

    :sswitch_b
    const-string v5, "CHAT_MESSAGE_PLAYLIST"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    const/16 v5, 0x60

    goto/16 :goto_28

    :sswitch_c
    const-string v5, "CHANNEL_MESSAGES"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    const/16 v5, 0x3a

    goto/16 :goto_28

    :sswitch_d
    const-string v5, "MESSAGE_INVOICE"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    const/16 v5, 0x1c

    goto/16 :goto_28

    :sswitch_e
    const-string v5, "CHAT_MESSAGE_VIDEO"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    const/16 v5, 0x40

    goto/16 :goto_28

    :sswitch_f
    const-string v5, "CHAT_MESSAGE_STORY"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    const/16 v5, 0x3e

    goto/16 :goto_28

    :sswitch_10
    const-string v5, "CHAT_MESSAGE_ROUND"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    const/16 v5, 0x41

    goto/16 :goto_28

    :sswitch_11
    const-string v5, "CHAT_MESSAGE_PHOTO"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    const/16 v5, 0x3f

    goto/16 :goto_28

    :sswitch_12
    const-string v5, "CHAT_MESSAGE_AUDIO"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    const/16 v5, 0x44

    goto/16 :goto_28

    :sswitch_13
    const-string v5, "MESSAGE_PLAYLIST"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    const/16 v5, 0x20

    goto/16 :goto_28

    :sswitch_14
    const-string v5, "MESSAGE_VIDEOS"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    const/16 v5, 0x1f

    goto/16 :goto_28

    :sswitch_15
    const-string v5, "PHONE_CALL_MISSED"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    const/16 v5, 0x7f

    goto/16 :goto_28

    :sswitch_16
    const-string v5, "CHANNEL_MESSAGE_GIVEAWAY"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    const/16 v5, 0x25

    goto/16 :goto_28

    :sswitch_17
    const-string v5, "CHAT_MESSAGE_GIVEAWAY"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    const/16 v5, 0x3b

    goto/16 :goto_28

    :sswitch_18
    const-string v5, "MESSAGE_PHOTOS"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    const/16 v5, 0x1e

    goto/16 :goto_28

    :sswitch_19
    const-string v5, "CHAT_MESSAGE_VIDEOS"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    const/16 v5, 0x5f

    goto/16 :goto_28

    :sswitch_1a
    const-string v5, "MESSAGE_NOTEXT"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    const/4 v5, 0x7

    goto/16 :goto_28

    :sswitch_1b
    const-string v5, "MESSAGE_GIF"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    const/16 v5, 0x18

    goto/16 :goto_28

    :sswitch_1c
    const-string v5, "MESSAGE_GEO"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    const/16 v5, 0x16

    goto/16 :goto_28

    :sswitch_1d
    const-string v5, "MESSAGE_DOC"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    const/16 v5, 0x10

    goto/16 :goto_28

    :sswitch_1e
    const-string v5, "CHAT_MESSAGE_GAME_SCORE"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    const/16 v5, 0x4c

    goto/16 :goto_28

    :sswitch_1f
    const-string v5, "CHANNEL_MESSAGE_GEOLIVE"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    const/16 v5, 0x32

    goto/16 :goto_28

    :sswitch_20
    const-string v5, "CHAT_MESSAGE_PHOTOS"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    const/16 v5, 0x5e

    goto/16 :goto_28

    :sswitch_21
    const-string v5, "CHAT_MESSAGE_NOTEXT"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    const/16 v5, 0x3d

    goto/16 :goto_28

    :sswitch_22
    const-string v5, "CHAT_TITLE_EDITED"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    const/16 v5, 0x50

    goto/16 :goto_28

    :sswitch_23
    const-string v5, "PINNED_NOTEXT"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    const/16 v5, 0x64

    goto/16 :goto_28

    :sswitch_24
    const-string v5, "MESSAGE_TEXT"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    const/4 v5, 0x5

    goto/16 :goto_28

    :sswitch_25
    const-string v5, "MESSAGE_QUIZ"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    const/16 v5, 0x14

    goto/16 :goto_28

    :sswitch_26
    const-string v5, "MESSAGE_POLL"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    const/16 v5, 0x15

    goto/16 :goto_28

    :sswitch_27
    const-string v5, "MESSAGE_GAME"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    const/16 v5, 0x19

    goto/16 :goto_28

    :sswitch_28
    const-string v5, "MESSAGE_FWDS"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    const/16 v5, 0x1d

    goto/16 :goto_28

    :sswitch_29
    const-string v5, "MESSAGE_DOCS"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    const/16 v5, 0x21

    goto/16 :goto_28

    :sswitch_2a
    const-string v5, "MESSAGE_STORY_MENTION"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    const/16 v5, 0x9

    goto/16 :goto_28

    :sswitch_2b
    const-string v5, "CHAT_MESSAGE_TEXT"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    const/16 v5, 0x3c

    goto/16 :goto_28

    :sswitch_2c
    const-string v5, "CHAT_MESSAGE_QUIZ"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    const/16 v5, 0x46

    goto/16 :goto_28

    :sswitch_2d
    const-string v5, "CHAT_MESSAGE_POLL"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    const/16 v5, 0x47

    goto/16 :goto_28

    :sswitch_2e
    const-string v5, "CHAT_MESSAGE_GAME"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    const/16 v5, 0x4b

    goto/16 :goto_28

    :sswitch_2f
    const-string v5, "CHAT_MESSAGE_FWDS"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    const/16 v5, 0x5d

    goto/16 :goto_28

    :sswitch_30
    const-string v5, "CHAT_MESSAGE_DOCS"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    const/16 v5, 0x61

    goto/16 :goto_28

    :sswitch_31
    const-string v5, "CHANNEL_MESSAGE_GAME_SCORE"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    const/16 v5, 0x1b

    goto/16 :goto_28

    :sswitch_32
    const-string v5, "PINNED_GEOLIVE"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    const/16 v5, 0x70

    goto/16 :goto_28

    :sswitch_33
    const-string v5, "MESSAGE_GIVEAWAY"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    const/16 v5, 0x23

    goto/16 :goto_28

    :sswitch_34
    const-string v5, "MESSAGE_CONTACT"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    const/16 v5, 0x13

    goto/16 :goto_28

    :sswitch_35
    const-string v5, "PINNED_VIDEO"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    const/16 v5, 0x66

    goto/16 :goto_28

    :sswitch_36
    const-string v5, "PINNED_ROUND"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    const/16 v5, 0x67

    goto/16 :goto_28

    :sswitch_37
    const-string v5, "PINNED_PHOTO"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    const/16 v5, 0x65

    goto/16 :goto_28

    :sswitch_38
    const-string v5, "PINNED_AUDIO"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    const/16 v5, 0x6a

    goto/16 :goto_28

    :sswitch_39
    const-string v5, "MESSAGE_PHOTO_SECRET"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    const/16 v5, 0xb

    goto/16 :goto_28

    :sswitch_3a
    const-string v5, "CHAT_VOICECHAT_INVITE_YOU"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    const/16 v5, 0x56

    goto/16 :goto_28

    :sswitch_3b
    const-string v5, "MESSAGE_GIFTCODE"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    const/16 v5, 0x22

    goto/16 :goto_28

    :sswitch_3c
    const-string v5, "CHANNEL_MESSAGE_VIDEO"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    const/16 v5, 0x29

    goto/16 :goto_28

    :sswitch_3d
    const-string v5, "CHANNEL_MESSAGE_STORY"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    const/16 v5, 0x27

    goto/16 :goto_28

    :sswitch_3e
    const-string v5, "CHANNEL_MESSAGE_ROUND"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    const/16 v5, 0x2a

    goto/16 :goto_28

    :sswitch_3f
    const-string v5, "CHANNEL_MESSAGE_PHOTO"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    const/16 v5, 0x28

    goto/16 :goto_28

    :sswitch_40
    const-string v5, "CHAT_VOICECHAT_END"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    const/16 v5, 0x55

    goto/16 :goto_28

    :sswitch_41
    const-string v5, "CHANNEL_MESSAGE_AUDIO"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    const/16 v5, 0x2d

    goto/16 :goto_28

    :sswitch_42
    const-string v5, "CHAT_MESSAGE_STICKER"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    const/16 v5, 0x43

    goto/16 :goto_28

    :sswitch_43
    const-string v5, "MESSAGES"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    const/16 v5, 0x24

    goto/16 :goto_28

    :sswitch_44
    const-string v5, "CHAT_MESSAGE_GIF"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    const/16 v5, 0x4a

    goto/16 :goto_28

    :sswitch_45
    const-string v5, "CHAT_MESSAGE_GEO"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    const/16 v5, 0x48

    goto/16 :goto_28

    :sswitch_46
    const-string v5, "CHAT_MESSAGE_DOC"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    const/16 v5, 0x42

    goto/16 :goto_28

    :sswitch_47
    const-string v5, "CHAT_VOICECHAT_INVITE"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    const/16 v5, 0x54

    goto/16 :goto_28

    :sswitch_48
    const-string v5, "CHAT_LEFT"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    const/16 v5, 0x59

    goto/16 :goto_28

    :sswitch_49
    const-string v5, "PINNED_GIVEAWAY"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    const/16 v5, 0x6c

    goto/16 :goto_28

    :sswitch_4a
    const-string v5, "CHAT_ADD_YOU"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    const/16 v5, 0x4f

    goto/16 :goto_28

    :sswitch_4b
    const-string v5, "REACT_TEXT"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    const/16 v5, 0x76

    goto/16 :goto_28

    :sswitch_4c
    const-string v5, "CHAT_DELETE_MEMBER"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    const/16 v5, 0x57

    goto/16 :goto_28

    :sswitch_4d
    const-string v5, "MESSAGE_SCREENSHOT"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    const/16 v5, 0xe

    goto/16 :goto_28

    :sswitch_4e
    const-string v5, "AUTH_REGION"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    const/16 v5, 0x79

    goto/16 :goto_28

    :sswitch_4f
    const-string v5, "CONTACT_JOINED"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    const/16 v5, 0x77

    goto/16 :goto_28

    :sswitch_50
    const-string v5, "CHAT_MESSAGE_INVOICE"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    const/16 v5, 0x4d

    goto/16 :goto_28

    :sswitch_51
    const-string v5, "ENCRYPTION_REQUEST"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    const/16 v5, 0x7b

    goto/16 :goto_28

    :sswitch_52
    const-string v5, "MESSAGE_GEOLIVE"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    const/16 v5, 0x17

    goto/16 :goto_28

    :sswitch_53
    const-string v5, "MESSAGE_SAME_WALLPAPER"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    move-object/from16 v9, v38

    move-object/from16 v5, v39

    const/16 v16, 0x2

    goto/16 :goto_2b

    :sswitch_54
    const-string v5, "CHAT_DELETE_YOU"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    const/16 v5, 0x58

    goto/16 :goto_28

    :sswitch_55
    const-string v5, "AUTH_UNKNOWN"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    const/16 v5, 0x78

    goto :goto_28

    :sswitch_56
    const-string v5, "MESSAGE_WALLPAPER"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    move-object/from16 v9, v38

    move-object/from16 v5, v39

    const/16 v16, 0x3

    goto/16 :goto_2b

    :sswitch_57
    const-string v5, "PINNED_GIF"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    const/16 v5, 0x74

    goto :goto_28

    :sswitch_58
    const-string v5, "PINNED_GEO"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    const/16 v5, 0x6f

    goto :goto_28

    :sswitch_59
    const-string v5, "PINNED_DOC"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    const/16 v5, 0x68

    goto :goto_28

    :sswitch_5a
    const-string v5, "PINNED_GAME_SCORE"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    const/16 v5, 0x72

    goto :goto_28

    :sswitch_5b
    const-string v5, "CHANNEL_MESSAGE_STICKER"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    const/16 v5, 0x2c

    goto :goto_28

    :sswitch_5c
    const-string v5, "PHONE_CALL_REQUEST"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    const/16 v5, 0x7d

    goto :goto_28

    :sswitch_5d
    const-string v5, "PINNED_STICKER"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    const/16 v5, 0x69

    :goto_28
    move/from16 v16, v5

    move-object/from16 v9, v38

    move-object/from16 v5, v39

    goto/16 :goto_2b

    :sswitch_5e
    move-object/from16 v5, v39

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_42

    move-object/from16 v9, v38

    const/16 v16, 0x1

    goto/16 :goto_2b

    :sswitch_5f
    move-object/from16 v5, v39

    const-string v9, "PINNED_TEXT"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_42

    const/16 v9, 0x63

    goto/16 :goto_29

    :sswitch_60
    move-object/from16 v5, v39

    const-string v9, "PINNED_QUIZ"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_42

    const/16 v9, 0x6d

    goto/16 :goto_29

    :sswitch_61
    move-object/from16 v5, v39

    const-string v9, "PINNED_POLL"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_42

    const/16 v9, 0x6e

    goto/16 :goto_29

    :sswitch_62
    move-object/from16 v5, v39

    const-string v9, "PINNED_GAME"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_42

    const/16 v9, 0x71

    goto/16 :goto_29

    :sswitch_63
    move-object/from16 v5, v39

    const-string v9, "CHAT_MESSAGE_CONTACT"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_42

    const/16 v9, 0x45

    goto/16 :goto_29

    :sswitch_64
    move-object/from16 v5, v39

    const-string v9, "MESSAGE_VIDEO_SECRET"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_42

    const/16 v9, 0xd

    goto/16 :goto_29

    :sswitch_65
    move-object/from16 v5, v39

    const-string v9, "CHANNEL_MESSAGE_TEXT"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_42

    const/4 v9, 0x6

    goto/16 :goto_29

    :sswitch_66
    move-object/from16 v5, v39

    const-string v9, "CHANNEL_MESSAGE_QUIZ"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_42

    const/16 v9, 0x2f

    goto/16 :goto_29

    :sswitch_67
    move-object/from16 v5, v39

    const-string v9, "CHANNEL_MESSAGE_POLL"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_42

    const/16 v9, 0x30

    goto/16 :goto_29

    :sswitch_68
    move-object/from16 v5, v39

    const-string v9, "CHANNEL_MESSAGE_GAME"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_42

    const/16 v9, 0x34

    goto/16 :goto_29

    :sswitch_69
    move-object/from16 v5, v39

    const-string v9, "CHANNEL_MESSAGE_FWDS"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_42

    const/16 v9, 0x35

    goto/16 :goto_29

    :sswitch_6a
    move-object/from16 v5, v39

    const-string v9, "CHANNEL_MESSAGE_DOCS"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_42

    const/16 v9, 0x39

    goto/16 :goto_29

    :sswitch_6b
    move-object/from16 v5, v39

    const-string v9, "PINNED_INVOICE"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_42

    const/16 v9, 0x73

    goto/16 :goto_29

    :sswitch_6c
    move-object/from16 v5, v39

    const-string v9, "CHAT_RETURNED"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_42

    const/16 v9, 0x5a

    goto/16 :goto_29

    :sswitch_6d
    move-object/from16 v5, v39

    const-string v9, "ENCRYPTED_MESSAGE"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_42

    const/16 v9, 0x75

    goto/16 :goto_29

    :sswitch_6e
    move-object/from16 v5, v39

    const-string v9, "ENCRYPTION_ACCEPT"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_42

    const/16 v9, 0x7c

    goto/16 :goto_29

    :sswitch_6f
    move-object/from16 v5, v39

    const-string v9, "MESSAGE_VIDEO"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_42

    const/16 v9, 0xc

    goto/16 :goto_29

    :sswitch_70
    move-object/from16 v5, v39

    const-string v9, "MESSAGE_STORY"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_42

    move-object/from16 v9, v38

    const/16 v16, 0x8

    goto/16 :goto_2b

    :sswitch_71
    move-object/from16 v5, v39

    const-string v9, "MESSAGE_ROUND"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_42

    const/16 v9, 0xf

    goto/16 :goto_29

    :sswitch_72
    move-object/from16 v5, v39

    const-string v9, "MESSAGE_PHOTO"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_42

    const/16 v9, 0xa

    goto/16 :goto_29

    :sswitch_73
    move-object/from16 v5, v39

    const-string v9, "MESSAGE_MUTED"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_42

    const/16 v9, 0x7e

    goto/16 :goto_29

    :sswitch_74
    move-object/from16 v5, v39

    const-string v9, "MESSAGE_AUDIO"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_42

    const/16 v9, 0x12

    goto/16 :goto_29

    :sswitch_75
    move-object/from16 v5, v39

    const-string v9, "MESSAGE_RECURRING_PAY"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_42

    move-object/from16 v9, v38

    const/16 v16, 0x4

    goto/16 :goto_2b

    :sswitch_76
    move-object/from16 v5, v39

    const-string v9, "CHAT_MESSAGES"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_42

    const/16 v9, 0x62

    goto/16 :goto_29

    :sswitch_77
    move-object/from16 v5, v39

    const-string v9, "CHAT_VOICECHAT_START"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_42

    const/16 v9, 0x53

    goto/16 :goto_29

    :sswitch_78
    move-object/from16 v5, v39

    const-string v9, "CHAT_REQ_JOINED"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_42

    const/16 v9, 0x5c

    goto/16 :goto_29

    :sswitch_79
    move-object/from16 v5, v39

    const-string v9, "CHAT_JOINED"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_42

    const/16 v9, 0x5b

    goto/16 :goto_29

    :sswitch_7a
    move-object/from16 v5, v39

    const-string v9, "CHAT_ADD_MEMBER"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_42

    const/16 v9, 0x52

    goto/16 :goto_29

    :sswitch_7b
    move-object/from16 v5, v39

    const-string v9, "CHANNEL_MESSAGE_GIF"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_42

    const/16 v9, 0x33

    goto :goto_29

    :sswitch_7c
    move-object/from16 v5, v39

    const-string v9, "CHANNEL_MESSAGE_GEO"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_42

    const/16 v9, 0x31

    goto :goto_29

    :sswitch_7d
    move-object/from16 v5, v39

    const-string v9, "CHANNEL_MESSAGE_DOC"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_42

    const/16 v9, 0x2b

    goto :goto_29

    :sswitch_7e
    move-object/from16 v5, v39

    const-string v9, "CHANNEL_MESSAGE_VIDEOS"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_42

    const/16 v9, 0x37

    goto :goto_29

    :sswitch_7f
    move-object/from16 v5, v39

    const-string v9, "MESSAGE_STICKER"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_42

    const/16 v9, 0x11

    goto :goto_29

    :sswitch_80
    move-object/from16 v5, v39

    const-string v9, "CHAT_CREATED"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_42

    const/16 v9, 0x4e

    goto :goto_29

    :sswitch_81
    move-object/from16 v5, v39

    const-string v9, "CHANNEL_MESSAGE_CONTACT"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_42

    const/16 v9, 0x2e

    goto :goto_29

    :sswitch_82
    move-object/from16 v5, v39

    const-string v9, "MESSAGE_GAME_SCORE"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_42

    const/16 v9, 0x1a

    :goto_29
    move/from16 v16, v9

    move-object/from16 v9, v38

    goto :goto_2b

    :cond_42
    move-object/from16 v9, v38

    goto :goto_2a

    :sswitch_83
    move-object/from16 v5, v39

    move-object/from16 v9, v38

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_6

    if-eqz v16, :cond_43

    const/16 v16, 0x0

    goto :goto_2b

    :cond_43
    :goto_2a
    const/16 v16, -0x1

    :goto_2b
    const-string v4, " "

    move-object/from16 v39, v5

    const-string v5, "NotificationGroupFew"

    move-object/from16 v51, v9

    const-string v9, "NotificationMessageFew"

    move-object/from16 v52, v15

    const-string v15, "ChannelMessageFew"

    move-object/from16 v53, v3

    const-string v3, "AttachSticker"

    packed-switch v16, :pswitch_data_0

    move/from16 v28, v7

    move/from16 v15, v43

    move-object/from16 v38, v51

    move-wide/from16 v54, v1

    move-wide/from16 v1, v49

    move-wide/from16 v49, v54

    .line 1201
    :try_start_36
    sget-boolean v3, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    goto/16 :goto_47

    :pswitch_0
    move/from16 v28, v7

    move/from16 v15, v43

    move-object/from16 v38, v51

    move-wide/from16 v54, v1

    move-wide/from16 v1, v49

    move-wide/from16 v49, v54

    goto/16 :goto_48

    :pswitch_1
    const-string v3, "YouHaveNewMessage"

    .line 1179
    sget v4, Lorg/telegram/messenger/R$string;->YouHaveNewMessage:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "SecretChatName"

    .line 1180
    sget v5, Lorg/telegram/messenger/R$string;->SecretChatName:I

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v21, v3

    move-object/from16 v22, v4

    move/from16 v28, v7

    move/from16 v7, v27

    move/from16 v15, v43

    move-object/from16 v38, v51

    const/4 v6, 0x0

    const/16 v24, 0x1

    :goto_2c
    move-wide/from16 v54, v1

    move-wide/from16 v1, v49

    move-wide/from16 v49, v54

    goto/16 :goto_4e

    :pswitch_2
    if-lez v24, :cond_44

    const-string v3, "NotificationActionPinnedGifUser"

    .line 1168
    sget v4, Lorg/telegram/messenger/R$string;->NotificationActionPinnedGifUser:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v9, 0x0

    aget-object v11, v6, v9

    aput-object v11, v5, v9

    const/4 v9, 0x1

    aget-object v6, v6, v9

    aput-object v6, v5, v9

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v21, v3

    move/from16 v28, v7

    move/from16 v7, v27

    move/from16 v15, v43

    move-object/from16 v38, v51

    goto/16 :goto_2e

    :cond_44
    move/from16 v15, v29

    move/from16 v3, v43

    move-object/from16 v4, v51

    if-eqz v11, :cond_45

    const-string v5, "NotificationActionPinnedGif"

    .line 1171
    sget v11, Lorg/telegram/messenger/R$string;->NotificationActionPinnedGif:I

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/16 v16, 0x0

    aget-object v17, v6, v16

    aput-object v17, v9, v16

    const/16 v16, 0x1

    aget-object v6, v6, v16

    aput-object v6, v9, v16

    invoke-static {v5, v11, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v38, v4

    move-object/from16 v21, v5

    move/from16 v28, v7

    move/from16 v29, v15

    move/from16 v7, v27

    const/4 v6, 0x0

    const/16 v24, 0x0

    move v15, v3

    goto :goto_2c

    :cond_45
    const-string v5, "NotificationActionPinnedGifChannel"

    .line 1173
    sget v9, Lorg/telegram/messenger/R$string;->NotificationActionPinnedGifChannel:I

    move/from16 v16, v3

    const/4 v11, 0x1

    new-array v3, v11, [Ljava/lang/Object;

    const/4 v11, 0x0

    aget-object v6, v6, v11

    aput-object v6, v3, v11

    invoke-static {v5, v9, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2d

    :pswitch_3
    move/from16 v15, v29

    move/from16 v16, v43

    move-object/from16 v4, v51

    if-lez v24, :cond_46

    const-string v3, "NotificationActionPinnedInvoiceUser"

    .line 1156
    sget v5, Lorg/telegram/messenger/R$string;->NotificationActionPinnedInvoiceUser:I

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    aget-object v17, v6, v11

    aput-object v17, v9, v11

    const/4 v11, 0x1

    aget-object v6, v6, v11

    aput-object v6, v9, v11

    invoke-static {v3, v5, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2d

    :cond_46
    if-eqz v11, :cond_47

    const-string v3, "NotificationActionPinnedInvoice"

    .line 1159
    sget v5, Lorg/telegram/messenger/R$string;->NotificationActionPinnedInvoice:I

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    aget-object v17, v6, v11

    aput-object v17, v9, v11

    const/4 v11, 0x1

    aget-object v6, v6, v11

    aput-object v6, v9, v11

    invoke-static {v3, v5, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2d

    :cond_47
    const-string v3, "NotificationActionPinnedInvoiceChannel"

    .line 1161
    sget v5, Lorg/telegram/messenger/R$string;->NotificationActionPinnedInvoiceChannel:I

    const/4 v9, 0x1

    new-array v11, v9, [Ljava/lang/Object;

    const/4 v9, 0x0

    aget-object v6, v6, v9

    aput-object v6, v11, v9

    invoke-static {v3, v5, v11}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2d

    :pswitch_4
    move/from16 v15, v29

    move/from16 v16, v43

    move-object/from16 v4, v51

    if-lez v24, :cond_48

    const-string v3, "NotificationActionPinnedGameScoreUser"

    .line 1144
    sget v5, Lorg/telegram/messenger/R$string;->NotificationActionPinnedGameScoreUser:I

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    aget-object v17, v6, v11

    aput-object v17, v9, v11

    const/4 v11, 0x1

    aget-object v6, v6, v11

    aput-object v6, v9, v11

    invoke-static {v3, v5, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2d

    :cond_48
    if-eqz v11, :cond_49

    const-string v3, "NotificationActionPinnedGameScore"

    .line 1147
    sget v5, Lorg/telegram/messenger/R$string;->NotificationActionPinnedGameScore:I

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    aget-object v17, v6, v11

    aput-object v17, v9, v11

    const/4 v11, 0x1

    aget-object v6, v6, v11

    aput-object v6, v9, v11

    invoke-static {v3, v5, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2d

    :cond_49
    const-string v3, "NotificationActionPinnedGameScoreChannel"

    .line 1149
    sget v5, Lorg/telegram/messenger/R$string;->NotificationActionPinnedGameScoreChannel:I

    const/4 v9, 0x1

    new-array v11, v9, [Ljava/lang/Object;

    const/4 v9, 0x0

    aget-object v6, v6, v9

    aput-object v6, v11, v9

    invoke-static {v3, v5, v11}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2d

    :pswitch_5
    move/from16 v15, v29

    move/from16 v16, v43

    move-object/from16 v4, v51

    if-lez v24, :cond_4a

    const-string v3, "NotificationActionPinnedGameUser"

    .line 1132
    sget v5, Lorg/telegram/messenger/R$string;->NotificationActionPinnedGameUser:I

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    aget-object v17, v6, v11

    aput-object v17, v9, v11

    const/4 v11, 0x1

    aget-object v6, v6, v11

    aput-object v6, v9, v11

    invoke-static {v3, v5, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2d

    :cond_4a
    if-eqz v11, :cond_4b

    const-string v3, "NotificationActionPinnedGame"

    .line 1135
    sget v5, Lorg/telegram/messenger/R$string;->NotificationActionPinnedGame:I

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    aget-object v17, v6, v11

    aput-object v17, v9, v11

    const/4 v11, 0x1

    aget-object v6, v6, v11

    aput-object v6, v9, v11

    invoke-static {v3, v5, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2d

    :cond_4b
    const-string v3, "NotificationActionPinnedGameChannel"

    .line 1137
    sget v5, Lorg/telegram/messenger/R$string;->NotificationActionPinnedGameChannel:I

    const/4 v9, 0x1

    new-array v11, v9, [Ljava/lang/Object;

    const/4 v9, 0x0

    aget-object v6, v6, v9

    aput-object v6, v11, v9

    invoke-static {v3, v5, v11}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2d

    :pswitch_6
    move/from16 v15, v29

    move/from16 v16, v43

    move-object/from16 v4, v51

    if-lez v24, :cond_4c

    const-string v3, "NotificationActionPinnedGeoLiveUser"

    .line 1120
    sget v5, Lorg/telegram/messenger/R$string;->NotificationActionPinnedGeoLiveUser:I

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    aget-object v17, v6, v11

    aput-object v17, v9, v11

    const/4 v11, 0x1

    aget-object v6, v6, v11

    aput-object v6, v9, v11

    invoke-static {v3, v5, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2d

    :cond_4c
    if-eqz v11, :cond_4d

    const-string v3, "NotificationActionPinnedGeoLive"

    .line 1123
    sget v5, Lorg/telegram/messenger/R$string;->NotificationActionPinnedGeoLive:I

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    aget-object v17, v6, v11

    aput-object v17, v9, v11

    const/4 v11, 0x1

    aget-object v6, v6, v11

    aput-object v6, v9, v11

    invoke-static {v3, v5, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2d

    :cond_4d
    const-string v3, "NotificationActionPinnedGeoLiveChannel"

    .line 1125
    sget v5, Lorg/telegram/messenger/R$string;->NotificationActionPinnedGeoLiveChannel:I

    const/4 v9, 0x1

    new-array v11, v9, [Ljava/lang/Object;

    const/4 v9, 0x0

    aget-object v6, v6, v9

    aput-object v6, v11, v9

    invoke-static {v3, v5, v11}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2d

    :pswitch_7
    move/from16 v15, v29

    move/from16 v16, v43

    move-object/from16 v4, v51

    if-lez v24, :cond_4e

    const-string v3, "NotificationActionPinnedGeoUser"

    .line 1108
    sget v5, Lorg/telegram/messenger/R$string;->NotificationActionPinnedGeoUser:I

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    aget-object v17, v6, v11

    aput-object v17, v9, v11

    const/4 v11, 0x1

    aget-object v6, v6, v11

    aput-object v6, v9, v11

    invoke-static {v3, v5, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2d

    :cond_4e
    if-eqz v11, :cond_4f

    const-string v3, "NotificationActionPinnedGeo"

    .line 1111
    sget v5, Lorg/telegram/messenger/R$string;->NotificationActionPinnedGeo:I

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    aget-object v17, v6, v11

    aput-object v17, v9, v11

    const/4 v11, 0x1

    aget-object v6, v6, v11

    aput-object v6, v9, v11

    invoke-static {v3, v5, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2d

    :cond_4f
    const-string v3, "NotificationActionPinnedGeoChannel"

    .line 1113
    sget v5, Lorg/telegram/messenger/R$string;->NotificationActionPinnedGeoChannel:I

    const/4 v9, 0x1

    new-array v11, v9, [Ljava/lang/Object;

    const/4 v9, 0x0

    aget-object v6, v6, v9

    aput-object v6, v11, v9

    invoke-static {v3, v5, v11}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_2d
    move-object/from16 v21, v3

    move-object/from16 v38, v4

    move/from16 v28, v7

    move/from16 v29, v15

    move/from16 v15, v16

    move/from16 v7, v27

    :goto_2e
    const/4 v6, 0x0

    const/16 v24, 0x0

    goto/16 :goto_2c

    :pswitch_8
    move/from16 v15, v29

    move/from16 v16, v43

    move-object/from16 v4, v51

    if-lez v24, :cond_50

    const-string v3, "NotificationActionPinnedPollUser"

    .line 1096
    sget v5, Lorg/telegram/messenger/R$string;->NotificationActionPinnedPollUser:I

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    aget-object v17, v6, v11

    aput-object v17, v9, v11

    const/4 v11, 0x1

    aget-object v6, v6, v11

    aput-object v6, v9, v11

    invoke-static {v3, v5, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2d

    :cond_50
    if-eqz v11, :cond_51

    const-string v3, "NotificationActionPinnedPoll2"

    .line 1099
    sget v5, Lorg/telegram/messenger/R$string;->NotificationActionPinnedPoll2:I

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/16 v17, 0x0

    aget-object v18, v6, v17

    aput-object v18, v11, v17

    const/4 v9, 0x2

    aget-object v18, v6, v9

    const/16 v21, 0x1

    aput-object v18, v11, v21

    aget-object v6, v6, v21

    aput-object v6, v11, v9

    invoke-static {v3, v5, v11}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2d

    :cond_51
    const-string v3, "NotificationActionPinnedPollChannel2"

    .line 1101
    sget v5, Lorg/telegram/messenger/R$string;->NotificationActionPinnedPollChannel2:I

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    aget-object v17, v6, v11

    aput-object v17, v9, v11

    const/4 v11, 0x1

    aget-object v6, v6, v11

    aput-object v6, v9, v11

    invoke-static {v3, v5, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2d

    :pswitch_9
    move/from16 v15, v29

    move-object/from16 v3, v39

    move/from16 v16, v43

    move-object/from16 v4, v51

    move-wide/from16 v54, v1

    move-wide/from16 v1, v49

    move-wide/from16 v49, v54

    if-lez v24, :cond_52

    const-string v5, "NotificationActionPinnedQuizUser"

    .line 1084
    sget v11, Lorg/telegram/messenger/R$string;->NotificationActionPinnedQuizUser:I

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/16 v17, 0x0

    aget-object v18, v6, v17

    aput-object v18, v9, v17

    const/16 v18, 0x1

    aget-object v6, v6, v18

    aput-object v6, v9, v18

    invoke-static {v5, v11, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    :goto_2f
    move-object/from16 v39, v3

    move-object/from16 v38, v4

    move-object/from16 v21, v5

    goto :goto_31

    :cond_52
    if-eqz v11, :cond_53

    const-string v11, "NotificationActionPinnedQuiz2"

    .line 1087
    sget v5, Lorg/telegram/messenger/R$string;->NotificationActionPinnedQuiz2:I

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/16 v17, 0x0

    aget-object v18, v6, v17

    aput-object v18, v9, v17

    const/16 v18, 0x2

    aget-object v21, v6, v18

    const/16 v24, 0x1

    aput-object v21, v9, v24

    aget-object v6, v6, v24

    aput-object v6, v9, v18

    invoke-static {v11, v5, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2f

    :cond_53
    const-string v5, "NotificationActionPinnedQuizChannel2"

    .line 1089
    sget v11, Lorg/telegram/messenger/R$string;->NotificationActionPinnedQuizChannel2:I

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/16 v17, 0x0

    aget-object v18, v6, v17

    aput-object v18, v9, v17

    const/16 v18, 0x1

    aget-object v6, v6, v18

    aput-object v6, v9, v18

    invoke-static {v5, v11, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2f

    :pswitch_a
    move/from16 v15, v29

    move-object/from16 v3, v39

    move/from16 v16, v43

    move-object/from16 v4, v51

    move-wide/from16 v54, v1

    move-wide/from16 v1, v49

    move-wide/from16 v49, v54

    const-string v5, "NotificationPinnedGiveaway"

    .line 1079
    sget v9, Lorg/telegram/messenger/R$string;->NotificationPinnedGiveaway:I

    move-object/from16 v39, v3

    const/4 v11, 0x1

    new-array v3, v11, [Ljava/lang/Object;

    const/4 v11, 0x0

    aget-object v6, v6, v11

    aput-object v6, v3, v11

    invoke-static {v5, v9, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_30
    move-object/from16 v21, v3

    move-object/from16 v38, v4

    :goto_31
    move/from16 v28, v7

    move/from16 v29, v15

    move/from16 v15, v16

    goto/16 :goto_4b

    :pswitch_b
    move/from16 v15, v29

    move/from16 v16, v43

    move-object/from16 v4, v51

    move-wide/from16 v54, v1

    move-wide/from16 v1, v49

    move-wide/from16 v49, v54

    if-lez v24, :cond_54

    const-string v3, "NotificationActionPinnedContactUser"

    .line 1068
    sget v5, Lorg/telegram/messenger/R$string;->NotificationActionPinnedContactUser:I

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    aget-object v17, v6, v11

    aput-object v17, v9, v11

    const/4 v11, 0x1

    aget-object v6, v6, v11

    aput-object v6, v9, v11

    invoke-static {v3, v5, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_30

    :cond_54
    if-eqz v11, :cond_55

    const-string v3, "NotificationActionPinnedContact2"

    .line 1071
    sget v11, Lorg/telegram/messenger/R$string;->NotificationActionPinnedContact2:I

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/16 v17, 0x0

    aget-object v18, v6, v17

    aput-object v18, v5, v17

    const/4 v9, 0x2

    aget-object v18, v6, v9

    const/16 v21, 0x1

    aput-object v18, v5, v21

    aget-object v6, v6, v21

    aput-object v6, v5, v9

    invoke-static {v3, v11, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_30

    :cond_55
    const-string v3, "NotificationActionPinnedContactChannel2"

    .line 1073
    sget v5, Lorg/telegram/messenger/R$string;->NotificationActionPinnedContactChannel2:I

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    aget-object v17, v6, v11

    aput-object v17, v9, v11

    const/4 v11, 0x1

    aget-object v6, v6, v11

    aput-object v6, v9, v11

    invoke-static {v3, v5, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_30

    :pswitch_c
    move/from16 v15, v29

    move/from16 v16, v43

    move-object/from16 v4, v51

    move-wide/from16 v54, v1

    move-wide/from16 v1, v49

    move-wide/from16 v49, v54

    if-lez v24, :cond_56

    const-string v3, "NotificationActionPinnedVoiceUser"

    .line 1056
    sget v5, Lorg/telegram/messenger/R$string;->NotificationActionPinnedVoiceUser:I

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    aget-object v17, v6, v11

    aput-object v17, v9, v11

    const/4 v11, 0x1

    aget-object v6, v6, v11

    aput-object v6, v9, v11

    invoke-static {v3, v5, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_30

    :cond_56
    if-eqz v11, :cond_57

    const-string v3, "NotificationActionPinnedVoice"

    .line 1059
    sget v5, Lorg/telegram/messenger/R$string;->NotificationActionPinnedVoice:I

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    aget-object v17, v6, v11

    aput-object v17, v9, v11

    const/4 v11, 0x1

    aget-object v6, v6, v11

    aput-object v6, v9, v11

    invoke-static {v3, v5, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_30

    :cond_57
    const-string v3, "NotificationActionPinnedVoiceChannel"

    .line 1061
    sget v5, Lorg/telegram/messenger/R$string;->NotificationActionPinnedVoiceChannel:I

    const/4 v9, 0x1

    new-array v11, v9, [Ljava/lang/Object;

    const/4 v9, 0x0

    aget-object v6, v6, v9

    aput-object v6, v11, v9

    invoke-static {v3, v5, v11}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_30

    :pswitch_d
    move/from16 v15, v29

    move/from16 v16, v43

    move-object/from16 v4, v51

    move-wide/from16 v54, v1

    move-wide/from16 v1, v49

    move-wide/from16 v49, v54

    if-lez v24, :cond_59

    .line 1032
    array-length v3, v6

    const/4 v5, 0x1

    if-le v3, v5, :cond_58

    aget-object v3, v6, v5

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_58

    const-string v3, "NotificationActionPinnedStickerEmojiUser"

    .line 1033
    sget v5, Lorg/telegram/messenger/R$string;->NotificationActionPinnedStickerEmojiUser:I

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    aget-object v17, v6, v11

    aput-object v17, v9, v11

    const/4 v11, 0x1

    aget-object v6, v6, v11

    aput-object v6, v9, v11

    invoke-static {v3, v5, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_30

    :cond_58
    const-string v3, "NotificationActionPinnedStickerUser"

    .line 1035
    sget v5, Lorg/telegram/messenger/R$string;->NotificationActionPinnedStickerUser:I

    const/4 v9, 0x1

    new-array v11, v9, [Ljava/lang/Object;

    const/4 v9, 0x0

    aget-object v6, v6, v9

    aput-object v6, v11, v9

    invoke-static {v3, v5, v11}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_30

    :cond_59
    if-eqz v11, :cond_5b

    .line 1039
    array-length v3, v6

    const/4 v9, 0x2

    if-le v3, v9, :cond_5a

    aget-object v3, v6, v9

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5a

    const-string v3, "NotificationActionPinnedStickerEmoji"

    .line 1040
    sget v11, Lorg/telegram/messenger/R$string;->NotificationActionPinnedStickerEmoji:I

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/16 v17, 0x0

    aget-object v18, v6, v17

    aput-object v18, v5, v17

    const/4 v9, 0x2

    aget-object v18, v6, v9

    const/16 v21, 0x1

    aput-object v18, v5, v21

    aget-object v6, v6, v21

    aput-object v6, v5, v9

    invoke-static {v3, v11, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_30

    :cond_5a
    const-string v3, "NotificationActionPinnedSticker"

    .line 1042
    sget v5, Lorg/telegram/messenger/R$string;->NotificationActionPinnedSticker:I

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    aget-object v17, v6, v11

    aput-object v17, v9, v11

    const/4 v11, 0x1

    aget-object v6, v6, v11

    aput-object v6, v9, v11

    invoke-static {v3, v5, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_30

    .line 1045
    :cond_5b
    array-length v3, v6

    const/4 v5, 0x1

    if-le v3, v5, :cond_5c

    aget-object v3, v6, v5

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5c

    const-string v3, "NotificationActionPinnedStickerEmojiChannel"

    .line 1046
    sget v5, Lorg/telegram/messenger/R$string;->NotificationActionPinnedStickerEmojiChannel:I

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    aget-object v17, v6, v11

    aput-object v17, v9, v11

    const/4 v11, 0x1

    aget-object v6, v6, v11

    aput-object v6, v9, v11

    invoke-static {v3, v5, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_30

    :cond_5c
    const-string v3, "NotificationActionPinnedStickerChannel"

    .line 1048
    sget v5, Lorg/telegram/messenger/R$string;->NotificationActionPinnedStickerChannel:I

    const/4 v9, 0x1

    new-array v11, v9, [Ljava/lang/Object;

    const/4 v9, 0x0

    aget-object v6, v6, v9

    aput-object v6, v11, v9

    invoke-static {v3, v5, v11}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_30

    :pswitch_e
    move/from16 v15, v29

    move/from16 v16, v43

    move-object/from16 v4, v51

    move-wide/from16 v54, v1

    move-wide/from16 v1, v49

    move-wide/from16 v49, v54

    if-lez v24, :cond_5d

    const-string v3, "NotificationActionPinnedFileUser"

    .line 1020
    sget v5, Lorg/telegram/messenger/R$string;->NotificationActionPinnedFileUser:I

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    aget-object v17, v6, v11

    aput-object v17, v9, v11

    const/4 v11, 0x1

    aget-object v6, v6, v11

    aput-object v6, v9, v11

    invoke-static {v3, v5, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_30

    :cond_5d
    if-eqz v11, :cond_5e

    const-string v3, "NotificationActionPinnedFile"

    .line 1023
    sget v5, Lorg/telegram/messenger/R$string;->NotificationActionPinnedFile:I

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    aget-object v17, v6, v11

    aput-object v17, v9, v11

    const/4 v11, 0x1

    aget-object v6, v6, v11

    aput-object v6, v9, v11

    invoke-static {v3, v5, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_30

    :cond_5e
    const-string v3, "NotificationActionPinnedFileChannel"

    .line 1025
    sget v5, Lorg/telegram/messenger/R$string;->NotificationActionPinnedFileChannel:I

    const/4 v9, 0x1

    new-array v11, v9, [Ljava/lang/Object;

    const/4 v9, 0x0

    aget-object v6, v6, v9

    aput-object v6, v11, v9

    invoke-static {v3, v5, v11}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_30

    :pswitch_f
    move/from16 v15, v29

    move/from16 v16, v43

    move-object/from16 v4, v51

    move-wide/from16 v54, v1

    move-wide/from16 v1, v49

    move-wide/from16 v49, v54

    if-lez v24, :cond_5f

    const-string v3, "NotificationActionPinnedRoundUser"

    .line 1008
    sget v5, Lorg/telegram/messenger/R$string;->NotificationActionPinnedRoundUser:I

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    aget-object v17, v6, v11

    aput-object v17, v9, v11

    const/4 v11, 0x1

    aget-object v6, v6, v11

    aput-object v6, v9, v11

    invoke-static {v3, v5, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_30

    :cond_5f
    if-eqz v11, :cond_60

    const-string v3, "NotificationActionPinnedRound"

    .line 1011
    sget v5, Lorg/telegram/messenger/R$string;->NotificationActionPinnedRound:I

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    aget-object v17, v6, v11

    aput-object v17, v9, v11

    const/4 v11, 0x1

    aget-object v6, v6, v11

    aput-object v6, v9, v11

    invoke-static {v3, v5, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_30

    :cond_60
    const-string v3, "NotificationActionPinnedRoundChannel"

    .line 1013
    sget v5, Lorg/telegram/messenger/R$string;->NotificationActionPinnedRoundChannel:I

    const/4 v9, 0x1

    new-array v11, v9, [Ljava/lang/Object;

    const/4 v9, 0x0

    aget-object v6, v6, v9

    aput-object v6, v11, v9

    invoke-static {v3, v5, v11}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_30

    :pswitch_10
    move/from16 v15, v29

    move/from16 v16, v43

    move-object/from16 v4, v51

    move-wide/from16 v54, v1

    move-wide/from16 v1, v49

    move-wide/from16 v49, v54

    if-lez v24, :cond_61

    const-string v3, "NotificationActionPinnedVideoUser"

    .line 996
    sget v5, Lorg/telegram/messenger/R$string;->NotificationActionPinnedVideoUser:I

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    aget-object v17, v6, v11

    aput-object v17, v9, v11

    const/4 v11, 0x1

    aget-object v6, v6, v11

    aput-object v6, v9, v11

    invoke-static {v3, v5, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_30

    :cond_61
    if-eqz v11, :cond_62

    const-string v3, "NotificationActionPinnedVideo"

    .line 999
    sget v5, Lorg/telegram/messenger/R$string;->NotificationActionPinnedVideo:I

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    aget-object v17, v6, v11

    aput-object v17, v9, v11

    const/4 v11, 0x1

    aget-object v6, v6, v11

    aput-object v6, v9, v11

    invoke-static {v3, v5, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_30

    :cond_62
    const-string v3, "NotificationActionPinnedVideoChannel"

    .line 1001
    sget v5, Lorg/telegram/messenger/R$string;->NotificationActionPinnedVideoChannel:I

    const/4 v9, 0x1

    new-array v11, v9, [Ljava/lang/Object;

    const/4 v9, 0x0

    aget-object v6, v6, v9

    aput-object v6, v11, v9

    invoke-static {v3, v5, v11}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_30

    :pswitch_11
    move/from16 v15, v29

    move/from16 v16, v43

    move-object/from16 v4, v51

    move-wide/from16 v54, v1

    move-wide/from16 v1, v49

    move-wide/from16 v49, v54

    if-lez v24, :cond_63

    const-string v3, "NotificationActionPinnedPhotoUser"

    .line 984
    sget v5, Lorg/telegram/messenger/R$string;->NotificationActionPinnedPhotoUser:I

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    aget-object v17, v6, v11

    aput-object v17, v9, v11

    const/4 v11, 0x1

    aget-object v6, v6, v11

    aput-object v6, v9, v11

    invoke-static {v3, v5, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_30

    :cond_63
    if-eqz v11, :cond_64

    const-string v3, "NotificationActionPinnedPhoto"

    .line 987
    sget v5, Lorg/telegram/messenger/R$string;->NotificationActionPinnedPhoto:I

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    aget-object v17, v6, v11

    aput-object v17, v9, v11

    const/4 v11, 0x1

    aget-object v6, v6, v11

    aput-object v6, v9, v11

    invoke-static {v3, v5, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_30

    :cond_64
    const-string v3, "NotificationActionPinnedPhotoChannel"

    .line 989
    sget v5, Lorg/telegram/messenger/R$string;->NotificationActionPinnedPhotoChannel:I

    const/4 v9, 0x1

    new-array v11, v9, [Ljava/lang/Object;

    const/4 v9, 0x0

    aget-object v6, v6, v9

    aput-object v6, v11, v9

    invoke-static {v3, v5, v11}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_30

    :pswitch_12
    move/from16 v15, v29

    move/from16 v16, v43

    move-object/from16 v4, v51

    move-wide/from16 v54, v1

    move-wide/from16 v1, v49

    move-wide/from16 v49, v54

    if-lez v24, :cond_65

    const-string v3, "NotificationActionPinnedNoTextUser"

    .line 972
    sget v5, Lorg/telegram/messenger/R$string;->NotificationActionPinnedNoTextUser:I

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    aget-object v17, v6, v11

    aput-object v17, v9, v11

    const/4 v11, 0x1

    aget-object v6, v6, v11

    aput-object v6, v9, v11

    invoke-static {v3, v5, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_30

    :cond_65
    if-eqz v11, :cond_66

    const-string v3, "NotificationActionPinnedNoText"

    .line 975
    sget v5, Lorg/telegram/messenger/R$string;->NotificationActionPinnedNoText:I

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    aget-object v17, v6, v11

    aput-object v17, v9, v11

    const/4 v11, 0x1

    aget-object v6, v6, v11

    aput-object v6, v9, v11

    invoke-static {v3, v5, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_30

    :cond_66
    const-string v3, "NotificationActionPinnedNoTextChannel"

    .line 977
    sget v5, Lorg/telegram/messenger/R$string;->NotificationActionPinnedNoTextChannel:I

    const/4 v9, 0x1

    new-array v11, v9, [Ljava/lang/Object;

    const/4 v9, 0x0

    aget-object v6, v6, v9

    aput-object v6, v11, v9

    invoke-static {v3, v5, v11}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_30

    :pswitch_13
    move/from16 v15, v29

    move/from16 v16, v43

    move-object/from16 v4, v51

    move-wide/from16 v54, v1

    move-wide/from16 v1, v49

    move-wide/from16 v49, v54

    if-lez v24, :cond_67

    const-string v3, "NotificationActionPinnedTextUser"

    .line 960
    sget v5, Lorg/telegram/messenger/R$string;->NotificationActionPinnedTextUser:I

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    aget-object v17, v6, v11

    aput-object v17, v9, v11

    const/4 v11, 0x1

    aget-object v6, v6, v11

    aput-object v6, v9, v11

    invoke-static {v3, v5, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_30

    :cond_67
    if-eqz v11, :cond_68

    const-string v3, "NotificationActionPinnedText"

    .line 963
    sget v11, Lorg/telegram/messenger/R$string;->NotificationActionPinnedText:I

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/16 v17, 0x0

    aget-object v18, v6, v17

    aput-object v18, v5, v17

    const/16 v18, 0x1

    aget-object v21, v6, v18

    aput-object v21, v5, v18

    const/4 v9, 0x2

    aget-object v6, v6, v9

    aput-object v6, v5, v9

    invoke-static {v3, v11, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_30

    :cond_68
    const-string v3, "NotificationActionPinnedTextChannel"

    .line 965
    sget v5, Lorg/telegram/messenger/R$string;->NotificationActionPinnedTextChannel:I

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    aget-object v17, v6, v11

    aput-object v17, v9, v11

    const/4 v11, 0x1

    aget-object v6, v6, v11

    aput-object v6, v9, v11

    invoke-static {v3, v5, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_30

    :pswitch_14
    move/from16 v15, v29

    move/from16 v16, v43

    move-object/from16 v4, v51

    move-wide/from16 v54, v1

    move-wide/from16 v1, v49

    move-wide/from16 v49, v54

    const-string v3, "NotificationGroupAlbum"

    .line 954
    sget v5, Lorg/telegram/messenger/R$string;->NotificationGroupAlbum:I

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    aget-object v17, v6, v11

    aput-object v17, v9, v11

    const/4 v11, 0x1

    aget-object v6, v6, v11

    aput-object v6, v9, v11

    invoke-static {v3, v5, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v21, v3

    move-object/from16 v38, v4

    move/from16 v28, v7

    move/from16 v29, v15

    goto/16 :goto_3e

    :pswitch_15
    move/from16 v15, v29

    move/from16 v16, v43

    move-object/from16 v4, v51

    move-wide/from16 v54, v1

    move-wide/from16 v1, v49

    move-wide/from16 v49, v54

    .line 949
    sget v11, Lorg/telegram/messenger/R$string;->NotificationGroupFew:I

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/16 v17, 0x0

    aget-object v18, v6, v17

    aput-object v18, v3, v17

    const/16 v18, 0x1

    aget-object v21, v6, v18

    aput-object v21, v3, v18

    const-string v9, "Files"

    const/16 v18, 0x2

    aget-object v6, v6, v18

    invoke-static {v6}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object/from16 v51, v4

    move/from16 v29, v15

    const/4 v4, 0x0

    new-array v15, v4, [Ljava/lang/Object;

    invoke-static {v9, v6, v15}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v18

    invoke-static {v5, v11, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_32

    :pswitch_16
    move/from16 v16, v43

    move-wide/from16 v54, v1

    move-wide/from16 v1, v49

    move-wide/from16 v49, v54

    .line 944
    sget v4, Lorg/telegram/messenger/R$string;->NotificationGroupFew:I

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v11, 0x0

    aget-object v15, v6, v11

    aput-object v15, v3, v11

    const/4 v11, 0x1

    aget-object v15, v6, v11

    aput-object v15, v3, v11

    const-string v11, "MusicFiles"

    const/4 v9, 0x2

    aget-object v6, v6, v9

    invoke-static {v6}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v15, 0x0

    new-array v9, v15, [Ljava/lang/Object;

    invoke-static {v11, v6, v9}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x2

    aput-object v6, v3, v9

    invoke-static {v5, v4, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_32

    :pswitch_17
    move/from16 v16, v43

    move-wide/from16 v54, v1

    move-wide/from16 v1, v49

    move-wide/from16 v49, v54

    .line 939
    sget v4, Lorg/telegram/messenger/R$string;->NotificationGroupFew:I

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v11, 0x0

    aget-object v15, v6, v11

    aput-object v15, v3, v11

    const/4 v11, 0x1

    aget-object v15, v6, v11

    aput-object v15, v3, v11

    const-string v11, "Videos"

    const/4 v9, 0x2

    aget-object v6, v6, v9

    invoke-static {v6}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v15, 0x0

    new-array v9, v15, [Ljava/lang/Object;

    invoke-static {v11, v6, v9}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x2

    aput-object v6, v3, v9

    invoke-static {v5, v4, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_32

    :pswitch_18
    move/from16 v16, v43

    move-wide/from16 v54, v1

    move-wide/from16 v1, v49

    move-wide/from16 v49, v54

    .line 934
    sget v4, Lorg/telegram/messenger/R$string;->NotificationGroupFew:I

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v11, 0x0

    aget-object v15, v6, v11

    aput-object v15, v3, v11

    const/4 v11, 0x1

    aget-object v15, v6, v11

    aput-object v15, v3, v11

    const-string v11, "Photos"

    const/4 v9, 0x2

    aget-object v6, v6, v9

    invoke-static {v6}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v15, 0x0

    new-array v9, v15, [Ljava/lang/Object;

    invoke-static {v11, v6, v9}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x2

    aput-object v6, v3, v9

    invoke-static {v5, v4, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_32

    :pswitch_19
    move/from16 v16, v43

    move-wide/from16 v54, v1

    move-wide/from16 v1, v49

    move-wide/from16 v49, v54

    const-string v3, "NotificationGroupForwardedFew"

    .line 929
    sget v4, Lorg/telegram/messenger/R$string;->NotificationGroupForwardedFew:I

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v11, 0x0

    aget-object v15, v6, v11

    aput-object v15, v5, v11

    const/4 v11, 0x1

    aget-object v15, v6, v11

    aput-object v15, v5, v11

    const/4 v9, 0x2

    aget-object v6, v6, v9

    invoke-static {v6}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v11, 0x0

    new-array v15, v11, [Ljava/lang/Object;

    move-object/from16 v11, v28

    invoke-static {v11, v6, v15}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_32
    move-object/from16 v21, v3

    goto/16 :goto_39

    :pswitch_1a
    move/from16 v16, v43

    move-wide/from16 v54, v1

    move-wide/from16 v1, v49

    move-wide/from16 v49, v54

    const-string v3, "UserAcceptedToGroupPushWithGroup"

    .line 925
    sget v4, Lorg/telegram/messenger/R$string;->UserAcceptedToGroupPushWithGroup:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v9, 0x0

    aget-object v11, v6, v9

    aput-object v11, v5, v9

    const/4 v9, 0x1

    aget-object v6, v6, v9

    aput-object v6, v5, v9

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_34

    :pswitch_1b
    move/from16 v16, v43

    move-wide/from16 v54, v1

    move-wide/from16 v1, v49

    move-wide/from16 v49, v54

    const-string v3, "NotificationGroupAddSelfMega"

    .line 921
    sget v4, Lorg/telegram/messenger/R$string;->NotificationGroupAddSelfMega:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v9, 0x0

    aget-object v11, v6, v9

    aput-object v11, v5, v9

    const/4 v9, 0x1

    aget-object v6, v6, v9

    aput-object v6, v5, v9

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_34

    :pswitch_1c
    move/from16 v16, v43

    move-wide/from16 v54, v1

    move-wide/from16 v1, v49

    move-wide/from16 v49, v54

    const-string v3, "NotificationGroupAddSelf"

    .line 917
    sget v4, Lorg/telegram/messenger/R$string;->NotificationGroupAddSelf:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v9, 0x0

    aget-object v11, v6, v9

    aput-object v11, v5, v9

    const/4 v9, 0x1

    aget-object v6, v6, v9

    aput-object v6, v5, v9

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_34

    :pswitch_1d
    move/from16 v16, v43

    move-wide/from16 v54, v1

    move-wide/from16 v1, v49

    move-wide/from16 v49, v54

    const-string v3, "NotificationGroupLeftMember"

    .line 913
    sget v4, Lorg/telegram/messenger/R$string;->NotificationGroupLeftMember:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v9, 0x0

    aget-object v11, v6, v9

    aput-object v11, v5, v9

    const/4 v9, 0x1

    aget-object v6, v6, v9

    aput-object v6, v5, v9

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_34

    :pswitch_1e
    move/from16 v16, v43

    move-wide/from16 v54, v1

    move-wide/from16 v1, v49

    move-wide/from16 v49, v54

    const-string v3, "NotificationGroupKickYou"

    .line 909
    sget v4, Lorg/telegram/messenger/R$string;->NotificationGroupKickYou:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v9, 0x0

    aget-object v11, v6, v9

    aput-object v11, v5, v9

    const/4 v9, 0x1

    aget-object v6, v6, v9

    aput-object v6, v5, v9

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_34

    :pswitch_1f
    move/from16 v16, v43

    move-wide/from16 v54, v1

    move-wide/from16 v1, v49

    move-wide/from16 v49, v54

    const-string v3, "NotificationGroupKickMember"

    .line 905
    sget v4, Lorg/telegram/messenger/R$string;->NotificationGroupKickMember:I

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v11, 0x0

    aget-object v15, v6, v11

    aput-object v15, v5, v11

    const/4 v11, 0x1

    aget-object v15, v6, v11

    aput-object v15, v5, v11

    array-length v11, v6

    const/4 v9, 0x2

    if-gt v11, v9, :cond_69

    const-string v6, ""

    goto :goto_33

    :cond_69
    aget-object v6, v6, v9

    :goto_33
    aput-object v6, v5, v9

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_34

    :pswitch_20
    move/from16 v16, v43

    move-wide/from16 v54, v1

    move-wide/from16 v1, v49

    move-wide/from16 v49, v54

    const-string v3, "NotificationGroupInvitedYouToCall"

    .line 901
    sget v4, Lorg/telegram/messenger/R$string;->NotificationGroupInvitedYouToCall:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v9, 0x0

    aget-object v11, v6, v9

    aput-object v11, v5, v9

    const/4 v9, 0x1

    aget-object v6, v6, v9

    aput-object v6, v5, v9

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_34

    :pswitch_21
    move/from16 v16, v43

    move-wide/from16 v54, v1

    move-wide/from16 v1, v49

    move-wide/from16 v49, v54

    const-string v3, "NotificationGroupEndedCall"

    .line 897
    sget v4, Lorg/telegram/messenger/R$string;->NotificationGroupEndedCall:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v9, 0x0

    aget-object v11, v6, v9

    aput-object v11, v5, v9

    const/4 v9, 0x1

    aget-object v6, v6, v9

    aput-object v6, v5, v9

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_34

    :pswitch_22
    move/from16 v16, v43

    move-wide/from16 v54, v1

    move-wide/from16 v1, v49

    move-wide/from16 v49, v54

    const-string v3, "NotificationGroupInvitedToCall"

    .line 893
    sget v4, Lorg/telegram/messenger/R$string;->NotificationGroupInvitedToCall:I

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v11, 0x0

    aget-object v15, v6, v11

    aput-object v15, v5, v11

    const/4 v11, 0x1

    aget-object v15, v6, v11

    aput-object v15, v5, v11

    const/4 v9, 0x2

    aget-object v6, v6, v9

    aput-object v6, v5, v9

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_34

    :pswitch_23
    move/from16 v16, v43

    move-wide/from16 v54, v1

    move-wide/from16 v1, v49

    move-wide/from16 v49, v54

    const-string v3, "NotificationGroupCreatedCall"

    .line 889
    sget v4, Lorg/telegram/messenger/R$string;->NotificationGroupCreatedCall:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v9, 0x0

    aget-object v11, v6, v9

    aput-object v11, v5, v9

    const/4 v9, 0x1

    aget-object v6, v6, v9

    aput-object v6, v5, v9

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_34

    :pswitch_24
    move/from16 v16, v43

    move-wide/from16 v54, v1

    move-wide/from16 v1, v49

    move-wide/from16 v49, v54

    const-string v3, "NotificationGroupAddMember"

    .line 885
    sget v4, Lorg/telegram/messenger/R$string;->NotificationGroupAddMember:I

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v11, 0x0

    aget-object v15, v6, v11

    aput-object v15, v5, v11

    const/4 v11, 0x1

    aget-object v15, v6, v11

    aput-object v15, v5, v11

    const/4 v9, 0x2

    aget-object v6, v6, v9

    aput-object v6, v5, v9

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_34

    :pswitch_25
    move/from16 v16, v43

    move-wide/from16 v54, v1

    move-wide/from16 v1, v49

    move-wide/from16 v49, v54

    const-string v3, "NotificationEditedGroupPhoto"

    .line 881
    sget v4, Lorg/telegram/messenger/R$string;->NotificationEditedGroupPhoto:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v9, 0x0

    aget-object v11, v6, v9

    aput-object v11, v5, v9

    const/4 v9, 0x1

    aget-object v6, v6, v9

    aput-object v6, v5, v9

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_34

    :pswitch_26
    move/from16 v16, v43

    move-wide/from16 v54, v1

    move-wide/from16 v1, v49

    move-wide/from16 v49, v54

    const-string v3, "NotificationEditedGroupName"

    .line 877
    sget v4, Lorg/telegram/messenger/R$string;->NotificationEditedGroupName:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v9, 0x0

    aget-object v11, v6, v9

    aput-object v11, v5, v9

    const/4 v9, 0x1

    aget-object v6, v6, v9

    aput-object v6, v5, v9

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_34

    :pswitch_27
    move/from16 v16, v43

    move-wide/from16 v54, v1

    move-wide/from16 v1, v49

    move-wide/from16 v49, v54

    const-string v3, "NotificationInvitedToGroup"

    .line 873
    sget v4, Lorg/telegram/messenger/R$string;->NotificationInvitedToGroup:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v9, 0x0

    aget-object v11, v6, v9

    aput-object v11, v5, v9

    const/4 v9, 0x1

    aget-object v6, v6, v9

    aput-object v6, v5, v9

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_34
    move-object/from16 v21, v3

    move/from16 v28, v7

    move/from16 v15, v16

    move/from16 v7, v27

    move-object/from16 v38, v51

    goto/16 :goto_4c

    :pswitch_28
    move/from16 v16, v43

    move-wide/from16 v54, v1

    move-wide/from16 v1, v49

    move-wide/from16 v49, v54

    const-string v3, "NotificationMessageGroupInvoice"

    .line 867
    sget v4, Lorg/telegram/messenger/R$string;->NotificationMessageGroupInvoice:I

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v11, 0x0

    aget-object v15, v6, v11

    aput-object v15, v5, v11

    const/4 v11, 0x1

    aget-object v15, v6, v11

    aput-object v15, v5, v11

    const/4 v9, 0x2

    aget-object v6, v6, v9

    aput-object v6, v5, v9

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v3, "PaymentInvoice"

    .line 868
    sget v4, Lorg/telegram/messenger/R$string;->PaymentInvoice:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_37

    :pswitch_29
    move/from16 v16, v43

    move-wide/from16 v54, v1

    move-wide/from16 v1, v49

    move-wide/from16 v49, v54

    const-string v3, "NotificationMessageGroupGameScored"

    .line 863
    sget v4, Lorg/telegram/messenger/R$string;->NotificationMessageGroupGameScored:I

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v15, 0x0

    aget-object v17, v6, v15

    aput-object v17, v11, v15

    const/4 v15, 0x1

    aget-object v18, v6, v15

    aput-object v18, v11, v15

    const/4 v9, 0x2

    aget-object v15, v6, v9

    aput-object v15, v11, v9

    const/4 v5, 0x3

    aget-object v6, v6, v5

    aput-object v6, v11, v5

    invoke-static {v3, v4, v11}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_34

    :pswitch_2a
    move/from16 v16, v43

    move-wide/from16 v54, v1

    move-wide/from16 v1, v49

    move-wide/from16 v49, v54

    const-string v3, "NotificationMessageGroupGame"

    .line 858
    sget v4, Lorg/telegram/messenger/R$string;->NotificationMessageGroupGame:I

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v11, 0x0

    aget-object v15, v6, v11

    aput-object v15, v5, v11

    const/4 v11, 0x1

    aget-object v15, v6, v11

    aput-object v15, v5, v11

    const/4 v9, 0x2

    aget-object v6, v6, v9

    aput-object v6, v5, v9

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v3, "AttachGame"

    .line 859
    sget v4, Lorg/telegram/messenger/R$string;->AttachGame:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_37

    :pswitch_2b
    move/from16 v16, v43

    move-wide/from16 v54, v1

    move-wide/from16 v1, v49

    move-wide/from16 v49, v54

    const-string v3, "NotificationMessageGroupGif"

    .line 853
    sget v4, Lorg/telegram/messenger/R$string;->NotificationMessageGroupGif:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v9, 0x0

    aget-object v11, v6, v9

    aput-object v11, v5, v9

    const/4 v9, 0x1

    aget-object v6, v6, v9

    aput-object v6, v5, v9

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v3, "AttachGif"

    .line 854
    sget v4, Lorg/telegram/messenger/R$string;->AttachGif:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_37

    :pswitch_2c
    move/from16 v16, v43

    move-wide/from16 v54, v1

    move-wide/from16 v1, v49

    move-wide/from16 v49, v54

    const-string v3, "NotificationMessageGroupLiveLocation"

    .line 848
    sget v4, Lorg/telegram/messenger/R$string;->NotificationMessageGroupLiveLocation:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v9, 0x0

    aget-object v11, v6, v9

    aput-object v11, v5, v9

    const/4 v9, 0x1

    aget-object v6, v6, v9

    aput-object v6, v5, v9

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v3, "AttachLiveLocation"

    .line 849
    sget v4, Lorg/telegram/messenger/R$string;->AttachLiveLocation:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_37

    :pswitch_2d
    move/from16 v16, v43

    move-wide/from16 v54, v1

    move-wide/from16 v1, v49

    move-wide/from16 v49, v54

    const-string v3, "NotificationMessageGroupMap"

    .line 843
    sget v4, Lorg/telegram/messenger/R$string;->NotificationMessageGroupMap:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v9, 0x0

    aget-object v11, v6, v9

    aput-object v11, v5, v9

    const/4 v9, 0x1

    aget-object v6, v6, v9

    aput-object v6, v5, v9

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v3, "AttachLocation"

    .line 844
    sget v4, Lorg/telegram/messenger/R$string;->AttachLocation:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_37

    :pswitch_2e
    move/from16 v16, v43

    move-wide/from16 v54, v1

    move-wide/from16 v1, v49

    move-wide/from16 v49, v54

    const-string v3, "NotificationMessageGroupPoll2"

    .line 838
    sget v4, Lorg/telegram/messenger/R$string;->NotificationMessageGroupPoll2:I

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v11, 0x0

    aget-object v15, v6, v11

    aput-object v15, v5, v11

    const/4 v11, 0x1

    aget-object v15, v6, v11

    aput-object v15, v5, v11

    const/4 v9, 0x2

    aget-object v6, v6, v9

    aput-object v6, v5, v9

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v3, "Poll"

    .line 839
    sget v4, Lorg/telegram/messenger/R$string;->Poll:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_37

    :pswitch_2f
    move/from16 v16, v43

    move-wide/from16 v54, v1

    move-wide/from16 v1, v49

    move-wide/from16 v49, v54

    const-string v3, "NotificationMessageGroupQuiz2"

    .line 833
    sget v4, Lorg/telegram/messenger/R$string;->NotificationMessageGroupQuiz2:I

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v11, 0x0

    aget-object v15, v6, v11

    aput-object v15, v5, v11

    const/4 v11, 0x1

    aget-object v15, v6, v11

    aput-object v15, v5, v11

    const/4 v9, 0x2

    aget-object v6, v6, v9

    aput-object v6, v5, v9

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v3, "PollQuiz"

    .line 834
    sget v4, Lorg/telegram/messenger/R$string;->PollQuiz:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_37

    :pswitch_30
    move/from16 v16, v43

    move-wide/from16 v54, v1

    move-wide/from16 v1, v49

    move-wide/from16 v49, v54

    const-string v3, "NotificationMessageGroupContact2"

    .line 828
    sget v4, Lorg/telegram/messenger/R$string;->NotificationMessageGroupContact2:I

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v11, 0x0

    aget-object v15, v6, v11

    aput-object v15, v5, v11

    const/4 v11, 0x1

    aget-object v15, v6, v11

    aput-object v15, v5, v11

    const/4 v9, 0x2

    aget-object v6, v6, v9

    aput-object v6, v5, v9

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v3, "AttachContact"

    .line 829
    sget v4, Lorg/telegram/messenger/R$string;->AttachContact:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_37

    :pswitch_31
    move/from16 v16, v43

    move-wide/from16 v54, v1

    move-wide/from16 v1, v49

    move-wide/from16 v49, v54

    const-string v3, "NotificationMessageGroupAudio"

    .line 823
    sget v4, Lorg/telegram/messenger/R$string;->NotificationMessageGroupAudio:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v9, 0x0

    aget-object v11, v6, v9

    aput-object v11, v5, v9

    const/4 v9, 0x1

    aget-object v6, v6, v9

    aput-object v6, v5, v9

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v3, "AttachAudio"

    .line 824
    sget v4, Lorg/telegram/messenger/R$string;->AttachAudio:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_37

    :pswitch_32
    move-object/from16 v5, v39

    move/from16 v11, v43

    move-object/from16 v15, v51

    move-wide/from16 v54, v1

    move-wide/from16 v1, v49

    move-wide/from16 v49, v54

    .line 813
    array-length v9, v6

    move/from16 v16, v11

    const/4 v11, 0x2

    if-le v9, v11, :cond_6a

    aget-object v21, v6, v11

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_6a

    const-string v11, "NotificationMessageGroupStickerEmoji"

    .line 814
    sget v9, Lorg/telegram/messenger/R$string;->NotificationMessageGroupStickerEmoji:I

    move-object/from16 v51, v15

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v17, 0x0

    aget-object v18, v6, v17

    aput-object v18, v15, v17

    const/16 v18, 0x1

    aget-object v24, v6, v18

    aput-object v24, v15, v18

    const/16 v18, 0x2

    aget-object v21, v6, v18

    aput-object v21, v15, v18

    invoke-static {v11, v9, v15}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 815
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v6, v18

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lorg/telegram/messenger/R$string;->AttachSticker:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_35

    :cond_6a
    move-object/from16 v51, v15

    const-string v11, "NotificationMessageGroupSticker"

    .line 817
    sget v15, Lorg/telegram/messenger/R$string;->NotificationMessageGroupSticker:I

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/16 v17, 0x0

    aget-object v18, v6, v17

    aput-object v18, v9, v17

    const/16 v18, 0x1

    aget-object v21, v6, v18

    aput-object v21, v9, v18

    invoke-static {v11, v15, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 818
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v6, v18

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lorg/telegram/messenger/R$string;->AttachSticker:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_35
    move-object/from16 v39, v5

    move/from16 v28, v7

    move-object/from16 v21, v9

    goto/16 :goto_38

    :pswitch_33
    move-object/from16 v5, v39

    move/from16 v16, v43

    move-wide/from16 v54, v1

    move-wide/from16 v1, v49

    move-wide/from16 v49, v54

    const-string v3, "NotificationMessageGroupDocument"

    .line 808
    sget v4, Lorg/telegram/messenger/R$string;->NotificationMessageGroupDocument:I

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    aget-object v15, v6, v11

    aput-object v15, v9, v11

    const/4 v11, 0x1

    aget-object v6, v6, v11

    aput-object v6, v9, v11

    invoke-static {v3, v4, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v3, "AttachDocument"

    .line 809
    sget v4, Lorg/telegram/messenger/R$string;->AttachDocument:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_36

    :pswitch_34
    move-object/from16 v5, v39

    move/from16 v16, v43

    move-wide/from16 v54, v1

    move-wide/from16 v1, v49

    move-wide/from16 v49, v54

    const-string v3, "NotificationMessageGroupRound"

    .line 803
    sget v4, Lorg/telegram/messenger/R$string;->NotificationMessageGroupRound:I

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    aget-object v15, v6, v11

    aput-object v15, v9, v11

    const/4 v11, 0x1

    aget-object v6, v6, v11

    aput-object v6, v9, v11

    invoke-static {v3, v4, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v3, "AttachRound"

    .line 804
    sget v4, Lorg/telegram/messenger/R$string;->AttachRound:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_36

    :pswitch_35
    move-object/from16 v5, v39

    move/from16 v16, v43

    move-wide/from16 v54, v1

    move-wide/from16 v1, v49

    move-wide/from16 v49, v54

    const-string v3, "NotificationMessageGroupVideo"

    .line 798
    sget v4, Lorg/telegram/messenger/R$string;->NotificationMessageGroupVideo:I

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    aget-object v15, v6, v11

    aput-object v15, v9, v11

    const/4 v11, 0x1

    aget-object v6, v6, v11

    aput-object v6, v9, v11

    invoke-static {v3, v4, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v3, "AttachVideo"

    .line 799
    sget v4, Lorg/telegram/messenger/R$string;->AttachVideo:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_36

    :pswitch_36
    move-object/from16 v5, v39

    move/from16 v16, v43

    move-wide/from16 v54, v1

    move-wide/from16 v1, v49

    move-wide/from16 v49, v54

    const-string v3, "NotificationMessageGroupPhoto"

    .line 793
    sget v4, Lorg/telegram/messenger/R$string;->NotificationMessageGroupPhoto:I

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    aget-object v15, v6, v11

    aput-object v15, v9, v11

    const/4 v11, 0x1

    aget-object v6, v6, v11

    aput-object v6, v9, v11

    invoke-static {v3, v4, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v3, "AttachPhoto"

    .line 794
    sget v4, Lorg/telegram/messenger/R$string;->AttachPhoto:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_36

    :pswitch_37
    move-object/from16 v5, v39

    move/from16 v16, v43

    move-wide/from16 v54, v1

    move-wide/from16 v1, v49

    move-wide/from16 v49, v54

    const-string v3, "NotificationChatStory"

    .line 788
    sget v4, Lorg/telegram/messenger/R$string;->NotificationChatStory:I

    const/4 v9, 0x1

    new-array v11, v9, [Ljava/lang/Object;

    const/4 v9, 0x0

    aget-object v6, v6, v9

    aput-object v6, v11, v9

    invoke-static {v3, v4, v11}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v3, "Story"

    .line 789
    sget v4, Lorg/telegram/messenger/R$string;->Story:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    :goto_36
    move-object/from16 v39, v5

    :goto_37
    move-object/from16 v21, v6

    move/from16 v28, v7

    move/from16 v15, v16

    move/from16 v7, v27

    move-object/from16 v38, v51

    goto/16 :goto_45

    :pswitch_38
    move-object/from16 v5, v39

    move/from16 v16, v43

    move-wide/from16 v54, v1

    move-wide/from16 v1, v49

    move-wide/from16 v49, v54

    const-string v3, "NotificationMessageGroupNoText"

    .line 783
    sget v4, Lorg/telegram/messenger/R$string;->NotificationMessageGroupNoText:I

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    aget-object v15, v6, v11

    aput-object v15, v9, v11

    const/4 v11, 0x1

    aget-object v6, v6, v11

    aput-object v6, v9, v11

    invoke-static {v3, v4, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v3, "Message"

    .line 784
    sget v4, Lorg/telegram/messenger/R$string;->Message:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_36

    :pswitch_39
    move-object/from16 v5, v39

    move/from16 v16, v43

    move-wide/from16 v54, v1

    move-wide/from16 v1, v49

    move-wide/from16 v49, v54

    const-string v4, "NotificationMessageGroupText"

    .line 778
    sget v11, Lorg/telegram/messenger/R$string;->NotificationMessageGroupText:I

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v15, 0x0

    aget-object v17, v6, v15

    aput-object v17, v3, v15

    const/4 v15, 0x1

    aget-object v18, v6, v15

    aput-object v18, v3, v15

    const/4 v9, 0x2

    aget-object v15, v6, v9

    aput-object v15, v3, v9

    invoke-static {v4, v11, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 779
    aget-object v6, v6, v9

    move-object/from16 v21, v3

    move-object/from16 v39, v5

    move/from16 v28, v7

    :goto_38
    move/from16 v15, v16

    move/from16 v7, v27

    move-object/from16 v38, v51

    goto/16 :goto_4d

    :pswitch_3a
    move-object/from16 v5, v39

    move/from16 v16, v43

    move-wide/from16 v54, v1

    move-wide/from16 v1, v49

    move-wide/from16 v49, v54

    const-string v4, "NotificationMessageChatGiveaway"

    .line 773
    sget v11, Lorg/telegram/messenger/R$string;->NotificationMessageChatGiveaway:I

    const/4 v15, 0x4

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v17, 0x0

    aget-object v18, v6, v17

    aput-object v18, v15, v17

    const/16 v18, 0x1

    aget-object v21, v6, v18

    aput-object v21, v15, v18

    const/4 v9, 0x2

    aget-object v18, v6, v9

    aput-object v18, v15, v9

    const/4 v3, 0x3

    aget-object v6, v6, v3

    aput-object v6, v15, v3

    invoke-static {v4, v11, v15}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v3, "BoostingGiveaway"

    .line 774
    sget v4, Lorg/telegram/messenger/R$string;->BoostingGiveaway:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_36

    :pswitch_3b
    move-object/from16 v5, v39

    move/from16 v16, v43

    move-wide/from16 v54, v1

    move-wide/from16 v1, v49

    move-wide/from16 v49, v54

    const-string v3, "ChannelMessageAlbum"

    .line 768
    sget v4, Lorg/telegram/messenger/R$string;->ChannelMessageAlbum:I

    const/4 v9, 0x1

    new-array v11, v9, [Ljava/lang/Object;

    const/4 v9, 0x0

    aget-object v6, v6, v9

    aput-object v6, v11, v9

    invoke-static {v3, v4, v11}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v21, v3

    move-object/from16 v39, v5

    :goto_39
    move/from16 v28, v7

    move/from16 v15, v16

    move/from16 v7, v27

    move-object/from16 v38, v51

    goto/16 :goto_40

    :pswitch_3c
    move/from16 v11, v29

    move-object/from16 v5, v39

    move/from16 v16, v43

    move-object/from16 v3, v51

    move-wide/from16 v54, v1

    move-wide/from16 v1, v49

    move-wide/from16 v49, v54

    .line 763
    sget v4, Lorg/telegram/messenger/R$string;->ChannelMessageFew:I

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    move-object/from16 v38, v3

    const/4 v3, 0x0

    aget-object v17, v6, v3

    aput-object v17, v9, v3

    const-string v3, "Files"

    const/16 v18, 0x1

    aget-object v6, v6, v18

    invoke-static {v6}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object/from16 v39, v5

    move/from16 v29, v11

    const/4 v11, 0x0

    new-array v5, v11, [Ljava/lang/Object;

    invoke-static {v3, v6, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v9, v18

    invoke-static {v15, v4, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_41

    :pswitch_3d
    move/from16 v16, v43

    move-object/from16 v38, v51

    move-wide/from16 v54, v1

    move-wide/from16 v1, v49

    move-wide/from16 v49, v54

    .line 758
    sget v3, Lorg/telegram/messenger/R$string;->ChannelMessageFew:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aget-object v9, v6, v5

    aput-object v9, v4, v5

    const-string v9, "MusicFiles"

    const/4 v11, 0x1

    aget-object v6, v6, v11

    invoke-static {v6}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    new-array v11, v5, [Ljava/lang/Object;

    invoke-static {v9, v6, v11}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-static {v15, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_41

    :pswitch_3e
    move/from16 v16, v43

    move-object/from16 v38, v51

    move-wide/from16 v54, v1

    move-wide/from16 v1, v49

    move-wide/from16 v49, v54

    .line 753
    sget v3, Lorg/telegram/messenger/R$string;->ChannelMessageFew:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aget-object v9, v6, v5

    aput-object v9, v4, v5

    const-string v9, "Videos"

    const/4 v11, 0x1

    aget-object v6, v6, v11

    invoke-static {v6}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    new-array v11, v5, [Ljava/lang/Object;

    invoke-static {v9, v6, v11}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-static {v15, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_41

    :pswitch_3f
    move/from16 v16, v43

    move-object/from16 v38, v51

    move-wide/from16 v54, v1

    move-wide/from16 v1, v49

    move-wide/from16 v49, v54

    .line 748
    sget v3, Lorg/telegram/messenger/R$string;->ChannelMessageFew:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aget-object v9, v6, v5

    aput-object v9, v4, v5

    const-string v9, "Photos"

    const/4 v11, 0x1

    aget-object v6, v6, v11

    invoke-static {v6}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    new-array v11, v5, [Ljava/lang/Object;

    invoke-static {v9, v6, v11}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-static {v15, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_41

    :pswitch_40
    move/from16 v16, v43

    move-object/from16 v38, v51

    move-wide/from16 v54, v1

    move-wide/from16 v1, v49

    move-wide/from16 v49, v54

    .line 743
    sget v3, Lorg/telegram/messenger/R$string;->ChannelMessageFew:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aget-object v9, v6, v5

    aput-object v9, v4, v5

    const-string v9, "ForwardedMessageCount"

    const/4 v11, 0x1

    aget-object v6, v6, v11

    invoke-static {v6}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    new-array v11, v5, [Ljava/lang/Object;

    invoke-static {v9, v6, v11}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-static {v15, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_41

    :pswitch_41
    move/from16 v16, v43

    move-object/from16 v38, v51

    move-wide/from16 v54, v1

    move-wide/from16 v1, v49

    move-wide/from16 v49, v54

    const-string v3, "NotificationMessageGame"

    .line 738
    sget v4, Lorg/telegram/messenger/R$string;->NotificationMessageGame:I

    const/4 v5, 0x1

    new-array v9, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aget-object v6, v6, v5

    aput-object v6, v9, v5

    invoke-static {v3, v4, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v3, "AttachGame"

    .line 739
    sget v4, Lorg/telegram/messenger/R$string;->AttachGame:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3b

    :pswitch_42
    move/from16 v16, v43

    move-object/from16 v38, v51

    move-wide/from16 v54, v1

    move-wide/from16 v1, v49

    move-wide/from16 v49, v54

    const-string v3, "ChannelMessageGIF"

    .line 733
    sget v4, Lorg/telegram/messenger/R$string;->ChannelMessageGIF:I

    const/4 v5, 0x1

    new-array v9, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aget-object v6, v6, v5

    aput-object v6, v9, v5

    invoke-static {v3, v4, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v3, "AttachGif"

    .line 734
    sget v4, Lorg/telegram/messenger/R$string;->AttachGif:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3b

    :pswitch_43
    move/from16 v16, v43

    move-object/from16 v38, v51

    move-wide/from16 v54, v1

    move-wide/from16 v1, v49

    move-wide/from16 v49, v54

    const-string v3, "ChannelMessageLiveLocation"

    .line 728
    sget v4, Lorg/telegram/messenger/R$string;->ChannelMessageLiveLocation:I

    const/4 v5, 0x1

    new-array v9, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aget-object v6, v6, v5

    aput-object v6, v9, v5

    invoke-static {v3, v4, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v3, "AttachLiveLocation"

    .line 729
    sget v4, Lorg/telegram/messenger/R$string;->AttachLiveLocation:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3b

    :pswitch_44
    move/from16 v16, v43

    move-object/from16 v38, v51

    move-wide/from16 v54, v1

    move-wide/from16 v1, v49

    move-wide/from16 v49, v54

    const-string v3, "ChannelMessageMap"

    .line 723
    sget v4, Lorg/telegram/messenger/R$string;->ChannelMessageMap:I

    const/4 v5, 0x1

    new-array v9, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aget-object v6, v6, v5

    aput-object v6, v9, v5

    invoke-static {v3, v4, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v3, "AttachLocation"

    .line 724
    sget v4, Lorg/telegram/messenger/R$string;->AttachLocation:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3b

    :pswitch_45
    move/from16 v16, v43

    move-object/from16 v38, v51

    move-wide/from16 v54, v1

    move-wide/from16 v1, v49

    move-wide/from16 v49, v54

    const-string v3, "ChannelMessagePoll2"

    .line 718
    sget v4, Lorg/telegram/messenger/R$string;->ChannelMessagePoll2:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v9, 0x0

    aget-object v11, v6, v9

    aput-object v11, v5, v9

    const/4 v9, 0x1

    aget-object v6, v6, v9

    aput-object v6, v5, v9

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v3, "Poll"

    .line 719
    sget v4, Lorg/telegram/messenger/R$string;->Poll:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3b

    :pswitch_46
    move/from16 v16, v43

    move-object/from16 v38, v51

    move-wide/from16 v54, v1

    move-wide/from16 v1, v49

    move-wide/from16 v49, v54

    const-string v3, "ChannelMessageQuiz2"

    .line 713
    sget v4, Lorg/telegram/messenger/R$string;->ChannelMessageQuiz2:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v9, 0x0

    aget-object v11, v6, v9

    aput-object v11, v5, v9

    const/4 v9, 0x1

    aget-object v6, v6, v9

    aput-object v6, v5, v9

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v3, "QuizPoll"

    .line 714
    sget v4, Lorg/telegram/messenger/R$string;->QuizPoll:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3b

    :pswitch_47
    move/from16 v16, v43

    move-object/from16 v38, v51

    move-wide/from16 v54, v1

    move-wide/from16 v1, v49

    move-wide/from16 v49, v54

    const-string v3, "ChannelMessageContact2"

    .line 708
    sget v4, Lorg/telegram/messenger/R$string;->ChannelMessageContact2:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v9, 0x0

    aget-object v11, v6, v9

    aput-object v11, v5, v9

    const/4 v9, 0x1

    aget-object v6, v6, v9

    aput-object v6, v5, v9

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v3, "AttachContact"

    .line 709
    sget v4, Lorg/telegram/messenger/R$string;->AttachContact:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3b

    :pswitch_48
    move/from16 v16, v43

    move-object/from16 v38, v51

    move-wide/from16 v54, v1

    move-wide/from16 v1, v49

    move-wide/from16 v49, v54

    const-string v3, "ChannelMessageAudio"

    .line 703
    sget v4, Lorg/telegram/messenger/R$string;->ChannelMessageAudio:I

    const/4 v5, 0x1

    new-array v9, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aget-object v6, v6, v5

    aput-object v6, v9, v5

    invoke-static {v3, v4, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v3, "AttachAudio"

    .line 704
    sget v4, Lorg/telegram/messenger/R$string;->AttachAudio:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3b

    :pswitch_49
    move/from16 v16, v43

    move-object/from16 v5, v51

    move-wide/from16 v54, v1

    move-wide/from16 v1, v49

    move-wide/from16 v49, v54

    .line 693
    array-length v11, v6

    const/4 v15, 0x1

    if-le v11, v15, :cond_6b

    aget-object v11, v6, v15

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_6b

    const-string v11, "ChannelMessageStickerEmoji"

    .line 694
    sget v15, Lorg/telegram/messenger/R$string;->ChannelMessageStickerEmoji:I

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/16 v17, 0x0

    aget-object v18, v6, v17

    aput-object v18, v9, v17

    const/16 v18, 0x1

    aget-object v21, v6, v18

    aput-object v21, v9, v18

    invoke-static {v11, v15, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 695
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v6, v18

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lorg/telegram/messenger/R$string;->AttachSticker:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v38, v5

    move/from16 v28, v7

    move-object/from16 v21, v9

    move/from16 v15, v16

    goto/16 :goto_42

    :cond_6b
    const-string v4, "ChannelMessageSticker"

    .line 697
    sget v9, Lorg/telegram/messenger/R$string;->ChannelMessageSticker:I

    const/4 v11, 0x1

    new-array v15, v11, [Ljava/lang/Object;

    const/4 v11, 0x0

    aget-object v6, v6, v11

    aput-object v6, v15, v11

    invoke-static {v4, v9, v15}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 698
    sget v4, Lorg/telegram/messenger/R$string;->AttachSticker:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3a

    :pswitch_4a
    move/from16 v16, v43

    move-object/from16 v5, v51

    move-wide/from16 v54, v1

    move-wide/from16 v1, v49

    move-wide/from16 v49, v54

    const-string v3, "ChannelMessageDocument"

    .line 688
    sget v4, Lorg/telegram/messenger/R$string;->ChannelMessageDocument:I

    const/4 v9, 0x1

    new-array v11, v9, [Ljava/lang/Object;

    const/4 v9, 0x0

    aget-object v6, v6, v9

    aput-object v6, v11, v9

    invoke-static {v3, v4, v11}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v3, "AttachDocument"

    .line 689
    sget v4, Lorg/telegram/messenger/R$string;->AttachDocument:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3a

    :pswitch_4b
    move/from16 v16, v43

    move-object/from16 v5, v51

    move-wide/from16 v54, v1

    move-wide/from16 v1, v49

    move-wide/from16 v49, v54

    const-string v3, "ChannelMessageRound"

    .line 683
    sget v4, Lorg/telegram/messenger/R$string;->ChannelMessageRound:I

    const/4 v9, 0x1

    new-array v11, v9, [Ljava/lang/Object;

    const/4 v9, 0x0

    aget-object v6, v6, v9

    aput-object v6, v11, v9

    invoke-static {v3, v4, v11}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v3, "AttachRound"

    .line 684
    sget v4, Lorg/telegram/messenger/R$string;->AttachRound:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3a

    :pswitch_4c
    move/from16 v16, v43

    move-object/from16 v5, v51

    move-wide/from16 v54, v1

    move-wide/from16 v1, v49

    move-wide/from16 v49, v54

    const-string v3, "ChannelMessageVideo"

    .line 678
    sget v4, Lorg/telegram/messenger/R$string;->ChannelMessageVideo:I

    const/4 v9, 0x1

    new-array v11, v9, [Ljava/lang/Object;

    const/4 v9, 0x0

    aget-object v6, v6, v9

    aput-object v6, v11, v9

    invoke-static {v3, v4, v11}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v3, "AttachVideo"

    .line 679
    sget v4, Lorg/telegram/messenger/R$string;->AttachVideo:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_3a

    :pswitch_4d
    move/from16 v16, v43

    move-object/from16 v5, v51

    move-wide/from16 v54, v1

    move-wide/from16 v1, v49

    move-wide/from16 v49, v54

    const-string v3, "ChannelMessagePhoto"

    .line 673
    sget v4, Lorg/telegram/messenger/R$string;->ChannelMessagePhoto:I

    const/4 v9, 0x1

    new-array v11, v9, [Ljava/lang/Object;

    const/4 v9, 0x0

    aget-object v6, v6, v9

    aput-object v6, v11, v9

    invoke-static {v3, v4, v11}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v3, "AttachPhoto"

    .line 674
    sget v4, Lorg/telegram/messenger/R$string;->AttachPhoto:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_3a

    :pswitch_4e
    move/from16 v16, v43

    move-object/from16 v5, v51

    move-wide/from16 v54, v1

    move-wide/from16 v1, v49

    move-wide/from16 v49, v54

    const-string v3, "NotificationChannelStory"

    .line 668
    sget v4, Lorg/telegram/messenger/R$string;->NotificationChannelStory:I

    const/4 v9, 0x1

    new-array v11, v9, [Ljava/lang/Object;

    const/4 v9, 0x0

    aget-object v6, v6, v9

    aput-object v6, v11, v9

    invoke-static {v3, v4, v11}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v3, "Story"

    .line 669
    sget v4, Lorg/telegram/messenger/R$string;->Story:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_3a

    :pswitch_4f
    move/from16 v16, v43

    move-object/from16 v5, v51

    move-wide/from16 v54, v1

    move-wide/from16 v1, v49

    move-wide/from16 v49, v54

    const-string v3, "ChannelMessageNoText"

    .line 663
    sget v4, Lorg/telegram/messenger/R$string;->ChannelMessageNoText:I

    const/4 v9, 0x1

    new-array v11, v9, [Ljava/lang/Object;

    const/4 v9, 0x0

    aget-object v6, v6, v9

    aput-object v6, v11, v9

    invoke-static {v3, v4, v11}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v3, "Message"

    .line 664
    sget v4, Lorg/telegram/messenger/R$string;->Message:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    :goto_3a
    move-object/from16 v38, v5

    :goto_3b
    move-object/from16 v21, v6

    move/from16 v28, v7

    move/from16 v15, v16

    goto/16 :goto_44

    :pswitch_50
    move/from16 v16, v43

    move-object/from16 v5, v51

    move-wide/from16 v54, v1

    move-wide/from16 v1, v49

    move-wide/from16 v49, v54

    const-string v4, "NotificationMessageChannelGiveaway"

    .line 658
    sget v11, Lorg/telegram/messenger/R$string;->NotificationMessageChannelGiveaway:I

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v15, 0x0

    aget-object v17, v6, v15

    aput-object v17, v3, v15

    const/4 v15, 0x1

    aget-object v18, v6, v15

    aput-object v18, v3, v15

    const/4 v9, 0x2

    aget-object v6, v6, v9

    aput-object v6, v3, v9

    invoke-static {v4, v11, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v3, "BoostingGiveaway"

    .line 659
    sget v4, Lorg/telegram/messenger/R$string;->BoostingGiveaway:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_3a

    :pswitch_51
    move/from16 v16, v43

    move-object/from16 v5, v51

    move-wide/from16 v54, v1

    move-wide/from16 v1, v49

    move-wide/from16 v49, v54

    const-string v3, "NotificationMessageAlbum"

    .line 653
    sget v4, Lorg/telegram/messenger/R$string;->NotificationMessageAlbum:I

    const/4 v9, 0x1

    new-array v11, v9, [Ljava/lang/Object;

    const/4 v9, 0x0

    aget-object v6, v6, v9

    aput-object v6, v11, v9

    invoke-static {v3, v4, v11}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_3c
    move-object/from16 v21, v3

    move-object/from16 v38, v5

    :goto_3d
    move/from16 v28, v7

    :goto_3e
    move/from16 v15, v16

    :goto_3f
    move/from16 v7, v27

    :goto_40
    const/4 v6, 0x0

    const/16 v24, 0x1

    goto/16 :goto_4e

    :pswitch_52
    move/from16 v16, v43

    move-object/from16 v5, v51

    move-wide/from16 v54, v1

    move-wide/from16 v1, v49

    move-wide/from16 v49, v54

    const-string v4, "NotificationMessageGiveaway"

    .line 648
    sget v11, Lorg/telegram/messenger/R$string;->NotificationMessageGiveaway:I

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v15, 0x0

    aget-object v17, v6, v15

    aput-object v17, v3, v15

    const/4 v15, 0x1

    aget-object v18, v6, v15

    aput-object v18, v3, v15

    const/4 v9, 0x2

    aget-object v6, v6, v9

    aput-object v6, v3, v9

    invoke-static {v4, v11, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3c

    :pswitch_53
    move/from16 v16, v43

    move-object/from16 v5, v51

    move-wide/from16 v54, v1

    move-wide/from16 v1, v49

    move-wide/from16 v49, v54

    const-string v3, "NotificationMessageGiftCode"

    .line 643
    sget v4, Lorg/telegram/messenger/R$string;->NotificationMessageGiftCode:I

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    aget-object v15, v6, v11

    aput-object v15, v9, v11

    const-string v15, "Months"

    const/16 v18, 0x1

    aget-object v6, v6, v18

    invoke-static {v6}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object/from16 v38, v5

    new-array v5, v11, [Ljava/lang/Object;

    invoke-static {v15, v6, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v9, v18

    invoke-static {v3, v4, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_41

    :pswitch_54
    move/from16 v16, v43

    move-object/from16 v38, v51

    move-wide/from16 v54, v1

    move-wide/from16 v1, v49

    move-wide/from16 v49, v54

    .line 638
    sget v4, Lorg/telegram/messenger/R$string;->NotificationMessageFew:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aget-object v11, v6, v5

    aput-object v11, v3, v5

    const-string v11, "Files"

    const/4 v15, 0x1

    aget-object v6, v6, v15

    invoke-static {v6}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    new-array v15, v5, [Ljava/lang/Object;

    invoke-static {v11, v6, v15}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v3, v6

    invoke-static {v9, v4, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_41

    :pswitch_55
    move/from16 v16, v43

    move-object/from16 v38, v51

    move-wide/from16 v54, v1

    move-wide/from16 v1, v49

    move-wide/from16 v49, v54

    .line 633
    sget v4, Lorg/telegram/messenger/R$string;->NotificationMessageFew:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aget-object v11, v6, v5

    aput-object v11, v3, v5

    const-string v11, "MusicFiles"

    const/4 v15, 0x1

    aget-object v6, v6, v15

    invoke-static {v6}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    new-array v15, v5, [Ljava/lang/Object;

    invoke-static {v11, v6, v15}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v3, v6

    invoke-static {v9, v4, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_41

    :pswitch_56
    move/from16 v16, v43

    move-object/from16 v38, v51

    move-wide/from16 v54, v1

    move-wide/from16 v1, v49

    move-wide/from16 v49, v54

    .line 628
    sget v4, Lorg/telegram/messenger/R$string;->NotificationMessageFew:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aget-object v11, v6, v5

    aput-object v11, v3, v5

    const-string v11, "Videos"

    const/4 v15, 0x1

    aget-object v6, v6, v15

    invoke-static {v6}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    new-array v15, v5, [Ljava/lang/Object;

    invoke-static {v11, v6, v15}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v3, v6

    invoke-static {v9, v4, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_41

    :pswitch_57
    move/from16 v16, v43

    move-object/from16 v38, v51

    move-wide/from16 v54, v1

    move-wide/from16 v1, v49

    move-wide/from16 v49, v54

    .line 623
    sget v4, Lorg/telegram/messenger/R$string;->NotificationMessageFew:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aget-object v11, v6, v5

    aput-object v11, v3, v5

    const-string v11, "Photos"

    const/4 v15, 0x1

    aget-object v6, v6, v15

    invoke-static {v6}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    new-array v15, v5, [Ljava/lang/Object;

    invoke-static {v11, v6, v15}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v3, v6

    invoke-static {v9, v4, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_41
    move-object/from16 v21, v3

    goto/16 :goto_3d

    :pswitch_58
    move-object/from16 v11, v28

    move/from16 v5, v29

    move/from16 v15, v43

    move-object/from16 v38, v51

    move-wide/from16 v54, v1

    move-wide/from16 v1, v49

    move-wide/from16 v49, v54

    const-string v3, "NotificationMessageForwardFew"

    .line 618
    sget v4, Lorg/telegram/messenger/R$string;->NotificationMessageForwardFew:I

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    move/from16 v29, v5

    const/4 v5, 0x0

    aget-object v16, v6, v5

    aput-object v16, v9, v5

    const/16 v16, 0x1

    aget-object v6, v6, v16

    invoke-static {v6}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move/from16 v28, v7

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v11, v6, v7}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v9, v16

    invoke-static {v3, v4, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v21, v3

    goto/16 :goto_3f

    :pswitch_59
    move/from16 v28, v7

    move/from16 v15, v43

    move-object/from16 v38, v51

    move-wide/from16 v54, v1

    move-wide/from16 v1, v49

    move-wide/from16 v49, v54

    const-string v3, "NotificationMessageInvoice"

    .line 613
    sget v4, Lorg/telegram/messenger/R$string;->NotificationMessageInvoice:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v9, v6, v7

    aput-object v9, v5, v7

    const/4 v7, 0x1

    aget-object v6, v6, v7

    aput-object v6, v5, v7

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v3, "PaymentInvoice"

    .line 614
    sget v4, Lorg/telegram/messenger/R$string;->PaymentInvoice:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_43

    :pswitch_5a
    move/from16 v28, v7

    move/from16 v15, v43

    move-object/from16 v38, v51

    move-wide/from16 v54, v1

    move-wide/from16 v1, v49

    move-wide/from16 v49, v54

    const-string v4, "NotificationMessageGameScored"

    .line 609
    sget v5, Lorg/telegram/messenger/R$string;->NotificationMessageGameScored:I

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v11, v6, v7

    aput-object v11, v3, v7

    const/4 v7, 0x1

    aget-object v11, v6, v7

    aput-object v11, v3, v7

    const/4 v7, 0x2

    aget-object v6, v6, v7

    aput-object v6, v3, v7

    invoke-static {v4, v5, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_4a

    :pswitch_5b
    move/from16 v28, v7

    move/from16 v15, v43

    move-object/from16 v38, v51

    move-wide/from16 v54, v1

    move-wide/from16 v1, v49

    move-wide/from16 v49, v54

    const-string v3, "NotificationMessageGame"

    .line 603
    sget v4, Lorg/telegram/messenger/R$string;->NotificationMessageGame:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v9, v6, v7

    aput-object v9, v5, v7

    const/4 v7, 0x1

    aget-object v6, v6, v7

    aput-object v6, v5, v7

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v3, "AttachGame"

    .line 604
    sget v4, Lorg/telegram/messenger/R$string;->AttachGame:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_43

    :pswitch_5c
    move/from16 v28, v7

    move/from16 v15, v43

    move-object/from16 v38, v51

    move-wide/from16 v54, v1

    move-wide/from16 v1, v49

    move-wide/from16 v49, v54

    const-string v3, "NotificationMessageGif"

    .line 598
    sget v4, Lorg/telegram/messenger/R$string;->NotificationMessageGif:I

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aget-object v6, v6, v5

    aput-object v6, v7, v5

    invoke-static {v3, v4, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v3, "AttachGif"

    .line 599
    sget v4, Lorg/telegram/messenger/R$string;->AttachGif:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_43

    :pswitch_5d
    move/from16 v28, v7

    move/from16 v15, v43

    move-object/from16 v38, v51

    move-wide/from16 v54, v1

    move-wide/from16 v1, v49

    move-wide/from16 v49, v54

    const-string v3, "NotificationMessageLiveLocation"

    .line 593
    sget v4, Lorg/telegram/messenger/R$string;->NotificationMessageLiveLocation:I

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aget-object v6, v6, v5

    aput-object v6, v7, v5

    invoke-static {v3, v4, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v3, "AttachLiveLocation"

    .line 594
    sget v4, Lorg/telegram/messenger/R$string;->AttachLiveLocation:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_43

    :pswitch_5e
    move/from16 v28, v7

    move/from16 v15, v43

    move-object/from16 v38, v51

    move-wide/from16 v54, v1

    move-wide/from16 v1, v49

    move-wide/from16 v49, v54

    const-string v3, "NotificationMessageMap"

    .line 588
    sget v4, Lorg/telegram/messenger/R$string;->NotificationMessageMap:I

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aget-object v6, v6, v5

    aput-object v6, v7, v5

    invoke-static {v3, v4, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v3, "AttachLocation"

    .line 589
    sget v4, Lorg/telegram/messenger/R$string;->AttachLocation:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_43

    :pswitch_5f
    move/from16 v28, v7

    move/from16 v15, v43

    move-object/from16 v38, v51

    move-wide/from16 v54, v1

    move-wide/from16 v1, v49

    move-wide/from16 v49, v54

    const-string v3, "NotificationMessagePoll2"

    .line 583
    sget v4, Lorg/telegram/messenger/R$string;->NotificationMessagePoll2:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v9, v6, v7

    aput-object v9, v5, v7

    const/4 v7, 0x1

    aget-object v6, v6, v7

    aput-object v6, v5, v7

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v3, "Poll"

    .line 584
    sget v4, Lorg/telegram/messenger/R$string;->Poll:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_43

    :pswitch_60
    move/from16 v28, v7

    move/from16 v15, v43

    move-object/from16 v38, v51

    move-wide/from16 v54, v1

    move-wide/from16 v1, v49

    move-wide/from16 v49, v54

    const-string v3, "NotificationMessageQuiz2"

    .line 578
    sget v4, Lorg/telegram/messenger/R$string;->NotificationMessageQuiz2:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v9, v6, v7

    aput-object v9, v5, v7

    const/4 v7, 0x1

    aget-object v6, v6, v7

    aput-object v6, v5, v7

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v3, "QuizPoll"

    .line 579
    sget v4, Lorg/telegram/messenger/R$string;->QuizPoll:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_43

    :pswitch_61
    move/from16 v28, v7

    move/from16 v15, v43

    move-object/from16 v38, v51

    move-wide/from16 v54, v1

    move-wide/from16 v1, v49

    move-wide/from16 v49, v54

    const-string v3, "NotificationMessageContact2"

    .line 573
    sget v4, Lorg/telegram/messenger/R$string;->NotificationMessageContact2:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v9, v6, v7

    aput-object v9, v5, v7

    const/4 v7, 0x1

    aget-object v6, v6, v7

    aput-object v6, v5, v7

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v3, "AttachContact"

    .line 574
    sget v4, Lorg/telegram/messenger/R$string;->AttachContact:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_43

    :pswitch_62
    move/from16 v28, v7

    move/from16 v15, v43

    move-object/from16 v38, v51

    move-wide/from16 v54, v1

    move-wide/from16 v1, v49

    move-wide/from16 v49, v54

    const-string v3, "NotificationMessageAudio"

    .line 568
    sget v4, Lorg/telegram/messenger/R$string;->NotificationMessageAudio:I

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aget-object v6, v6, v5

    aput-object v6, v7, v5

    invoke-static {v3, v4, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v3, "AttachAudio"

    .line 569
    sget v4, Lorg/telegram/messenger/R$string;->AttachAudio:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_43

    :pswitch_63
    move/from16 v28, v7

    move/from16 v15, v43

    move-object/from16 v38, v51

    move-wide/from16 v54, v1

    move-wide/from16 v1, v49

    move-wide/from16 v49, v54

    .line 558
    array-length v5, v6

    const/4 v7, 0x1

    if-le v5, v7, :cond_6c

    aget-object v5, v6, v7

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6c

    const-string v5, "NotificationMessageStickerEmoji"

    .line 559
    sget v7, Lorg/telegram/messenger/R$string;->NotificationMessageStickerEmoji:I

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    aget-object v16, v6, v11

    aput-object v16, v9, v11

    const/4 v11, 0x1

    aget-object v16, v6, v11

    aput-object v16, v9, v11

    invoke-static {v5, v7, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 560
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v6, v11

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lorg/telegram/messenger/R$string;->AttachSticker:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v21, v5

    goto/16 :goto_42

    :cond_6c
    const-string v4, "NotificationMessageSticker"

    .line 562
    sget v5, Lorg/telegram/messenger/R$string;->NotificationMessageSticker:I

    const/4 v7, 0x1

    new-array v9, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    aput-object v6, v9, v7

    invoke-static {v4, v5, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 563
    sget v4, Lorg/telegram/messenger/R$string;->AttachSticker:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_43

    :pswitch_64
    move/from16 v28, v7

    move/from16 v15, v43

    move-object/from16 v38, v51

    move-wide/from16 v54, v1

    move-wide/from16 v1, v49

    move-wide/from16 v49, v54

    const-string v3, "NotificationMessageDocument"

    .line 553
    sget v4, Lorg/telegram/messenger/R$string;->NotificationMessageDocument:I

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aget-object v6, v6, v5

    aput-object v6, v7, v5

    invoke-static {v3, v4, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v3, "AttachDocument"

    .line 554
    sget v4, Lorg/telegram/messenger/R$string;->AttachDocument:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_43

    :pswitch_65
    move/from16 v28, v7

    move/from16 v15, v43

    move-object/from16 v38, v51

    move-wide/from16 v54, v1

    move-wide/from16 v1, v49

    move-wide/from16 v49, v54

    const-string v3, "NotificationMessageRound"

    .line 548
    sget v4, Lorg/telegram/messenger/R$string;->NotificationMessageRound:I

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aget-object v6, v6, v5

    aput-object v6, v7, v5

    invoke-static {v3, v4, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v3, "AttachRound"

    .line 549
    sget v4, Lorg/telegram/messenger/R$string;->AttachRound:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_43

    :pswitch_66
    move/from16 v28, v7

    move/from16 v15, v43

    move-object/from16 v38, v51

    move-wide/from16 v54, v1

    move-wide/from16 v1, v49

    move-wide/from16 v49, v54

    const-string v3, "ActionTakeScreenshoot"

    .line 544
    sget v4, Lorg/telegram/messenger/R$string;->ActionTakeScreenshoot:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "un1"

    const/4 v5, 0x0

    aget-object v6, v6, v5

    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_4a

    :pswitch_67
    move/from16 v28, v7

    move/from16 v15, v43

    move-object/from16 v38, v51

    move-wide/from16 v54, v1

    move-wide/from16 v1, v49

    move-wide/from16 v49, v54

    const-string v3, "NotificationMessageSDVideo"

    .line 539
    sget v4, Lorg/telegram/messenger/R$string;->NotificationMessageSDVideo:I

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aget-object v6, v6, v5

    aput-object v6, v7, v5

    invoke-static {v3, v4, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v3, "AttachDestructingVideo"

    .line 540
    sget v4, Lorg/telegram/messenger/R$string;->AttachDestructingVideo:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_43

    :pswitch_68
    move/from16 v28, v7

    move/from16 v15, v43

    move-object/from16 v38, v51

    move-wide/from16 v54, v1

    move-wide/from16 v1, v49

    move-wide/from16 v49, v54

    const-string v3, "NotificationMessageVideo"

    .line 534
    sget v4, Lorg/telegram/messenger/R$string;->NotificationMessageVideo:I

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aget-object v6, v6, v5

    aput-object v6, v7, v5

    invoke-static {v3, v4, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v3, "AttachVideo"

    .line 535
    sget v4, Lorg/telegram/messenger/R$string;->AttachVideo:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_43

    :pswitch_69
    move/from16 v28, v7

    move/from16 v15, v43

    move-object/from16 v38, v51

    move-wide/from16 v54, v1

    move-wide/from16 v1, v49

    move-wide/from16 v49, v54

    const-string v3, "NotificationMessageSDPhoto"

    .line 529
    sget v4, Lorg/telegram/messenger/R$string;->NotificationMessageSDPhoto:I

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aget-object v6, v6, v5

    aput-object v6, v7, v5

    invoke-static {v3, v4, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v3, "AttachDestructingPhoto"

    .line 530
    sget v4, Lorg/telegram/messenger/R$string;->AttachDestructingPhoto:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_43

    :pswitch_6a
    move/from16 v28, v7

    move/from16 v15, v43

    move-object/from16 v38, v51

    move-wide/from16 v54, v1

    move-wide/from16 v1, v49

    move-wide/from16 v49, v54

    const-string v3, "NotificationMessagePhoto"

    .line 524
    sget v4, Lorg/telegram/messenger/R$string;->NotificationMessagePhoto:I

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aget-object v6, v6, v5

    aput-object v6, v7, v5

    invoke-static {v3, v4, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v3, "AttachPhoto"

    .line 525
    sget v4, Lorg/telegram/messenger/R$string;->AttachPhoto:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_43

    :pswitch_6b
    move/from16 v28, v7

    move/from16 v15, v43

    move-object/from16 v38, v51

    move-wide/from16 v54, v1

    move-wide/from16 v1, v49

    move-wide/from16 v49, v54

    const-string v3, "StoryNotificationMention"

    .line 519
    sget v4, Lorg/telegram/messenger/R$string;->StoryNotificationMention:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_4a

    :pswitch_6c
    move/from16 v28, v7

    move/from16 v15, v43

    move-object/from16 v38, v51

    move-wide/from16 v54, v1

    move-wide/from16 v1, v49

    move-wide/from16 v49, v54

    const-string v3, "NotificationStory"

    .line 514
    sget v4, Lorg/telegram/messenger/R$string;->NotificationStory:I

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aget-object v6, v6, v5

    aput-object v6, v7, v5

    invoke-static {v3, v4, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v3, "Story"

    .line 515
    sget v4, Lorg/telegram/messenger/R$string;->Story:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_43

    :pswitch_6d
    move/from16 v28, v7

    move/from16 v15, v43

    move-object/from16 v38, v51

    move-wide/from16 v54, v1

    move-wide/from16 v1, v49

    move-wide/from16 v49, v54

    const-string v3, "NotificationMessageNoText"

    .line 509
    sget v4, Lorg/telegram/messenger/R$string;->NotificationMessageNoText:I

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aget-object v6, v6, v5

    aput-object v6, v7, v5

    invoke-static {v3, v4, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v3, "Message"

    .line 510
    sget v4, Lorg/telegram/messenger/R$string;->Message:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_43

    :pswitch_6e
    move/from16 v28, v7

    move/from16 v15, v43

    move-object/from16 v38, v51

    move-wide/from16 v54, v1

    move-wide/from16 v1, v49

    move-wide/from16 v49, v54

    const-string v3, "NotificationMessageText"

    .line 504
    sget v4, Lorg/telegram/messenger/R$string;->NotificationMessageText:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v9, v6, v7

    aput-object v9, v5, v7

    const/4 v7, 0x1

    aget-object v9, v6, v7

    aput-object v9, v5, v7

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 505
    aget-object v6, v6, v7

    move-object/from16 v21, v3

    :goto_42
    move/from16 v7, v27

    goto/16 :goto_4d

    :pswitch_6f
    move/from16 v28, v7

    move/from16 v15, v43

    move-object/from16 v38, v51

    move-wide/from16 v54, v1

    move-wide/from16 v1, v49

    move-wide/from16 v49, v54

    const-string v3, "NotificationMessageRecurringPay"

    .line 498
    sget v4, Lorg/telegram/messenger/R$string;->NotificationMessageRecurringPay:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v9, v6, v7

    aput-object v9, v5, v7

    const/4 v7, 0x1

    aget-object v6, v6, v7

    aput-object v6, v5, v7

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v3, "PaymentInvoice"

    .line 499
    sget v4, Lorg/telegram/messenger/R$string;->PaymentInvoice:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_43

    :pswitch_70
    move/from16 v28, v7

    move/from16 v15, v43

    move-object/from16 v38, v51

    move-wide/from16 v54, v1

    move-wide/from16 v1, v49

    move-wide/from16 v49, v54

    const-string v3, "ActionSetWallpaperForThisChat"

    .line 493
    sget v4, Lorg/telegram/messenger/R$string;->ActionSetWallpaperForThisChat:I

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aget-object v6, v6, v5

    aput-object v6, v7, v5

    invoke-static {v3, v4, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v3, "WallpaperNotification"

    .line 494
    sget v4, Lorg/telegram/messenger/R$string;->WallpaperNotification:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_43

    :pswitch_71
    move/from16 v28, v7

    move/from16 v15, v43

    move-object/from16 v38, v51

    move-wide/from16 v54, v1

    move-wide/from16 v1, v49

    move-wide/from16 v49, v54

    const-string v3, "ActionSetSameWallpaperForThisChat"

    .line 488
    sget v4, Lorg/telegram/messenger/R$string;->ActionSetSameWallpaperForThisChat:I

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aget-object v6, v6, v5

    aput-object v6, v7, v5

    invoke-static {v3, v4, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v3, "WallpaperSameNotification"

    .line 489
    sget v4, Lorg/telegram/messenger/R$string;->WallpaperSameNotification:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    :goto_43
    move-object/from16 v21, v6

    :goto_44
    move/from16 v7, v27

    :goto_45
    const/16 v24, 0x0

    move-object v6, v3

    goto/16 :goto_4e

    :pswitch_72
    move/from16 v28, v7

    move/from16 v15, v43

    move-object/from16 v38, v51

    move-wide/from16 v54, v1

    move-wide/from16 v1, v49

    move-wide/from16 v49, v54

    const-string v3, "StoryNotificationHidden"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v4, 0x1

    .line 482
    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_46

    :pswitch_73
    move/from16 v28, v7

    move/from16 v15, v43

    move-object/from16 v38, v51

    move-wide/from16 v54, v1

    move-wide/from16 v1, v49

    move-wide/from16 v49, v54

    const-string v3, "StoryNotificationSingle"

    .line 476
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_46
    move-object/from16 v21, v3

    move/from16 v7, v37

    goto :goto_4c

    :goto_47
    if-eqz v3, :cond_6d

    .line 1202
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unhandled loc_key = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->w(Ljava/lang/String;)V

    :cond_6d
    :goto_48
    move/from16 v7, v27

    const/4 v6, 0x0

    const/16 v21, 0x0

    goto :goto_4d

    :cond_6e
    :goto_49
    move-wide/from16 v49, v1

    move-object/from16 v53, v3

    move-wide v1, v4

    move/from16 v28, v7

    move-object/from16 v52, v15

    move/from16 v15, v43

    .line 472
    invoke-static {v8, v6}, Lorg/telegram/messenger/PushListenerController;->getReactedText(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_4a
    move-object/from16 v21, v3

    :goto_4b
    move/from16 v7, v27

    :goto_4c
    const/4 v6, 0x0

    :goto_4d
    const/16 v24, 0x0

    .line 1209
    :goto_4e
    sget-boolean v3, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v3, :cond_6f

    .line 1210
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " received message notification "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v33

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " mid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_6f
    if-eqz v21, :cond_80

    .line 1213
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .line 1214
    iput v7, v3, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move-wide/from16 v4, v34

    .line 1215
    iput-wide v4, v3, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    if-eqz v6, :cond_70

    goto :goto_4f

    :cond_70
    move-object/from16 v6, v21

    .line 1216
    :goto_4f
    iput-object v6, v3, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    const-wide/16 v4, 0x3e8

    .line 1217
    div-long v4, p3, v4

    long-to-int v4, v4

    iput v4, v3, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    if-eqz v10, :cond_71

    .line 1219
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageActionPinMessage;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageActionPinMessage;-><init>()V

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    :cond_71
    if-eqz v48, :cond_72

    .line 1222
    iget v4, v3, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const/high16 v5, -0x80000000

    or-int/2addr v4, v5

    iput v4, v3, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 1224
    :cond_72
    iput-wide v1, v3, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    const-wide/16 v1, 0x0

    cmp-long v4, v13, v1

    if-eqz v4, :cond_73

    .line 1226
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;-><init>()V

    iput-object v1, v3, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 1227
    iput-wide v13, v1, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    move-wide/from16 v4, v25

    goto :goto_50

    :cond_73
    const-wide/16 v1, 0x0

    cmp-long v4, v25, v1

    if-eqz v4, :cond_74

    .line 1229
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_peerChat;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_peerChat;-><init>()V

    iput-object v1, v3, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-wide/from16 v4, v25

    .line 1230
    iput-wide v4, v1, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:J

    goto :goto_50

    :cond_74
    move-wide/from16 v4, v25

    .line 1232
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v1, v3, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-wide/from16 v6, v31

    .line 1233
    iput-wide v6, v1, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 1235
    :goto_50
    iget v1, v3, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit16 v1, v1, 0x100

    iput v1, v3, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const-wide/16 v1, 0x0

    cmp-long v6, v40, v1

    if-eqz v6, :cond_75

    .line 1237
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_peerChat;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_peerChat;-><init>()V

    iput-object v1, v3, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 1238
    iput-wide v4, v1, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:J

    goto :goto_51

    :cond_75
    const-wide/16 v1, 0x0

    cmp-long v1, v49, v1

    if-eqz v1, :cond_76

    .line 1240
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;-><init>()V

    iput-object v1, v3, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-wide/from16 v4, v49

    .line 1241
    iput-wide v4, v1, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    goto :goto_51

    :cond_76
    if-eqz v42, :cond_77

    .line 1243
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v1, v3, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-wide/from16 v4, v45

    .line 1244
    iput-wide v4, v1, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    goto :goto_51

    .line 1246
    :cond_77
    iget-object v1, v3, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iput-object v1, v3, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    :goto_51
    if-nez v44, :cond_79

    if-eqz v10, :cond_78

    goto :goto_52

    :cond_78
    const/4 v1, 0x0

    goto :goto_53

    :cond_79
    :goto_52
    const/4 v1, 0x1

    .line 1248
    :goto_53
    iput-boolean v1, v3, Lorg/telegram/tgnet/TLRPC$Message;->mentioned:Z

    .line 1249
    iput-boolean v15, v3, Lorg/telegram/tgnet/TLRPC$Message;->silent:Z

    move/from16 v7, v23

    .line 1250
    iput-boolean v7, v3, Lorg/telegram/tgnet/TLRPC$Message;->from_scheduled:Z

    .line 1252
    new-instance v1, Lorg/telegram/messenger/MessageObject;

    move-object/from16 v18, v1

    move/from16 v19, v36

    move-object/from16 v20, v3

    move-object/from16 v23, v12

    move/from16 v25, v47

    move/from16 v26, v48

    move/from16 v27, v28

    invoke-direct/range {v18 .. v27}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZ)V

    if-eqz v29, :cond_7a

    .line 1254
    iget-object v2, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messageReplyHeader;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messageReplyHeader;-><init>()V

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;

    .line 1255
    iget-object v2, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->forum_topic:Z

    move/from16 v9, v29

    .line 1256
    iput v9, v2, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->reply_to_top_id:I

    :cond_7a
    move-object/from16 v2, v53

    .line 1258
    invoke-virtual {v8, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7c

    move-object/from16 v2, v52

    invoke-virtual {v8, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7b

    goto :goto_54

    :cond_7b
    const/4 v2, 0x0

    goto :goto_55

    :cond_7c
    :goto_54
    const/4 v2, 0x1

    :goto_55
    iput-boolean v2, v1, Lorg/telegram/messenger/MessageObject;->isReactionPush:Z

    move-object/from16 v2, v38

    .line 1259
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7e

    move-object/from16 v2, v39

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7d

    goto :goto_56

    :cond_7d
    const/4 v3, 0x0

    goto :goto_57

    :cond_7e
    move-object/from16 v2, v39

    :goto_56
    const/4 v3, 0x1

    :goto_57
    iput-boolean v3, v1, Lorg/telegram/messenger/MessageObject;->isStoryPush:Z

    const-string v3, "MESSAGE_STORY_MENTION"

    .line 1260
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, v1, Lorg/telegram/messenger/MessageObject;->isStoryMentionPush:Z

    .line 1261
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, v1, Lorg/telegram/messenger/MessageObject;->isStoryPushHidden:Z

    .line 1262
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1263
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1265
    invoke-static/range {v36 .. v36}, Lorg/telegram/messenger/NotificationsController;->getInstance(I)Lorg/telegram/messenger/NotificationsController;

    move-result-object v1

    sget-object v3, Lorg/telegram/messenger/PushListenerController;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4, v4, v3}, Lorg/telegram/messenger/NotificationsController;->processNewMessages(Ljava/util/ArrayList;ZZLjava/util/concurrent/CountDownLatch;)V

    const/4 v9, 0x0

    goto :goto_59

    :cond_7f
    :goto_58
    move/from16 v36, v6

    :cond_80
    const/4 v9, 0x1

    :goto_59
    if-eqz v9, :cond_81

    .line 1271
    sget-object v1, Lorg/telegram/messenger/PushListenerController;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1274
    :cond_81
    invoke-static/range {v36 .. v36}, Lorg/telegram/tgnet/ConnectionsManager;->onInternalPushReceived(I)V

    .line 1275
    invoke-static/range {v36 .. v36}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/tgnet/ConnectionsManager;->resumeNetworkMaybe()V
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_6

    goto/16 :goto_64

    :catchall_6
    move-exception v0

    move-object v1, v0

    move-object/from16 v7, v30

    goto :goto_5b

    :catchall_7
    move-exception v0

    move/from16 v36, v6

    :goto_5a
    move-object v1, v0

    goto/16 :goto_5d

    :catchall_8
    move-exception v0

    move/from16 v36, v6

    move-object/from16 v30, v7

    goto/16 :goto_b

    :catchall_9
    move-exception v0

    move-object/from16 v30, v7

    move/from16 v36, v12

    move-object v1, v0

    :goto_5b
    move/from16 v6, v36

    goto/16 :goto_5e

    :cond_82
    move-object/from16 v30, v7

    move/from16 v36, v12

    .line 272
    :try_start_37
    sget-object v1, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/messenger/PushListenerController$$ExternalSyntheticLambda0;
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_a

    move/from16 v15, v36

    :try_start_38
    invoke-direct {v2, v15}, Lorg/telegram/messenger/PushListenerController$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 273
    sget-object v1, Lorg/telegram/messenger/PushListenerController;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_a
    move-exception v0

    move/from16 v15, v36

    goto/16 :goto_5c

    :cond_83
    move-object/from16 v30, v7

    move v15, v12

    .line 262
    new-instance v1, Lorg/telegram/messenger/PushListenerController$$ExternalSyntheticLambda1;

    invoke-direct {v1, v15}, Lorg/telegram/messenger/PushListenerController$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 268
    sget-object v1, Lorg/telegram/messenger/PushListenerController;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :cond_84
    move-object/from16 v30, v7

    move v15, v12

    move-object v12, v6

    .line 247
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;-><init>()V

    const/4 v2, 0x0

    .line 248
    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;->popup:Z

    const/4 v2, 0x2

    .line 249
    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;->flags:I

    const-wide/16 v2, 0x3e8

    .line 250
    div-long v2, p3, v2

    long-to-int v2, v2

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;->inbox_date:I

    const-string/jumbo v2, "message"

    .line 251
    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;->message:Ljava/lang/String;

    const-string v2, "announcement"

    .line 252
    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;->type:Ljava/lang/String;

    .line 253
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 254
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_updates;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_updates;-><init>()V

    .line 255
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    sget-object v1, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v3, Lorg/telegram/messenger/PushListenerController$$ExternalSyntheticLambda3;

    invoke-direct {v3, v15, v2}, Lorg/telegram/messenger/PushListenerController$$ExternalSyntheticLambda3;-><init>(ILorg/telegram/tgnet/TLRPC$TL_updates;)V

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 257
    invoke-static {v15}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/tgnet/ConnectionsManager;->resumeNetworkMaybe()V

    .line 258
    sget-object v1, Lorg/telegram/messenger/PushListenerController;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :cond_85
    move-object/from16 v30, v7

    move v15, v12

    const-string v1, "dc"

    .line 232
    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "addr"

    .line 233
    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ":"

    .line 234
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 235
    array-length v3, v2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_86

    .line 236
    sget-object v1, Lorg/telegram/messenger/PushListenerController;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :cond_86
    const/4 v3, 0x0

    .line 239
    aget-object v3, v2, v3

    const/4 v4, 0x1

    .line 240
    aget-object v2, v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 241
    invoke-static {v15}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    invoke-virtual {v4, v1, v3, v2}, Lorg/telegram/tgnet/ConnectionsManager;->applyDatacenterAddress(ILjava/lang/String;I)V

    .line 242
    invoke-static {v15}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/tgnet/ConnectionsManager;->resumeNetworkMaybe()V

    .line 243
    sget-object v1, Lorg/telegram/messenger/PushListenerController;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_b

    return-void

    :catchall_b
    move-exception v0

    :goto_5c
    move-object v1, v0

    move v6, v15

    :goto_5d
    move-object/from16 v7, v30

    goto :goto_5e

    :catchall_c
    move-exception v0

    move-object/from16 v30, v7

    move v15, v12

    move-object v1, v0

    move v6, v15

    :goto_5e
    const/4 v2, -0x1

    goto :goto_62

    :catchall_d
    move-exception v0

    move-object/from16 v30, v7

    :goto_5f
    move-object v1, v0

    const/4 v2, -0x1

    const/4 v6, -0x1

    goto :goto_62

    :catchall_e
    move-exception v0

    move-object/from16 v30, v7

    :goto_60
    move-object v1, v0

    const/4 v2, -0x1

    const/4 v6, -0x1

    goto :goto_61

    :catchall_f
    move-exception v0

    move-object v1, v0

    const/4 v2, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    :goto_61
    const/4 v8, 0x0

    :goto_62
    if-eq v6, v2, :cond_87

    .line 1278
    invoke-static {v6}, Lorg/telegram/tgnet/ConnectionsManager;->onInternalPushReceived(I)V

    .line 1279
    invoke-static {v6}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/ConnectionsManager;->resumeNetworkMaybe()V

    .line 1280
    sget-object v2, Lorg/telegram/messenger/PushListenerController;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_63

    .line 1282
    :cond_87
    invoke-static {}, Lorg/telegram/messenger/PushListenerController;->onDecryptError()V

    .line 1284
    :goto_63
    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v2, :cond_88

    .line 1285
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error in loc_key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " json "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1287
    :cond_88
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_64
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x750b1f91 -> :sswitch_3
        -0x36e09b77 -> :sswitch_2
        0x25bae29f -> :sswitch_1
        0x51668772 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x7d742ee8 -> :sswitch_83
        -0x7d2c2cc3 -> :sswitch_82
        -0x7ca9bbb4 -> :sswitch_81
        -0x7a6b9b1f -> :sswitch_80
        -0x79940f3b -> :sswitch_7f
        -0x7897de74 -> :sswitch_7e
        -0x75fd5c9c -> :sswitch_7d
        -0x75fd5283 -> :sswitch_7c
        -0x75fd5210 -> :sswitch_7b
        -0x755ca0a1 -> :sswitch_7a
        -0x740845f0 -> :sswitch_79
        -0x665baa8f -> :sswitch_78
        -0x6225bbba -> :sswitch_77
        -0x5b1425ad -> :sswitch_76
        -0x59d54652 -> :sswitch_75
        -0x590636a2 -> :sswitch_74
        -0x585ce10d -> :sswitch_73
        -0x58389446 -> :sswitch_72
        -0x581920ea -> :sswitch_71
        -0x5808d983 -> :sswitch_70
        -0x57e3bdfd -> :sswitch_6f
        -0x575cbebc -> :sswitch_6e
        -0x51f367b4 -> :sswitch_6d
        -0x51d5692a -> :sswitch_6c
        -0x4b5ada5a -> :sswitch_6b
        -0x49ae3691 -> :sswitch_6a
        -0x49ad2fac -> :sswitch_69
        -0x49ad0cda -> :sswitch_68
        -0x49a8c10d -> :sswitch_67
        -0x49a83677 -> :sswitch_66
        -0x49a7139f -> :sswitch_65
        -0x4768bb94 -> :sswitch_64
        -0x4302c33f -> :sswitch_63
        -0x40ade407 -> :sswitch_62
        -0x40a9983a -> :sswitch_61
        -0x40a90da4 -> :sswitch_60
        -0x40a7eacc -> :sswitch_5f
        -0x3528982a -> :sswitch_5e
        -0x30dc144a -> :sswitch_5d
        -0x2e05f321 -> :sswitch_5c
        -0x260bd697 -> :sswitch_5b
        -0x2330d954 -> :sswitch_5a
        -0x231e6bcf -> :sswitch_59
        -0x231e61b6 -> :sswitch_58
        -0x231e6143 -> :sswitch_57
        -0x1b1ed076 -> :sswitch_56
        -0x1a3c736d -> :sswitch_55
        -0x189a094e -> :sswitch_54
        -0xe733f5f -> :sswitch_53
        -0xd9ee8bb -> :sswitch_52
        -0xcbb124d -> :sswitch_51
        -0x6e3a432 -> :sswitch_50
        -0x6b67798 -> :sswitch_4f
        -0x677ea95 -> :sswitch_4e
        -0x6696b42 -> :sswitch_4d
        -0x26a80f9 -> :sswitch_4c
        0x31f180d -> :sswitch_4b
        0x3e3b55a -> :sswitch_4a
        0x72dca06 -> :sswitch_49
        0x8681c8e -> :sswitch_48
        0xc12ab85 -> :sswitch_47
        0x127a1e59 -> :sswitch_46
        0x127a2872 -> :sswitch_45
        0x127a28e5 -> :sswitch_44
        0x131af14c -> :sswitch_43
        0x139b21de -> :sswitch_42
        0x13bfdb02 -> :sswitch_41
        0x1468b5bf -> :sswitch_40
        0x148d7d5e -> :sswitch_3f
        0x14acf0ba -> :sswitch_3e
        0x14bd3821 -> :sswitch_3d
        0x14e253a7 -> :sswitch_3c
        0x1e6d0875 -> :sswitch_3b
        0x2443e845 -> :sswitch_3a
        0x24b30ed5 -> :sswitch_39
        0x2aa5cc8f -> :sswitch_38
        0x2b736eeb -> :sswitch_37
        0x2b92e247 -> :sswitch_36
        0x2bc84534 -> :sswitch_35
        0x2fce0ba8 -> :sswitch_34
        0x38e666d7 -> :sswitch_33
        0x3b191236 -> :sswitch_32
        0x3c0b2819 -> :sswitch_31
        0x3cc9ad1a -> :sswitch_30
        0x3ccab3ff -> :sswitch_2f
        0x3ccad6d1 -> :sswitch_2e
        0x3ccf229e -> :sswitch_2d
        0x3ccfad34 -> :sswitch_2c
        0x3cd0d00c -> :sswitch_2b
        0x3edbaa08 -> :sswitch_2a
        0x3f329f93 -> :sswitch_29
        0x3f33a678 -> :sswitch_28
        0x3f33c94a -> :sswitch_27
        0x3f381517 -> :sswitch_26
        0x3f389fad -> :sswitch_25
        0x3f39c285 -> :sswitch_24
        0x3ff570b5 -> :sswitch_23
        0x40428597 -> :sswitch_22
        0x422ad58d -> :sswitch_21
        0x452fd3a0 -> :sswitch_20
        0x45e94fe9 -> :sswitch_1f
        0x49965f84 -> :sswitch_1e
        0x4c5c78c0 -> :sswitch_1d
        0x4c5c82d9 -> :sswitch_1c
        0x4c5c834c -> :sswitch_1b
        0x4e210dc6 -> :sswitch_1a
        0x4f75c677 -> :sswitch_19
        0x51260bd9 -> :sswitch_18
        0x519d58de -> :sswitch_17
        0x566542b3 -> :sswitch_16
        0x594dba2b -> :sswitch_15
        0x5b6bfeb0 -> :sswitch_14
        0x5bcc8b2a -> :sswitch_13
        0x5c446cb7 -> :sswitch_12
        0x5d120f13 -> :sswitch_11
        0x5d31826f -> :sswitch_10
        0x5d41c9d6 -> :sswitch_f
        0x5d66e55c -> :sswitch_e
        0x6bed2ab5 -> :sswitch_d
        0x6c316928 -> :sswitch_c
        0x74837d31 -> :sswitch_b
        0x7504afb2 -> :sswitch_a
        0x7817407d -> :sswitch_9
        0x78860699 -> :sswitch_8
        0x794b6706 -> :sswitch_7
        0x7a1d30a2 -> :sswitch_6
        0x7d222eb5 -> :sswitch_5
        0x7f90485e -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static synthetic lambda$processRemoteMessage$6(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;J)V
    .locals 8

    .line 107
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " PRE INIT APP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 110
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->postInitApplication()V

    .line 111
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_1

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " POST INIT APP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 114
    :cond_1
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v7, Lorg/telegram/messenger/PushListenerController$$ExternalSyntheticLambda6;

    move-object v1, v7

    move-object v2, p1

    move-object v3, p0

    move-object v4, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/PushListenerController$$ExternalSyntheticLambda6;-><init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v0, v7}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static synthetic lambda$sendRegistrationToServer$0(IILjava/lang/String;)V
    .locals 0

    .line 94
    invoke-static {p0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/MessagesController;->registerForPush(ILjava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$sendRegistrationToServer$1(Ljava/lang/String;I)V
    .locals 12

    .line 51
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->checkKoinInit()V

    .line 52
    const-class v0, Lcom/iMe/manager/notifications/PushNotificationsManager;

    invoke-static {v0}, Lorg/koin/java/KoinJavaComponent;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/manager/notifications/PushNotificationsManager;

    .line 53
    invoke-virtual {v0, p0}, Lcom/iMe/manager/notifications/PushNotificationsManager;->sendPushToken(Ljava/lang/String;)V

    .line 55
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->pushStringStatus:Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lorg/telegram/tgnet/ConnectionsManager;->setRegId(Ljava/lang/String;ILjava/lang/String;)V

    if-nez p0, :cond_0

    return-void

    .line 60
    :cond_0
    sget-wide v0, Lorg/telegram/messenger/SharedConfig;->pushStringGetTimeStart:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    sget-wide v5, Lorg/telegram/messenger/SharedConfig;->pushStringGetTimeEnd:J

    cmp-long v0, v5, v2

    if-eqz v0, :cond_2

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->pushStatSent:Z

    if-eqz v0, :cond_1

    sget-object v0, Lorg/telegram/messenger/SharedConfig;->pushString:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 62
    :cond_1
    sput-boolean v4, Lorg/telegram/messenger/SharedConfig;->pushStatSent:Z

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v4

    .line 64
    :goto_0
    sput-object p0, Lorg/telegram/messenger/SharedConfig;->pushString:Ljava/lang/String;

    .line 65
    sput p1, Lorg/telegram/messenger/SharedConfig;->pushType:I

    move v5, v4

    :goto_1
    const/4 v6, 0x5

    if-ge v5, v6, :cond_6

    .line 67
    invoke-static {v5}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v6

    .line 68
    iput-boolean v4, v6, Lorg/telegram/messenger/UserConfig;->registeredForPush:Z

    .line 69
    invoke-virtual {v6, v4}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 70
    invoke-virtual {v6}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v6

    cmp-long v6, v6, v2

    if-eqz v6, :cond_5

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    const-string v0, "fcm"

    goto :goto_2

    :cond_3
    const-string v0, "hcm"

    .line 74
    :goto_2
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_help_saveAppLog;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_help_saveAppLog;-><init>()V

    .line 75
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_inputAppEvent;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_inputAppEvent;-><init>()V

    .line 76
    sget-wide v8, Lorg/telegram/messenger/SharedConfig;->pushStringGetTimeStart:J

    long-to-double v8, v8

    iput-wide v8, v7, Lorg/telegram/tgnet/TLRPC$TL_inputAppEvent;->time:D

    .line 77
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "_token_request"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lorg/telegram/tgnet/TLRPC$TL_inputAppEvent;->type:Ljava/lang/String;

    .line 78
    iput-wide v2, v7, Lorg/telegram/tgnet/TLRPC$TL_inputAppEvent;->peer:J

    .line 79
    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_jsonNull;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_jsonNull;-><init>()V

    iput-object v8, v7, Lorg/telegram/tgnet/TLRPC$TL_inputAppEvent;->data:Lorg/telegram/tgnet/TLRPC$JSONValue;

    .line 80
    iget-object v8, v6, Lorg/telegram/tgnet/TLRPC$TL_help_saveAppLog;->events:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_inputAppEvent;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_inputAppEvent;-><init>()V

    .line 83
    sget-wide v8, Lorg/telegram/messenger/SharedConfig;->pushStringGetTimeEnd:J

    long-to-double v8, v8

    iput-wide v8, v7, Lorg/telegram/tgnet/TLRPC$TL_inputAppEvent;->time:D

    .line 84
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_token_response"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_inputAppEvent;->type:Ljava/lang/String;

    .line 85
    sget-wide v8, Lorg/telegram/messenger/SharedConfig;->pushStringGetTimeEnd:J

    sget-wide v10, Lorg/telegram/messenger/SharedConfig;->pushStringGetTimeStart:J

    sub-long/2addr v8, v10

    iput-wide v8, v7, Lorg/telegram/tgnet/TLRPC$TL_inputAppEvent;->peer:J

    .line 86
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_jsonNull;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_jsonNull;-><init>()V

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_inputAppEvent;->data:Lorg/telegram/tgnet/TLRPC$JSONValue;

    .line 87
    iget-object v0, v6, Lorg/telegram/tgnet/TLRPC$TL_help_saveAppLog;->events:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    sput-boolean v1, Lorg/telegram/messenger/SharedConfig;->pushStatSent:Z

    .line 91
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->saveConfig()V

    .line 92
    invoke-static {v5}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move v0, v4

    .line 94
    :cond_4
    new-instance v6, Lorg/telegram/messenger/PushListenerController$$ExternalSyntheticLambda2;

    invoke-direct {v6, v5, p1, p0}, Lorg/telegram/messenger/PushListenerController$$ExternalSyntheticLambda2;-><init>(IILjava/lang/String;)V

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_6
    return-void
.end method

.method private static onDecryptError()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    .line 1411
    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->isClientActivated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1412
    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->onInternalPushReceived(I)V

    .line 1413
    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/tgnet/ConnectionsManager;->resumeNetworkMaybe()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1416
    :cond_1
    sget-object v0, Lorg/telegram/messenger/PushListenerController;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public static processRemoteMessage(ILjava/lang/String;JLjava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const-string p0, "FCM"

    goto :goto_0

    :cond_0
    const-string p0, "HCM"

    .line 102
    :goto_0
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_1

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " PRE START PROCESSING"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 105
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 106
    new-instance v8, Lorg/telegram/messenger/PushListenerController$$ExternalSyntheticLambda5;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/PushListenerController$$ExternalSyntheticLambda5;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;J)V

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1292
    :try_start_0
    sget-object p1, Lorg/telegram/messenger/PushListenerController;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1296
    :catchall_0
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz p1, :cond_2

    .line 1297
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "finished "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " service, time = "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p2

    sub-long/2addr p2, v6

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static sendRegistrationToServer(ILjava/lang/String;)V
    .locals 2

    .line 49
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/PushListenerController$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1, p0}, Lorg/telegram/messenger/PushListenerController$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method
