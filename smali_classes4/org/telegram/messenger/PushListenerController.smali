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
.method public static synthetic $r8$lambda$05HQXVXo2got2Q653nV0PSpuwSo(I)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/messenger/PushListenerController;->lambda$processRemoteMessage$6(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$NipNRCaMnfAJv5_B5r53cGX4oOw(IILjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/PushListenerController;->lambda$sendRegistrationToServer$2(IILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RK14xc9chFg1PbT860zV0AOHMgs(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/PushListenerController;->lambda$processRemoteMessage$7(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$WHk2xlzbP-DzuH8js5NADkbNDVY(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;J)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/PushListenerController;->lambda$processRemoteMessage$8(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$bNjH2G60_33kpQI0JF3tCc05HHI(Ljava/lang/String;I)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/messenger/PushListenerController;->lambda$sendRegistrationToServer$3(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ksUB4V0jcpmf75Wn-glW9jl22q0(I)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/messenger/PushListenerController;->lambda$processRemoteMessage$5(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$swoE-5CRXa6sDNZ8FzJJacZD9ck(ILorg/telegram/tgnet/TLRPC$TL_updates;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/messenger/PushListenerController;->lambda$processRemoteMessage$4(ILorg/telegram/tgnet/TLRPC$TL_updates;)V

    return-void
.end method

.method public static synthetic $r8$lambda$u0C-CjhOPxr-hdOQTMDVwo41zyg(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/messenger/PushListenerController;->lambda$sendRegistrationToServer$1(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$y48jQHe_b7R5KuAuZEk92feq_1M(Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/messenger/PushListenerController;->lambda$sendRegistrationToServer$0(Lorg/telegram/tgnet/TLRPC$TL_error;)V

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

    .line 1220
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
    const/16 v1, 0x1f

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "CHAT_REACT_QUIZ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0x1e

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "CHAT_REACT_POLL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0x1d

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "CHAT_REACT_GAME"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0x1c

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "REACT_GIF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0x1b

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "REACT_GEO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v1, 0x1a

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "REACT_DOC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v1, 0x19

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "REACT_VIDEO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v1, 0x18

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "REACT_ROUND"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v1, 0x17

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "REACT_PHOTO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v1, 0x16

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "REACT_AUDIO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v1, 0x15

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "CHAT_REACT_GEOLIVE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v1, 0x14

    goto/16 :goto_0

    :sswitch_c
    const-string v0, "CHAT_REACT_VIDEO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v1, 0x13

    goto/16 :goto_0

    :sswitch_d
    const-string v0, "CHAT_REACT_ROUND"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v1, 0x12

    goto/16 :goto_0

    :sswitch_e
    const-string v0, "CHAT_REACT_PHOTO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v1, 0x11

    goto/16 :goto_0

    :sswitch_f
    const-string v0, "CHAT_REACT_AUDIO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v1, 0x10

    goto/16 :goto_0

    :sswitch_10
    const-string v0, "REACT_STICKER"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v1, 0xf

    goto/16 :goto_0

    :sswitch_11
    const-string v0, "CHAT_REACT_GIF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v1, 0xe

    goto/16 :goto_0

    :sswitch_12
    const-string v0, "CHAT_REACT_GEO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v1, 0xd

    goto/16 :goto_0

    :sswitch_13
    const-string v0, "CHAT_REACT_DOC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v1, 0xc

    goto/16 :goto_0

    :sswitch_14
    const-string v0, "REACT_INVOICE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_15
    const-string v0, "REACT_TEXT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_16
    const-string v0, "REACT_QUIZ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_17
    const-string v0, "REACT_POLL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    goto/16 :goto_0

    :cond_17
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_18
    const-string v0, "REACT_GAME"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_18

    goto :goto_0

    :cond_18
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_19
    const-string v0, "CHAT_REACT_STICKER"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_19

    goto :goto_0

    :cond_19
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_1a
    const-string v0, "REACT_CONTACT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1a

    goto :goto_0

    :cond_1a
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_1b
    const-string v0, "CHAT_REACT_INVOICE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1b

    goto :goto_0

    :cond_1b
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_1c
    const-string v0, "REACT_NOTEXT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1c

    goto :goto_0

    :cond_1c
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_1d
    const-string v0, "CHAT_REACT_NOTEXT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1d

    goto :goto_0

    :cond_1d
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1e
    const-string v0, "REACT_GEOLIVE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1e

    goto :goto_0

    :cond_1e
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_1f
    const-string v0, "CHAT_REACT_CONTACT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1f

    goto :goto_0

    :cond_1f
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 1270
    :pswitch_0
    sget p0, Lorg/telegram/messenger/R$string;->PushChatReactText:I

    const-string v0, "PushChatReactText"

    invoke-static {v0, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1306
    :pswitch_1
    sget p0, Lorg/telegram/messenger/R$string;->PushChatReactQuiz:I

    const-string v0, "PushChatReactQuiz"

    invoke-static {v0, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1303
    :pswitch_2
    sget p0, Lorg/telegram/messenger/R$string;->PushChatReactPoll:I

    const-string v0, "PushChatReactPoll"

    invoke-static {v0, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1309
    :pswitch_3
    sget p0, Lorg/telegram/messenger/R$string;->PushChatReactGame:I

    const-string v0, "PushChatReactGame"

    invoke-static {v0, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1267
    :pswitch_4
    sget p0, Lorg/telegram/messenger/R$string;->PushReactGif:I

    const-string v0, "PushReactGif"

    invoke-static {v0, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1249
    :pswitch_5
    sget p0, Lorg/telegram/messenger/R$string;->PushReactGeo:I

    const-string v0, "PushReactGeo"

    invoke-static {v0, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1237
    :pswitch_6
    sget p0, Lorg/telegram/messenger/R$string;->PushReactDoc:I

    const-string v0, "PushReactDoc"

    invoke-static {v0, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1231
    :pswitch_7
    sget p0, Lorg/telegram/messenger/R$string;->PushReactVideo:I

    const-string v0, "PushReactVideo"

    invoke-static {v0, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1234
    :pswitch_8
    sget p0, Lorg/telegram/messenger/R$string;->PushReactRound:I

    const-string v0, "PushReactRound"

    invoke-static {v0, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1228
    :pswitch_9
    sget p0, Lorg/telegram/messenger/R$string;->PushReactPhoto:I

    const-string v0, "PushReactPhoto"

    invoke-static {v0, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1243
    :pswitch_a
    sget p0, Lorg/telegram/messenger/R$string;->PushReactAudio:I

    const-string v0, "PushReactAudio"

    invoke-static {v0, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1300
    :pswitch_b
    sget p0, Lorg/telegram/messenger/R$string;->PushChatReactGeoLive:I

    const-string v0, "PushChatReactGeoLive"

    invoke-static {v0, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1279
    :pswitch_c
    sget p0, Lorg/telegram/messenger/R$string;->PushChatReactVideo:I

    const-string v0, "PushChatReactVideo"

    invoke-static {v0, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1282
    :pswitch_d
    sget p0, Lorg/telegram/messenger/R$string;->PushChatReactRound:I

    const-string v0, "PushChatReactRound"

    invoke-static {v0, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1276
    :pswitch_e
    sget p0, Lorg/telegram/messenger/R$string;->PushChatReactPhoto:I

    const-string v0, "PushChatReactPhoto"

    invoke-static {v0, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1291
    :pswitch_f
    sget p0, Lorg/telegram/messenger/R$string;->PushChatReactAudio:I

    const-string v0, "PushChatReactAudio"

    invoke-static {v0, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1240
    :pswitch_10
    sget p0, Lorg/telegram/messenger/R$string;->PushReactSticker:I

    const-string v0, "PushReactSticker"

    invoke-static {v0, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1315
    :pswitch_11
    sget p0, Lorg/telegram/messenger/R$string;->PushChatReactGif:I

    const-string v0, "PushChatReactGif"

    invoke-static {v0, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1297
    :pswitch_12
    sget p0, Lorg/telegram/messenger/R$string;->PushChatReactGeo:I

    const-string v0, "PushChatReactGeo"

    invoke-static {v0, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1285
    :pswitch_13
    sget p0, Lorg/telegram/messenger/R$string;->PushChatReactDoc:I

    const-string v0, "PushChatReactDoc"

    invoke-static {v0, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1264
    :pswitch_14
    sget p0, Lorg/telegram/messenger/R$string;->PushReactInvoice:I

    const-string v0, "PushReactInvoice"

    invoke-static {v0, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1222
    :pswitch_15
    sget p0, Lorg/telegram/messenger/R$string;->PushReactText:I

    const-string v0, "PushReactText"

    invoke-static {v0, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1258
    :pswitch_16
    sget p0, Lorg/telegram/messenger/R$string;->PushReactQuiz:I

    const-string v0, "PushReactQuiz"

    invoke-static {v0, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1255
    :pswitch_17
    sget p0, Lorg/telegram/messenger/R$string;->PushReactPoll:I

    const-string v0, "PushReactPoll"

    invoke-static {v0, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1261
    :pswitch_18
    sget p0, Lorg/telegram/messenger/R$string;->PushReactGame:I

    const-string v0, "PushReactGame"

    invoke-static {v0, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1288
    :pswitch_19
    sget p0, Lorg/telegram/messenger/R$string;->PushChatReactSticker:I

    const-string v0, "PushChatReactSticker"

    invoke-static {v0, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1246
    :pswitch_1a
    sget p0, Lorg/telegram/messenger/R$string;->PushReactContect:I

    const-string v0, "PushReactContect"

    invoke-static {v0, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1312
    :pswitch_1b
    sget p0, Lorg/telegram/messenger/R$string;->PushChatReactInvoice:I

    const-string v0, "PushChatReactInvoice"

    invoke-static {v0, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1225
    :pswitch_1c
    sget p0, Lorg/telegram/messenger/R$string;->PushReactNoText:I

    const-string v0, "PushReactNoText"

    invoke-static {v0, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1273
    :pswitch_1d
    sget p0, Lorg/telegram/messenger/R$string;->PushChatReactNotext:I

    const-string v0, "PushChatReactNotext"

    invoke-static {v0, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1252
    :pswitch_1e
    sget p0, Lorg/telegram/messenger/R$string;->PushReactGeoLocation:I

    const-string v0, "PushReactGeoLocation"

    invoke-static {v0, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1294
    :pswitch_1f
    sget p0, Lorg/telegram/messenger/R$string;->PushChatReactContact:I

    const-string v0, "PushChatReactContact"

    invoke-static {v0, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7e0af387 -> :sswitch_1f
        -0x70c28b43 -> :sswitch_1e
        -0x5461d12b -> :sswitch_1d
        -0x51f8deb2 -> :sswitch_1c
        -0x41ebd47a -> :sswitch_1b
        -0x335596e0 -> :sswitch_1a
        -0x276d0e6a -> :sswitch_19
        0x3191ed2 -> :sswitch_18
        0x31d6a9f -> :sswitch_17
        0x31df535 -> :sswitch_16
        0x31f180d -> :sswitch_15
        0x8c9882d -> :sswitch_14
        0xb7e8a11 -> :sswitch_13
        0xb7e942a -> :sswitch_12
        0xb7e949d -> :sswitch_11
        0x23484e3d -> :sswitch_10
        0x25dcca6f -> :sswitch_f
        0x26aa6ccb -> :sswitch_e
        0x26c9e027 -> :sswitch_d
        0x26ff4314 -> :sswitch_c
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

.method private static synthetic lambda$processRemoteMessage$4(ILorg/telegram/tgnet/TLRPC$TL_updates;)V
    .locals 1

    .line 259
    invoke-static {p0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    return-void
.end method

.method private static synthetic lambda$processRemoteMessage$5(I)V
    .locals 5

    .line 266
    invoke-static {p0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 267
    invoke-static {p0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->clearConfig()V

    .line 268
    invoke-static {p0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MessagesController;->performLogout(I)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$processRemoteMessage$6(I)V
    .locals 0

    .line 275
    invoke-static {p0}, Lorg/telegram/messenger/LocationController;->getInstance(I)Lorg/telegram/messenger/LocationController;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/messenger/LocationController;->setNewLocationEndWatchTime()V

    return-void
.end method

.method private static synthetic lambda$processRemoteMessage$7(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 53

    move-object/from16 v1, p1

    const-string v2, "REACT_"

    .line 119
    const-class v3, Lcom/smedialink/manager/notifications/PushNotificationsManager;

    invoke-static {v3}, Lorg/koin/java/KoinJavaComponent;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smedialink/manager/notifications/PushNotificationsManager;

    move-object/from16 v4, p0

    .line 120
    invoke-virtual {v3, v4}, Lcom/smedialink/manager/notifications/PushNotificationsManager;->handlePushNotification(Ljava/util/Map;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 121
    sget-object v1, Lorg/telegram/messenger/PushListenerController;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    .line 125
    :cond_0
    sget-boolean v3, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v3, :cond_1

    .line 126
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " START PROCESSING"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_1
    const/16 v4, 0x8

    move-object/from16 v6, p2

    .line 132
    :try_start_0
    invoke-static {v6, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v6

    .line 133
    new-instance v7, Lorg/telegram/tgnet/NativeByteBuffer;

    array-length v8, v6

    invoke-direct {v7, v8}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    .line 134
    invoke-virtual {v7, v6}, Lorg/telegram/tgnet/NativeByteBuffer;->writeBytes([B)V

    const/4 v8, 0x0

    .line 135
    invoke-virtual {v7, v8}, Lorg/telegram/tgnet/NativeByteBuffer;->position(I)V

    .line 137
    sget-object v9, Lorg/telegram/messenger/SharedConfig;->pushAuthKeyId:[B

    if-nez v9, :cond_2

    new-array v9, v4, [B

    .line 138
    sput-object v9, Lorg/telegram/messenger/SharedConfig;->pushAuthKeyId:[B

    .line 139
    sget-object v9, Lorg/telegram/messenger/SharedConfig;->pushAuthKey:[B

    invoke-static {v9}, Lorg/telegram/messenger/Utilities;->computeSHA1([B)[B

    move-result-object v9

    .line 140
    array-length v10, v9

    sub-int/2addr v10, v4

    sget-object v11, Lorg/telegram/messenger/SharedConfig;->pushAuthKeyId:[B

    invoke-static {v9, v10, v11, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    new-array v9, v4, [B

    const/4 v10, 0x1

    .line 143
    invoke-virtual {v7, v9, v10}, Lorg/telegram/tgnet/NativeByteBuffer;->readBytes([BZ)V

    .line 144
    sget-object v11, Lorg/telegram/messenger/SharedConfig;->pushAuthKeyId:[B

    invoke-static {v11, v9}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v11

    const/4 v12, 0x3

    const/4 v13, 0x2

    if-nez v11, :cond_4

    .line 145
    invoke-static {}, Lorg/telegram/messenger/PushListenerController;->onDecryptError()V

    .line 146
    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v2, :cond_3

    .line 147
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " DECRYPT ERROR 2 k1=%s k2=%s, key=%s"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v4, v12, [Ljava/lang/Object;

    sget-object v6, Lorg/telegram/messenger/SharedConfig;->pushAuthKeyId:[B

    invoke-static {v6}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v8

    invoke-static {v9}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v10

    sget-object v6, Lorg/telegram/messenger/SharedConfig;->pushAuthKey:[B

    invoke-static {v6}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v13

    invoke-static {v2, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_3
    return-void

    :cond_4
    const/16 v9, 0x10

    new-array v9, v9, [B

    .line 153
    invoke-virtual {v7, v9, v10}, Lorg/telegram/tgnet/NativeByteBuffer;->readBytes([BZ)V

    .line 155
    sget-object v11, Lorg/telegram/messenger/SharedConfig;->pushAuthKey:[B

    invoke-static {v11, v9, v10, v13}, Lorg/telegram/messenger/MessageKeyData;->generateMessageKeyData([B[BZI)Lorg/telegram/messenger/MessageKeyData;

    move-result-object v11

    .line 156
    iget-object v14, v7, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    iget-object v15, v11, Lorg/telegram/messenger/MessageKeyData;->aesKey:[B

    iget-object v11, v11, Lorg/telegram/messenger/MessageKeyData;->aesIv:[B

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x18

    array-length v6, v6

    add-int/lit8 v20, v6, -0x18

    move-object/from16 v16, v11

    invoke-static/range {v14 .. v20}, Lorg/telegram/messenger/Utilities;->aesIgeEncryption(Ljava/nio/ByteBuffer;[B[BZZII)V

    .line 158
    sget-object v21, Lorg/telegram/messenger/SharedConfig;->pushAuthKey:[B

    const/16 v22, 0x60

    const/16 v23, 0x20

    iget-object v6, v7, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    const/16 v25, 0x18

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->limit()I

    move-result v26

    move-object/from16 v24, v6

    invoke-static/range {v21 .. v26}, Lorg/telegram/messenger/Utilities;->computeSHA256([BIILjava/nio/ByteBuffer;II)[B

    move-result-object v6

    .line 159
    invoke-static {v9, v8, v6, v4}, Lorg/telegram/messenger/Utilities;->arraysEquals([BI[BI)Z

    move-result v6

    if-nez v6, :cond_6

    .line 160
    invoke-static {}, Lorg/telegram/messenger/PushListenerController;->onDecryptError()V

    .line 161
    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v2, :cond_5

    .line 162
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " DECRYPT ERROR 3, key = %s"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v10, [Ljava/lang/Object;

    sget-object v4, Lorg/telegram/messenger/SharedConfig;->pushAuthKey:[B

    invoke-static {v4}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v8

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_5
    return-void

    .line 167
    :cond_6
    invoke-virtual {v7, v10}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v6

    .line 168
    new-array v6, v6, [B

    .line 169
    invoke-virtual {v7, v6, v10}, Lorg/telegram/tgnet/NativeByteBuffer;->readBytes([BZ)V

    .line 170
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_10

    .line 171
    :try_start_1
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v9, "loc_key"

    .line 173
    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_f

    if-eqz v9, :cond_7

    :try_start_2
    const-string v9, "loc_key"

    .line 174
    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_3f

    :cond_7
    :try_start_3
    const-string v9, ""
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_f

    :goto_0
    :try_start_4
    const-string v11, "custom"

    .line 182
    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 183
    instance-of v11, v11, Lorg/json/JSONObject;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_e

    if-eqz v11, :cond_8

    :try_start_5
    const-string v11, "custom"

    .line 184
    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object v5, v9

    goto/16 :goto_3e

    .line 186
    :cond_8
    :try_start_6
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    :goto_1
    const-string v14, "user_id"

    .line 190
    invoke-virtual {v6, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_e

    if-eqz v14, :cond_9

    :try_start_7
    const-string v14, "user_id"

    .line 191
    invoke-virtual {v6, v14}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    goto :goto_2

    :cond_9
    const/4 v14, 0x0

    :goto_2
    if-nez v14, :cond_a

    .line 197
    sget v14, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v14}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v14

    invoke-virtual {v14}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v14
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_4

    .line 199
    :cond_a
    :try_start_8
    instance-of v15, v14, Ljava/lang/Long;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_e

    if-eqz v15, :cond_b

    .line 200
    :try_start_9
    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_4

    .line 201
    :cond_b
    :try_start_a
    instance-of v15, v14, Ljava/lang/Integer;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_e

    if-eqz v15, :cond_c

    .line 202
    :try_start_b
    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :goto_3
    int-to-long v14, v14

    goto :goto_4

    .line 203
    :cond_c
    :try_start_c
    instance-of v15, v14, Ljava/lang/String;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_e

    if-eqz v15, :cond_d

    .line 204
    :try_start_d
    check-cast v14, Ljava/lang/String;

    invoke-static {v14}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto :goto_3

    .line 206
    :cond_d
    :try_start_e
    sget v14, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v14}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v14

    invoke-virtual {v14}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v14

    .line 209
    :goto_4
    sget v16, Lorg/telegram/messenger/UserConfig;->selectedAccount:I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_e

    const/4 v4, 0x0

    :goto_5
    const/4 v5, 0x5

    if-ge v4, v5, :cond_f

    .line 212
    :try_start_f
    invoke-static {v4}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v18

    cmp-long v5, v18, v14

    if-nez v5, :cond_e

    const/4 v5, 0x1

    goto :goto_6

    :cond_e
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_f
    move/from16 v4, v16

    const/4 v5, 0x0

    :goto_6
    if-nez v5, :cond_11

    .line 219
    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v2, :cond_10

    .line 220
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ACCOUNT NOT FOUND"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 222
    :cond_10
    sget-object v1, Lorg/telegram/messenger/PushListenerController;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    return-void

    .line 226
    :cond_11
    :try_start_10
    invoke-static {v4}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/UserConfig;->isClientActivated()Z

    move-result v5
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_d

    if-nez v5, :cond_13

    .line 227
    :try_start_11
    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v2, :cond_12

    .line 228
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ACCOUNT NOT ACTIVATED"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 230
    :cond_12
    sget-object v1, Lorg/telegram/messenger/PushListenerController;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    return-void

    :catchall_2
    move-exception v0

    :goto_7
    move-object v1, v0

    move-object v5, v9

    goto/16 :goto_3d

    .line 233
    :cond_13
    :try_start_12
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v5
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_d

    sparse-switch v5, :sswitch_data_0

    goto :goto_8

    :sswitch_0
    :try_start_13
    const-string v5, "GEO_LIVE_PENDING"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    const/4 v5, 0x3

    goto :goto_9

    :sswitch_1
    const-string v5, "MESSAGE_ANNOUNCEMENT"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    const/4 v5, 0x1

    goto :goto_9

    :sswitch_2
    const-string v5, "DC_UPDATE"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    const/4 v5, 0x0

    goto :goto_9

    :sswitch_3
    const-string v5, "SESSION_REVOKE"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    if-eqz v5, :cond_14

    const/4 v5, 0x2

    goto :goto_9

    :cond_14
    :goto_8
    const/4 v5, -0x1

    :goto_9
    if-eqz v5, :cond_77

    if-eq v5, v10, :cond_76

    if-eq v5, v13, :cond_75

    if-eq v5, v12, :cond_74

    :try_start_14
    const-string v5, "channel_id"

    .line 288
    invoke-virtual {v11, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_a

    if-eqz v5, :cond_15

    :try_start_15
    const-string v5, "channel_id"

    .line 289
    invoke-virtual {v11, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v12
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    move/from16 v28, v4

    neg-long v3, v12

    goto :goto_a

    :catchall_3
    move-exception v0

    move/from16 v28, v4

    goto :goto_7

    :cond_15
    move/from16 v28, v4

    const-wide/16 v3, 0x0

    const-wide/16 v12, 0x0

    :goto_a
    :try_start_16
    const-string v5, "from_id"

    .line 294
    invoke-virtual {v11, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_9

    if-eqz v5, :cond_16

    :try_start_17
    const-string v3, "from_id"

    .line 295
    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    move-wide/from16 v29, v3

    goto :goto_b

    :catchall_4
    move-exception v0

    move-object v1, v0

    move-object v5, v9

    goto/16 :goto_39

    :cond_16
    const-wide/16 v29, 0x0

    :goto_b
    :try_start_18
    const-string v5, "chat_id"

    .line 300
    invoke-virtual {v11, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_9

    if-eqz v5, :cond_17

    :try_start_19
    const-string v3, "chat_id"

    .line 301
    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_5

    move-object v5, v9

    neg-long v8, v3

    goto :goto_c

    :catchall_5
    move-exception v0

    goto/16 :goto_37

    :cond_17
    move-object v5, v9

    move-wide v8, v3

    const-wide/16 v3, 0x0

    :goto_c
    :try_start_1a
    const-string v14, "topic_id"

    .line 306
    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_8

    if-eqz v14, :cond_18

    :try_start_1b
    const-string v14, "topic_id"

    .line 307
    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_6

    goto :goto_d

    :catchall_6
    move-exception v0

    goto/16 :goto_38

    :cond_18
    const/4 v14, 0x0

    .line 309
    :goto_d
    :try_start_1c
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "recived push notification chatId "

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " custom topicId "

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    const-string v10, "encryption_id"

    .line 310
    invoke-virtual {v11, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_8

    if-eqz v10, :cond_19

    :try_start_1d
    const-string v8, "encryption_id"

    .line 311
    invoke-virtual {v11, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    int-to-long v8, v8

    invoke-static {v8, v9}, Lorg/telegram/messenger/DialogObject;->makeEncryptedDialogId(J)J

    move-result-wide v8
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_6

    :cond_19
    :try_start_1e
    const-string v10, "schedule"

    .line 313
    invoke-virtual {v11, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_8

    if-eqz v10, :cond_1a

    :try_start_1f
    const-string v10, "schedule"

    .line 314
    invoke-virtual {v11, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    const/4 v15, 0x1

    if-ne v10, v15, :cond_1a

    const/4 v10, 0x1

    goto :goto_e

    :cond_1a
    const/4 v10, 0x0

    :goto_e
    const-wide/16 v18, 0x0

    cmp-long v15, v8, v18

    if-nez v15, :cond_1b

    const-string v15, "ENCRYPTED_MESSAGE"

    .line 318
    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1b

    .line 319
    sget-wide v8, Lorg/telegram/messenger/NotificationsController;->globalSecretChatId:J
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_6

    :cond_1b
    const-wide/16 v18, 0x0

    cmp-long v15, v8, v18

    if-eqz v15, :cond_71

    move-object/from16 v31, v7

    :try_start_20
    const-string v7, "READ_HISTORY"

    .line 323
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_7

    move/from16 v20, v10

    const-string v10, " for dialogId = "

    if-eqz v7, :cond_1f

    :try_start_21
    const-string v2, "max_id"

    .line 324
    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 325
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 326
    sget-boolean v7, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v7, :cond_1c

    .line 327
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " received read notification max_id = "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_1c
    const-wide/16 v7, 0x0

    cmp-long v1, v12, v7

    if-eqz v1, :cond_1d

    .line 330
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelInbox;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelInbox;-><init>()V

    .line 331
    iput-wide v12, v1, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelInbox;->channel_id:J

    .line 332
    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelInbox;->max_id:I

    const/4 v2, 0x0

    .line 333
    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelInbox;->still_unread_count:I

    .line 334
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 336
    :cond_1d
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryInbox;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryInbox;-><init>()V

    move-wide/from16 v7, v29

    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-eqz v11, :cond_1e

    .line 338
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryInbox;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 339
    iput-wide v7, v3, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    goto :goto_f

    .line 341
    :cond_1e
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_peerChat;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_peerChat;-><init>()V

    iput-object v7, v1, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryInbox;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 342
    iput-wide v3, v7, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:J

    .line 344
    :goto_f
    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryInbox;->max_id:I

    .line 345
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    :goto_10
    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v20

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v21, v6

    invoke-virtual/range {v20 .. v25}, Lorg/telegram/messenger/MessagesController;->processUpdateArray(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ZI)Z

    goto/16 :goto_35

    :cond_1f
    move-wide/from16 v32, v29

    const-string v7, "MESSAGE_DELETED"

    .line 348
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_7

    move-wide/from16 v21, v3

    const-string v3, ","

    const-string v4, "messages"

    if-eqz v7, :cond_21

    .line 349
    :try_start_22
    invoke-virtual {v11, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 350
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 351
    new-instance v4, Landroidx/collection/LongSparseArray;

    invoke-direct {v4}, Landroidx/collection/LongSparseArray;-><init>()V

    .line 352
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    .line 353
    :goto_11
    array-length v11, v2

    if-ge v7, v11, :cond_20

    .line 354
    aget-object v11, v2, v7

    invoke-static {v11}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_11

    :cond_20
    neg-long v14, v12

    .line 356
    invoke-virtual {v4, v14, v15, v6}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 357
    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/NotificationsController;->getInstance(I)Lorg/telegram/messenger/NotificationsController;

    move-result-object v2

    const/4 v7, 0x0

    invoke-virtual {v2, v4, v7}, Lorg/telegram/messenger/NotificationsController;->removeDeletedMessagesFromNotifications(Landroidx/collection/LongSparseArray;Z)V

    .line 359
    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v18

    move-wide/from16 v19, v8

    move-object/from16 v21, v6

    move-wide/from16 v22, v12

    invoke-virtual/range {v18 .. v23}, Lorg/telegram/messenger/MessagesController;->deleteMessagesByPush(JLjava/util/ArrayList;J)V

    .line 360
    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v2, :cond_72

    .line 361
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " received "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " mids = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    goto/16 :goto_35

    :cond_21
    const-string v7, "READ_REACTION"

    .line 363
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_23

    .line 364
    invoke-virtual {v11, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 365
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 366
    new-instance v4, Landroidx/collection/LongSparseArray;

    invoke-direct {v4}, Landroidx/collection/LongSparseArray;-><init>()V

    .line 367
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 368
    new-instance v7, Landroid/util/SparseBooleanArray;

    invoke-direct {v7}, Landroid/util/SparseBooleanArray;-><init>()V

    const/4 v11, 0x0

    .line 369
    :goto_12
    array-length v15, v2

    if-ge v11, v15, :cond_22

    .line 370
    aget-object v15, v2, v11

    invoke-static {v15}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    move-object/from16 p0, v2

    .line 371
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    .line 372
    invoke-virtual {v7, v15, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v2, p0

    goto :goto_12

    :cond_22
    neg-long v11, v12

    .line 374
    invoke-virtual {v4, v11, v12, v6}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 375
    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/NotificationsController;->getInstance(I)Lorg/telegram/messenger/NotificationsController;

    move-result-object v2

    const/4 v11, 0x1

    invoke-virtual {v2, v4, v11}, Lorg/telegram/messenger/NotificationsController;->removeDeletedMessagesFromNotifications(Landroidx/collection/LongSparseArray;Z)V

    .line 377
    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2, v8, v9, v14, v7}, Lorg/telegram/messenger/MessagesController;->checkUnreadReactions(JILandroid/util/SparseBooleanArray;)V

    .line 378
    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v2, :cond_72

    .line 379
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " received "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " mids = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    goto/16 :goto_35

    .line 381
    :cond_23
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_72

    const-string v3, "msg_id"

    .line 383
    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_24

    const-string v3, "msg_id"

    .line 384
    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_13

    :cond_24
    const/4 v3, 0x0

    :goto_13
    const-string v7, "random_id"

    .line 390
    invoke-virtual {v11, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_25

    const-string v7, "random_id"

    .line 391
    invoke-virtual {v11, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/telegram/messenger/Utilities;->parseLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v23

    move/from16 v29, v14

    move v7, v15

    move-wide/from16 v14, v23

    goto :goto_14

    :cond_25
    move/from16 v29, v14

    move v7, v15

    const-wide/16 v14, 0x0

    :goto_14
    if-eqz v3, :cond_28

    move-object/from16 v23, v4

    .line 398
    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Lj$/util/concurrent/ConcurrentHashMap;

    move/from16 v24, v7

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v7}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-nez v4, :cond_26

    .line 400
    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    const/4 v7, 0x0

    invoke-virtual {v4, v7, v8, v9}, Lorg/telegram/messenger/MessagesStorage;->getDialogReadMax(ZJ)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 401
    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget-object v7, v7, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Lj$/util/concurrent/ConcurrentHashMap;

    move-object/from16 v25, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v7, v10, v4}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    :cond_26
    move-object/from16 v25, v10

    .line 403
    :goto_15
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v3, v4, :cond_27

    :goto_16
    const/4 v4, 0x1

    goto :goto_17

    :cond_27
    const/4 v4, 0x0

    goto :goto_17

    :cond_28
    move-object/from16 v23, v4

    move/from16 v24, v7

    move-object/from16 v25, v10

    const-wide/16 v18, 0x0

    cmp-long v4, v14, v18

    if-eqz v4, :cond_27

    .line 407
    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    invoke-virtual {v4, v14, v15}, Lorg/telegram/messenger/MessagesStorage;->checkMessageByRandomId(J)Z

    move-result v4

    if-nez v4, :cond_27

    goto :goto_16

    .line 412
    :goto_17
    invoke-virtual {v5, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_7

    const-string v10, "CHAT_REACT_"

    if-nez v7, :cond_29

    :try_start_23
    invoke-virtual {v5, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2a

    :cond_29
    const/4 v4, 0x1

    :cond_2a
    if-eqz v4, :cond_72

    const-string v4, "chat_from_id"

    move-object v7, v2

    move/from16 v30, v3

    move-wide/from16 v26, v14

    const-wide/16 v14, 0x0

    .line 417
    invoke-virtual {v11, v4, v14, v15}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    const-string v4, "chat_from_broadcast_id"

    move-wide/from16 v34, v12

    .line 418
    invoke-virtual {v11, v4, v14, v15}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v12

    const-string v4, "chat_from_group_id"

    .line 419
    invoke-virtual {v11, v4, v14, v15}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v36

    cmp-long v4, v2, v14

    if-nez v4, :cond_2c

    cmp-long v38, v36, v14

    if-eqz v38, :cond_2b

    goto :goto_18

    :cond_2b
    const/4 v14, 0x0

    goto :goto_19

    :cond_2c
    :goto_18
    const/4 v14, 0x1

    :goto_19
    const-string v15, "mention"

    .line 422
    invoke-virtual {v11, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2d

    const-string v15, "mention"

    invoke-virtual {v11, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15

    if-eqz v15, :cond_2d

    const/16 v38, 0x1

    goto :goto_1a

    :cond_2d
    const/16 v38, 0x0

    :goto_1a
    const-string v15, "silent"

    .line 423
    invoke-virtual {v11, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2e

    const-string v15, "silent"

    invoke-virtual {v11, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15

    if-eqz v15, :cond_2e

    const/16 v39, 0x1

    goto :goto_1b

    :cond_2e
    const/16 v39, 0x0

    :goto_1b
    const-string v15, "loc_args"

    .line 426
    invoke-virtual {v6, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2f

    const-string v15, "loc_args"

    .line 427
    invoke-virtual {v6, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 428
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v15

    move-wide/from16 v40, v2

    new-array v2, v15, [Ljava/lang/String;

    const/4 v3, 0x0

    :goto_1c
    if-ge v3, v15, :cond_30

    .line 430
    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v42

    aput-object v42, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    :cond_2f
    move-wide/from16 v40, v2

    const/4 v2, 0x0

    :cond_30
    const/4 v3, 0x0

    .line 437
    aget-object v6, v2, v3

    const-string v3, "edit_date"

    .line 443
    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    const-string v11, "CHAT_"

    .line 444
    invoke-virtual {v5, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_33

    .line 445
    invoke-static {v8, v9}, Lorg/telegram/messenger/UserObject;->isReplyUser(J)Z

    move-result v11

    if-eqz v11, :cond_31

    .line 446
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " @ "

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    aget-object v15, v2, v6

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1f

    :cond_31
    const-wide/16 v18, 0x0

    cmp-long v11, v34, v18

    if-eqz v11, :cond_32

    const/4 v11, 0x1

    goto :goto_1d

    :cond_32
    const/4 v11, 0x0

    :goto_1d
    const/4 v15, 0x1

    .line 450
    aget-object v42, v2, v15

    const/4 v15, 0x0

    const/16 v43, 0x0

    move/from16 v52, v11

    move-object v11, v6

    move-object/from16 v6, v42

    move/from16 v42, v52

    goto :goto_21

    :cond_33
    const-string v11, "PINNED_"

    .line 452
    invoke-virtual {v5, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_35

    const-wide/16 v18, 0x0

    cmp-long v11, v34, v18

    if-eqz v11, :cond_34

    const/4 v11, 0x1

    goto :goto_1e

    :cond_34
    const/4 v11, 0x0

    :goto_1e
    move/from16 v42, v11

    const/4 v11, 0x0

    const/4 v15, 0x0

    const/16 v43, 0x1

    goto :goto_21

    :cond_35
    const-string v11, "CHANNEL_"

    .line 455
    invoke-virtual {v5, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_36

    const/4 v11, 0x0

    const/4 v15, 0x1

    goto :goto_20

    :cond_36
    :goto_1f
    const/4 v11, 0x0

    const/4 v15, 0x0

    :goto_20
    const/16 v42, 0x0

    const/16 v43, 0x0

    .line 459
    :goto_21
    sget-boolean v44, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v44, :cond_37

    move-object/from16 v44, v6

    .line 460
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " received message notification "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v25

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " mid = "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v30

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    goto :goto_22

    :cond_37
    move-object/from16 v44, v6

    move/from16 v1, v30

    .line 462
    :goto_22
    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_63

    invoke-virtual {v5, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_38

    goto/16 :goto_2a

    .line 465
    :cond_38
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_1

    goto/16 :goto_24

    :sswitch_4
    const-string v6, "CHAT_MESSAGE_GEOLIVE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    const/16 v6, 0x3d

    goto/16 :goto_23

    :sswitch_5
    const-string v6, "CHANNEL_MESSAGE_PHOTOS"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    const/16 v6, 0x2c

    goto/16 :goto_23

    :sswitch_6
    const-string v6, "CHANNEL_MESSAGE_NOTEXT"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    const/16 v6, 0x1d

    goto/16 :goto_23

    :sswitch_7
    const-string v6, "CHANNEL_MESSAGE_PLAYLIST"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    const/16 v6, 0x2e

    goto/16 :goto_23

    :sswitch_8
    const-string v6, "PINNED_CONTACT"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    const/16 v6, 0x5f

    goto/16 :goto_23

    :sswitch_9
    const-string v6, "CHAT_PHOTO_EDITED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    const/16 v6, 0x45

    goto/16 :goto_23

    :sswitch_a
    const-string v6, "LOCKED_MESSAGE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    const/16 v6, 0x6d

    goto/16 :goto_23

    :sswitch_b
    const-string v6, "CHAT_MESSAGE_PLAYLIST"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    const/16 v6, 0x54

    goto/16 :goto_23

    :sswitch_c
    const-string v6, "CHANNEL_MESSAGES"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    const/16 v6, 0x30

    goto/16 :goto_23

    :sswitch_d
    const-string v6, "MESSAGE_INVOICE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    const/16 v6, 0x16

    goto/16 :goto_23

    :sswitch_e
    const-string v6, "CHAT_MESSAGE_VIDEO"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    const/16 v6, 0x34

    goto/16 :goto_23

    :sswitch_f
    const-string v6, "CHAT_MESSAGE_ROUND"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    const/16 v6, 0x35

    goto/16 :goto_23

    :sswitch_10
    const-string v6, "CHAT_MESSAGE_PHOTO"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    const/16 v6, 0x33

    goto/16 :goto_23

    :sswitch_11
    const-string v6, "CHAT_MESSAGE_AUDIO"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    const/16 v6, 0x38

    goto/16 :goto_23

    :sswitch_12
    const-string v6, "MESSAGE_PLAYLIST"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    const/16 v6, 0x1a

    goto/16 :goto_23

    :sswitch_13
    const-string v6, "MESSAGE_VIDEOS"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    const/16 v6, 0x19

    goto/16 :goto_23

    :sswitch_14
    const-string v6, "PHONE_CALL_MISSED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    const/16 v6, 0x72

    goto/16 :goto_23

    :sswitch_15
    const-string v6, "MESSAGE_PHOTOS"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    const/16 v6, 0x18

    goto/16 :goto_23

    :sswitch_16
    const-string v6, "CHAT_MESSAGE_VIDEOS"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    const/16 v6, 0x53

    goto/16 :goto_23

    :sswitch_17
    const-string v6, "MESSAGE_NOTEXT"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    move-object/from16 p0, v10

    const/4 v6, 0x3

    goto/16 :goto_25

    :sswitch_18
    const-string v6, "MESSAGE_GIF"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    const/16 v6, 0x12

    goto/16 :goto_23

    :sswitch_19
    const-string v6, "MESSAGE_GEO"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    const/16 v6, 0x10

    goto/16 :goto_23

    :sswitch_1a
    const-string v6, "MESSAGE_DOC"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    const/16 v6, 0xa

    goto/16 :goto_23

    :sswitch_1b
    const-string v6, "CHAT_MESSAGE_GAME_SCORE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    const/16 v6, 0x40

    goto/16 :goto_23

    :sswitch_1c
    const-string v6, "CHANNEL_MESSAGE_GEOLIVE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    const/16 v6, 0x28

    goto/16 :goto_23

    :sswitch_1d
    const-string v6, "CHAT_MESSAGE_PHOTOS"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    const/16 v6, 0x52

    goto/16 :goto_23

    :sswitch_1e
    const-string v6, "CHAT_MESSAGE_NOTEXT"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    const/16 v6, 0x32

    goto/16 :goto_23

    :sswitch_1f
    const-string v6, "CHAT_TITLE_EDITED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    const/16 v6, 0x44

    goto/16 :goto_23

    :sswitch_20
    const-string v6, "PINNED_NOTEXT"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    const/16 v6, 0x58

    goto/16 :goto_23

    :sswitch_21
    const-string v6, "MESSAGE_TEXT"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    move-object/from16 p0, v10

    const/4 v6, 0x1

    goto/16 :goto_25

    :sswitch_22
    const-string v6, "MESSAGE_QUIZ"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    const/16 v6, 0xe

    goto/16 :goto_23

    :sswitch_23
    const-string v6, "MESSAGE_POLL"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    const/16 v6, 0xf

    goto/16 :goto_23

    :sswitch_24
    const-string v6, "MESSAGE_GAME"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    const/16 v6, 0x13

    goto/16 :goto_23

    :sswitch_25
    const-string v6, "MESSAGE_FWDS"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    const/16 v6, 0x17

    goto/16 :goto_23

    :sswitch_26
    const-string v6, "MESSAGE_DOCS"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    const/16 v6, 0x1b

    goto/16 :goto_23

    :sswitch_27
    const-string v6, "CHAT_MESSAGE_TEXT"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    const/16 v6, 0x31

    goto/16 :goto_23

    :sswitch_28
    const-string v6, "CHAT_MESSAGE_QUIZ"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    const/16 v6, 0x3a

    goto/16 :goto_23

    :sswitch_29
    const-string v6, "CHAT_MESSAGE_POLL"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    const/16 v6, 0x3b

    goto/16 :goto_23

    :sswitch_2a
    const-string v6, "CHAT_MESSAGE_GAME"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    const/16 v6, 0x3f

    goto/16 :goto_23

    :sswitch_2b
    const-string v6, "CHAT_MESSAGE_FWDS"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    const/16 v6, 0x51

    goto/16 :goto_23

    :sswitch_2c
    const-string v6, "CHAT_MESSAGE_DOCS"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    const/16 v6, 0x55

    goto/16 :goto_23

    :sswitch_2d
    const-string v6, "CHANNEL_MESSAGE_GAME_SCORE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    const/16 v6, 0x15

    goto/16 :goto_23

    :sswitch_2e
    const-string v6, "PINNED_GEOLIVE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    const/16 v6, 0x63

    goto/16 :goto_23

    :sswitch_2f
    const-string v6, "MESSAGE_CONTACT"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    const/16 v6, 0xd

    goto/16 :goto_23

    :sswitch_30
    const-string v6, "PINNED_VIDEO"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    const/16 v6, 0x5a

    goto/16 :goto_23

    :sswitch_31
    const-string v6, "PINNED_ROUND"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    const/16 v6, 0x5b

    goto/16 :goto_23

    :sswitch_32
    const-string v6, "PINNED_PHOTO"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    const/16 v6, 0x59

    goto/16 :goto_23

    :sswitch_33
    const-string v6, "PINNED_AUDIO"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    const/16 v6, 0x5e

    goto/16 :goto_23

    :sswitch_34
    const-string v6, "MESSAGE_PHOTO_SECRET"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    const/4 v6, 0x5

    goto/16 :goto_23

    :sswitch_35
    const-string v6, "CHAT_VOICECHAT_INVITE_YOU"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    const/16 v6, 0x4a

    goto/16 :goto_23

    :sswitch_36
    const-string v6, "CHANNEL_MESSAGE_VIDEO"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    const/16 v6, 0x1f

    goto/16 :goto_23

    :sswitch_37
    const-string v6, "CHANNEL_MESSAGE_ROUND"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    const/16 v6, 0x20

    goto/16 :goto_23

    :sswitch_38
    const-string v6, "CHANNEL_MESSAGE_PHOTO"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    const/16 v6, 0x1e

    goto/16 :goto_23

    :sswitch_39
    const-string v6, "CHAT_VOICECHAT_END"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    const/16 v6, 0x49

    goto/16 :goto_23

    :sswitch_3a
    const-string v6, "CHANNEL_MESSAGE_AUDIO"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    const/16 v6, 0x23

    goto/16 :goto_23

    :sswitch_3b
    const-string v6, "CHAT_MESSAGE_STICKER"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    const/16 v6, 0x37

    goto/16 :goto_23

    :sswitch_3c
    const-string v6, "MESSAGES"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    const/16 v6, 0x1c

    goto/16 :goto_23

    :sswitch_3d
    const-string v6, "CHAT_MESSAGE_GIF"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    const/16 v6, 0x3e

    goto/16 :goto_23

    :sswitch_3e
    const-string v6, "CHAT_MESSAGE_GEO"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    const/16 v6, 0x3c

    goto/16 :goto_23

    :sswitch_3f
    const-string v6, "CHAT_MESSAGE_DOC"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    const/16 v6, 0x36

    goto/16 :goto_23

    :sswitch_40
    const-string v6, "CHAT_VOICECHAT_INVITE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    const/16 v6, 0x48

    goto/16 :goto_23

    :sswitch_41
    const-string v6, "CHAT_LEFT"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    const/16 v6, 0x4d

    goto/16 :goto_23

    :sswitch_42
    const-string v6, "CHAT_ADD_YOU"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    const/16 v6, 0x43

    goto/16 :goto_23

    :sswitch_43
    const-string v6, "REACT_TEXT"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    const/16 v6, 0x69

    goto/16 :goto_23

    :sswitch_44
    const-string v6, "CHAT_DELETE_MEMBER"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    const/16 v6, 0x4b

    goto/16 :goto_23

    :sswitch_45
    const-string v6, "MESSAGE_SCREENSHOT"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    move-object/from16 p0, v10

    const/16 v6, 0x8

    goto/16 :goto_25

    :sswitch_46
    const-string v6, "AUTH_REGION"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    const/16 v6, 0x6c

    goto/16 :goto_23

    :sswitch_47
    const-string v6, "CONTACT_JOINED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    const/16 v6, 0x6a

    goto/16 :goto_23

    :sswitch_48
    const-string v6, "CHAT_MESSAGE_INVOICE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    const/16 v6, 0x41

    goto/16 :goto_23

    :sswitch_49
    const-string v6, "ENCRYPTION_REQUEST"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    const/16 v6, 0x6e

    goto/16 :goto_23

    :sswitch_4a
    const-string v6, "MESSAGE_GEOLIVE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    const/16 v6, 0x11

    goto/16 :goto_23

    :sswitch_4b
    const-string v6, "CHAT_DELETE_YOU"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    const/16 v6, 0x4c

    goto/16 :goto_23

    :sswitch_4c
    const-string v6, "AUTH_UNKNOWN"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    const/16 v6, 0x6b

    goto/16 :goto_23

    :sswitch_4d
    const-string v6, "PINNED_GIF"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    const/16 v6, 0x67

    goto/16 :goto_23

    :sswitch_4e
    const-string v6, "PINNED_GEO"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    const/16 v6, 0x62

    goto/16 :goto_23

    :sswitch_4f
    const-string v6, "PINNED_DOC"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    const/16 v6, 0x5c

    goto/16 :goto_23

    :sswitch_50
    const-string v6, "PINNED_GAME_SCORE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    const/16 v6, 0x65

    goto/16 :goto_23

    :sswitch_51
    const-string v6, "CHANNEL_MESSAGE_STICKER"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    const/16 v6, 0x22

    goto/16 :goto_23

    :sswitch_52
    const-string v6, "PHONE_CALL_REQUEST"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    const/16 v6, 0x70

    goto/16 :goto_23

    :sswitch_53
    const-string v6, "PINNED_STICKER"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    const/16 v6, 0x5d

    goto/16 :goto_23

    :sswitch_54
    const-string v6, "PINNED_TEXT"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    const/16 v6, 0x57

    goto/16 :goto_23

    :sswitch_55
    const-string v6, "PINNED_QUIZ"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    const/16 v6, 0x60

    goto/16 :goto_23

    :sswitch_56
    const-string v6, "PINNED_POLL"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    const/16 v6, 0x61

    goto/16 :goto_23

    :sswitch_57
    const-string v6, "PINNED_GAME"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    const/16 v6, 0x64

    goto/16 :goto_23

    :sswitch_58
    const-string v6, "CHAT_MESSAGE_CONTACT"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    const/16 v6, 0x39

    goto/16 :goto_23

    :sswitch_59
    const-string v6, "MESSAGE_VIDEO_SECRET"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    const/4 v6, 0x7

    goto/16 :goto_23

    :sswitch_5a
    const-string v6, "CHANNEL_MESSAGE_TEXT"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    move-object/from16 p0, v10

    const/4 v6, 0x2

    goto/16 :goto_25

    :sswitch_5b
    const-string v6, "CHANNEL_MESSAGE_QUIZ"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    const/16 v6, 0x25

    goto/16 :goto_23

    :sswitch_5c
    const-string v6, "CHANNEL_MESSAGE_POLL"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    const/16 v6, 0x26

    goto/16 :goto_23

    :sswitch_5d
    const-string v6, "CHANNEL_MESSAGE_GAME"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    const/16 v6, 0x2a

    goto/16 :goto_23

    :sswitch_5e
    const-string v6, "CHANNEL_MESSAGE_FWDS"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    const/16 v6, 0x2b

    goto/16 :goto_23

    :sswitch_5f
    const-string v6, "CHANNEL_MESSAGE_DOCS"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    const/16 v6, 0x2f

    goto/16 :goto_23

    :sswitch_60
    const-string v6, "PINNED_INVOICE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    const/16 v6, 0x66

    goto/16 :goto_23

    :sswitch_61
    const-string v6, "CHAT_RETURNED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    const/16 v6, 0x4e

    goto/16 :goto_23

    :sswitch_62
    const-string v6, "ENCRYPTED_MESSAGE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    const/16 v6, 0x68

    goto/16 :goto_23

    :sswitch_63
    const-string v6, "ENCRYPTION_ACCEPT"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    const/16 v6, 0x6f

    goto/16 :goto_23

    :sswitch_64
    const-string v6, "MESSAGE_VIDEO"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    const/4 v6, 0x6

    goto/16 :goto_23

    :sswitch_65
    const-string v6, "MESSAGE_ROUND"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    const/16 v6, 0x9

    goto/16 :goto_23

    :sswitch_66
    const-string v6, "MESSAGE_PHOTO"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    const/4 v6, 0x4

    goto/16 :goto_23

    :sswitch_67
    const-string v6, "MESSAGE_MUTED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    const/16 v6, 0x71

    goto/16 :goto_23

    :sswitch_68
    const-string v6, "MESSAGE_AUDIO"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    const/16 v6, 0xc

    goto/16 :goto_23

    :sswitch_69
    const-string v6, "MESSAGE_RECURRING_PAY"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    move-object/from16 p0, v10

    const/4 v6, 0x0

    goto/16 :goto_25

    :sswitch_6a
    const-string v6, "CHAT_MESSAGES"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    const/16 v6, 0x56

    goto/16 :goto_23

    :sswitch_6b
    const-string v6, "CHAT_VOICECHAT_START"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    const/16 v6, 0x47

    goto/16 :goto_23

    :sswitch_6c
    const-string v6, "CHAT_REQ_JOINED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    const/16 v6, 0x50

    goto/16 :goto_23

    :sswitch_6d
    const-string v6, "CHAT_JOINED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    const/16 v6, 0x4f

    goto :goto_23

    :sswitch_6e
    const-string v6, "CHAT_ADD_MEMBER"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    const/16 v6, 0x46

    goto :goto_23

    :sswitch_6f
    const-string v6, "CHANNEL_MESSAGE_GIF"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    const/16 v6, 0x29

    goto :goto_23

    :sswitch_70
    const-string v6, "CHANNEL_MESSAGE_GEO"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    const/16 v6, 0x27

    goto :goto_23

    :sswitch_71
    const-string v6, "CHANNEL_MESSAGE_DOC"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    const/16 v6, 0x21

    goto :goto_23

    :sswitch_72
    const-string v6, "CHANNEL_MESSAGE_VIDEOS"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    const/16 v6, 0x2d

    goto :goto_23

    :sswitch_73
    const-string v6, "MESSAGE_STICKER"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    const/16 v6, 0xb

    goto :goto_23

    :sswitch_74
    const-string v6, "CHAT_CREATED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    const/16 v6, 0x42

    goto :goto_23

    :sswitch_75
    const-string v6, "CHANNEL_MESSAGE_CONTACT"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    const/16 v6, 0x24

    goto :goto_23

    :sswitch_76
    const-string v6, "MESSAGE_GAME_SCORE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_7

    if-eqz v6, :cond_39

    const/16 v6, 0x14

    :goto_23
    move-object/from16 p0, v10

    goto :goto_25

    :cond_39
    :goto_24
    move-object/from16 p0, v10

    const/4 v6, -0x1

    :goto_25
    const-string v10, "Files"

    move-object/from16 v30, v7

    const-string v7, "MusicFiles"

    move/from16 v45, v3

    const-string v3, "Videos"

    move/from16 v25, v15

    const-string v15, "Photos"

    move-object/from16 v46, v11

    const-string v11, " "

    move/from16 v47, v4

    const-string v4, "NotificationGroupFew"

    move-wide/from16 v48, v12

    const-string v12, "NotificationMessageFew"

    const-string v13, "ChannelMessageFew"

    move-wide/from16 v50, v8

    const-string v8, "AttachSticker"

    packed-switch v6, :pswitch_data_0

    .line 1126
    :try_start_24
    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    goto/16 :goto_29

    :pswitch_0
    const-string v2, "YouHaveNewMessage"

    .line 1104
    sget v3, Lorg/telegram/messenger/R$string;->YouHaveNewMessage:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SecretChatName"

    .line 1105
    sget v4, Lorg/telegram/messenger/R$string;->SecretChatName:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v44, v3

    goto/16 :goto_26

    :pswitch_1
    if-lez v24, :cond_3a

    const-string v3, "NotificationActionPinnedGifUser"

    .line 1093
    sget v4, Lorg/telegram/messenger/R$string;->NotificationActionPinnedGifUser:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v8, v2, v7

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aget-object v2, v2, v7

    aput-object v2, v6, v7

    invoke-static {v3, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2b

    :cond_3a
    if-eqz v14, :cond_3b

    const-string v3, "NotificationActionPinnedGif"

    .line 1096
    sget v4, Lorg/telegram/messenger/R$string;->NotificationActionPinnedGif:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v8, v2, v7

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aget-object v2, v2, v7

    aput-object v2, v6, v7

    invoke-static {v3, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2b

    :cond_3b
    const-string v3, "NotificationActionPinnedGifChannel"

    .line 1098
    sget v4, Lorg/telegram/messenger/R$string;->NotificationActionPinnedGifChannel:I

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget-object v2, v2, v6

    aput-object v2, v7, v6

    invoke-static {v3, v4, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2b

    :pswitch_2
    if-lez v24, :cond_3c

    const-string v3, "NotificationActionPinnedInvoiceUser"

    .line 1081
    sget v4, Lorg/telegram/messenger/R$string;->NotificationActionPinnedInvoiceUser:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v8, v2, v7

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aget-object v2, v2, v7

    aput-object v2, v6, v7

    invoke-static {v3, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2b

    :cond_3c
    if-eqz v14, :cond_3d

    const-string v3, "NotificationActionPinnedInvoice"

    .line 1084
    sget v4, Lorg/telegram/messenger/R$string;->NotificationActionPinnedInvoice:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v8, v2, v7

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aget-object v2, v2, v7

    aput-object v2, v6, v7

    invoke-static {v3, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2b

    :cond_3d
    const-string v3, "NotificationActionPinnedInvoiceChannel"

    .line 1086
    sget v4, Lorg/telegram/messenger/R$string;->NotificationActionPinnedInvoiceChannel:I

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget-object v2, v2, v6

    aput-object v2, v7, v6

    invoke-static {v3, v4, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2b

    :pswitch_3
    if-lez v24, :cond_3e

    const-string v3, "NotificationActionPinnedGameScoreUser"

    .line 1069
    sget v4, Lorg/telegram/messenger/R$string;->NotificationActionPinnedGameScoreUser:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v8, v2, v7

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aget-object v2, v2, v7

    aput-object v2, v6, v7

    invoke-static {v3, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2b

    :cond_3e
    if-eqz v14, :cond_3f

    const-string v3, "NotificationActionPinnedGameScore"

    .line 1072
    sget v4, Lorg/telegram/messenger/R$string;->NotificationActionPinnedGameScore:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v8, v2, v7

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aget-object v2, v2, v7

    aput-object v2, v6, v7

    invoke-static {v3, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2b

    :cond_3f
    const-string v3, "NotificationActionPinnedGameScoreChannel"

    .line 1074
    sget v4, Lorg/telegram/messenger/R$string;->NotificationActionPinnedGameScoreChannel:I

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget-object v2, v2, v6

    aput-object v2, v7, v6

    invoke-static {v3, v4, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2b

    :pswitch_4
    if-lez v24, :cond_40

    const-string v3, "NotificationActionPinnedGameUser"

    .line 1057
    sget v4, Lorg/telegram/messenger/R$string;->NotificationActionPinnedGameUser:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v8, v2, v7

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aget-object v2, v2, v7

    aput-object v2, v6, v7

    invoke-static {v3, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2b

    :cond_40
    if-eqz v14, :cond_41

    const-string v3, "NotificationActionPinnedGame"

    .line 1060
    sget v4, Lorg/telegram/messenger/R$string;->NotificationActionPinnedGame:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v8, v2, v7

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aget-object v2, v2, v7

    aput-object v2, v6, v7

    invoke-static {v3, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2b

    :cond_41
    const-string v3, "NotificationActionPinnedGameChannel"

    .line 1062
    sget v4, Lorg/telegram/messenger/R$string;->NotificationActionPinnedGameChannel:I

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget-object v2, v2, v6

    aput-object v2, v7, v6

    invoke-static {v3, v4, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2b

    :pswitch_5
    if-lez v24, :cond_42

    const-string v3, "NotificationActionPinnedGeoLiveUser"

    .line 1045
    sget v4, Lorg/telegram/messenger/R$string;->NotificationActionPinnedGeoLiveUser:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v8, v2, v7

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aget-object v2, v2, v7

    aput-object v2, v6, v7

    invoke-static {v3, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2b

    :cond_42
    if-eqz v14, :cond_43

    const-string v3, "NotificationActionPinnedGeoLive"

    .line 1048
    sget v4, Lorg/telegram/messenger/R$string;->NotificationActionPinnedGeoLive:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v8, v2, v7

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aget-object v2, v2, v7

    aput-object v2, v6, v7

    invoke-static {v3, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2b

    :cond_43
    const-string v3, "NotificationActionPinnedGeoLiveChannel"

    .line 1050
    sget v4, Lorg/telegram/messenger/R$string;->NotificationActionPinnedGeoLiveChannel:I

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget-object v2, v2, v6

    aput-object v2, v7, v6

    invoke-static {v3, v4, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2b

    :pswitch_6
    if-lez v24, :cond_44

    const-string v3, "NotificationActionPinnedGeoUser"

    .line 1033
    sget v4, Lorg/telegram/messenger/R$string;->NotificationActionPinnedGeoUser:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v8, v2, v7

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aget-object v2, v2, v7

    aput-object v2, v6, v7

    invoke-static {v3, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2b

    :cond_44
    if-eqz v14, :cond_45

    const-string v3, "NotificationActionPinnedGeo"

    .line 1036
    sget v4, Lorg/telegram/messenger/R$string;->NotificationActionPinnedGeo:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v8, v2, v7

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aget-object v2, v2, v7

    aput-object v2, v6, v7

    invoke-static {v3, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2b

    :cond_45
    const-string v3, "NotificationActionPinnedGeoChannel"

    .line 1038
    sget v4, Lorg/telegram/messenger/R$string;->NotificationActionPinnedGeoChannel:I

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget-object v2, v2, v6

    aput-object v2, v7, v6

    invoke-static {v3, v4, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2b

    :pswitch_7
    if-lez v24, :cond_46

    const-string v3, "NotificationActionPinnedPollUser"

    .line 1021
    sget v4, Lorg/telegram/messenger/R$string;->NotificationActionPinnedPollUser:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v8, v2, v7

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aget-object v2, v2, v7

    aput-object v2, v6, v7

    invoke-static {v3, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2b

    :cond_46
    if-eqz v14, :cond_47

    const-string v3, "NotificationActionPinnedPoll2"

    .line 1024
    sget v4, Lorg/telegram/messenger/R$string;->NotificationActionPinnedPoll2:I

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v8, v2, v7

    aput-object v8, v6, v7

    const/4 v7, 0x2

    aget-object v8, v2, v7

    const/4 v9, 0x1

    aput-object v8, v6, v9

    aget-object v2, v2, v9

    aput-object v2, v6, v7

    invoke-static {v3, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2b

    :cond_47
    const-string v3, "NotificationActionPinnedPollChannel2"

    .line 1026
    sget v4, Lorg/telegram/messenger/R$string;->NotificationActionPinnedPollChannel2:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v8, v2, v7

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aget-object v2, v2, v7

    aput-object v2, v6, v7

    invoke-static {v3, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2b

    :pswitch_8
    if-lez v24, :cond_48

    const-string v3, "NotificationActionPinnedQuizUser"

    .line 1009
    sget v4, Lorg/telegram/messenger/R$string;->NotificationActionPinnedQuizUser:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v8, v2, v7

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aget-object v2, v2, v7

    aput-object v2, v6, v7

    invoke-static {v3, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2b

    :cond_48
    if-eqz v14, :cond_49

    const-string v3, "NotificationActionPinnedQuiz2"

    .line 1012
    sget v4, Lorg/telegram/messenger/R$string;->NotificationActionPinnedQuiz2:I

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v8, v2, v7

    aput-object v8, v6, v7

    const/4 v7, 0x2

    aget-object v8, v2, v7

    const/4 v9, 0x1

    aput-object v8, v6, v9

    aget-object v2, v2, v9

    aput-object v2, v6, v7

    invoke-static {v3, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2b

    :cond_49
    const-string v3, "NotificationActionPinnedQuizChannel2"

    .line 1014
    sget v4, Lorg/telegram/messenger/R$string;->NotificationActionPinnedQuizChannel2:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v8, v2, v7

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aget-object v2, v2, v7

    aput-object v2, v6, v7

    invoke-static {v3, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2b

    :pswitch_9
    if-lez v24, :cond_4a

    const-string v3, "NotificationActionPinnedContactUser"

    .line 997
    sget v4, Lorg/telegram/messenger/R$string;->NotificationActionPinnedContactUser:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v8, v2, v7

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aget-object v2, v2, v7

    aput-object v2, v6, v7

    invoke-static {v3, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2b

    :cond_4a
    if-eqz v14, :cond_4b

    const-string v3, "NotificationActionPinnedContact2"

    .line 1000
    sget v4, Lorg/telegram/messenger/R$string;->NotificationActionPinnedContact2:I

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v8, v2, v7

    aput-object v8, v6, v7

    const/4 v7, 0x2

    aget-object v8, v2, v7

    const/4 v9, 0x1

    aput-object v8, v6, v9

    aget-object v2, v2, v9

    aput-object v2, v6, v7

    invoke-static {v3, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2b

    :cond_4b
    const-string v3, "NotificationActionPinnedContactChannel2"

    .line 1002
    sget v4, Lorg/telegram/messenger/R$string;->NotificationActionPinnedContactChannel2:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v8, v2, v7

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aget-object v2, v2, v7

    aput-object v2, v6, v7

    invoke-static {v3, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2b

    :pswitch_a
    if-lez v24, :cond_4c

    const-string v3, "NotificationActionPinnedVoiceUser"

    .line 985
    sget v4, Lorg/telegram/messenger/R$string;->NotificationActionPinnedVoiceUser:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v8, v2, v7

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aget-object v2, v2, v7

    aput-object v2, v6, v7

    invoke-static {v3, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2b

    :cond_4c
    if-eqz v14, :cond_4d

    const-string v3, "NotificationActionPinnedVoice"

    .line 988
    sget v4, Lorg/telegram/messenger/R$string;->NotificationActionPinnedVoice:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v8, v2, v7

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aget-object v2, v2, v7

    aput-object v2, v6, v7

    invoke-static {v3, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2b

    :cond_4d
    const-string v3, "NotificationActionPinnedVoiceChannel"

    .line 990
    sget v4, Lorg/telegram/messenger/R$string;->NotificationActionPinnedVoiceChannel:I

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget-object v2, v2, v6

    aput-object v2, v7, v6

    invoke-static {v3, v4, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2b

    :pswitch_b
    if-lez v24, :cond_4f

    .line 961
    array-length v3, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_4e

    aget-object v3, v2, v4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4e

    const-string v3, "NotificationActionPinnedStickerEmojiUser"

    .line 962
    sget v4, Lorg/telegram/messenger/R$string;->NotificationActionPinnedStickerEmojiUser:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v8, v2, v7

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aget-object v2, v2, v7

    aput-object v2, v6, v7

    invoke-static {v3, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2b

    :cond_4e
    const-string v3, "NotificationActionPinnedStickerUser"

    .line 964
    sget v4, Lorg/telegram/messenger/R$string;->NotificationActionPinnedStickerUser:I

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget-object v2, v2, v6

    aput-object v2, v7, v6

    invoke-static {v3, v4, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2b

    :cond_4f
    if-eqz v14, :cond_51

    .line 968
    array-length v3, v2

    const/4 v4, 0x2

    if-le v3, v4, :cond_50

    aget-object v3, v2, v4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_50

    const-string v3, "NotificationActionPinnedStickerEmoji"

    .line 969
    sget v4, Lorg/telegram/messenger/R$string;->NotificationActionPinnedStickerEmoji:I

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v8, v2, v7

    aput-object v8, v6, v7

    const/4 v7, 0x2

    aget-object v8, v2, v7

    const/4 v9, 0x1

    aput-object v8, v6, v9

    aget-object v2, v2, v9

    aput-object v2, v6, v7

    invoke-static {v3, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2b

    :cond_50
    const-string v3, "NotificationActionPinnedSticker"

    .line 971
    sget v4, Lorg/telegram/messenger/R$string;->NotificationActionPinnedSticker:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v8, v2, v7

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aget-object v2, v2, v7

    aput-object v2, v6, v7

    invoke-static {v3, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2b

    .line 974
    :cond_51
    array-length v3, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_52

    aget-object v3, v2, v4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_52

    const-string v3, "NotificationActionPinnedStickerEmojiChannel"

    .line 975
    sget v4, Lorg/telegram/messenger/R$string;->NotificationActionPinnedStickerEmojiChannel:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v8, v2, v7

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aget-object v2, v2, v7

    aput-object v2, v6, v7

    invoke-static {v3, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2b

    :cond_52
    const-string v3, "NotificationActionPinnedStickerChannel"

    .line 977
    sget v4, Lorg/telegram/messenger/R$string;->NotificationActionPinnedStickerChannel:I

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget-object v2, v2, v6

    aput-object v2, v7, v6

    invoke-static {v3, v4, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2b

    :pswitch_c
    if-lez v24, :cond_53

    const-string v3, "NotificationActionPinnedFileUser"

    .line 949
    sget v4, Lorg/telegram/messenger/R$string;->NotificationActionPinnedFileUser:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v8, v2, v7

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aget-object v2, v2, v7

    aput-object v2, v6, v7

    invoke-static {v3, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2b

    :cond_53
    if-eqz v14, :cond_54

    const-string v3, "NotificationActionPinnedFile"

    .line 952
    sget v4, Lorg/telegram/messenger/R$string;->NotificationActionPinnedFile:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v8, v2, v7

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aget-object v2, v2, v7

    aput-object v2, v6, v7

    invoke-static {v3, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2b

    :cond_54
    const-string v3, "NotificationActionPinnedFileChannel"

    .line 954
    sget v4, Lorg/telegram/messenger/R$string;->NotificationActionPinnedFileChannel:I

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget-object v2, v2, v6

    aput-object v2, v7, v6

    invoke-static {v3, v4, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2b

    :pswitch_d
    if-lez v24, :cond_55

    const-string v3, "NotificationActionPinnedRoundUser"

    .line 937
    sget v4, Lorg/telegram/messenger/R$string;->NotificationActionPinnedRoundUser:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v8, v2, v7

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aget-object v2, v2, v7

    aput-object v2, v6, v7

    invoke-static {v3, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2b

    :cond_55
    if-eqz v14, :cond_56

    const-string v3, "NotificationActionPinnedRound"

    .line 940
    sget v4, Lorg/telegram/messenger/R$string;->NotificationActionPinnedRound:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v8, v2, v7

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aget-object v2, v2, v7

    aput-object v2, v6, v7

    invoke-static {v3, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2b

    :cond_56
    const-string v3, "NotificationActionPinnedRoundChannel"

    .line 942
    sget v4, Lorg/telegram/messenger/R$string;->NotificationActionPinnedRoundChannel:I

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget-object v2, v2, v6

    aput-object v2, v7, v6

    invoke-static {v3, v4, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2b

    :pswitch_e
    if-lez v24, :cond_57

    const-string v3, "NotificationActionPinnedVideoUser"

    .line 925
    sget v4, Lorg/telegram/messenger/R$string;->NotificationActionPinnedVideoUser:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v8, v2, v7

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aget-object v2, v2, v7

    aput-object v2, v6, v7

    invoke-static {v3, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2b

    :cond_57
    if-eqz v14, :cond_58

    const-string v3, "NotificationActionPinnedVideo"

    .line 928
    sget v4, Lorg/telegram/messenger/R$string;->NotificationActionPinnedVideo:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v8, v2, v7

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aget-object v2, v2, v7

    aput-object v2, v6, v7

    invoke-static {v3, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2b

    :cond_58
    const-string v3, "NotificationActionPinnedVideoChannel"

    .line 930
    sget v4, Lorg/telegram/messenger/R$string;->NotificationActionPinnedVideoChannel:I

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget-object v2, v2, v6

    aput-object v2, v7, v6

    invoke-static {v3, v4, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2b

    :pswitch_f
    if-lez v24, :cond_59

    const-string v3, "NotificationActionPinnedPhotoUser"

    .line 913
    sget v4, Lorg/telegram/messenger/R$string;->NotificationActionPinnedPhotoUser:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v8, v2, v7

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aget-object v2, v2, v7

    aput-object v2, v6, v7

    invoke-static {v3, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2b

    :cond_59
    if-eqz v14, :cond_5a

    const-string v3, "NotificationActionPinnedPhoto"

    .line 916
    sget v4, Lorg/telegram/messenger/R$string;->NotificationActionPinnedPhoto:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v8, v2, v7

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aget-object v2, v2, v7

    aput-object v2, v6, v7

    invoke-static {v3, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2b

    :cond_5a
    const-string v3, "NotificationActionPinnedPhotoChannel"

    .line 918
    sget v4, Lorg/telegram/messenger/R$string;->NotificationActionPinnedPhotoChannel:I

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget-object v2, v2, v6

    aput-object v2, v7, v6

    invoke-static {v3, v4, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2b

    :pswitch_10
    if-lez v24, :cond_5b

    const-string v3, "NotificationActionPinnedNoTextUser"

    .line 901
    sget v4, Lorg/telegram/messenger/R$string;->NotificationActionPinnedNoTextUser:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v8, v2, v7

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aget-object v2, v2, v7

    aput-object v2, v6, v7

    invoke-static {v3, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2b

    :cond_5b
    if-eqz v14, :cond_5c

    const-string v3, "NotificationActionPinnedNoText"

    .line 904
    sget v4, Lorg/telegram/messenger/R$string;->NotificationActionPinnedNoText:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v8, v2, v7

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aget-object v2, v2, v7

    aput-object v2, v6, v7

    invoke-static {v3, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2b

    :cond_5c
    const-string v3, "NotificationActionPinnedNoTextChannel"

    .line 906
    sget v4, Lorg/telegram/messenger/R$string;->NotificationActionPinnedNoTextChannel:I

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget-object v2, v2, v6

    aput-object v2, v7, v6

    invoke-static {v3, v4, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2b

    :pswitch_11
    if-lez v24, :cond_5d

    const-string v3, "NotificationActionPinnedTextUser"

    .line 889
    sget v4, Lorg/telegram/messenger/R$string;->NotificationActionPinnedTextUser:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v8, v2, v7

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aget-object v2, v2, v7

    aput-object v2, v6, v7

    invoke-static {v3, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2b

    :cond_5d
    if-eqz v14, :cond_5e

    const-string v3, "NotificationActionPinnedText"

    .line 892
    sget v4, Lorg/telegram/messenger/R$string;->NotificationActionPinnedText:I

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v8, v2, v7

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aget-object v8, v2, v7

    aput-object v8, v6, v7

    const/4 v7, 0x2

    aget-object v2, v2, v7

    aput-object v2, v6, v7

    invoke-static {v3, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2b

    :cond_5e
    const-string v3, "NotificationActionPinnedTextChannel"

    .line 894
    sget v4, Lorg/telegram/messenger/R$string;->NotificationActionPinnedTextChannel:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v8, v2, v7

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aget-object v2, v2, v7

    aput-object v2, v6, v7

    invoke-static {v3, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2b

    :pswitch_12
    const-string v3, "NotificationGroupAlbum"

    .line 883
    sget v4, Lorg/telegram/messenger/R$string;->NotificationGroupAlbum:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v8, v2, v7

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aget-object v2, v2, v7

    aput-object v2, v6, v7

    invoke-static {v3, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_26

    .line 878
    :pswitch_13
    sget v3, Lorg/telegram/messenger/R$string;->NotificationGroupFew:I

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v8, v2, v7

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aget-object v8, v2, v7

    aput-object v8, v6, v7

    const/4 v7, 0x2

    aget-object v2, v2, v7

    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v8, 0x0

    new-array v9, v8, [Ljava/lang/Object;

    invoke-static {v10, v2, v9}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v7

    invoke-static {v4, v3, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_26

    .line 873
    :pswitch_14
    sget v3, Lorg/telegram/messenger/R$string;->NotificationGroupFew:I

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    aget-object v9, v2, v8

    aput-object v9, v6, v8

    const/4 v8, 0x1

    aget-object v9, v2, v8

    aput-object v9, v6, v8

    const/4 v8, 0x2

    aget-object v2, v2, v8

    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v9, 0x0

    new-array v10, v9, [Ljava/lang/Object;

    invoke-static {v7, v2, v10}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v8

    invoke-static {v4, v3, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_26

    .line 868
    :pswitch_15
    sget v6, Lorg/telegram/messenger/R$string;->NotificationGroupFew:I

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aget-object v9, v2, v8

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aget-object v9, v2, v8

    aput-object v9, v7, v8

    const/4 v8, 0x2

    aget-object v2, v2, v8

    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v9, 0x0

    new-array v10, v9, [Ljava/lang/Object;

    invoke-static {v3, v2, v10}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v8

    invoke-static {v4, v6, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_26

    .line 863
    :pswitch_16
    sget v3, Lorg/telegram/messenger/R$string;->NotificationGroupFew:I

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v8, v2, v7

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aget-object v8, v2, v7

    aput-object v8, v6, v7

    const/4 v7, 0x2

    aget-object v2, v2, v7

    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v8, 0x0

    new-array v9, v8, [Ljava/lang/Object;

    invoke-static {v15, v2, v9}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v7

    invoke-static {v4, v3, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_26

    :pswitch_17
    const-string v3, "NotificationGroupForwardedFew"

    .line 858
    sget v4, Lorg/telegram/messenger/R$string;->NotificationGroupForwardedFew:I

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v8, v2, v7

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aget-object v8, v2, v7

    aput-object v8, v6, v7

    const/4 v7, 0x2

    aget-object v2, v2, v7

    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v8, 0x0

    new-array v9, v8, [Ljava/lang/Object;

    move-object/from16 v8, v23

    invoke-static {v8, v2, v9}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v7

    invoke-static {v3, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_26

    :pswitch_18
    const-string v3, "UserAcceptedToGroupPushWithGroup"

    .line 854
    sget v4, Lorg/telegram/messenger/R$string;->UserAcceptedToGroupPushWithGroup:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v8, v2, v7

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aget-object v2, v2, v7

    aput-object v2, v6, v7

    invoke-static {v3, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2b

    :pswitch_19
    const-string v3, "NotificationGroupAddSelfMega"

    .line 850
    sget v4, Lorg/telegram/messenger/R$string;->NotificationGroupAddSelfMega:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v8, v2, v7

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aget-object v2, v2, v7

    aput-object v2, v6, v7

    invoke-static {v3, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2b

    :pswitch_1a
    const-string v3, "NotificationGroupAddSelf"

    .line 846
    sget v4, Lorg/telegram/messenger/R$string;->NotificationGroupAddSelf:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v8, v2, v7

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aget-object v2, v2, v7

    aput-object v2, v6, v7

    invoke-static {v3, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2b

    :pswitch_1b
    const-string v3, "NotificationGroupLeftMember"

    .line 842
    sget v4, Lorg/telegram/messenger/R$string;->NotificationGroupLeftMember:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v8, v2, v7

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aget-object v2, v2, v7

    aput-object v2, v6, v7

    invoke-static {v3, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2b

    :pswitch_1c
    const-string v3, "NotificationGroupKickYou"

    .line 838
    sget v4, Lorg/telegram/messenger/R$string;->NotificationGroupKickYou:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v8, v2, v7

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aget-object v2, v2, v7

    aput-object v2, v6, v7

    invoke-static {v3, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2b

    :pswitch_1d
    const-string v3, "NotificationGroupKickMember"

    .line 834
    sget v4, Lorg/telegram/messenger/R$string;->NotificationGroupKickMember:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v8, v2, v7

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aget-object v2, v2, v7

    aput-object v2, v6, v7

    invoke-static {v3, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2b

    :pswitch_1e
    const-string v3, "NotificationGroupInvitedYouToCall"

    .line 830
    sget v4, Lorg/telegram/messenger/R$string;->NotificationGroupInvitedYouToCall:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v8, v2, v7

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aget-object v2, v2, v7

    aput-object v2, v6, v7

    invoke-static {v3, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2b

    :pswitch_1f
    const-string v3, "NotificationGroupEndedCall"

    .line 826
    sget v4, Lorg/telegram/messenger/R$string;->NotificationGroupEndedCall:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v8, v2, v7

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aget-object v2, v2, v7

    aput-object v2, v6, v7

    invoke-static {v3, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2b

    :pswitch_20
    const-string v3, "NotificationGroupInvitedToCall"

    .line 822
    sget v4, Lorg/telegram/messenger/R$string;->NotificationGroupInvitedToCall:I

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v8, v2, v7

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aget-object v8, v2, v7

    aput-object v8, v6, v7

    const/4 v7, 0x2

    aget-object v2, v2, v7

    aput-object v2, v6, v7

    invoke-static {v3, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2b

    :pswitch_21
    const-string v3, "NotificationGroupCreatedCall"

    .line 818
    sget v4, Lorg/telegram/messenger/R$string;->NotificationGroupCreatedCall:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v8, v2, v7

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aget-object v2, v2, v7

    aput-object v2, v6, v7

    invoke-static {v3, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2b

    :pswitch_22
    const-string v3, "NotificationGroupAddMember"

    .line 814
    sget v4, Lorg/telegram/messenger/R$string;->NotificationGroupAddMember:I

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v8, v2, v7

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aget-object v8, v2, v7

    aput-object v8, v6, v7

    const/4 v7, 0x2

    aget-object v2, v2, v7

    aput-object v2, v6, v7

    invoke-static {v3, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2b

    :pswitch_23
    const-string v3, "NotificationEditedGroupPhoto"

    .line 810
    sget v4, Lorg/telegram/messenger/R$string;->NotificationEditedGroupPhoto:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v8, v2, v7

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aget-object v2, v2, v7

    aput-object v2, v6, v7

    invoke-static {v3, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2b

    :pswitch_24
    const-string v3, "NotificationEditedGroupName"

    .line 806
    sget v4, Lorg/telegram/messenger/R$string;->NotificationEditedGroupName:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v8, v2, v7

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aget-object v2, v2, v7

    aput-object v2, v6, v7

    invoke-static {v3, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2b

    :pswitch_25
    const-string v3, "NotificationInvitedToGroup"

    .line 802
    sget v4, Lorg/telegram/messenger/R$string;->NotificationInvitedToGroup:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v8, v2, v7

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aget-object v2, v2, v7

    aput-object v2, v6, v7

    invoke-static {v3, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2b

    :pswitch_26
    const-string v3, "NotificationMessageGroupInvoice"

    .line 796
    sget v4, Lorg/telegram/messenger/R$string;->NotificationMessageGroupInvoice:I

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v8, v2, v7

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aget-object v8, v2, v7

    aput-object v8, v6, v7

    const/4 v7, 0x2

    aget-object v2, v2, v7

    aput-object v2, v6, v7

    invoke-static {v3, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "PaymentInvoice"

    .line 797
    sget v4, Lorg/telegram/messenger/R$string;->PaymentInvoice:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_27

    :pswitch_27
    const-string v3, "NotificationMessageGroupGameScored"

    .line 792
    sget v4, Lorg/telegram/messenger/R$string;->NotificationMessageGroupGameScored:I

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v8, v2, v7

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aget-object v8, v2, v7

    aput-object v8, v6, v7

    const/4 v7, 0x2

    aget-object v8, v2, v7

    aput-object v8, v6, v7

    const/4 v7, 0x3

    aget-object v2, v2, v7

    aput-object v2, v6, v7

    invoke-static {v3, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2b

    :pswitch_28
    const-string v3, "NotificationMessageGroupGame"

    .line 787
    sget v4, Lorg/telegram/messenger/R$string;->NotificationMessageGroupGame:I

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v8, v2, v7

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aget-object v8, v2, v7

    aput-object v8, v6, v7

    const/4 v7, 0x2

    aget-object v2, v2, v7

    aput-object v2, v6, v7

    invoke-static {v3, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "AttachGame"

    .line 788
    sget v4, Lorg/telegram/messenger/R$string;->AttachGame:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_27

    :pswitch_29
    const-string v3, "NotificationMessageGroupGif"

    .line 782
    sget v4, Lorg/telegram/messenger/R$string;->NotificationMessageGroupGif:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v8, v2, v7

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aget-object v2, v2, v7

    aput-object v2, v6, v7

    invoke-static {v3, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "AttachGif"

    .line 783
    sget v4, Lorg/telegram/messenger/R$string;->AttachGif:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_27

    :pswitch_2a
    const-string v3, "NotificationMessageGroupLiveLocation"

    .line 777
    sget v4, Lorg/telegram/messenger/R$string;->NotificationMessageGroupLiveLocation:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v8, v2, v7

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aget-object v2, v2, v7

    aput-object v2, v6, v7

    invoke-static {v3, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "AttachLiveLocation"

    .line 778
    sget v4, Lorg/telegram/messenger/R$string;->AttachLiveLocation:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_27

    :pswitch_2b
    const-string v3, "NotificationMessageGroupMap"

    .line 772
    sget v4, Lorg/telegram/messenger/R$string;->NotificationMessageGroupMap:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v8, v2, v7

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aget-object v2, v2, v7

    aput-object v2, v6, v7

    invoke-static {v3, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "AttachLocation"

    .line 773
    sget v4, Lorg/telegram/messenger/R$string;->AttachLocation:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_27

    :pswitch_2c
    const-string v3, "NotificationMessageGroupPoll2"

    .line 767
    sget v4, Lorg/telegram/messenger/R$string;->NotificationMessageGroupPoll2:I

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v8, v2, v7

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aget-object v8, v2, v7

    aput-object v8, v6, v7

    const/4 v7, 0x2

    aget-object v2, v2, v7

    aput-object v2, v6, v7

    invoke-static {v3, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Poll"

    .line 768
    sget v4, Lorg/telegram/messenger/R$string;->Poll:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_27

    :pswitch_2d
    const-string v3, "NotificationMessageGroupQuiz2"

    .line 762
    sget v4, Lorg/telegram/messenger/R$string;->NotificationMessageGroupQuiz2:I

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v8, v2, v7

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aget-object v8, v2, v7

    aput-object v8, v6, v7

    const/4 v7, 0x2

    aget-object v2, v2, v7

    aput-object v2, v6, v7

    invoke-static {v3, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "PollQuiz"

    .line 763
    sget v4, Lorg/telegram/messenger/R$string;->PollQuiz:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_27

    :pswitch_2e
    const-string v3, "NotificationMessageGroupContact2"

    .line 757
    sget v4, Lorg/telegram/messenger/R$string;->NotificationMessageGroupContact2:I

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v8, v2, v7

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aget-object v8, v2, v7

    aput-object v8, v6, v7

    const/4 v7, 0x2

    aget-object v2, v2, v7

    aput-object v2, v6, v7

    invoke-static {v3, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "AttachContact"

    .line 758
    sget v4, Lorg/telegram/messenger/R$string;->AttachContact:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_27

    :pswitch_2f
    const-string v3, "NotificationMessageGroupAudio"

    .line 752
    sget v4, Lorg/telegram/messenger/R$string;->NotificationMessageGroupAudio:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v8, v2, v7

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aget-object v2, v2, v7

    aput-object v2, v6, v7

    invoke-static {v3, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "AttachAudio"

    .line 753
    sget v4, Lorg/telegram/messenger/R$string;->AttachAudio:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_27

    .line 742
    :pswitch_30
    array-length v3, v2

    const/4 v4, 0x2

    if-le v3, v4, :cond_5f

    aget-object v3, v2, v4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5f

    const-string v3, "NotificationMessageGroupStickerEmoji"

    .line 743
    sget v4, Lorg/telegram/messenger/R$string;->NotificationMessageGroupStickerEmoji:I

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v9, v2, v7

    aput-object v9, v6, v7

    const/4 v7, 0x1

    aget-object v9, v2, v7

    aput-object v9, v6, v7

    const/4 v7, 0x2

    aget-object v9, v2, v7

    aput-object v9, v6, v7

    invoke-static {v3, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 744
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, v2, v7

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lorg/telegram/messenger/R$string;->AttachSticker:I

    invoke-static {v8, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_28

    :cond_5f
    const-string v3, "NotificationMessageGroupSticker"

    .line 746
    sget v4, Lorg/telegram/messenger/R$string;->NotificationMessageGroupSticker:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v9, v2, v7

    aput-object v9, v6, v7

    const/4 v7, 0x1

    aget-object v9, v2, v7

    aput-object v9, v6, v7

    invoke-static {v3, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 747
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, v2, v7

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lorg/telegram/messenger/R$string;->AttachSticker:I

    invoke-static {v8, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_28

    :pswitch_31
    const-string v3, "NotificationMessageGroupDocument"

    .line 737
    sget v4, Lorg/telegram/messenger/R$string;->NotificationMessageGroupDocument:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v8, v2, v7

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aget-object v2, v2, v7

    aput-object v2, v6, v7

    invoke-static {v3, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "AttachDocument"

    .line 738
    sget v4, Lorg/telegram/messenger/R$string;->AttachDocument:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_27

    :pswitch_32
    const-string v3, "NotificationMessageGroupRound"

    .line 732
    sget v4, Lorg/telegram/messenger/R$string;->NotificationMessageGroupRound:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v8, v2, v7

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aget-object v2, v2, v7

    aput-object v2, v6, v7

    invoke-static {v3, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "AttachRound"

    .line 733
    sget v4, Lorg/telegram/messenger/R$string;->AttachRound:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_27

    :pswitch_33
    const-string v3, "NotificationMessageGroupVideo"

    .line 727
    sget v4, Lorg/telegram/messenger/R$string;->NotificationMessageGroupVideo:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v8, v2, v7

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aget-object v2, v2, v7

    aput-object v2, v6, v7

    invoke-static {v3, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "AttachVideo"

    .line 728
    sget v4, Lorg/telegram/messenger/R$string;->AttachVideo:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_27

    :pswitch_34
    const-string v3, "NotificationMessageGroupPhoto"

    .line 722
    sget v4, Lorg/telegram/messenger/R$string;->NotificationMessageGroupPhoto:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v8, v2, v7

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aget-object v2, v2, v7

    aput-object v2, v6, v7

    invoke-static {v3, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "AttachPhoto"

    .line 723
    sget v4, Lorg/telegram/messenger/R$string;->AttachPhoto:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_27

    :pswitch_35
    const-string v3, "NotificationMessageGroupNoText"

    .line 717
    sget v4, Lorg/telegram/messenger/R$string;->NotificationMessageGroupNoText:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v8, v2, v7

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aget-object v2, v2, v7

    aput-object v2, v6, v7

    invoke-static {v3, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Message"

    .line 718
    sget v4, Lorg/telegram/messenger/R$string;->Message:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_27

    :pswitch_36
    const-string v3, "NotificationMessageGroupText"

    .line 712
    sget v4, Lorg/telegram/messenger/R$string;->NotificationMessageGroupText:I

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v8, v2, v7

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aget-object v8, v2, v7

    aput-object v8, v6, v7

    const/4 v7, 0x2

    aget-object v8, v2, v7

    aput-object v8, v6, v7

    invoke-static {v3, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 713
    aget-object v2, v2, v7

    goto/16 :goto_28

    :pswitch_37
    const-string v3, "ChannelMessageAlbum"

    .line 707
    sget v4, Lorg/telegram/messenger/R$string;->ChannelMessageAlbum:I

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget-object v2, v2, v6

    aput-object v2, v7, v6

    invoke-static {v3, v4, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_26

    .line 702
    :pswitch_38
    sget v3, Lorg/telegram/messenger/R$string;->ChannelMessageFew:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget-object v7, v2, v6

    aput-object v7, v4, v6

    const/4 v7, 0x1

    aget-object v2, v2, v7

    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-array v8, v6, [Ljava/lang/Object;

    invoke-static {v10, v2, v8}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v7

    invoke-static {v13, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_26

    .line 697
    :pswitch_39
    sget v3, Lorg/telegram/messenger/R$string;->ChannelMessageFew:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget-object v8, v2, v6

    aput-object v8, v4, v6

    const/4 v8, 0x1

    aget-object v2, v2, v8

    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-array v9, v6, [Ljava/lang/Object;

    invoke-static {v7, v2, v9}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v8

    invoke-static {v13, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_26

    .line 692
    :pswitch_3a
    sget v4, Lorg/telegram/messenger/R$string;->ChannelMessageFew:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v8, v2, v7

    aput-object v8, v6, v7

    const/4 v8, 0x1

    aget-object v2, v2, v8

    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-array v9, v7, [Ljava/lang/Object;

    invoke-static {v3, v2, v9}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v8

    invoke-static {v13, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_26

    .line 687
    :pswitch_3b
    sget v3, Lorg/telegram/messenger/R$string;->ChannelMessageFew:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget-object v7, v2, v6

    aput-object v7, v4, v6

    const/4 v7, 0x1

    aget-object v2, v2, v7

    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-array v8, v6, [Ljava/lang/Object;

    invoke-static {v15, v2, v8}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v7

    invoke-static {v13, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_26

    .line 682
    :pswitch_3c
    sget v3, Lorg/telegram/messenger/R$string;->ChannelMessageFew:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget-object v7, v2, v6

    aput-object v7, v4, v6

    const-string v7, "ForwardedMessageCount"

    const/4 v8, 0x1

    aget-object v2, v2, v8

    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-array v8, v6, [Ljava/lang/Object;

    invoke-static {v7, v2, v8}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x1

    aput-object v2, v4, v6

    invoke-static {v13, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_26

    :pswitch_3d
    const-string v3, "NotificationMessageGame"

    .line 677
    sget v4, Lorg/telegram/messenger/R$string;->NotificationMessageGame:I

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget-object v2, v2, v6

    aput-object v2, v7, v6

    invoke-static {v3, v4, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "AttachGame"

    .line 678
    sget v4, Lorg/telegram/messenger/R$string;->AttachGame:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_27

    :pswitch_3e
    const-string v3, "ChannelMessageGIF"

    .line 672
    sget v4, Lorg/telegram/messenger/R$string;->ChannelMessageGIF:I

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget-object v2, v2, v6

    aput-object v2, v7, v6

    invoke-static {v3, v4, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "AttachGif"

    .line 673
    sget v4, Lorg/telegram/messenger/R$string;->AttachGif:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_27

    :pswitch_3f
    const-string v3, "ChannelMessageLiveLocation"

    .line 667
    sget v4, Lorg/telegram/messenger/R$string;->ChannelMessageLiveLocation:I

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget-object v2, v2, v6

    aput-object v2, v7, v6

    invoke-static {v3, v4, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "AttachLiveLocation"

    .line 668
    sget v4, Lorg/telegram/messenger/R$string;->AttachLiveLocation:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_27

    :pswitch_40
    const-string v3, "ChannelMessageMap"

    .line 662
    sget v4, Lorg/telegram/messenger/R$string;->ChannelMessageMap:I

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget-object v2, v2, v6

    aput-object v2, v7, v6

    invoke-static {v3, v4, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "AttachLocation"

    .line 663
    sget v4, Lorg/telegram/messenger/R$string;->AttachLocation:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_27

    :pswitch_41
    const-string v3, "ChannelMessagePoll2"

    .line 657
    sget v4, Lorg/telegram/messenger/R$string;->ChannelMessagePoll2:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v8, v2, v7

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aget-object v2, v2, v7

    aput-object v2, v6, v7

    invoke-static {v3, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Poll"

    .line 658
    sget v4, Lorg/telegram/messenger/R$string;->Poll:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_27

    :pswitch_42
    const-string v3, "ChannelMessageQuiz2"

    .line 652
    sget v4, Lorg/telegram/messenger/R$string;->ChannelMessageQuiz2:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v8, v2, v7

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aget-object v2, v2, v7

    aput-object v2, v6, v7

    invoke-static {v3, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "QuizPoll"

    .line 653
    sget v4, Lorg/telegram/messenger/R$string;->QuizPoll:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_27

    :pswitch_43
    const-string v3, "ChannelMessageContact2"

    .line 647
    sget v4, Lorg/telegram/messenger/R$string;->ChannelMessageContact2:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v8, v2, v7

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aget-object v2, v2, v7

    aput-object v2, v6, v7

    invoke-static {v3, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "AttachContact"

    .line 648
    sget v4, Lorg/telegram/messenger/R$string;->AttachContact:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_27

    :pswitch_44
    const-string v3, "ChannelMessageAudio"

    .line 642
    sget v4, Lorg/telegram/messenger/R$string;->ChannelMessageAudio:I

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget-object v2, v2, v6

    aput-object v2, v7, v6

    invoke-static {v3, v4, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "AttachAudio"

    .line 643
    sget v4, Lorg/telegram/messenger/R$string;->AttachAudio:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_27

    .line 632
    :pswitch_45
    array-length v3, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_60

    aget-object v3, v2, v4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_60

    const-string v3, "ChannelMessageStickerEmoji"

    .line 633
    sget v4, Lorg/telegram/messenger/R$string;->ChannelMessageStickerEmoji:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v9, v2, v7

    aput-object v9, v6, v7

    const/4 v7, 0x1

    aget-object v9, v2, v7

    aput-object v9, v6, v7

    invoke-static {v3, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 634
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, v2, v7

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lorg/telegram/messenger/R$string;->AttachSticker:I

    invoke-static {v8, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_28

    :cond_60
    const-string v3, "ChannelMessageSticker"

    .line 636
    sget v4, Lorg/telegram/messenger/R$string;->ChannelMessageSticker:I

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget-object v2, v2, v6

    aput-object v2, v7, v6

    invoke-static {v3, v4, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 637
    sget v3, Lorg/telegram/messenger/R$string;->AttachSticker:I

    invoke-static {v8, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_27

    :pswitch_46
    const-string v3, "ChannelMessageDocument"

    .line 627
    sget v4, Lorg/telegram/messenger/R$string;->ChannelMessageDocument:I

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget-object v2, v2, v6

    aput-object v2, v7, v6

    invoke-static {v3, v4, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "AttachDocument"

    .line 628
    sget v4, Lorg/telegram/messenger/R$string;->AttachDocument:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_27

    :pswitch_47
    const-string v3, "ChannelMessageRound"

    .line 622
    sget v4, Lorg/telegram/messenger/R$string;->ChannelMessageRound:I

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget-object v2, v2, v6

    aput-object v2, v7, v6

    invoke-static {v3, v4, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "AttachRound"

    .line 623
    sget v4, Lorg/telegram/messenger/R$string;->AttachRound:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_27

    :pswitch_48
    const-string v3, "ChannelMessageVideo"

    .line 617
    sget v4, Lorg/telegram/messenger/R$string;->ChannelMessageVideo:I

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget-object v2, v2, v6

    aput-object v2, v7, v6

    invoke-static {v3, v4, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "AttachVideo"

    .line 618
    sget v4, Lorg/telegram/messenger/R$string;->AttachVideo:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_27

    :pswitch_49
    const-string v3, "ChannelMessagePhoto"

    .line 612
    sget v4, Lorg/telegram/messenger/R$string;->ChannelMessagePhoto:I

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget-object v2, v2, v6

    aput-object v2, v7, v6

    invoke-static {v3, v4, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "AttachPhoto"

    .line 613
    sget v4, Lorg/telegram/messenger/R$string;->AttachPhoto:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_27

    :pswitch_4a
    const-string v3, "ChannelMessageNoText"

    .line 607
    sget v4, Lorg/telegram/messenger/R$string;->ChannelMessageNoText:I

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget-object v2, v2, v6

    aput-object v2, v7, v6

    invoke-static {v3, v4, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Message"

    .line 608
    sget v4, Lorg/telegram/messenger/R$string;->Message:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_27

    :pswitch_4b
    const-string v3, "NotificationMessageAlbum"

    .line 602
    sget v4, Lorg/telegram/messenger/R$string;->NotificationMessageAlbum:I

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget-object v2, v2, v6

    aput-object v2, v7, v6

    invoke-static {v3, v4, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_26
    const/16 v17, 0x0

    const/16 v24, 0x1

    goto/16 :goto_2d

    .line 597
    :pswitch_4c
    sget v3, Lorg/telegram/messenger/R$string;->NotificationMessageFew:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget-object v7, v2, v6

    aput-object v7, v4, v6

    const/4 v7, 0x1

    aget-object v2, v2, v7

    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-array v8, v6, [Ljava/lang/Object;

    invoke-static {v10, v2, v8}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v7

    invoke-static {v12, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_26

    .line 592
    :pswitch_4d
    sget v3, Lorg/telegram/messenger/R$string;->NotificationMessageFew:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget-object v8, v2, v6

    aput-object v8, v4, v6

    const/4 v8, 0x1

    aget-object v2, v2, v8

    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-array v9, v6, [Ljava/lang/Object;

    invoke-static {v7, v2, v9}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v8

    invoke-static {v12, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_26

    .line 587
    :pswitch_4e
    sget v4, Lorg/telegram/messenger/R$string;->NotificationMessageFew:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v8, v2, v7

    aput-object v8, v6, v7

    const/4 v8, 0x1

    aget-object v2, v2, v8

    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-array v9, v7, [Ljava/lang/Object;

    invoke-static {v3, v2, v9}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v8

    invoke-static {v12, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_26

    .line 582
    :pswitch_4f
    sget v3, Lorg/telegram/messenger/R$string;->NotificationMessageFew:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget-object v7, v2, v6

    aput-object v7, v4, v6

    const/4 v7, 0x1

    aget-object v2, v2, v7

    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-array v8, v6, [Ljava/lang/Object;

    invoke-static {v15, v2, v8}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v7

    invoke-static {v12, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_26

    :pswitch_50
    move-object/from16 v8, v23

    const-string v3, "NotificationMessageForwardFew"

    .line 577
    sget v4, Lorg/telegram/messenger/R$string;->NotificationMessageForwardFew:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v9, v2, v7

    aput-object v9, v6, v7

    const/4 v9, 0x1

    aget-object v2, v2, v9

    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-array v10, v7, [Ljava/lang/Object;

    invoke-static {v8, v2, v10}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v9

    invoke-static {v3, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_26

    :pswitch_51
    const-string v3, "NotificationMessageInvoice"

    .line 572
    sget v4, Lorg/telegram/messenger/R$string;->NotificationMessageInvoice:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v8, v2, v7

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aget-object v2, v2, v7

    aput-object v2, v6, v7

    invoke-static {v3, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "PaymentInvoice"

    .line 573
    sget v4, Lorg/telegram/messenger/R$string;->PaymentInvoice:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_27

    :pswitch_52
    const-string v3, "NotificationMessageGameScored"

    .line 568
    sget v4, Lorg/telegram/messenger/R$string;->NotificationMessageGameScored:I

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v8, v2, v7

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aget-object v8, v2, v7

    aput-object v8, v6, v7

    const/4 v7, 0x2

    aget-object v2, v2, v7

    aput-object v2, v6, v7

    invoke-static {v3, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2b

    :pswitch_53
    const-string v3, "NotificationMessageGame"

    .line 562
    sget v4, Lorg/telegram/messenger/R$string;->NotificationMessageGame:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v8, v2, v7

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aget-object v2, v2, v7

    aput-object v2, v6, v7

    invoke-static {v3, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "AttachGame"

    .line 563
    sget v4, Lorg/telegram/messenger/R$string;->AttachGame:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_27

    :pswitch_54
    const-string v3, "NotificationMessageGif"

    .line 557
    sget v4, Lorg/telegram/messenger/R$string;->NotificationMessageGif:I

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget-object v2, v2, v6

    aput-object v2, v7, v6

    invoke-static {v3, v4, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "AttachGif"

    .line 558
    sget v4, Lorg/telegram/messenger/R$string;->AttachGif:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_27

    :pswitch_55
    const-string v3, "NotificationMessageLiveLocation"

    .line 552
    sget v4, Lorg/telegram/messenger/R$string;->NotificationMessageLiveLocation:I

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget-object v2, v2, v6

    aput-object v2, v7, v6

    invoke-static {v3, v4, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "AttachLiveLocation"

    .line 553
    sget v4, Lorg/telegram/messenger/R$string;->AttachLiveLocation:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_27

    :pswitch_56
    const-string v3, "NotificationMessageMap"

    .line 547
    sget v4, Lorg/telegram/messenger/R$string;->NotificationMessageMap:I

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget-object v2, v2, v6

    aput-object v2, v7, v6

    invoke-static {v3, v4, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "AttachLocation"

    .line 548
    sget v4, Lorg/telegram/messenger/R$string;->AttachLocation:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_27

    :pswitch_57
    const-string v3, "NotificationMessagePoll2"

    .line 542
    sget v4, Lorg/telegram/messenger/R$string;->NotificationMessagePoll2:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v8, v2, v7

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aget-object v2, v2, v7

    aput-object v2, v6, v7

    invoke-static {v3, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Poll"

    .line 543
    sget v4, Lorg/telegram/messenger/R$string;->Poll:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_27

    :pswitch_58
    const-string v3, "NotificationMessageQuiz2"

    .line 537
    sget v4, Lorg/telegram/messenger/R$string;->NotificationMessageQuiz2:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v8, v2, v7

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aget-object v2, v2, v7

    aput-object v2, v6, v7

    invoke-static {v3, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "QuizPoll"

    .line 538
    sget v4, Lorg/telegram/messenger/R$string;->QuizPoll:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_27

    :pswitch_59
    const-string v3, "NotificationMessageContact2"

    .line 532
    sget v4, Lorg/telegram/messenger/R$string;->NotificationMessageContact2:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v8, v2, v7

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aget-object v2, v2, v7

    aput-object v2, v6, v7

    invoke-static {v3, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "AttachContact"

    .line 533
    sget v4, Lorg/telegram/messenger/R$string;->AttachContact:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_27

    :pswitch_5a
    const-string v3, "NotificationMessageAudio"

    .line 527
    sget v4, Lorg/telegram/messenger/R$string;->NotificationMessageAudio:I

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget-object v2, v2, v6

    aput-object v2, v7, v6

    invoke-static {v3, v4, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "AttachAudio"

    .line 528
    sget v4, Lorg/telegram/messenger/R$string;->AttachAudio:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_27

    .line 517
    :pswitch_5b
    array-length v3, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_61

    aget-object v3, v2, v4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_61

    const-string v3, "NotificationMessageStickerEmoji"

    .line 518
    sget v4, Lorg/telegram/messenger/R$string;->NotificationMessageStickerEmoji:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v9, v2, v7

    aput-object v9, v6, v7

    const/4 v7, 0x1

    aget-object v9, v2, v7

    aput-object v9, v6, v7

    invoke-static {v3, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 519
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, v2, v7

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lorg/telegram/messenger/R$string;->AttachSticker:I

    invoke-static {v8, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_28

    :cond_61
    const-string v3, "NotificationMessageSticker"

    .line 521
    sget v4, Lorg/telegram/messenger/R$string;->NotificationMessageSticker:I

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget-object v2, v2, v6

    aput-object v2, v7, v6

    invoke-static {v3, v4, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 522
    sget v3, Lorg/telegram/messenger/R$string;->AttachSticker:I

    invoke-static {v8, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_27

    :pswitch_5c
    const-string v3, "NotificationMessageDocument"

    .line 512
    sget v4, Lorg/telegram/messenger/R$string;->NotificationMessageDocument:I

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget-object v2, v2, v6

    aput-object v2, v7, v6

    invoke-static {v3, v4, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "AttachDocument"

    .line 513
    sget v4, Lorg/telegram/messenger/R$string;->AttachDocument:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_27

    :pswitch_5d
    const-string v3, "NotificationMessageRound"

    .line 507
    sget v4, Lorg/telegram/messenger/R$string;->NotificationMessageRound:I

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget-object v2, v2, v6

    aput-object v2, v7, v6

    invoke-static {v3, v4, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "AttachRound"

    .line 508
    sget v4, Lorg/telegram/messenger/R$string;->AttachRound:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_27

    :pswitch_5e
    const-string v3, "ActionTakeScreenshoot"

    .line 503
    sget v4, Lorg/telegram/messenger/R$string;->ActionTakeScreenshoot:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "un1"

    const/4 v6, 0x0

    aget-object v2, v2, v6

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2b

    :pswitch_5f
    const-string v3, "NotificationMessageSDVideo"

    .line 498
    sget v4, Lorg/telegram/messenger/R$string;->NotificationMessageSDVideo:I

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget-object v2, v2, v6

    aput-object v2, v7, v6

    invoke-static {v3, v4, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "AttachDestructingVideo"

    .line 499
    sget v4, Lorg/telegram/messenger/R$string;->AttachDestructingVideo:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_27

    :pswitch_60
    const-string v3, "NotificationMessageVideo"

    .line 493
    sget v4, Lorg/telegram/messenger/R$string;->NotificationMessageVideo:I

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget-object v2, v2, v6

    aput-object v2, v7, v6

    invoke-static {v3, v4, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "AttachVideo"

    .line 494
    sget v4, Lorg/telegram/messenger/R$string;->AttachVideo:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_27

    :pswitch_61
    const-string v3, "NotificationMessageSDPhoto"

    .line 488
    sget v4, Lorg/telegram/messenger/R$string;->NotificationMessageSDPhoto:I

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget-object v2, v2, v6

    aput-object v2, v7, v6

    invoke-static {v3, v4, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "AttachDestructingPhoto"

    .line 489
    sget v4, Lorg/telegram/messenger/R$string;->AttachDestructingPhoto:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_27

    :pswitch_62
    const-string v3, "NotificationMessagePhoto"

    .line 483
    sget v4, Lorg/telegram/messenger/R$string;->NotificationMessagePhoto:I

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget-object v2, v2, v6

    aput-object v2, v7, v6

    invoke-static {v3, v4, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "AttachPhoto"

    .line 484
    sget v4, Lorg/telegram/messenger/R$string;->AttachPhoto:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_27

    :pswitch_63
    const-string v3, "NotificationMessageNoText"

    .line 478
    sget v4, Lorg/telegram/messenger/R$string;->NotificationMessageNoText:I

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget-object v2, v2, v6

    aput-object v2, v7, v6

    invoke-static {v3, v4, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Message"

    .line 479
    sget v4, Lorg/telegram/messenger/R$string;->Message:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    :goto_27
    move-object/from16 v17, v3

    goto :goto_2c

    :pswitch_64
    const-string v3, "NotificationMessageText"

    .line 473
    sget v4, Lorg/telegram/messenger/R$string;->NotificationMessageText:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v8, v2, v7

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aget-object v8, v2, v7

    aput-object v8, v6, v7

    invoke-static {v3, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 474
    aget-object v2, v2, v7

    :goto_28
    move-object/from16 v17, v2

    move-object v2, v3

    goto :goto_2c

    :pswitch_65
    const-string v3, "NotificationMessageRecurringPay"

    .line 467
    sget v4, Lorg/telegram/messenger/R$string;->NotificationMessageRecurringPay:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v8, v2, v7

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aget-object v2, v2, v7

    aput-object v2, v6, v7

    invoke-static {v3, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "PaymentInvoice"

    .line 468
    sget v4, Lorg/telegram/messenger/R$string;->PaymentInvoice:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_27

    :goto_29
    if-eqz v2, :cond_62

    .line 1127
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unhandled loc_key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->w(Ljava/lang/String;)V

    :cond_62
    :pswitch_66
    const/4 v2, 0x0

    goto :goto_2b

    :cond_63
    :goto_2a
    move/from16 v45, v3

    move/from16 v47, v4

    move-object/from16 v30, v7

    move-wide/from16 v50, v8

    move-object/from16 p0, v10

    move-object/from16 v46, v11

    move-wide/from16 v48, v12

    move/from16 v25, v15

    .line 463
    invoke-static {v5, v2}, Lorg/telegram/messenger/PushListenerController;->getReactedText(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_2b
    const/16 v17, 0x0

    :goto_2c
    const/16 v24, 0x0

    :goto_2d
    if-eqz v2, :cond_72

    .line 1134
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .line 1135
    iput v1, v3, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move-wide/from16 v6, v26

    .line 1136
    iput-wide v6, v3, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    if-eqz v17, :cond_64

    move-object/from16 v1, v17

    goto :goto_2e

    :cond_64
    move-object v1, v2

    .line 1137
    :goto_2e
    iput-object v1, v3, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    const-wide/16 v6, 0x3e8

    .line 1138
    div-long v6, p3, v6

    long-to-int v1, v6

    iput v1, v3, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    if-eqz v43, :cond_65

    .line 1140
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionPinMessage;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messageActionPinMessage;-><init>()V

    iput-object v1, v3, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    :cond_65
    if-eqz v42, :cond_66

    .line 1143
    iget v1, v3, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const/high16 v4, -0x80000000

    or-int/2addr v1, v4

    iput v1, v3, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    :cond_66
    move-wide/from16 v8, v50

    .line 1145
    iput-wide v8, v3, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    const-wide/16 v6, 0x0

    cmp-long v1, v34, v6

    if-eqz v1, :cond_67

    .line 1147
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;-><init>()V

    iput-object v1, v3, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-wide/from16 v12, v34

    .line 1148
    iput-wide v12, v1, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    move-wide/from16 v14, v21

    goto :goto_2f

    :cond_67
    const-wide/16 v6, 0x0

    cmp-long v1, v21, v6

    if-eqz v1, :cond_68

    .line 1150
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_peerChat;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_peerChat;-><init>()V

    iput-object v1, v3, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-wide/from16 v14, v21

    .line 1151
    iput-wide v14, v1, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:J

    goto :goto_2f

    :cond_68
    move-wide/from16 v14, v21

    .line 1153
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v1, v3, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-wide/from16 v6, v32

    .line 1154
    iput-wide v6, v1, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 1156
    :goto_2f
    iget v1, v3, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit16 v1, v1, 0x100

    iput v1, v3, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const-wide/16 v6, 0x0

    cmp-long v1, v36, v6

    if-eqz v1, :cond_69

    .line 1158
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_peerChat;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_peerChat;-><init>()V

    iput-object v1, v3, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 1159
    iput-wide v14, v1, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:J

    goto :goto_30

    :cond_69
    const-wide/16 v6, 0x0

    cmp-long v1, v48, v6

    if-eqz v1, :cond_6a

    .line 1161
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;-><init>()V

    iput-object v1, v3, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-wide/from16 v6, v48

    .line 1162
    iput-wide v6, v1, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    goto :goto_30

    :cond_6a
    if-eqz v47, :cond_6b

    .line 1164
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v1, v3, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-wide/from16 v6, v40

    .line 1165
    iput-wide v6, v1, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    goto :goto_30

    .line 1167
    :cond_6b
    iget-object v1, v3, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iput-object v1, v3, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    :goto_30
    if-nez v38, :cond_6d

    if-eqz v43, :cond_6c

    goto :goto_31

    :cond_6c
    const/4 v1, 0x0

    goto :goto_32

    :cond_6d
    :goto_31
    const/4 v1, 0x1

    .line 1169
    :goto_32
    iput-boolean v1, v3, Lorg/telegram/tgnet/TLRPC$Message;->mentioned:Z

    move/from16 v1, v39

    .line 1170
    iput-boolean v1, v3, Lorg/telegram/tgnet/TLRPC$Message;->silent:Z

    move/from16 v10, v20

    .line 1171
    iput-boolean v10, v3, Lorg/telegram/tgnet/TLRPC$Message;->from_scheduled:Z

    .line 1173
    new-instance v1, Lorg/telegram/messenger/MessageObject;

    move-object/from16 v18, v1

    move/from16 v19, v28

    move-object/from16 v20, v3

    move-object/from16 v21, v2

    move-object/from16 v22, v44

    move-object/from16 v23, v46

    move/from16 v26, v42

    move/from16 v27, v45

    invoke-direct/range {v18 .. v27}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZ)V

    if-eqz v29, :cond_6e

    .line 1175
    iget-object v2, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messageReplyHeader;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messageReplyHeader;-><init>()V

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$TL_messageReplyHeader;

    .line 1176
    iget-object v2, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$TL_messageReplyHeader;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messageReplyHeader;->forum_topic:Z

    move/from16 v14, v29

    .line 1177
    iput v14, v2, Lorg/telegram/tgnet/TLRPC$TL_messageReplyHeader;->reply_to_top_id:I

    :cond_6e
    move-object/from16 v2, v30

    .line 1179
    invoke-virtual {v5, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_70

    move-object/from16 v2, p0

    invoke-virtual {v5, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6f

    goto :goto_33

    :cond_6f
    const/4 v2, 0x0

    goto :goto_34

    :cond_70
    :goto_33
    const/4 v2, 0x1

    :goto_34
    iput-boolean v2, v1, Lorg/telegram/messenger/MessageObject;->isReactionPush:Z

    .line 1180
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1181
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1183
    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/NotificationsController;->getInstance(I)Lorg/telegram/messenger/NotificationsController;

    move-result-object v1

    sget-object v3, Lorg/telegram/messenger/PushListenerController;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4, v4, v3}, Lorg/telegram/messenger/NotificationsController;->processNewMessages(Ljava/util/ArrayList;ZZLjava/util/concurrent/CountDownLatch;)V

    const/4 v8, 0x0

    goto :goto_36

    :catchall_7
    move-exception v0

    move-object v1, v0

    move/from16 v4, v28

    goto/16 :goto_3b

    :cond_71
    move-object/from16 v31, v7

    :cond_72
    :goto_35
    const/4 v8, 0x1

    :goto_36
    if-eqz v8, :cond_73

    .line 1189
    sget-object v1, Lorg/telegram/messenger/PushListenerController;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1192
    :cond_73
    invoke-static/range {v28 .. v28}, Lorg/telegram/tgnet/ConnectionsManager;->onInternalPushReceived(I)V

    .line 1193
    invoke-static/range {v28 .. v28}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/tgnet/ConnectionsManager;->resumeNetworkMaybe()V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_7

    goto/16 :goto_42

    :catchall_8
    move-exception v0

    move-object/from16 v31, v7

    goto :goto_38

    :catchall_9
    move-exception v0

    move-object/from16 v31, v7

    :goto_37
    move-object v5, v9

    :goto_38
    move-object v1, v0

    :goto_39
    move/from16 v4, v28

    goto/16 :goto_3d

    :catchall_a
    move-exception v0

    move/from16 v28, v4

    goto/16 :goto_3c

    :cond_74
    move/from16 v28, v4

    move-object/from16 v31, v7

    move-object v5, v9

    .line 275
    :try_start_25
    sget-object v1, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/messenger/PushListenerController$$ExternalSyntheticLambda0;
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_b

    move/from16 v4, v28

    :try_start_26
    invoke-direct {v2, v4}, Lorg/telegram/messenger/PushListenerController$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 276
    sget-object v1, Lorg/telegram/messenger/PushListenerController;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_b
    move-exception v0

    move/from16 v4, v28

    goto/16 :goto_3a

    :cond_75
    move-object/from16 v31, v7

    move-object v5, v9

    .line 265
    new-instance v1, Lorg/telegram/messenger/PushListenerController$$ExternalSyntheticLambda1;

    invoke-direct {v1, v4}, Lorg/telegram/messenger/PushListenerController$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 271
    sget-object v1, Lorg/telegram/messenger/PushListenerController;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :cond_76
    move-object/from16 v31, v7

    move-object v5, v9

    .line 250
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;-><init>()V

    const/4 v2, 0x0

    .line 251
    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;->popup:Z

    const/4 v2, 0x2

    .line 252
    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;->flags:I

    const-wide/16 v2, 0x3e8

    .line 253
    div-long v2, p3, v2

    long-to-int v3, v2

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;->inbox_date:I

    const-string v2, "message"

    .line 254
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;->message:Ljava/lang/String;

    const-string v2, "announcement"

    .line 255
    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;->type:Ljava/lang/String;

    .line 256
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 257
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_updates;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_updates;-><init>()V

    .line 258
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    sget-object v1, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v3, Lorg/telegram/messenger/PushListenerController$$ExternalSyntheticLambda3;

    invoke-direct {v3, v4, v2}, Lorg/telegram/messenger/PushListenerController$$ExternalSyntheticLambda3;-><init>(ILorg/telegram/tgnet/TLRPC$TL_updates;)V

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 260
    invoke-static {v4}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/tgnet/ConnectionsManager;->resumeNetworkMaybe()V

    .line 261
    sget-object v1, Lorg/telegram/messenger/PushListenerController;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :cond_77
    move-object/from16 v31, v7

    move-object v5, v9

    const-string v1, "dc"

    .line 235
    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "addr"

    .line 236
    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ":"

    .line 237
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 238
    array-length v3, v2

    const/4 v6, 0x2

    if-eq v3, v6, :cond_78

    .line 239
    sget-object v1, Lorg/telegram/messenger/PushListenerController;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :cond_78
    const/4 v3, 0x0

    .line 242
    aget-object v3, v2, v3

    const/4 v6, 0x1

    .line 243
    aget-object v2, v2, v6

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 244
    invoke-static {v4}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v6

    invoke-virtual {v6, v1, v3, v2}, Lorg/telegram/tgnet/ConnectionsManager;->applyDatacenterAddress(ILjava/lang/String;I)V

    .line 245
    invoke-static {v4}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/tgnet/ConnectionsManager;->resumeNetworkMaybe()V

    .line 246
    sget-object v1, Lorg/telegram/messenger/PushListenerController;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_c

    return-void

    :catchall_c
    move-exception v0

    :goto_3a
    move-object v1, v0

    :goto_3b
    move-object/from16 v7, v31

    goto :goto_3d

    :catchall_d
    move-exception v0

    :goto_3c
    move-object/from16 v31, v7

    move-object v5, v9

    move-object v1, v0

    :goto_3d
    const/4 v2, -0x1

    goto :goto_40

    :catchall_e
    move-exception v0

    move-object/from16 v31, v7

    move-object v5, v9

    move-object v1, v0

    :goto_3e
    const/4 v2, -0x1

    const/4 v4, -0x1

    goto :goto_40

    :catchall_f
    move-exception v0

    move-object/from16 v31, v7

    :goto_3f
    move-object v1, v0

    const/4 v2, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    goto :goto_40

    :catchall_10
    move-exception v0

    move-object v1, v0

    const/4 v2, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_40
    if-eq v4, v2, :cond_79

    .line 1196
    invoke-static {v4}, Lorg/telegram/tgnet/ConnectionsManager;->onInternalPushReceived(I)V

    .line 1197
    invoke-static {v4}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/ConnectionsManager;->resumeNetworkMaybe()V

    .line 1198
    sget-object v2, Lorg/telegram/messenger/PushListenerController;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_41

    .line 1200
    :cond_79
    invoke-static {}, Lorg/telegram/messenger/PushListenerController;->onDecryptError()V

    .line 1202
    :goto_41
    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v2, :cond_7a

    .line 1203
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error in loc_key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " json "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1205
    :cond_7a
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_42
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x750b1f91 -> :sswitch_3
        -0x36e09b77 -> :sswitch_2
        0x25bae29f -> :sswitch_1
        0x51668772 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x7d2c2cc3 -> :sswitch_76
        -0x7ca9bbb4 -> :sswitch_75
        -0x7a6b9b1f -> :sswitch_74
        -0x79940f3b -> :sswitch_73
        -0x7897de74 -> :sswitch_72
        -0x75fd5c9c -> :sswitch_71
        -0x75fd5283 -> :sswitch_70
        -0x75fd5210 -> :sswitch_6f
        -0x755ca0a1 -> :sswitch_6e
        -0x740845f0 -> :sswitch_6d
        -0x665baa8f -> :sswitch_6c
        -0x6225bbba -> :sswitch_6b
        -0x5b1425ad -> :sswitch_6a
        -0x59d54652 -> :sswitch_69
        -0x590636a2 -> :sswitch_68
        -0x585ce10d -> :sswitch_67
        -0x58389446 -> :sswitch_66
        -0x581920ea -> :sswitch_65
        -0x57e3bdfd -> :sswitch_64
        -0x575cbebc -> :sswitch_63
        -0x51f367b4 -> :sswitch_62
        -0x51d5692a -> :sswitch_61
        -0x4b5ada5a -> :sswitch_60
        -0x49ae3691 -> :sswitch_5f
        -0x49ad2fac -> :sswitch_5e
        -0x49ad0cda -> :sswitch_5d
        -0x49a8c10d -> :sswitch_5c
        -0x49a83677 -> :sswitch_5b
        -0x49a7139f -> :sswitch_5a
        -0x4768bb94 -> :sswitch_59
        -0x4302c33f -> :sswitch_58
        -0x40ade407 -> :sswitch_57
        -0x40a9983a -> :sswitch_56
        -0x40a90da4 -> :sswitch_55
        -0x40a7eacc -> :sswitch_54
        -0x30dc144a -> :sswitch_53
        -0x2e05f321 -> :sswitch_52
        -0x260bd697 -> :sswitch_51
        -0x2330d954 -> :sswitch_50
        -0x231e6bcf -> :sswitch_4f
        -0x231e61b6 -> :sswitch_4e
        -0x231e6143 -> :sswitch_4d
        -0x1a3c736d -> :sswitch_4c
        -0x189a094e -> :sswitch_4b
        -0xd9ee8bb -> :sswitch_4a
        -0xcbb124d -> :sswitch_49
        -0x6e3a432 -> :sswitch_48
        -0x6b67798 -> :sswitch_47
        -0x677ea95 -> :sswitch_46
        -0x6696b42 -> :sswitch_45
        -0x26a80f9 -> :sswitch_44
        0x31f180d -> :sswitch_43
        0x3e3b55a -> :sswitch_42
        0x8681c8e -> :sswitch_41
        0xc12ab85 -> :sswitch_40
        0x127a1e59 -> :sswitch_3f
        0x127a2872 -> :sswitch_3e
        0x127a28e5 -> :sswitch_3d
        0x131af14c -> :sswitch_3c
        0x139b21de -> :sswitch_3b
        0x13bfdb02 -> :sswitch_3a
        0x1468b5bf -> :sswitch_39
        0x148d7d5e -> :sswitch_38
        0x14acf0ba -> :sswitch_37
        0x14e253a7 -> :sswitch_36
        0x2443e845 -> :sswitch_35
        0x24b30ed5 -> :sswitch_34
        0x2aa5cc8f -> :sswitch_33
        0x2b736eeb -> :sswitch_32
        0x2b92e247 -> :sswitch_31
        0x2bc84534 -> :sswitch_30
        0x2fce0ba8 -> :sswitch_2f
        0x3b191236 -> :sswitch_2e
        0x3c0b2819 -> :sswitch_2d
        0x3cc9ad1a -> :sswitch_2c
        0x3ccab3ff -> :sswitch_2b
        0x3ccad6d1 -> :sswitch_2a
        0x3ccf229e -> :sswitch_29
        0x3ccfad34 -> :sswitch_28
        0x3cd0d00c -> :sswitch_27
        0x3f329f93 -> :sswitch_26
        0x3f33a678 -> :sswitch_25
        0x3f33c94a -> :sswitch_24
        0x3f381517 -> :sswitch_23
        0x3f389fad -> :sswitch_22
        0x3f39c285 -> :sswitch_21
        0x3ff570b5 -> :sswitch_20
        0x40428597 -> :sswitch_1f
        0x422ad58d -> :sswitch_1e
        0x452fd3a0 -> :sswitch_1d
        0x45e94fe9 -> :sswitch_1c
        0x49965f84 -> :sswitch_1b
        0x4c5c78c0 -> :sswitch_1a
        0x4c5c82d9 -> :sswitch_19
        0x4c5c834c -> :sswitch_18
        0x4e210dc6 -> :sswitch_17
        0x4f75c677 -> :sswitch_16
        0x51260bd9 -> :sswitch_15
        0x594dba2b -> :sswitch_14
        0x5b6bfeb0 -> :sswitch_13
        0x5bcc8b2a -> :sswitch_12
        0x5c446cb7 -> :sswitch_11
        0x5d120f13 -> :sswitch_10
        0x5d31826f -> :sswitch_f
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
        :pswitch_65
        :pswitch_64
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
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
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
        :pswitch_26
        :pswitch_25
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
        :pswitch_66
        :pswitch_66
        :pswitch_66
        :pswitch_66
        :pswitch_66
        :pswitch_66
        :pswitch_66
        :pswitch_66
        :pswitch_66
        :pswitch_66
    .end packed-switch
.end method

.method private static synthetic lambda$processRemoteMessage$8(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;J)V
    .locals 8

    .line 110
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " PRE INIT APP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 113
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->postInitApplication()V

    .line 114
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_1

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " POST INIT APP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 117
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

.method private static synthetic lambda$sendRegistrationToServer$0(Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    .line 92
    sput-boolean p0, Lorg/telegram/messenger/SharedConfig;->pushStatSent:Z

    .line 93
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->saveConfig()V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$sendRegistrationToServer$1(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 90
    new-instance p0, Lorg/telegram/messenger/PushListenerController$$ExternalSyntheticLambda7;

    invoke-direct {p0, p1}, Lorg/telegram/messenger/PushListenerController$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$sendRegistrationToServer$2(IILjava/lang/String;)V
    .locals 0

    .line 97
    invoke-static {p0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/MessagesController;->registerForPush(ILjava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$sendRegistrationToServer$3(Ljava/lang/String;I)V
    .locals 11

    .line 51
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->checkKoinInit()V

    .line 52
    const-class v0, Lcom/smedialink/manager/notifications/PushNotificationsManager;

    invoke-static {v0}, Lorg/koin/java/KoinJavaComponent;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/manager/notifications/PushNotificationsManager;

    .line 53
    invoke-virtual {v0, p0}, Lcom/smedialink/manager/notifications/PushNotificationsManager;->sendPushToken(Ljava/lang/String;)V

    .line 55
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->pushStringStatus:Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lorg/telegram/tgnet/ConnectionsManager;->setRegId(Ljava/lang/String;ILjava/lang/String;)V

    if-nez p0, :cond_0

    return-void

    .line 60
    :cond_0
    sget-wide v0, Lorg/telegram/messenger/SharedConfig;->pushStringGetTimeStart:J

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-eqz v5, :cond_2

    sget-wide v0, Lorg/telegram/messenger/SharedConfig;->pushStringGetTimeEnd:J

    cmp-long v5, v0, v2

    if-eqz v5, :cond_2

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->pushStatSent:Z

    if-eqz v0, :cond_1

    sget-object v0, Lorg/telegram/messenger/SharedConfig;->pushString:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 62
    :cond_1
    sput-boolean v4, Lorg/telegram/messenger/SharedConfig;->pushStatSent:Z

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 64
    :goto_0
    sput-object p0, Lorg/telegram/messenger/SharedConfig;->pushString:Ljava/lang/String;

    .line 65
    sput p1, Lorg/telegram/messenger/SharedConfig;->pushType:I

    const/4 v1, 0x0

    :goto_1
    const/4 v5, 0x5

    if-ge v1, v5, :cond_6

    .line 67
    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v5

    .line 68
    iput-boolean v4, v5, Lorg/telegram/messenger/UserConfig;->registeredForPush:Z

    .line 69
    invoke-virtual {v5, v4}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 70
    invoke-virtual {v5}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v5

    cmp-long v7, v5, v2

    if-eqz v7, :cond_5

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    const-string v0, "fcm"

    goto :goto_2

    :cond_3
    const-string v0, "hcm"

    .line 74
    :goto_2
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_help_saveAppLog;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_help_saveAppLog;-><init>()V

    .line 75
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_inputAppEvent;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_inputAppEvent;-><init>()V

    .line 76
    sget-wide v7, Lorg/telegram/messenger/SharedConfig;->pushStringGetTimeStart:J

    long-to-double v7, v7

    iput-wide v7, v6, Lorg/telegram/tgnet/TLRPC$TL_inputAppEvent;->time:D

    .line 77
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "_token_request"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lorg/telegram/tgnet/TLRPC$TL_inputAppEvent;->type:Ljava/lang/String;

    .line 78
    iput-wide v2, v6, Lorg/telegram/tgnet/TLRPC$TL_inputAppEvent;->peer:J

    .line 79
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_jsonNull;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_jsonNull;-><init>()V

    iput-object v7, v6, Lorg/telegram/tgnet/TLRPC$TL_inputAppEvent;->data:Lorg/telegram/tgnet/TLRPC$JSONValue;

    .line 80
    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$TL_help_saveAppLog;->events:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_inputAppEvent;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_inputAppEvent;-><init>()V

    .line 83
    sget-wide v7, Lorg/telegram/messenger/SharedConfig;->pushStringGetTimeEnd:J

    long-to-double v7, v7

    iput-wide v7, v6, Lorg/telegram/tgnet/TLRPC$TL_inputAppEvent;->time:D

    .line 84
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_token_response"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lorg/telegram/tgnet/TLRPC$TL_inputAppEvent;->type:Ljava/lang/String;

    .line 85
    sget-wide v7, Lorg/telegram/messenger/SharedConfig;->pushStringGetTimeEnd:J

    sget-wide v9, Lorg/telegram/messenger/SharedConfig;->pushStringGetTimeStart:J

    sub-long/2addr v7, v9

    iput-wide v7, v6, Lorg/telegram/tgnet/TLRPC$TL_inputAppEvent;->peer:J

    .line 86
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_jsonNull;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_jsonNull;-><init>()V

    iput-object v0, v6, Lorg/telegram/tgnet/TLRPC$TL_inputAppEvent;->data:Lorg/telegram/tgnet/TLRPC$JSONValue;

    .line 87
    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$TL_help_saveAppLog;->events:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    sget-object v6, Lorg/telegram/messenger/PushListenerController$$ExternalSyntheticLambda8;->INSTANCE:Lorg/telegram/messenger/PushListenerController$$ExternalSyntheticLambda8;

    invoke-virtual {v0, v5, v6}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    const/4 v0, 0x0

    .line 97
    :cond_4
    new-instance v5, Lorg/telegram/messenger/PushListenerController$$ExternalSyntheticLambda2;

    invoke-direct {v5, v1, p1, p0}, Lorg/telegram/messenger/PushListenerController$$ExternalSyntheticLambda2;-><init>(IILjava/lang/String;)V

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_5
    add-int/lit8 v1, v1, 0x1

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

    .line 1323
    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->isClientActivated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1324
    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->onInternalPushReceived(I)V

    .line 1325
    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/tgnet/ConnectionsManager;->resumeNetworkMaybe()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1328
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

    .line 105
    :goto_0
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_1

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " PRE START PROCESSING"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 108
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 109
    new-instance v8, Lorg/telegram/messenger/PushListenerController$$ExternalSyntheticLambda5;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/PushListenerController$$ExternalSyntheticLambda5;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;J)V

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1210
    :try_start_0
    sget-object p1, Lorg/telegram/messenger/PushListenerController;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    nop

    .line 1214
    :goto_1
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz p1, :cond_2

    .line 1215
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
