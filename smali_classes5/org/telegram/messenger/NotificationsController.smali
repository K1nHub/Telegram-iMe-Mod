.class public Lorg/telegram/messenger/NotificationsController;
.super Lorg/telegram/messenger/BaseController;
.source "NotificationsController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/NotificationsController$DialogKey;
    }
.end annotation


# static fields
.field public static final EXTRA_VOICE_REPLY:Ljava/lang/String; = "extra_voice_reply"

.field private static volatile Instance:[Lorg/telegram/messenger/NotificationsController; = null

.field public static OTHER_NOTIFICATIONS_CHANNEL:Ljava/lang/String; = null

.field public static final SETTING_MUTE_2_DAYS:I = 0x2

.field public static final SETTING_MUTE_8_HOURS:I = 0x1

.field public static final SETTING_MUTE_CUSTOM:I = 0x5

.field public static final SETTING_MUTE_FOREVER:I = 0x3

.field public static final SETTING_MUTE_HOUR:I = 0x0

.field public static final SETTING_MUTE_UNMUTE:I = 0x4

.field public static final SETTING_SOUND_OFF:I = 0x1

.field public static final SETTING_SOUND_ON:I = 0x0

.field public static final TYPE_CHANNEL:I = 0x2

.field public static final TYPE_GROUP:I = 0x0

.field public static final TYPE_PRIVATE:I = 0x1

.field protected static audioManager:Landroid/media/AudioManager;

.field public static globalSecretChatId:J

.field private static final lockObjects:[Ljava/lang/Object;

.field private static notificationManager:Landroidx/core/app/NotificationManagerCompat;

.field private static notificationsQueue:Lorg/telegram/messenger/DispatchQueue;

.field private static systemNotificationManager:Landroid/app/NotificationManager;


# instance fields
.field private alarmManager:Landroid/app/AlarmManager;

.field private channelGroupsCreated:Z

.field private delayedPushMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field dialogsNotificationsFacade:Lorg/telegram/messenger/NotificationsSettingsFacade;

.field private fcmRandomMessagesDict:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private groupsCreated:Ljava/lang/Boolean;

.field private inChatSoundEnabled:Z

.field private lastBadgeCount:I

.field private lastButtonId:I

.field public lastNotificationChannelCreateTime:J

.field private lastOnlineFromOtherDevice:I

.field private lastSoundOutPlay:J

.field private lastSoundPlay:J

.field private lastWearNotifiedMessageId:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private launcherClassName:Ljava/lang/String;

.field private mediaSpoilerEffect:Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

.field private notificationDelayRunnable:Ljava/lang/Runnable;

.field private notificationDelayWakelock:Landroid/os/PowerManager$WakeLock;

.field private notificationGroup:Ljava/lang/String;

.field private notificationId:I

.field private notifyCheck:Z

.field private openedDialogId:J

.field private openedInBubbleDialogs:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private openedTopicId:I

.field private personalCount:I

.field public popupMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field public popupReplyMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private pushDialogs:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private pushDialogsOverrideMention:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private pushMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private pushMessagesDict:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Landroid/util/SparseArray<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;>;"
        }
    .end annotation
.end field

.field public showBadgeMessages:Z

.field public showBadgeMuted:Z

.field public showBadgeNumber:Z

.field private smartNotificationsDialogs:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field private soundIn:I

.field private soundInLoaded:Z

.field private soundOut:I

.field private soundOutLoaded:Z

.field private soundPool:Landroid/media/SoundPool;

.field private soundRecord:I

.field private soundRecordLoaded:Z

.field spoilerChars:[C

.field private total_unread_count:I

.field private wearNotificationsIds:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$-DhKGk9GZg6YzQHnpzGjqgRdd0U(Lorg/telegram/messenger/NotificationsController;JII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/NotificationsController;->lambda$deleteNotificationChannel$31(JII)V

    return-void
.end method

.method public static synthetic $r8$lambda$-Z2YekOMquu__MR6Be9Vde3FIuw(Lorg/telegram/messenger/NotificationsController;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/NotificationsController;->lambda$deleteNotificationChannelGlobal$32(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$2lGNGhLHXRUsqGclFuSzqfl8FkM(Lorg/telegram/messenger/NotificationsController;Landroidx/collection/LongSparseArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/NotificationsController;->lambda$processEditedMessages$15(Landroidx/collection/LongSparseArray;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3cZbqPU9Y3S06abw9ILH0N4Ep0s(Lorg/telegram/messenger/NotificationsController;Landroidx/collection/LongSparseArray;ZLjava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/NotificationsController;->lambda$removeDeletedMessagesFromNotifications$9(Landroidx/collection/LongSparseArray;ZLjava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3kQAiZ9Bh16atkj_BNBB6fIwBz0(Landroid/media/SoundPool;II)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/NotificationsController;->lambda$playOutChatSound$37(Landroid/media/SoundPool;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$4jWnBBmVxQNrDAvJfEFS6jLsr60(Lorg/telegram/messenger/NotificationsController;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/NotificationsController;->lambda$playInChatSound$29()V

    return-void
.end method

.method public static synthetic $r8$lambda$6CReQfDWlw2a2PsaAzyfEhAPsns(Lorg/telegram/messenger/NotificationsController;JLj$/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/NotificationsController;->lambda$loadTopicsNotificationsExceptions$42(JLj$/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AxH7aJsfG5Mc0iwjGIL7viK0O1U(Lorg/telegram/messenger/NotificationsController;Lorg/telegram/messenger/support/LongSparseIntArray;Ljava/util/ArrayList;JIIZ)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lorg/telegram/messenger/NotificationsController;->lambda$processReadMessages$14(Lorg/telegram/messenger/support/LongSparseIntArray;Ljava/util/ArrayList;JIIZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$FyPUZT2ceziPrnLbjp3DP6TpZLE(Lorg/telegram/messenger/NotificationsController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/NotificationsController;->lambda$removeDeletedMessagesFromNotifications$8(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$GZBqT62OExZmrg2wPwCTtwFd8f8(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/messenger/NotificationsController;->lambda$updateServerNotificationsSettings$40(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$H-wMn4uPnkTTx7ZoiR-Ztc6u2Ro(Landroid/net/Uri;Ljava/io/File;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/messenger/NotificationsController;->lambda$showExtraNotifications$34(Landroid/net/Uri;Ljava/io/File;)V

    return-void
.end method

.method public static synthetic $r8$lambda$J6nnc6uZ1QNnZS3Uh8CBIIwU8rc(Landroid/media/SoundPool;II)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/NotificationsController;->lambda$playInChatSound$28(Landroid/media/SoundPool;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$JAWOeL8wgj0-2SF5vIt5qkc6DYw(Lorg/telegram/messenger/NotificationsController;Ljava/util/ArrayList;Landroidx/collection/LongSparseArray;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/NotificationsController;->lambda$processLoadedUnreadMessages$23(Ljava/util/ArrayList;Landroidx/collection/LongSparseArray;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MG9YrXt3VbwNGy71Pm0cRncJC9I(Lorg/telegram/messenger/NotificationsController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/NotificationsController;->lambda$processLoadedUnreadMessages$22(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$OwDgIeXXRYyH5tYu73aClazdD68(Lj$/util/function/Consumer;Ljava/util/HashSet;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/messenger/NotificationsController;->lambda$loadTopicsNotificationsExceptions$41(Lj$/util/function/Consumer;Ljava/util/HashSet;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PUIUo2C0R4xhGduvz4NDZH04GfY(Lorg/telegram/messenger/NotificationsController;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/NotificationsController;->lambda$processDialogsUpdateRead$19(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RS3Pzm6Wmlr6xs5hm5nhiXbrZ3I(Lorg/telegram/messenger/NotificationsController;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/NotificationsController;->lambda$forceShowPopupForReply$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$S2fgx9ueLNMouRMQ-trhblZWbwM(Lorg/telegram/messenger/NotificationsController;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/NotificationsController;->lambda$removeDeletedMessagesFromNotifications$7(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SK6obZD_FUcg3nSDIiA66Mf2OmI(Ljava/lang/Runnable;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/telegram/messenger/NotificationsController;->lambda$updateServerNotificationsSettings$39(Ljava/lang/Runnable;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SMuVuHRJ8eDBmEUdQz1C0rSzi5Q(Lorg/telegram/messenger/NotificationsController;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/NotificationsController;->lambda$repeatNotificationMaybe$30()V

    return-void
.end method

.method public static synthetic $r8$lambda$UJCrljxlL132FoMGkA3779Bfbpo(Lorg/telegram/messenger/NotificationsController;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/NotificationsController;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$UmSrLsED9tVTkbgf4rlT2uE6WA0(Lorg/telegram/messenger/NotificationsController;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/NotificationsController;->lambda$removeDeletedHisoryFromNotifications$10(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VHgcplzGmBaKtRgRg0kOeCk4Zpw(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/NotificationsController;->lambda$loadRoundAvatar$36(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WPxYtO9ykZLxO2r9fe6IbZXPtSw(Lorg/telegram/messenger/NotificationsController;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/NotificationsController;->lambda$playOutChatSound$38()V

    return-void
.end method

.method public static synthetic $r8$lambda$WY7ZhA1HimzuVPuNrTQrxcOwuqw(Lorg/telegram/messenger/NotificationsController;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/NotificationsController;->lambda$deleteAllNotificationChannels$33()V

    return-void
.end method

.method public static synthetic $r8$lambda$WZ2sSk1dAMHwhkQ0863sRYV1v9g(Lorg/telegram/messenger/NotificationsController;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/NotificationsController;->lambda$cleanup$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$Xm3GfLfrXxVeSzh6sXz25bf68d0(Lorg/telegram/messenger/NotificationsController;JI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/NotificationsController;->lambda$setOpenedDialogId$2(JI)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZKepeBe8G6bqFMGuWyeq6lMDVfI(Lorg/telegram/messenger/NotificationsController;Lorg/telegram/messenger/support/LongSparseIntArray;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/NotificationsController;->lambda$processDialogsUpdateRead$21(Lorg/telegram/messenger/support/LongSparseIntArray;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_K14CQM4WJp3v2-I6ftd0AAO98k(Lorg/telegram/messenger/NotificationsController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/NotificationsController;->lambda$processDialogsUpdateRead$20(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$bOc-Mw6YYRkNjHFQ_wD7NQ0vsF0(Landroid/graphics/Canvas;)I
    .locals 0

    invoke-static {p0}, Lorg/telegram/messenger/NotificationsController;->lambda$loadRoundAvatar$35(Landroid/graphics/Canvas;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$clggjUloGEMnNQWJ2T7GnWz4foM(Lorg/telegram/messenger/NotificationsController;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/NotificationsController;->lambda$hideNotifications$26()V

    return-void
.end method

.method public static synthetic $r8$lambda$g2xQ8bNn8aKFfWPbGnblXARr39A(Lorg/telegram/messenger/NotificationsController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/NotificationsController;->lambda$setLastOnlineFromOtherDevice$4(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$h5KFRJghmY4hv4R52P9WIzjBy40(Lorg/telegram/messenger/NotificationsController;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/NotificationsController;->lambda$updateBadge$24()V

    return-void
.end method

.method public static synthetic $r8$lambda$iYOSfz5VcZuzNxBfBzSgn5Z5Evw(Lorg/telegram/messenger/NotificationsController;ZJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/NotificationsController;->lambda$setOpenedInBubble$3(ZJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$is0Wqmn5X9su_bn8rpZ-ruOD6P0(Lorg/telegram/messenger/NotificationsController;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/NotificationsController;->lambda$forceShowPopupForReply$5(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mwGHY9RsCg04YVJOf1JNyRhRiiM(Lorg/telegram/messenger/NotificationsController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/NotificationsController;->lambda$removeDeletedHisoryFromNotifications$11(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$oVc3fkFlYKUBNyRnq2Ku27g4Pa0(Lorg/telegram/messenger/NotificationsController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/NotificationsController;->lambda$processNewMessages$17(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$od51AeF-L-iY_vf-FK6EvJniVYw(Lorg/telegram/messenger/NotificationsController;Lorg/telegram/messenger/support/LongSparseIntArray;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/NotificationsController;->lambda$removeDeletedHisoryFromNotifications$12(Lorg/telegram/messenger/support/LongSparseIntArray;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qhw7Mwkb9EugPyH3U2R2jQLJRTQ(Lorg/telegram/messenger/NotificationsController;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/NotificationsController;->lambda$showNotifications$25()V

    return-void
.end method

.method public static synthetic $r8$lambda$sNUpqyeI1kQGj5KO5gIL84QUSwo(Lorg/telegram/messenger/NotificationsController;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/NotificationsController;->lambda$processReadMessages$13(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wO-d7vyBRsYgPNuwJoXlF_uKprE(Lorg/telegram/messenger/NotificationsController;Ljava/util/ArrayList;Ljava/util/ArrayList;ZZLjava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/messenger/NotificationsController;->lambda$processNewMessages$18(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZLjava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method public static synthetic $r8$lambda$y0viyyzHAD9iq9L5OFqN7-FTVtM()V
    .locals 0

    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->lambda$dismissNotification$27()V

    return-void
.end method

.method public static synthetic $r8$lambda$yF6g5YXBUMdZrUoJxRbBgzb3e_k(Lorg/telegram/messenger/NotificationsController;Ljava/util/ArrayList;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/NotificationsController;->lambda$processNewMessages$16(Ljava/util/ArrayList;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 112
    new-instance v0, Lorg/telegram/messenger/DispatchQueue;

    const-string v1, "notificationsQueue"

    invoke-direct {v0, v1}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/telegram/messenger/NotificationsController;->notificationsQueue:Lorg/telegram/messenger/DispatchQueue;

    const/4 v0, 0x0

    .line 118
    sput-object v0, Lorg/telegram/messenger/NotificationsController;->notificationManager:Landroidx/core/app/NotificationManagerCompat;

    .line 119
    sput-object v0, Lorg/telegram/messenger/NotificationsController;->systemNotificationManager:Landroid/app/NotificationManager;

    const-wide/16 v0, 0x1

    .line 143
    invoke-static {v0, v1}, Lorg/telegram/messenger/DialogObject;->makeEncryptedDialogId(J)J

    move-result-wide v0

    sput-wide v0, Lorg/telegram/messenger/NotificationsController;->globalSecretChatId:J

    .line 175
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 176
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/NotificationsController;->notificationManager:Landroidx/core/app/NotificationManagerCompat;

    .line 177
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    sput-object v0, Lorg/telegram/messenger/NotificationsController;->systemNotificationManager:Landroid/app/NotificationManager;

    .line 178
    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->checkOtherNotificationsChannel()V

    .line 180
    :cond_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    sput-object v0, Lorg/telegram/messenger/NotificationsController;->audioManager:Landroid/media/AudioManager;

    const/4 v0, 0x5

    new-array v1, v0, [Lorg/telegram/messenger/NotificationsController;

    .line 183
    sput-object v1, Lorg/telegram/messenger/NotificationsController;->Instance:[Lorg/telegram/messenger/NotificationsController;

    new-array v1, v0, [Ljava/lang/Object;

    .line 184
    sput-object v1, Lorg/telegram/messenger/NotificationsController;->lockObjects:[Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 187
    sget-object v2, Lorg/telegram/messenger/NotificationsController;->lockObjects:[Ljava/lang/Object;

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 205
    invoke-direct {p0, p1}, Lorg/telegram/messenger/BaseController;-><init>(I)V

    .line 113
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;

    .line 114
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/NotificationsController;->delayedPushMessages:Ljava/util/ArrayList;

    .line 115
    new-instance p1, Landroidx/collection/LongSparseArray;

    invoke-direct {p1}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/NotificationsController;->pushMessagesDict:Landroidx/collection/LongSparseArray;

    .line 116
    new-instance p1, Landroidx/collection/LongSparseArray;

    invoke-direct {p1}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/NotificationsController;->fcmRandomMessagesDict:Landroidx/collection/LongSparseArray;

    .line 117
    new-instance p1, Landroidx/collection/LongSparseArray;

    invoke-direct {p1}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/NotificationsController;->smartNotificationsDialogs:Landroidx/collection/LongSparseArray;

    .line 120
    new-instance p1, Landroidx/collection/LongSparseArray;

    invoke-direct {p1}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/NotificationsController;->pushDialogs:Landroidx/collection/LongSparseArray;

    .line 121
    new-instance p1, Landroidx/collection/LongSparseArray;

    invoke-direct {p1}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/NotificationsController;->wearNotificationsIds:Landroidx/collection/LongSparseArray;

    .line 122
    new-instance p1, Landroidx/collection/LongSparseArray;

    invoke-direct {p1}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/NotificationsController;->lastWearNotifiedMessageId:Landroidx/collection/LongSparseArray;

    .line 123
    new-instance p1, Landroidx/collection/LongSparseArray;

    invoke-direct {p1}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/NotificationsController;->pushDialogsOverrideMention:Landroidx/collection/LongSparseArray;

    .line 124
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/NotificationsController;->popupMessages:Ljava/util/ArrayList;

    .line 125
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/NotificationsController;->popupReplyMessages:Ljava/util/ArrayList;

    .line 126
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/NotificationsController;->openedInBubbleDialogs:Ljava/util/HashSet;

    const-wide/16 v0, 0x0

    .line 127
    iput-wide v0, p0, Lorg/telegram/messenger/NotificationsController;->openedDialogId:J

    const/4 p1, 0x0

    .line 128
    iput p1, p0, Lorg/telegram/messenger/NotificationsController;->openedTopicId:I

    const/16 v0, 0x1388

    .line 129
    iput v0, p0, Lorg/telegram/messenger/NotificationsController;->lastButtonId:I

    .line 130
    iput p1, p0, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    .line 131
    iput p1, p0, Lorg/telegram/messenger/NotificationsController;->personalCount:I

    .line 132
    iput-boolean p1, p0, Lorg/telegram/messenger/NotificationsController;->notifyCheck:Z

    .line 133
    iput p1, p0, Lorg/telegram/messenger/NotificationsController;->lastOnlineFromOtherDevice:I

    const/4 v0, -0x1

    .line 135
    iput v0, p0, Lorg/telegram/messenger/NotificationsController;->lastBadgeCount:I

    .line 167
    new-instance v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    invoke-direct {v0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/NotificationsController;->mediaSpoilerEffect:Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    const/4 v0, 0x4

    new-array v0, v0, [C

    .line 2001
    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/telegram/messenger/NotificationsController;->spoilerChars:[C

    .line 206
    iget v0, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/messenger/NotificationsController;->notificationId:I

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "messages"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    if-nez v2, :cond_0

    const-string v2, ""

    goto :goto_0

    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/NotificationsController;->notificationGroup:Ljava/lang/String;

    .line 208
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getNotificationsSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "EnableInChatSound"

    .line 209
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lorg/telegram/messenger/NotificationsController;->inChatSoundEnabled:Z

    const-string v2, "badgeNumber"

    .line 210
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lorg/telegram/messenger/NotificationsController;->showBadgeNumber:Z

    const-string v2, "badgeNumberMuted"

    .line 211
    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lorg/telegram/messenger/NotificationsController;->showBadgeMuted:Z

    const-string v2, "badgeNumberMessages"

    .line 212
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/messenger/NotificationsController;->showBadgeMessages:Z

    .line 214
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/NotificationsController;->notificationManager:Landroidx/core/app/NotificationManagerCompat;

    .line 215
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    sput-object v0, Lorg/telegram/messenger/NotificationsController;->systemNotificationManager:Landroid/app/NotificationManager;

    .line 218
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    sput-object v0, Lorg/telegram/messenger/NotificationsController;->audioManager:Landroid/media/AudioManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 220
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 223
    :goto_1
    :try_start_1
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lorg/telegram/messenger/NotificationsController;->alarmManager:Landroid/app/AlarmManager;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 225
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 229
    :goto_2
    :try_start_2
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const-string/jumbo v2, "telegram:notification_delay_lock"

    .line 230
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/NotificationsController;->notificationDelayWakelock:Landroid/os/PowerManager$WakeLock;

    .line 231
    invoke-virtual {v0, p1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception p1

    .line 233
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 236
    :goto_3
    new-instance p1, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda9;

    invoke-direct {p1, p0}, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/messenger/NotificationsController;)V

    iput-object p1, p0, Lorg/telegram/messenger/NotificationsController;->notificationDelayRunnable:Ljava/lang/Runnable;

    .line 253
    new-instance p1, Lorg/telegram/messenger/NotificationsSettingsFacade;

    iget v0, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-direct {p1, v0}, Lorg/telegram/messenger/NotificationsSettingsFacade;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/messenger/NotificationsController;->dialogsNotificationsFacade:Lorg/telegram/messenger/NotificationsSettingsFacade;

    return-void

    :array_0
    .array-data 2
        0x280cs
        0x2862s
        0x2891s
        0x2828s
    .end array-data
.end method

.method static synthetic access$100()Landroidx/core/app/NotificationManagerCompat;
    .locals 1

    .line 84
    sget-object v0, Lorg/telegram/messenger/NotificationsController;->notificationManager:Landroidx/core/app/NotificationManagerCompat;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/messenger/NotificationsController;Landroidx/core/app/NotificationCompat$Builder;JILjava/lang/String;[JILandroid/net/Uri;IZZZI)V
    .locals 0

    .line 84
    invoke-direct/range {p0 .. p13}, Lorg/telegram/messenger/NotificationsController;->resetNotificationSound(Landroidx/core/app/NotificationCompat$Builder;JILjava/lang/String;[JILandroid/net/Uri;IZZZI)V

    return-void
.end method

.method private addToPopupMessages(Ljava/util/ArrayList;Lorg/telegram/messenger/MessageObject;JZLandroid/content/SharedPreferences;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;",
            "Lorg/telegram/messenger/MessageObject;",
            "JZ",
            "Landroid/content/SharedPreferences;",
            ")I"
        }
    .end annotation

    .line 739
    invoke-static {p3, p4}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    .line 740
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "custom_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p6, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 741
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "popup_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p6, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    if-eqz p5, :cond_1

    const-string p3, "popupChannel"

    .line 745
    invoke-interface {p6, p3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_2

    .line 747
    :cond_1
    invoke-static {p3, p4}, Lorg/telegram/messenger/DialogObject;->isChatDialog(J)Z

    move-result p3

    if-eqz p3, :cond_2

    const-string p3, "popupGroup"

    goto :goto_1

    :cond_2
    const-string p3, "popupAll"

    :goto_1
    invoke-interface {p6, p3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_2

    :cond_3
    const/4 p3, 0x1

    if-ne v0, p3, :cond_4

    const/4 v0, 0x3

    goto :goto_2

    :cond_4
    const/4 p3, 0x2

    if-ne v0, p3, :cond_6

    :cond_5
    const/4 v0, 0x0

    :cond_6
    :goto_2
    if-eqz v0, :cond_7

    .line 755
    iget-object p3, p2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide p3, p3, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    const-wide/16 p5, 0x0

    cmp-long v2, p3, p5

    if-eqz v2, :cond_7

    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->isSupergroup()Z

    move-result p3

    if-nez p3, :cond_7

    const/4 v0, 0x0

    :cond_7
    if-eqz v0, :cond_8

    .line 759
    invoke-virtual {p1, v1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_8
    return v0
.end method

.method public static checkOtherNotificationsChannel()V
    .locals 8

    .line 257
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    return-void

    .line 261
    :cond_0
    sget-object v0, Lorg/telegram/messenger/NotificationsController;->OTHER_NOTIFICATIONS_CHANNEL:Ljava/lang/String;

    const-string v1, "OtherKey"

    const-string v2, "Notifications"

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v0, :cond_1

    .line 262
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v5, "Other3"

    .line 263
    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lorg/telegram/messenger/NotificationsController;->OTHER_NOTIFICATIONS_CHANNEL:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v0, v4

    .line 265
    :goto_0
    sget-object v5, Lorg/telegram/messenger/NotificationsController;->systemNotificationManager:Landroid/app/NotificationManager;

    sget-object v6, Lorg/telegram/messenger/NotificationsController;->OTHER_NOTIFICATIONS_CHANNEL:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 266
    invoke-virtual {v5}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v6

    if-nez v6, :cond_2

    .line 267
    sget-object v5, Lorg/telegram/messenger/NotificationsController;->systemNotificationManager:Landroid/app/NotificationManager;

    sget-object v6, Lorg/telegram/messenger/NotificationsController;->OTHER_NOTIFICATIONS_CHANNEL:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    .line 268
    sput-object v4, Lorg/telegram/messenger/NotificationsController;->OTHER_NOTIFICATIONS_CHANNEL:Ljava/lang/String;

    move-object v5, v4

    .line 271
    :cond_2
    sget-object v6, Lorg/telegram/messenger/NotificationsController;->OTHER_NOTIFICATIONS_CHANNEL:Ljava/lang/String;

    if-nez v6, :cond_4

    if-nez v0, :cond_3

    .line 273
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 275
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Other"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v6}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/telegram/messenger/NotificationsController;->OTHER_NOTIFICATIONS_CHANNEL:Ljava/lang/String;

    .line 276
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v2, Lorg/telegram/messenger/NotificationsController;->OTHER_NOTIFICATIONS_CHANNEL:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_4
    if-nez v5, :cond_5

    .line 279
    new-instance v0, Landroid/app/NotificationChannel;

    sget-object v1, Lorg/telegram/messenger/NotificationsController;->OTHER_NOTIFICATIONS_CHANNEL:Ljava/lang/String;

    const/4 v2, 0x3

    const-string v5, "Internal notifications"

    invoke-direct {v0, v1, v5, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 280
    invoke-virtual {v0, v3}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 281
    invoke-virtual {v0, v3}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 282
    invoke-virtual {v0, v4, v4}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 284
    :try_start_0
    sget-object v1, Lorg/telegram/messenger/NotificationsController;->systemNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 286
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    return-void
.end method

.method private createNotificationShortcut(Landroidx/core/app/NotificationCompat$Builder;JLjava/lang/String;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;Landroidx/core/app/Person;)Ljava/lang/String;
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-wide/from16 v2, p2

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    const-string v7, "com.tmessages.openchat"

    .line 3010
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/NotificationsController;->unsupportedNotificationShortcut()Z

    move-result v8

    if-nez v8, :cond_9

    invoke-static/range {p6 .. p6}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-boolean v8, v5, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v8, :cond_0

    goto/16 :goto_7

    .line 3014
    :cond_0
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ndid_"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3016
    new-instance v10, Landroid/content/Intent;

    sget-object v11, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v12, Lorg/telegram/messenger/OpenChatReceiver;

    invoke-direct {v10, v11, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3017
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const v12, 0x7fffffff

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v13, 0x0

    const-string/jumbo v11, "userId"

    const-string v15, "chatId"

    cmp-long v16, v2, v13

    if-lez v16, :cond_1

    .line 3019
    :try_start_1
    invoke-virtual {v10, v11, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    neg-long v13, v2

    .line 3021
    invoke-virtual {v10, v15, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3024
    :goto_0
    new-instance v13, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    sget-object v14, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-direct {v13, v14, v8}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    if-eqz v5, :cond_2

    move-object/from16 v5, p4

    goto :goto_1

    .line 3025
    :cond_2
    invoke-static/range {p5 .. p5}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-virtual {v13, v5}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->setShortLabel(Ljava/lang/CharSequence;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    move-result-object v5

    move-object/from16 v13, p4

    .line 3026
    invoke-virtual {v5, v13}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->setLongLabel(Ljava/lang/CharSequence;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    move-result-object v5

    new-instance v13, Landroid/content/Intent;

    const-string v14, "android.intent.action.VIEW"

    invoke-direct {v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3027
    invoke-virtual {v5, v13}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->setIntent(Landroid/content/Intent;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    move-result-object v5

    .line 3028
    invoke-virtual {v5, v10}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->setIntent(Landroid/content/Intent;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    move-result-object v5

    const/4 v10, 0x1

    .line 3029
    invoke-virtual {v5, v10}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->setLongLived(Z)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    move-result-object v5

    new-instance v13, Landroidx/core/content/LocusIdCompat;

    invoke-direct {v13, v8}, Landroidx/core/content/LocusIdCompat;-><init>(Ljava/lang/String;)V

    .line 3030
    invoke-virtual {v5, v13}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->setLocusId(Landroidx/core/content/LocusIdCompat;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    move-result-object v5

    if-eqz v6, :cond_3

    .line 3034
    invoke-virtual {v5, v6}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->setPerson(Landroidx/core/app/Person;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    .line 3035
    invoke-virtual/range {p7 .. p7}, Landroidx/core/app/Person;->getIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v13

    invoke-virtual {v5, v13}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->setIcon(Landroidx/core/graphics/drawable/IconCompat;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    .line 3036
    invoke-virtual/range {p7 .. p7}, Landroidx/core/app/Person;->getIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v13

    if-eqz v13, :cond_3

    .line 3037
    invoke-virtual/range {p7 .. p7}, Landroidx/core/app/Person;->getIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/core/graphics/drawable/IconCompat;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    .line 3040
    :goto_2
    invoke-virtual {v5}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->build()Landroidx/core/content/pm/ShortcutInfoCompat;

    move-result-object v5

    .line 3041
    sget-object v13, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v13, v5}, Landroidx/core/content/pm/ShortcutManagerCompat;->pushDynamicShortcut(Landroid/content/Context;Landroidx/core/content/pm/ShortcutInfoCompat;)Z

    .line 3042
    invoke-virtual {v0, v5}, Landroidx/core/app/NotificationCompat$Builder;->setShortcutInfo(Landroidx/core/content/pm/ShortcutInfoCompat;)Landroidx/core/app/NotificationCompat$Builder;

    .line 3043
    new-instance v5, Landroid/content/Intent;

    sget-object v13, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v14, Lorg/telegram/ui/BubbleActivity;

    invoke-direct {v5, v13, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3044
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    invoke-virtual {v13, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3045
    invoke-static/range {p2 .. p3}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 3046
    invoke-virtual {v5, v11, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_3

    :cond_4
    neg-long v9, v2

    .line 3048
    invoke-virtual {v5, v15, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :goto_3
    const-string v9, "currentAccount"

    .line 3050
    iget v10, v1, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz v6, :cond_5

    .line 3054
    invoke-static {v6}, Landroidx/core/graphics/drawable/IconCompat;->createWithAdaptiveBitmap(Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v4

    goto :goto_5

    :cond_5
    if-eqz v4, :cond_7

    .line 3056
    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v4, :cond_6

    sget v4, Lorg/telegram/messenger/R$drawable;->book_bot:I

    goto :goto_4

    :cond_6
    sget v4, Lorg/telegram/messenger/R$drawable;->book_user:I

    :goto_4
    invoke-static {v6, v4}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v4

    goto :goto_5

    .line 3058
    :cond_7
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    sget v6, Lorg/telegram/messenger/R$drawable;->book_group:I

    invoke-static {v4, v6}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v4

    .line 3060
    :goto_5
    new-instance v6, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;

    sget-object v9, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const/high16 v10, 0xa000000

    const/4 v11, 0x0

    .line 3062
    invoke-static {v9, v11, v5, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-direct {v6, v5, v4}, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;-><init>(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;)V

    .line 3064
    iget-wide v4, v1, Lorg/telegram/messenger/NotificationsController;->openedDialogId:J

    cmp-long v9, v4, v2

    if-nez v9, :cond_8

    const/4 v10, 0x1

    goto :goto_6

    :cond_8
    const/4 v10, 0x0

    :goto_6
    invoke-virtual {v6, v10}, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->setSuppressNotification(Z)Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;

    .line 3065
    invoke-virtual {v6, v11}, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->setAutoExpandBubble(Z)Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;

    const/16 v2, 0x280

    .line 3066
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v6, v2}, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->setDesiredHeight(I)Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;

    .line 3067
    invoke-virtual {v6}, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->build()Landroidx/core/app/NotificationCompat$BubbleMetadata;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setBubbleMetadata(Landroidx/core/app/NotificationCompat$BubbleMetadata;)Landroidx/core/app/NotificationCompat$Builder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v8

    :catch_0
    move-exception v0

    .line 3070
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 v2, 0x0

    return-object v2

    :cond_9
    :goto_7
    const/4 v2, 0x0

    return-object v2
.end method

.method private deleteNotificationChannelInternal(JII)V
    .locals 9

    .line 2845
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    return-void

    .line 2849
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getNotificationsSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2850
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const-string v2, "delete channel internal "

    const-string v3, "_s"

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-eqz p4, :cond_1

    if-ne p4, v5, :cond_3

    .line 2852
    :cond_1
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "org.telegram.key"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    if-eqz p3, :cond_2

    .line 2854
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".topic"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2856
    :cond_2
    invoke-interface {v0, v6, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 2858
    invoke-interface {v1, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 2860
    :try_start_2
    sget-object v6, Lorg/telegram/messenger/NotificationsController;->systemNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v6, p3}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    .line 2862
    :try_start_3
    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2864
    :goto_0
    sget-boolean v6, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v6, :cond_3

    .line 2865
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_3
    const/4 p3, 0x1

    if-eq p4, p3, :cond_4

    if-ne p4, v5, :cond_5

    .line 2870
    :cond_4
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "org.telegram.keyia"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2871
    invoke-interface {v0, p1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 2873
    invoke-interface {v1, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 2875
    :try_start_4
    sget-object p1, Lorg/telegram/messenger/NotificationsController;->systemNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p1, p2}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 2877
    :try_start_5
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2879
    :goto_1
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_5

    .line 2880
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 2884
    :cond_5
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 2886
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method private dismissNotification()V
    .locals 4

    .line 2729
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/NotificationsController;->notificationManager:Landroidx/core/app/NotificationManagerCompat;

    iget v1, p0, Lorg/telegram/messenger/NotificationsController;->notificationId:I

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationManagerCompat;->cancel(I)V

    .line 2730
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2731
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController;->pushMessagesDict:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->clear()V

    .line 2732
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController;->lastWearNotifiedMessageId:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->clear()V

    const/4 v0, 0x0

    .line 2733
    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/NotificationsController;->wearNotificationsIds:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1}, Landroidx/collection/LongSparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2734
    iget-object v1, p0, Lorg/telegram/messenger/NotificationsController;->wearNotificationsIds:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1, v0}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v1

    .line 2735
    iget-object v3, p0, Lorg/telegram/messenger/NotificationsController;->openedInBubbleDialogs:Ljava/util/HashSet;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 2738
    :cond_0
    sget-object v1, Lorg/telegram/messenger/NotificationsController;->notificationManager:Landroidx/core/app/NotificationManagerCompat;

    iget-object v2, p0, Lorg/telegram/messenger/NotificationsController;->wearNotificationsIds:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2, v0}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationManagerCompat;->cancel(I)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2740
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController;->wearNotificationsIds:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->clear()V

    .line 2741
    sget-object v0, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda40;->INSTANCE:Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda40;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 2743
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public static getGlobalNotificationsKey(I)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "EnableGroup2"

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    const-string p0, "EnableAll2"

    return-object p0

    :cond_1
    const-string p0, "EnableChannel2"

    return-object p0
.end method

.method public static getInstance(I)Lorg/telegram/messenger/NotificationsController;
    .locals 3

    .line 192
    sget-object v0, Lorg/telegram/messenger/NotificationsController;->Instance:[Lorg/telegram/messenger/NotificationsController;

    aget-object v0, v0, p0

    if-nez v0, :cond_1

    .line 194
    sget-object v0, Lorg/telegram/messenger/NotificationsController;->lockObjects:[Ljava/lang/Object;

    aget-object v1, v0, p0

    monitor-enter v1

    .line 195
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/NotificationsController;->Instance:[Lorg/telegram/messenger/NotificationsController;

    aget-object v0, v0, p0

    if-nez v0, :cond_0

    .line 197
    sget-object v0, Lorg/telegram/messenger/NotificationsController;->Instance:[Lorg/telegram/messenger/NotificationsController;

    new-instance v2, Lorg/telegram/messenger/NotificationsController;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/NotificationsController;-><init>(I)V

    aput-object v2, v0, p0

    move-object v0, v2

    .line 199
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method private getNotifyOverride(Landroid/content/SharedPreferences;JI)I
    .locals 7

    .line 2699
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController;->dialogsNotificationsFacade:Lorg/telegram/messenger/NotificationsSettingsFacade;

    const-string v1, "notify2_"

    const/4 v5, -0x1

    move-wide v2, p2

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/NotificationsSettingsFacade;->getProperty(Ljava/lang/String;JII)I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 2701
    iget-object v1, p0, Lorg/telegram/messenger/NotificationsController;->dialogsNotificationsFacade:Lorg/telegram/messenger/NotificationsSettingsFacade;

    const/4 v6, 0x0

    const-string v2, "notifyuntil_"

    move-wide v3, p2

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/messenger/NotificationsSettingsFacade;->getProperty(Ljava/lang/String;JII)I

    move-result p2

    .line 2702
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result p3

    if-lt p2, p3, :cond_0

    const/4 p1, 0x2

    :cond_0
    return p1
.end method

.method public static getSharedPrefKey(JI)Ljava/lang/String;
    .locals 0

    .line 292
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 294
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private getShortStringForMessage(Lorg/telegram/messenger/MessageObject;[Ljava/lang/String;[Z)Ljava/lang/String;
    .locals 25

    move-object/from16 v0, p1

    .line 1436
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->needShowPasscode()Z

    move-result v1

    const-string v2, "NotificationHiddenMessage"

    if-nez v1, :cond_c0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isWaitingForPasscodeEnter:Z

    if-eqz v1, :cond_0

    goto/16 :goto_1d

    .line 1439
    :cond_0
    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v3, v1, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 1440
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v5, v1, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:J

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-eqz v9, :cond_1

    goto :goto_0

    :cond_1
    iget-wide v5, v1, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    .line 1441
    :goto_0
    iget-wide v9, v1, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    const/4 v1, 0x1

    const/4 v11, 0x0

    if-eqz p3, :cond_2

    .line 1443
    aput-boolean v1, p3, v11

    .line 1445
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/messenger/AccountInstance;->getNotificationsSettings()Landroid/content/SharedPreferences;

    move-result-object v12

    .line 1446
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "content_preview_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    .line 1447
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isFcmMessage()Z

    move-result v14

    const-string v15, "EnablePreviewChannel"

    const-string v1, "EnablePreviewGroup"

    const-string v11, "EnablePreviewAll"

    const-string v7, "Message"

    const/4 v8, 0x2

    if-eqz v14, :cond_f

    const-wide/16 v17, 0x0

    cmp-long v2, v5, v17

    if-nez v2, :cond_6

    cmp-long v3, v9, v17

    if-eqz v3, :cond_6

    .line 1449
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1b

    if-le v1, v2, :cond_3

    .line 1450
    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->localName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, p2, v2

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    if-eqz v13, :cond_4

    const/4 v1, 0x1

    .line 1452
    invoke-interface {v12, v11, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_e

    :cond_4
    if-eqz p3, :cond_5

    .line 1454
    aput-boolean v2, p3, v2

    .line 1456
    :cond_5
    sget v0, Lorg/telegram/messenger/R$string;->Message:I

    invoke-static {v7, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_6
    if-eqz v2, :cond_e

    .line 1459
    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_8

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isSupergroup()Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_2

    .line 1461
    :cond_7
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1b

    if-le v2, v3, :cond_9

    .line 1462
    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->localName:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, p2, v3

    goto :goto_3

    :cond_8
    :goto_2
    const/4 v3, 0x0

    .line 1460
    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->localUserName:Ljava/lang/String;

    aput-object v2, p2, v3

    :cond_9
    :goto_3
    if-eqz v13, :cond_b

    .line 1464
    iget-boolean v2, v0, Lorg/telegram/messenger/MessageObject;->localChannel:Z

    if-nez v2, :cond_a

    const/4 v2, 0x1

    invoke-interface {v12, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_4

    :cond_a
    const/4 v2, 0x1

    :goto_4
    iget-boolean v1, v0, Lorg/telegram/messenger/MessageObject;->localChannel:Z

    if-eqz v1, :cond_e

    invoke-interface {v12, v15, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_e

    :cond_b
    if-eqz p3, :cond_c

    const/4 v1, 0x0

    .line 1466
    aput-boolean v1, p3, v1

    .line 1468
    :cond_c
    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_d

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isSupergroup()Z

    move-result v1

    if-nez v1, :cond_d

    .line 1469
    sget v1, Lorg/telegram/messenger/R$string;->ChannelMessageNoText:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->localName:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v0, "ChannelMessageNoText"

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_d
    const/4 v3, 0x0

    .line 1471
    sget v1, Lorg/telegram/messenger/R$string;->NotificationMessageGroupNoText:I

    new-array v2, v8, [Ljava/lang/Object;

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->localUserName:Ljava/lang/String;

    aput-object v4, v2, v3

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->localName:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const-string v0, "NotificationMessageGroupNoText"

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1475
    :cond_e
    invoke-direct/range {p0 .. p1}, Lorg/telegram/messenger/NotificationsController;->replaceSpoilers(Lorg/telegram/messenger/MessageObject;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1477
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v14

    invoke-virtual {v14}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v19

    const-wide/16 v17, 0x0

    cmp-long v14, v9, v17

    if-nez v14, :cond_10

    .line 1479
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getFromChatId()J

    move-result-wide v9

    cmp-long v14, v9, v17

    if-nez v14, :cond_11

    neg-long v9, v5

    goto :goto_5

    :cond_10
    cmp-long v14, v9, v19

    if-nez v14, :cond_11

    .line 1484
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getFromChatId()J

    move-result-wide v9

    :cond_11
    :goto_5
    cmp-long v14, v3, v17

    if-nez v14, :cond_13

    cmp-long v14, v5, v17

    if-eqz v14, :cond_12

    neg-long v3, v5

    goto :goto_6

    :cond_12
    cmp-long v14, v9, v17

    if-eqz v14, :cond_13

    move-wide v3, v9

    .line 1496
    :cond_13
    :goto_6
    invoke-static {v3, v4}, Lorg/telegram/messenger/UserObject;->isReplyUser(J)Z

    move-result v14

    if-eqz v14, :cond_14

    iget-object v14, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    if-eqz v14, :cond_14

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v14, :cond_14

    .line 1497
    invoke-static {v14}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v9

    :cond_14
    const-wide/16 v17, 0x0

    cmp-long v21, v9, v17

    if-lez v21, :cond_18

    .line 1500
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v8, v14}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v8

    if-eqz v8, :cond_17

    .line 1502
    invoke-static {v8}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v8

    cmp-long v14, v5, v17

    if-eqz v14, :cond_15

    const/4 v14, 0x0

    .line 1504
    aput-object v8, p2, v14

    move-object/from16 v23, v7

    move-object/from16 v24, v15

    goto :goto_7

    :cond_15
    move-object/from16 v23, v7

    const/4 v14, 0x0

    .line 1506
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    move-object/from16 v24, v15

    const/16 v15, 0x1b

    if-le v7, v15, :cond_16

    .line 1507
    aput-object v8, p2, v14

    goto :goto_7

    :cond_16
    const/4 v7, 0x0

    .line 1509
    aput-object v7, p2, v14

    goto :goto_7

    :cond_17
    move-object/from16 v23, v7

    move-object/from16 v24, v15

    const/4 v14, 0x0

    const/4 v8, 0x0

    :goto_7
    move-object v7, v8

    goto :goto_8

    :cond_18
    move-object/from16 v23, v7

    move-object/from16 v24, v15

    const/4 v14, 0x0

    .line 1514
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    neg-long v14, v9

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v7

    if-eqz v7, :cond_19

    .line 1516
    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v8, 0x0

    .line 1517
    aput-object v7, p2, v8

    goto :goto_8

    :cond_19
    const/4 v7, 0x0

    :goto_8
    if-eqz v7, :cond_1a

    if-lez v21, :cond_1a

    .line 1520
    invoke-static {v3, v4}, Lorg/telegram/messenger/UserObject;->isReplyUser(J)Z

    move-result v8

    if-eqz v8, :cond_1a

    iget-object v8, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    if-eqz v8, :cond_1a

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->saved_from_peer:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v8, :cond_1a

    .line 1521
    invoke-static {v8}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v14

    .line 1522
    invoke-static {v14, v15}, Lorg/telegram/messenger/DialogObject;->isChatDialog(J)Z

    move-result v8

    if-eqz v8, :cond_1a

    .line 1523
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    neg-long v14, v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v8, v14}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v8

    if-eqz v8, :cond_1a

    .line 1525
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " @ "

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v8, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    .line 1526
    aget-object v14, p2, v8

    if-eqz v14, :cond_1a

    .line 1527
    aput-object v7, p2, v8

    :cond_1a
    if-nez v7, :cond_1b

    const/16 v22, 0x0

    return-object v22

    :cond_1b
    const-wide/16 v14, 0x0

    const/16 v22, 0x0

    cmp-long v8, v5, v14

    if-eqz v8, :cond_1e

    .line 1538
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v14

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v14, v5}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v5

    if-nez v5, :cond_1c

    return-object v22

    .line 1541
    :cond_1c
    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v6

    if-eqz v6, :cond_1d

    iget-boolean v6, v5, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v6, :cond_1d

    .line 1542
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x1b

    if-gt v6, v14, :cond_1d

    const/4 v6, 0x0

    .line 1543
    aput-object v22, p2, v6

    goto :goto_9

    :cond_1d
    const/4 v6, 0x0

    goto :goto_9

    :cond_1e
    const/4 v6, 0x0

    move-object/from16 v5, v22

    .line 1549
    :goto_9
    invoke-static {v3, v4}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v14

    if-eqz v14, :cond_1f

    .line 1550
    aput-object v22, p2, v6

    .line 1551
    sget v0, Lorg/telegram/messenger/R$string;->NotificationHiddenMessage:I

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1553
    :cond_1f
    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_20

    iget-boolean v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v2, :cond_20

    const/4 v2, 0x1

    goto :goto_a

    :cond_20
    const/4 v2, 0x0

    :goto_a
    if-eqz v13, :cond_be

    if-nez v8, :cond_21

    if-eqz v21, :cond_21

    const/4 v6, 0x1

    .line 1554
    invoke-interface {v12, v11, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-nez v11, :cond_23

    goto :goto_b

    :cond_21
    const/4 v6, 0x1

    :goto_b
    if-eqz v8, :cond_be

    if-nez v2, :cond_22

    invoke-interface {v12, v1, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_23

    :cond_22
    if-eqz v2, :cond_be

    move-object/from16 v1, v24

    invoke-interface {v12, v1, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_be

    .line 1555
    :cond_23
    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messageService;

    const-string/jumbo v6, "\ud83c\udfac "

    const-string/jumbo v8, "\ud83d\udcce "

    const-string/jumbo v11, "\ud83d\udcf9 "

    const-string/jumbo v12, "\ud83d\uddbc "

    if-eqz v2, :cond_a3

    const/4 v2, 0x0

    const/4 v14, 0x0

    .line 1556
    aput-object v2, p2, v14

    .line 1557
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v14, v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionGeoProximityReached;

    if-eqz v14, :cond_24

    .line 1558
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1559
    :cond_24
    instance-of v14, v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionUserJoined;

    if-nez v14, :cond_a2

    instance-of v14, v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionContactSignUp;

    if-eqz v14, :cond_25

    goto/16 :goto_1a

    .line 1561
    :cond_25
    instance-of v14, v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionUserUpdatedPhoto;

    if-eqz v14, :cond_26

    .line 1562
    sget v0, Lorg/telegram/messenger/R$string;->NotificationContactNewPhoto:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v7, v1, v2

    const-string v2, "NotificationContactNewPhoto"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1563
    :cond_26
    instance-of v14, v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionLoginUnknownLocation;

    const/4 v15, 0x3

    if-eqz v14, :cond_27

    .line 1564
    sget v1, Lorg/telegram/messenger/R$string;->formatDateAtTime:I

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/LocaleController;->formatterYear:Lorg/telegram/messenger/time/FastDateFormat;

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    int-to-long v4, v4

    const-wide/16 v6, 0x3e8

    mul-long v4, v4, v6

    invoke-virtual {v2, v4, v5}, Lorg/telegram/messenger/time/FastDateFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/LocaleController;->formatterDay:Lorg/telegram/messenger/time/FastDateFormat;

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    int-to-long v4, v4

    mul-long v4, v4, v6

    invoke-virtual {v2, v4, v5}, Lorg/telegram/messenger/time/FastDateFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v3, v4

    const-string v2, "formatDateAtTime"

    invoke-static {v2, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1565
    sget v2, Lorg/telegram/messenger/R$string;->NotificationUnrecognizedDevice:I

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v3, v6

    aput-object v1, v3, v4

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->title:Ljava/lang/String;

    const/4 v4, 0x2

    aput-object v1, v3, v4

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->address:Ljava/lang/String;

    aput-object v0, v3, v15

    const-string v0, "NotificationUnrecognizedDevice"

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1566
    :cond_27
    instance-of v14, v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionGameScore;

    if-nez v14, :cond_a1

    instance-of v14, v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionPaymentSent;

    if-eqz v14, :cond_28

    goto/16 :goto_19

    .line 1568
    :cond_28
    instance-of v14, v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionPhoneCall;

    if-eqz v14, :cond_2a

    .line 1569
    iget-boolean v0, v2, Lorg/telegram/tgnet/TLRPC$MessageAction;->video:Z

    if-eqz v0, :cond_29

    .line 1570
    sget v0, Lorg/telegram/messenger/R$string;->CallMessageVideoIncomingMissed:I

    const-string v1, "CallMessageVideoIncomingMissed"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1572
    :cond_29
    sget v0, Lorg/telegram/messenger/R$string;->CallMessageIncomingMissed:I

    const-string v1, "CallMessageIncomingMissed"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1574
    :cond_2a
    instance-of v14, v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatAddUser;

    if-eqz v14, :cond_35

    .line 1575
    iget-wide v3, v2, Lorg/telegram/tgnet/TLRPC$MessageAction;->user_id:J

    const-wide/16 v11, 0x0

    cmp-long v1, v3, v11

    if-nez v1, :cond_2b

    .line 1576
    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$MessageAction;->users:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2b

    .line 1577
    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageAction;->users:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    :cond_2b
    const-wide/16 v1, 0x0

    cmp-long v6, v3, v1

    if-eqz v6, :cond_31

    .line 1580
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v11, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    cmp-long v0, v11, v1

    if-eqz v0, :cond_2c

    iget-boolean v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v0, :cond_2c

    .line 1581
    sget v0, Lorg/telegram/messenger/R$string;->ChannelAddedByNotification:I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v7, v1, v2

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "ChannelAddedByNotification"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2c
    cmp-long v0, v3, v19

    if-nez v0, :cond_2d

    .line 1584
    sget v0, Lorg/telegram/messenger/R$string;->NotificationInvitedToGroup:I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v7, v1, v2

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "NotificationInvitedToGroup"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1586
    :cond_2d
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-nez v0, :cond_2e

    const/4 v1, 0x0

    return-object v1

    .line 1590
    :cond_2e
    iget-wide v1, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    cmp-long v3, v9, v1

    if-nez v3, :cond_30

    .line 1591
    iget-boolean v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v0, :cond_2f

    .line 1592
    sget v0, Lorg/telegram/messenger/R$string;->NotificationGroupAddSelfMega:I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v7, v1, v2

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "NotificationGroupAddSelfMega"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2f
    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1594
    sget v0, Lorg/telegram/messenger/R$string;->NotificationGroupAddSelf:I

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v7, v1, v2

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v1, v3

    const-string v2, "NotificationGroupAddSelf"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_30
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1597
    sget v1, Lorg/telegram/messenger/R$string;->NotificationGroupAddMember:I

    new-array v4, v15, [Ljava/lang/Object;

    aput-object v7, v4, v2

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v4, v3

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v4, v2

    const-string v0, "NotificationGroupAddMember"

    invoke-static {v0, v1, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1602
    :cond_31
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    .line 1603
    :goto_c
    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageAction;->users:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_34

    .line 1604
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageAction;->users:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    if-eqz v3, :cond_33

    .line 1606
    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v3

    .line 1607
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_32

    const-string v4, ", "

    .line 1608
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1610
    :cond_32
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 1613
    :cond_34
    sget v0, Lorg/telegram/messenger/R$string;->NotificationGroupAddMember:I

    new-array v2, v15, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v7, v2, v3

    iget-object v3, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v14, 0x2

    aput-object v1, v2, v14

    const-string v1, "NotificationGroupAddMember"

    invoke-static {v1, v0, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_35
    const/4 v14, 0x2

    .line 1615
    instance-of v13, v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionGroupCall;

    if-eqz v13, :cond_36

    .line 1616
    sget v0, Lorg/telegram/messenger/R$string;->NotificationGroupCreatedCall:I

    new-array v1, v14, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v7, v1, v2

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "NotificationGroupCreatedCall"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1617
    :cond_36
    instance-of v13, v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionGroupCallScheduled;

    if-eqz v13, :cond_37

    .line 1618
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1619
    :cond_37
    instance-of v13, v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionInviteToGroupCall;

    if-eqz v13, :cond_3f

    .line 1620
    iget-wide v3, v2, Lorg/telegram/tgnet/TLRPC$MessageAction;->user_id:J

    const-wide/16 v8, 0x0

    cmp-long v1, v3, v8

    if-nez v1, :cond_38

    .line 1621
    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$MessageAction;->users:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_38

    .line 1622
    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageAction;->users:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    :cond_38
    const-wide/16 v1, 0x0

    cmp-long v6, v3, v1

    if-eqz v6, :cond_3b

    cmp-long v0, v3, v19

    if-nez v0, :cond_39

    .line 1626
    sget v0, Lorg/telegram/messenger/R$string;->NotificationGroupInvitedYouToCall:I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v7, v1, v2

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "NotificationGroupInvitedYouToCall"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1628
    :cond_39
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-nez v0, :cond_3a

    const/4 v1, 0x0

    return-object v1

    .line 1632
    :cond_3a
    sget v1, Lorg/telegram/messenger/R$string;->NotificationGroupInvitedToCall:I

    new-array v2, v15, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v7, v2, v3

    iget-object v3, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    aput-object v0, v2, v3

    const-string v0, "NotificationGroupInvitedToCall"

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1635
    :cond_3b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    .line 1636
    :goto_d
    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageAction;->users:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3e

    .line 1637
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageAction;->users:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    if-eqz v3, :cond_3d

    .line 1639
    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v3

    .line 1640
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_3c

    const-string v4, ", "

    .line 1641
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1643
    :cond_3c
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3d
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 1646
    :cond_3e
    sget v0, Lorg/telegram/messenger/R$string;->NotificationGroupInvitedToCall:I

    new-array v2, v15, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v7, v2, v3

    iget-object v3, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v13, 0x2

    aput-object v1, v2, v13

    const-string v1, "NotificationGroupInvitedToCall"

    invoke-static {v1, v0, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3f
    const/4 v13, 0x2

    .line 1648
    instance-of v14, v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatJoinedByLink;

    if-eqz v14, :cond_40

    .line 1649
    sget v0, Lorg/telegram/messenger/R$string;->NotificationInvitedToGroupByLink:I

    new-array v1, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v7, v1, v14

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/16 v16, 0x1

    aput-object v2, v1, v16

    const-string v2, "NotificationInvitedToGroupByLink"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_40
    const/4 v14, 0x0

    const/16 v16, 0x1

    .line 1650
    instance-of v15, v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatEditTitle;

    if-eqz v15, :cond_41

    .line 1651
    sget v0, Lorg/telegram/messenger/R$string;->NotificationEditedGroupName:I

    new-array v1, v13, [Ljava/lang/Object;

    aput-object v7, v1, v14

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageAction;->title:Ljava/lang/String;

    aput-object v2, v1, v16

    const-string v2, "NotificationEditedGroupName"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1652
    :cond_41
    instance-of v13, v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatEditPhoto;

    if-nez v13, :cond_9d

    instance-of v13, v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatDeletePhoto;

    if-eqz v13, :cond_42

    goto/16 :goto_18

    .line 1666
    :cond_42
    instance-of v1, v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatDeleteUser;

    if-eqz v1, :cond_46

    .line 1667
    iget-wide v1, v2, Lorg/telegram/tgnet/TLRPC$MessageAction;->user_id:J

    cmp-long v3, v1, v19

    if-nez v3, :cond_43

    .line 1668
    sget v0, Lorg/telegram/messenger/R$string;->NotificationGroupKickYou:I

    const/4 v3, 0x2

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v7, v1, v4

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v2, v1, v6

    const-string v2, "NotificationGroupKickYou"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_43
    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v6, 0x1

    cmp-long v8, v1, v9

    if-nez v8, :cond_44

    .line 1670
    sget v0, Lorg/telegram/messenger/R$string;->NotificationGroupLeftMember:I

    new-array v1, v3, [Ljava/lang/Object;

    aput-object v7, v1, v4

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v1, v6

    const-string v2, "NotificationGroupLeftMember"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1672
    :cond_44
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->user_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-nez v0, :cond_45

    const/4 v1, 0x0

    return-object v1

    .line 1676
    :cond_45
    sget v1, Lorg/telegram/messenger/R$string;->NotificationGroupKickMember:I

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v7, v2, v3

    iget-object v3, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    aput-object v0, v2, v3

    const-string v0, "NotificationGroupKickMember"

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1678
    :cond_46
    instance-of v1, v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatCreate;

    if-eqz v1, :cond_47

    .line 1679
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1680
    :cond_47
    instance-of v1, v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionChannelCreate;

    if-eqz v1, :cond_48

    .line 1681
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1682
    :cond_48
    instance-of v1, v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatMigrateTo;

    if-eqz v1, :cond_49

    .line 1683
    sget v0, Lorg/telegram/messenger/R$string;->ActionMigrateFromGroupNotify:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v2, v1, v9

    const-string v2, "ActionMigrateFromGroupNotify"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_49
    const/4 v1, 0x1

    const/4 v9, 0x0

    .line 1684
    instance-of v10, v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionChannelMigrateFrom;

    if-eqz v10, :cond_4a

    .line 1685
    sget v0, Lorg/telegram/messenger/R$string;->ActionMigrateFromGroupNotify:I

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageAction;->title:Ljava/lang/String;

    aput-object v2, v1, v9

    const-string v2, "ActionMigrateFromGroupNotify"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1686
    :cond_4a
    instance-of v1, v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionScreenshotTaken;

    if-eqz v1, :cond_4b

    .line 1687
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1688
    :cond_4b
    instance-of v1, v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionPinMessage;

    if-eqz v1, :cond_97

    const-string v1, "..."

    const/16 v2, 0x14

    if-eqz v5, :cond_65

    .line 1689
    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-eqz v3, :cond_4c

    iget-boolean v3, v5, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v3, :cond_65

    .line 1690
    :cond_4c
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v0, :cond_4d

    .line 1691
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedNoText:I

    const/4 v3, 0x2

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v7, v1, v4

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v9, 0x1

    aput-object v2, v1, v9

    const-string v2, "NotificationActionPinnedNoText"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4d
    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v9, 0x1

    .line 1694
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v10

    if-eqz v10, :cond_4e

    .line 1695
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedMusic:I

    new-array v1, v3, [Ljava/lang/Object;

    aput-object v7, v1, v4

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v1, v9

    const-string v2, "NotificationActionPinnedMusic"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1696
    :cond_4e
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v3

    const-string v4, "NotificationActionPinnedText"

    if-eqz v3, :cond_50

    .line 1697
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_4f

    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4f

    .line 1698
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1699
    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedText:I

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v7, v2, v3

    const/4 v6, 0x1

    aput-object v0, v2, v6

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v8, 0x2

    aput-object v0, v2, v8

    invoke-static {v4, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4f
    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v8, 0x2

    .line 1701
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedVideo:I

    new-array v1, v8, [Ljava/lang/Object;

    aput-object v7, v1, v3

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v1, v6

    const-string v2, "NotificationActionPinnedVideo"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1703
    :cond_50
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isGif()Z

    move-result v3

    if-eqz v3, :cond_52

    .line 1704
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_51

    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_51

    .line 1705
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1706
    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedText:I

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v7, v2, v3

    const/4 v6, 0x1

    aput-object v0, v2, v6

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v9, 0x2

    aput-object v0, v2, v9

    invoke-static {v4, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_51
    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v9, 0x2

    .line 1708
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedGif:I

    new-array v1, v9, [Ljava/lang/Object;

    aput-object v7, v1, v3

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v1, v6

    const-string v2, "NotificationActionPinnedGif"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_52
    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v9, 0x2

    .line 1710
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v10

    if-eqz v10, :cond_53

    .line 1711
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedVoice:I

    new-array v1, v9, [Ljava/lang/Object;

    aput-object v7, v1, v3

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v1, v6

    const-string v2, "NotificationActionPinnedVoice"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1712
    :cond_53
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v10

    if-eqz v10, :cond_54

    .line 1713
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedRound:I

    new-array v1, v9, [Ljava/lang/Object;

    aput-object v7, v1, v3

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v1, v6

    const-string v2, "NotificationActionPinnedRound"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1714
    :cond_54
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isSticker()Z

    move-result v3

    if-nez v3, :cond_63

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isAnimatedSticker()Z

    move-result v3

    if-eqz v3, :cond_55

    goto/16 :goto_10

    .line 1721
    :cond_55
    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v9, v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v9, :cond_57

    .line 1722
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_56

    iget-object v1, v3, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_56

    .line 1723
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1724
    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedText:I

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v7, v2, v3

    const/4 v6, 0x1

    aput-object v0, v2, v6

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v8, 0x2

    aput-object v0, v2, v8

    invoke-static {v4, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_56
    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v8, 0x2

    .line 1726
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedFile:I

    new-array v1, v8, [Ljava/lang/Object;

    aput-object v7, v1, v3

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v1, v6

    const-string v2, "NotificationActionPinnedFile"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1728
    :cond_57
    instance-of v8, v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;

    if-nez v8, :cond_62

    instance-of v8, v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    if-eqz v8, :cond_58

    goto/16 :goto_f

    .line 1730
    :cond_58
    instance-of v8, v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeoLive;

    if-eqz v8, :cond_59

    .line 1731
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedGeoLive:I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v7, v1, v8

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v9, 0x1

    aput-object v2, v1, v9

    const-string v2, "NotificationActionPinnedGeoLive"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_59
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 1732
    instance-of v10, v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;

    if-eqz v10, :cond_5a

    .line 1733
    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;

    .line 1734
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedContact2:I

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v7, v1, v8

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v1, v9

    iget-object v2, v6, Lorg/telegram/tgnet/TLRPC$MessageMedia;->first_name:Ljava/lang/String;

    iget-object v3, v6, Lorg/telegram/tgnet/TLRPC$MessageMedia;->last_name:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "NotificationActionPinnedContact2"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1735
    :cond_5a
    instance-of v8, v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;

    if-eqz v8, :cond_5c

    .line 1736
    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;

    .line 1737
    iget-object v0, v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->poll:Lorg/telegram/tgnet/TLRPC$Poll;

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Poll;->quiz:Z

    if-eqz v1, :cond_5b

    .line 1738
    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedQuiz2:I

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v7, v2, v3

    iget-object v3, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Poll;->question:Ljava/lang/String;

    const/4 v6, 0x2

    aput-object v0, v2, v6

    const-string v0, "NotificationActionPinnedQuiz2"

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5b
    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x2

    .line 1740
    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedPoll2:I

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v7, v2, v3

    iget-object v3, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v3, v2, v4

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Poll;->question:Ljava/lang/String;

    aput-object v0, v2, v6

    const-string v0, "NotificationActionPinnedPoll2"

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1742
    :cond_5c
    instance-of v8, v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v8, :cond_5e

    .line 1743
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_5d

    iget-object v1, v3, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5d

    .line 1744
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1745
    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedText:I

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v7, v2, v3

    const/4 v8, 0x1

    aput-object v0, v2, v8

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v9, 0x2

    aput-object v0, v2, v9

    invoke-static {v4, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5d
    const/4 v3, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x2

    .line 1747
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedPhoto:I

    new-array v1, v9, [Ljava/lang/Object;

    aput-object v7, v1, v3

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v1, v8

    const-string v2, "NotificationActionPinnedPhoto"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5e
    const/4 v3, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x2

    .line 1749
    instance-of v6, v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;

    if-eqz v6, :cond_5f

    .line 1750
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedGame:I

    new-array v1, v9, [Ljava/lang/Object;

    aput-object v7, v1, v3

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v1, v8

    const-string v2, "NotificationActionPinnedGame"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1751
    :cond_5f
    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    if-eqz v3, :cond_61

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_61

    .line 1752
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    .line 1753
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-le v3, v2, :cond_60

    .line 1754
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    invoke-interface {v0, v6, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :cond_60
    const/4 v6, 0x0

    .line 1756
    :goto_e
    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedText:I

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v7, v2, v6

    const/4 v3, 0x1

    aput-object v0, v2, v3

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v8, 0x2

    aput-object v0, v2, v8

    invoke-static {v4, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_61
    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x2

    .line 1758
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedNoText:I

    new-array v1, v8, [Ljava/lang/Object;

    aput-object v7, v1, v6

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v1, v3

    const-string v2, "NotificationActionPinnedNoText"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_62
    :goto_f
    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x2

    .line 1729
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedGeo:I

    new-array v1, v8, [Ljava/lang/Object;

    aput-object v7, v1, v6

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v1, v3

    const-string v2, "NotificationActionPinnedGeo"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_63
    :goto_10
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 1715
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getStickerEmoji()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_64

    .line 1717
    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedStickerEmoji:I

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v7, v2, v6

    iget-object v4, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v4, 0x2

    aput-object v0, v2, v4

    const-string v0, "NotificationActionPinnedStickerEmoji"

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_64
    const/4 v4, 0x2

    .line 1719
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedSticker:I

    new-array v1, v4, [Ljava/lang/Object;

    aput-object v7, v1, v6

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v1, v3

    const-string v2, "NotificationActionPinnedSticker"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_65
    const/4 v3, 0x1

    if-eqz v5, :cond_7e

    .line 1762
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v0, :cond_66

    .line 1763
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedNoTextChannel:I

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v2, v1, v4

    const-string v2, "NotificationActionPinnedNoTextChannel"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_66
    const/4 v4, 0x0

    .line 1766
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v7

    if-eqz v7, :cond_67

    .line 1767
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedMusicChannel:I

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v1, v4

    const-string v2, "NotificationActionPinnedMusicChannel"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1768
    :cond_67
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v3

    const-string v4, "NotificationActionPinnedTextChannel"

    if-eqz v3, :cond_69

    .line 1769
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_68

    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_68

    .line 1770
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1771
    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedTextChannel:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v3, v2, v6

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v4, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_68
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 1773
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedVideoChannel:I

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v1, v6

    const-string v2, "NotificationActionPinnedVideoChannel"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1775
    :cond_69
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isGif()Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 1776
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_6a

    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6a

    .line 1777
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1778
    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedTextChannel:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v3, v2, v6

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v4, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_6a
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 1780
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedGifChannel:I

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v1, v6

    const-string v2, "NotificationActionPinnedGifChannel"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_6b
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 1782
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v7

    if-eqz v7, :cond_6c

    .line 1783
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedVoiceChannel:I

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v1, v6

    const-string v2, "NotificationActionPinnedVoiceChannel"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1784
    :cond_6c
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v7

    if-eqz v7, :cond_6d

    .line 1785
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedRoundChannel:I

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v1, v6

    const-string v2, "NotificationActionPinnedRoundChannel"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1786
    :cond_6d
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isSticker()Z

    move-result v3

    if-nez v3, :cond_7c

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isAnimatedSticker()Z

    move-result v3

    if-eqz v3, :cond_6e

    goto/16 :goto_13

    .line 1793
    :cond_6e
    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v7, v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v7, :cond_70

    .line 1794
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_6f

    iget-object v1, v3, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6f

    .line 1795
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1796
    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedTextChannel:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v3, v2, v6

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v4, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_6f
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 1798
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedFileChannel:I

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v1, v6

    const-string v2, "NotificationActionPinnedFileChannel"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1800
    :cond_70
    instance-of v7, v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;

    if-nez v7, :cond_7b

    instance-of v7, v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    if-eqz v7, :cond_71

    goto/16 :goto_12

    .line 1802
    :cond_71
    instance-of v7, v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeoLive;

    if-eqz v7, :cond_72

    .line 1803
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedGeoLiveChannel:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v2, v1, v7

    const-string v2, "NotificationActionPinnedGeoLiveChannel"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_72
    const/4 v7, 0x0

    .line 1804
    instance-of v8, v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;

    if-eqz v8, :cond_73

    .line 1805
    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;

    .line 1806
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedContactChannel2:I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v1, v7

    iget-object v2, v6, Lorg/telegram/tgnet/TLRPC$MessageMedia;->first_name:Ljava/lang/String;

    iget-object v3, v6, Lorg/telegram/tgnet/TLRPC$MessageMedia;->last_name:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "NotificationActionPinnedContactChannel2"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1807
    :cond_73
    instance-of v7, v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;

    if-eqz v7, :cond_75

    .line 1808
    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;

    .line 1809
    iget-object v0, v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->poll:Lorg/telegram/tgnet/TLRPC$Poll;

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Poll;->quiz:Z

    if-eqz v1, :cond_74

    .line 1810
    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedQuizChannel2:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Poll;->question:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const-string v0, "NotificationActionPinnedQuizChannel2"

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_74
    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1812
    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedPollChannel2:I

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v5, v2, v4

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Poll;->question:Ljava/lang/String;

    aput-object v0, v2, v3

    const-string v0, "NotificationActionPinnedPollChannel2"

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1814
    :cond_75
    instance-of v7, v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v7, :cond_77

    .line 1815
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_76

    iget-object v1, v3, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_76

    .line 1816
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1817
    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedTextChannel:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v3, v2, v7

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v4, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_76
    const/4 v3, 0x1

    const/4 v7, 0x0

    .line 1819
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedPhotoChannel:I

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v1, v7

    const-string v2, "NotificationActionPinnedPhotoChannel"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_77
    const/4 v3, 0x1

    const/4 v7, 0x0

    .line 1821
    instance-of v6, v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;

    if-eqz v6, :cond_78

    .line 1822
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedGameChannel:I

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v1, v7

    const-string v2, "NotificationActionPinnedGameChannel"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1823
    :cond_78
    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    if-eqz v3, :cond_7a

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_7a

    .line 1824
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    .line 1825
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-le v3, v2, :cond_79

    .line 1826
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x0

    invoke-interface {v0, v9, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :cond_79
    const/4 v9, 0x0

    .line 1828
    :goto_11
    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedTextChannel:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v3, v2, v9

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v4, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_7a
    const/4 v3, 0x1

    const/4 v9, 0x0

    .line 1830
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedNoTextChannel:I

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v1, v9

    const-string v2, "NotificationActionPinnedNoTextChannel"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_7b
    :goto_12
    const/4 v3, 0x1

    const/4 v9, 0x0

    .line 1801
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedGeoChannel:I

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v1, v9

    const-string v2, "NotificationActionPinnedGeoChannel"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_7c
    :goto_13
    const/4 v9, 0x0

    .line 1787
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getStickerEmoji()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7d

    .line 1789
    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedStickerEmojiChannel:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v3, v2, v9

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const-string v0, "NotificationActionPinnedStickerEmojiChannel"

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_7d
    const/4 v3, 0x1

    .line 1791
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedStickerChannel:I

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v1, v9

    const-string v2, "NotificationActionPinnedStickerChannel"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_7e
    const/4 v9, 0x0

    .line 1834
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v0, :cond_7f

    .line 1835
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedNoTextUser:I

    new-array v1, v3, [Ljava/lang/Object;

    aput-object v7, v1, v9

    const-string v2, "NotificationActionPinnedNoTextUser"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1838
    :cond_7f
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v4

    if-eqz v4, :cond_80

    .line 1839
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedMusicUser:I

    new-array v1, v3, [Ljava/lang/Object;

    aput-object v7, v1, v9

    const-string v2, "NotificationActionPinnedMusicUser"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1840
    :cond_80
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v3

    const-string v4, "NotificationActionPinnedTextUser"

    if-eqz v3, :cond_82

    .line 1841
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_81

    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_81

    .line 1842
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1843
    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedTextUser:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v7, v2, v3

    const/4 v5, 0x1

    aput-object v0, v2, v5

    invoke-static {v4, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_81
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 1845
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedVideoUser:I

    new-array v1, v5, [Ljava/lang/Object;

    aput-object v7, v1, v3

    const-string v2, "NotificationActionPinnedVideoUser"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1847
    :cond_82
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isGif()Z

    move-result v3

    if-eqz v3, :cond_84

    .line 1848
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_83

    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_83

    .line 1849
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1850
    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedTextUser:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v7, v2, v3

    const/4 v5, 0x1

    aput-object v0, v2, v5

    invoke-static {v4, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_83
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 1852
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedGifUser:I

    new-array v1, v5, [Ljava/lang/Object;

    aput-object v7, v1, v3

    const-string v2, "NotificationActionPinnedGifUser"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_84
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 1854
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v6

    if-eqz v6, :cond_85

    .line 1855
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedVoiceUser:I

    new-array v1, v5, [Ljava/lang/Object;

    aput-object v7, v1, v3

    const-string v2, "NotificationActionPinnedVoiceUser"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1856
    :cond_85
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v6

    if-eqz v6, :cond_86

    .line 1857
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedRoundUser:I

    new-array v1, v5, [Ljava/lang/Object;

    aput-object v7, v1, v3

    const-string v2, "NotificationActionPinnedRoundUser"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1858
    :cond_86
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isSticker()Z

    move-result v3

    if-nez v3, :cond_95

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isAnimatedSticker()Z

    move-result v3

    if-eqz v3, :cond_87

    goto/16 :goto_16

    .line 1865
    :cond_87
    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v6, v5, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v6, :cond_89

    .line 1866
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_88

    iget-object v1, v3, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_88

    .line 1867
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1868
    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedTextUser:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v7, v2, v3

    const/4 v5, 0x1

    aput-object v0, v2, v5

    invoke-static {v4, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_88
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 1870
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedFileUser:I

    new-array v1, v5, [Ljava/lang/Object;

    aput-object v7, v1, v3

    const-string v2, "NotificationActionPinnedFileUser"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1872
    :cond_89
    instance-of v6, v5, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;

    if-nez v6, :cond_94

    instance-of v6, v5, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    if-eqz v6, :cond_8a

    goto/16 :goto_15

    .line 1874
    :cond_8a
    instance-of v6, v5, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeoLive;

    if-eqz v6, :cond_8b

    .line 1875
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedGeoLiveUser:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v7, v1, v6

    const-string v2, "NotificationActionPinnedGeoLiveUser"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_8b
    const/4 v6, 0x0

    .line 1876
    instance-of v8, v5, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;

    if-eqz v8, :cond_8c

    .line 1877
    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;

    .line 1878
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedContactUser:I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v7, v1, v6

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->first_name:Ljava/lang/String;

    iget-object v3, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->last_name:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "NotificationActionPinnedContactUser"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1879
    :cond_8c
    instance-of v6, v5, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;

    if-eqz v6, :cond_8e

    .line 1880
    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;

    .line 1881
    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->poll:Lorg/telegram/tgnet/TLRPC$Poll;

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Poll;->quiz:Z

    if-eqz v1, :cond_8d

    .line 1882
    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedQuizUser:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v7, v2, v3

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Poll;->question:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v0, v2, v4

    const-string v0, "NotificationActionPinnedQuizUser"

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_8d
    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1884
    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedPollUser:I

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v7, v2, v3

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Poll;->question:Ljava/lang/String;

    aput-object v0, v2, v4

    const-string v0, "NotificationActionPinnedPollUser"

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1886
    :cond_8e
    instance-of v6, v5, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v6, :cond_90

    .line 1887
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_8f

    iget-object v1, v3, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8f

    .line 1888
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1889
    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedTextUser:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v7, v2, v3

    const/4 v6, 0x1

    aput-object v0, v2, v6

    invoke-static {v4, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_8f
    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 1891
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedPhotoUser:I

    new-array v1, v6, [Ljava/lang/Object;

    aput-object v7, v1, v3

    const-string v2, "NotificationActionPinnedPhotoUser"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_90
    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 1893
    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;

    if-eqz v5, :cond_91

    .line 1894
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedGameUser:I

    new-array v1, v6, [Ljava/lang/Object;

    aput-object v7, v1, v3

    const-string v2, "NotificationActionPinnedGameUser"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1895
    :cond_91
    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    if-eqz v3, :cond_93

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_93

    .line 1896
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    .line 1897
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-le v3, v2, :cond_92

    .line 1898
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    invoke-interface {v0, v5, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    :cond_92
    const/4 v5, 0x0

    .line 1900
    :goto_14
    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedTextUser:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v7, v2, v5

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v4, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_93
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 1902
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedNoTextUser:I

    new-array v1, v3, [Ljava/lang/Object;

    aput-object v7, v1, v5

    const-string v2, "NotificationActionPinnedNoTextUser"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_94
    :goto_15
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 1873
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedGeoUser:I

    new-array v1, v3, [Ljava/lang/Object;

    aput-object v7, v1, v5

    const-string v2, "NotificationActionPinnedGeoUser"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_95
    :goto_16
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 1859
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getStickerEmoji()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_96

    .line 1861
    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedStickerEmojiUser:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v7, v2, v5

    aput-object v0, v2, v3

    const-string v0, "NotificationActionPinnedStickerEmojiUser"

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1863
    :cond_96
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedStickerUser:I

    new-array v1, v3, [Ljava/lang/Object;

    aput-object v7, v1, v5

    const-string v2, "NotificationActionPinnedStickerUser"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1906
    :cond_97
    instance-of v1, v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionSetChatTheme;

    if-eqz v1, :cond_9b

    .line 1907
    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionSetChatTheme;

    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionSetChatTheme;->emoticon:Ljava/lang/String;

    .line 1908
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_99

    cmp-long v1, v3, v19

    if-nez v1, :cond_98

    .line 1910
    sget v0, Lorg/telegram/messenger/R$string;->ChatThemeDisabledYou:I

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ChatThemeDisabledYou"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    :cond_98
    const/4 v1, 0x0

    .line 1911
    sget v2, Lorg/telegram/messenger/R$string;->ChatThemeDisabled:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v7, v3, v1

    const/4 v5, 0x1

    aput-object v0, v3, v5

    const-string v0, "ChatThemeDisabled"

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    :cond_99
    const/4 v1, 0x0

    const/4 v5, 0x1

    cmp-long v2, v3, v19

    if-nez v2, :cond_9a

    .line 1914
    sget v2, Lorg/telegram/messenger/R$string;->ChatThemeChangedYou:I

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v1

    const-string v0, "ChangedChatThemeYou"

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    .line 1915
    :cond_9a
    sget v2, Lorg/telegram/messenger/R$string;->ChatThemeChangedTo:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v7, v3, v1

    aput-object v0, v3, v5

    const-string v0, "ChangedChatThemeTo"

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_17
    return-object v0

    .line 1918
    :cond_9b
    instance-of v1, v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatJoinedByRequest;

    if-eqz v1, :cond_9c

    .line 1919
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_9c
    const/4 v0, 0x0

    return-object v0

    .line 1653
    :cond_9d
    :goto_18
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    const-wide/16 v3, 0x0

    cmp-long v6, v1, v3

    if-eqz v6, :cond_9f

    iget-boolean v1, v5, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v1, :cond_9f

    .line 1654
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isVideoAvatar()Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 1655
    sget v0, Lorg/telegram/messenger/R$string;->ChannelVideoEditNotification:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "ChannelVideoEditNotification"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_9e
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 1657
    sget v0, Lorg/telegram/messenger/R$string;->ChannelPhotoEditNotification:I

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v1, v3

    const-string v2, "ChannelPhotoEditNotification"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_9f
    const/4 v3, 0x0

    .line 1660
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isVideoAvatar()Z

    move-result v0

    if-eqz v0, :cond_a0

    .line 1661
    sget v0, Lorg/telegram/messenger/R$string;->NotificationEditedGroupVideo:I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v7, v1, v3

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "NotificationEditedGroupVideo"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_a0
    const/4 v1, 0x2

    const/4 v4, 0x1

    .line 1663
    sget v0, Lorg/telegram/messenger/R$string;->NotificationEditedGroupPhoto:I

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v7, v1, v3

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v1, v4

    const-string v2, "NotificationEditedGroupPhoto"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1567
    :cond_a1
    :goto_19
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_a2
    :goto_1a
    const/4 v4, 0x1

    .line 1560
    sget v0, Lorg/telegram/messenger/R$string;->NotificationContactJoined:I

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v7, v1, v2

    const-string v2, "NotificationContactJoined"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1922
    :cond_a3
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isMediaEmpty()Z

    move-result v1

    if-eqz v1, :cond_a5

    .line 1923
    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a4

    .line 1924
    invoke-direct/range {p0 .. p1}, Lorg/telegram/messenger/NotificationsController;->replaceSpoilers(Lorg/telegram/messenger/MessageObject;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1926
    :cond_a4
    sget v0, Lorg/telegram/messenger/R$string;->Message:I

    move-object/from16 v1, v23

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_a5
    move-object/from16 v1, v23

    .line 1928
    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v3, :cond_a8

    .line 1929
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v1, v3, :cond_a6

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a6

    .line 1930
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p1}, Lorg/telegram/messenger/NotificationsController;->replaceSpoilers(Lorg/telegram/messenger/MessageObject;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1931
    :cond_a6
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->ttl_seconds:I

    if-eqz v0, :cond_a7

    .line 1932
    sget v0, Lorg/telegram/messenger/R$string;->AttachDestructingPhoto:I

    const-string v1, "AttachDestructingPhoto"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1934
    :cond_a7
    sget v0, Lorg/telegram/messenger/R$string;->AttachPhoto:I

    const-string v1, "AttachPhoto"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1936
    :cond_a8
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v2

    if-eqz v2, :cond_ab

    .line 1937
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_a9

    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a9

    .line 1938
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p1}, Lorg/telegram/messenger/NotificationsController;->replaceSpoilers(Lorg/telegram/messenger/MessageObject;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1939
    :cond_a9
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->ttl_seconds:I

    if-eqz v0, :cond_aa

    .line 1940
    sget v0, Lorg/telegram/messenger/R$string;->AttachDestructingVideo:I

    const-string v1, "AttachDestructingVideo"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1942
    :cond_aa
    sget v0, Lorg/telegram/messenger/R$string;->AttachVideo:I

    const-string v1, "AttachVideo"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1944
    :cond_ab
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isGame()Z

    move-result v2

    if-eqz v2, :cond_ac

    .line 1945
    sget v0, Lorg/telegram/messenger/R$string;->AttachGame:I

    const-string v1, "AttachGame"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1946
    :cond_ac
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v2

    if-eqz v2, :cond_ad

    .line 1947
    sget v0, Lorg/telegram/messenger/R$string;->AttachAudio:I

    const-string v1, "AttachAudio"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1948
    :cond_ad
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v2

    if-eqz v2, :cond_ae

    .line 1949
    sget v0, Lorg/telegram/messenger/R$string;->AttachRound:I

    const-string v1, "AttachRound"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1950
    :cond_ae
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v2

    if-eqz v2, :cond_af

    .line 1951
    sget v0, Lorg/telegram/messenger/R$string;->AttachMusic:I

    const-string v1, "AttachMusic"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1952
    :cond_af
    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;

    if-eqz v3, :cond_b0

    .line 1953
    sget v0, Lorg/telegram/messenger/R$string;->AttachContact:I

    const-string v1, "AttachContact"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1954
    :cond_b0
    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;

    if-eqz v3, :cond_b2

    .line 1955
    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;

    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->poll:Lorg/telegram/tgnet/TLRPC$Poll;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Poll;->quiz:Z

    if-eqz v0, :cond_b1

    .line 1956
    sget v0, Lorg/telegram/messenger/R$string;->QuizPoll:I

    const-string v1, "QuizPoll"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1958
    :cond_b1
    sget v0, Lorg/telegram/messenger/R$string;->Poll:I

    const-string v1, "Poll"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1960
    :cond_b2
    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;

    if-nez v3, :cond_bd

    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    if-eqz v3, :cond_b3

    goto/16 :goto_1c

    .line 1962
    :cond_b3
    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeoLive;

    if-eqz v3, :cond_b4

    .line 1963
    sget v0, Lorg/telegram/messenger/R$string;->AttachLiveLocation:I

    const-string v1, "AttachLiveLocation"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1964
    :cond_b4
    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v2, :cond_bb

    .line 1965
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isSticker()Z

    move-result v1

    if-nez v1, :cond_b9

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isAnimatedSticker()Z

    move-result v1

    if-eqz v1, :cond_b5

    goto :goto_1b

    .line 1972
    :cond_b5
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isGif()Z

    move-result v1

    if-eqz v1, :cond_b7

    .line 1973
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_b6

    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b6

    .line 1974
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p1}, Lorg/telegram/messenger/NotificationsController;->replaceSpoilers(Lorg/telegram/messenger/MessageObject;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1976
    :cond_b6
    sget v0, Lorg/telegram/messenger/R$string;->AttachGif:I

    const-string v1, "AttachGif"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1979
    :cond_b7
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_b8

    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b8

    .line 1980
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p1}, Lorg/telegram/messenger/NotificationsController;->replaceSpoilers(Lorg/telegram/messenger/MessageObject;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1982
    :cond_b8
    sget v0, Lorg/telegram/messenger/R$string;->AttachDocument:I

    const-string v1, "AttachDocument"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1966
    :cond_b9
    :goto_1b
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getStickerEmoji()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_ba

    .line 1968
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lorg/telegram/messenger/R$string;->AttachSticker:I

    const-string v2, "AttachSticker"

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1970
    :cond_ba
    sget v0, Lorg/telegram/messenger/R$string;->AttachSticker:I

    const-string v1, "AttachSticker"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1985
    :cond_bb
    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_bc

    .line 1986
    invoke-direct/range {p0 .. p1}, Lorg/telegram/messenger/NotificationsController;->replaceSpoilers(Lorg/telegram/messenger/MessageObject;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1988
    :cond_bc
    sget v0, Lorg/telegram/messenger/R$string;->Message:I

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1961
    :cond_bd
    :goto_1c
    sget v0, Lorg/telegram/messenger/R$string;->AttachLocation:I

    const-string v1, "AttachLocation"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_be
    move-object/from16 v1, v23

    if-eqz p3, :cond_bf

    const/4 v0, 0x0

    .line 1993
    aput-boolean v0, p3, v0

    .line 1995
    :cond_bf
    sget v0, Lorg/telegram/messenger/R$string;->Message:I

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1437
    :cond_c0
    :goto_1d
    sget v0, Lorg/telegram/messenger/R$string;->NotificationHiddenMessage:I

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getStringForMessage(Lorg/telegram/messenger/MessageObject;Z[Z[Z)Ljava/lang/String;
    .locals 26

    move-object/from16 v0, p1

    .line 2023
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->needShowPasscode()Z

    move-result v1

    const-string v2, "YouHaveNewMessage"

    if-nez v1, :cond_da

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isWaitingForPasscodeEnter:Z

    if-eqz v1, :cond_0

    goto/16 :goto_1d

    .line 2026
    :cond_0
    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v3, v1, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 2027
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v5, v1, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:J

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-eqz v9, :cond_1

    goto :goto_0

    :cond_1
    iget-wide v5, v1, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    .line 2028
    :goto_0
    iget-wide v9, v1, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    const/4 v1, 0x1

    const/4 v11, 0x0

    if-eqz p4, :cond_2

    .line 2030
    aput-boolean v1, p4, v11

    .line 2032
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/messenger/AccountInstance;->getNotificationsSettings()Landroid/content/SharedPreferences;

    move-result-object v12

    .line 2033
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "content_preview_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    .line 2034
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isFcmMessage()Z

    move-result v14

    const-string v15, "EnablePreviewGroup"

    const-string v11, "EnablePreviewAll"

    const-string v1, "ChannelMessageNoText"

    const-string v7, "NotificationMessageGroupNoText"

    const-string v8, "NotificationMessageNoText"

    move-object/from16 v18, v2

    const/4 v2, 0x2

    if-eqz v14, :cond_b

    const-wide/16 v16, 0x0

    cmp-long v3, v5, v16

    if-nez v3, :cond_5

    cmp-long v4, v9, v16

    if-eqz v4, :cond_5

    const/4 v4, 0x1

    if-eqz v13, :cond_3

    .line 2036
    invoke-interface {v12, v11, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_a

    :cond_3
    const/4 v1, 0x0

    if-eqz p4, :cond_4

    .line 2038
    aput-boolean v1, p4, v1

    .line 2040
    :cond_4
    sget v2, Lorg/telegram/messenger/R$string;->NotificationMessageNoText:I

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->localName:Ljava/lang/String;

    aput-object v0, v3, v1

    invoke-static {v8, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5
    const/4 v4, 0x1

    if-eqz v3, :cond_a

    if-eqz v13, :cond_7

    .line 2043
    iget-boolean v3, v0, Lorg/telegram/messenger/MessageObject;->localChannel:Z

    if-nez v3, :cond_6

    invoke-interface {v12, v15, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    iget-boolean v3, v0, Lorg/telegram/messenger/MessageObject;->localChannel:Z

    if-eqz v3, :cond_a

    const-string v3, "EnablePreviewChannel"

    invoke-interface {v12, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_a

    :cond_7
    if-eqz p4, :cond_8

    const/4 v3, 0x0

    .line 2045
    aput-boolean v3, p4, v3

    .line 2047
    :cond_8
    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    const-wide/16 v5, 0x0

    cmp-long v8, v3, v5

    if-eqz v8, :cond_9

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isSupergroup()Z

    move-result v3

    if-nez v3, :cond_9

    .line 2048
    sget v2, Lorg/telegram/messenger/R$string;->ChannelMessageNoText:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->localName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_9
    const/4 v4, 0x0

    .line 2050
    sget v1, Lorg/telegram/messenger/R$string;->NotificationMessageGroupNoText:I

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->localUserName:Ljava/lang/String;

    aput-object v3, v2, v4

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->localName:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v7, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_a
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2054
    aput-boolean v3, p3, v4

    .line 2055
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 2057
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v14

    invoke-virtual {v14}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v19

    const-wide/16 v16, 0x0

    cmp-long v14, v9, v16

    if-nez v14, :cond_c

    .line 2059
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getFromChatId()J

    move-result-wide v9

    cmp-long v14, v9, v16

    if-nez v14, :cond_d

    neg-long v9, v5

    goto :goto_1

    :cond_c
    cmp-long v14, v9, v19

    if-nez v14, :cond_d

    .line 2064
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getFromChatId()J

    move-result-wide v9

    :cond_d
    :goto_1
    cmp-long v14, v3, v16

    if-nez v14, :cond_f

    cmp-long v14, v5, v16

    if-eqz v14, :cond_e

    neg-long v3, v5

    goto :goto_2

    :cond_e
    cmp-long v14, v9, v16

    if-eqz v14, :cond_f

    move-wide v3, v9

    :cond_f
    :goto_2
    cmp-long v21, v9, v16

    if-lez v21, :cond_13

    .line 2077
    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->from_scheduled:Z

    if-eqz v2, :cond_11

    cmp-long v2, v3, v19

    if-nez v2, :cond_10

    .line 2079
    sget v2, Lorg/telegram/messenger/R$string;->MessageScheduledReminderNotification:I

    const-string v14, "MessageScheduledReminderNotification"

    invoke-static {v14, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 2081
    :cond_10
    sget v2, Lorg/telegram/messenger/R$string;->NotificationMessageScheduledName:I

    const-string v14, "NotificationMessageScheduledName"

    invoke-static {v14, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 2084
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v2, v14}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 2086
    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_12
    const/4 v2, 0x0

    :goto_3
    move-object/from16 v22, v15

    goto :goto_4

    .line 2090
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    move-object/from16 v22, v15

    neg-long v14, v9

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v2, v14}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    if-eqz v2, :cond_14

    .line 2092
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    goto :goto_4

    :cond_14
    const/4 v2, 0x0

    :goto_4
    if-nez v2, :cond_15

    const/4 v14, 0x0

    return-object v14

    :cond_15
    const/4 v14, 0x0

    const-wide/16 v16, 0x0

    cmp-long v15, v5, v16

    if-eqz v15, :cond_17

    .line 2101
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v14

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v14, v5}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v5

    if-nez v5, :cond_16

    const/4 v6, 0x0

    return-object v6

    :cond_16
    move-object v14, v5

    goto :goto_5

    :cond_17
    const/4 v14, 0x0

    .line 2108
    :goto_5
    invoke-static {v3, v4}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 2109
    sget v0, Lorg/telegram/messenger/R$string;->YouHaveNewMessage:I

    move-object/from16 v1, v18

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_1c

    :cond_18
    const-string/jumbo v5, "\ud83c\udfac "

    const-string/jumbo v6, "\ud83d\udcce "

    move-object/from16 v18, v7

    const-string/jumbo v7, "\ud83d\udcf9 "

    move-object/from16 v23, v1

    const-string/jumbo v1, "\ud83d\uddbc "

    move-wide/from16 v24, v9

    const-string v9, "NotificationMessageText"

    const/4 v10, 0x3

    if-nez v15, :cond_43

    if-eqz v21, :cond_43

    if-eqz v13, :cond_41

    const/4 v13, 0x1

    .line 2112
    invoke-interface {v12, v11, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_41

    .line 2113
    iget-object v11, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    instance-of v12, v11, Lorg/telegram/tgnet/TLRPC$TL_messageService;

    if-eqz v12, :cond_25

    .line 2114
    iget-object v1, v11, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v5, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionGeoProximityReached;

    if-eqz v5, :cond_19

    .line 2115
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_1c

    .line 2116
    :cond_19
    instance-of v5, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionUserJoined;

    if-nez v5, :cond_24

    instance-of v5, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionContactSignUp;

    if-eqz v5, :cond_1a

    goto/16 :goto_8

    .line 2118
    :cond_1a
    instance-of v5, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionUserUpdatedPhoto;

    if-eqz v5, :cond_1b

    .line 2119
    sget v0, Lorg/telegram/messenger/R$string;->NotificationContactNewPhoto:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "NotificationContactNewPhoto"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_1c

    .line 2120
    :cond_1b
    instance-of v5, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionLoginUnknownLocation;

    if-eqz v5, :cond_1c

    .line 2121
    sget v1, Lorg/telegram/messenger/R$string;->formatDateAtTime:I

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/LocaleController;->formatterYear:Lorg/telegram/messenger/time/FastDateFormat;

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    int-to-long v4, v4

    const-wide/16 v6, 0x3e8

    mul-long v4, v4, v6

    invoke-virtual {v2, v4, v5}, Lorg/telegram/messenger/time/FastDateFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/LocaleController;->formatterDay:Lorg/telegram/messenger/time/FastDateFormat;

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    int-to-long v4, v4

    mul-long v4, v4, v6

    invoke-virtual {v2, v4, v5}, Lorg/telegram/messenger/time/FastDateFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v3, v4

    const-string v2, "formatDateAtTime"

    invoke-static {v2, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2122
    sget v2, Lorg/telegram/messenger/R$string;->NotificationUnrecognizedDevice:I

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v3, v6

    aput-object v1, v3, v4

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->title:Ljava/lang/String;

    const/4 v4, 0x2

    aput-object v1, v3, v4

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->address:Ljava/lang/String;

    aput-object v0, v3, v10

    const-string v0, "NotificationUnrecognizedDevice"

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_1c

    .line 2123
    :cond_1c
    instance-of v5, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionGameScore;

    if-nez v5, :cond_23

    instance-of v5, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionPaymentSent;

    if-eqz v5, :cond_1d

    goto/16 :goto_7

    .line 2125
    :cond_1d
    instance-of v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionPhoneCall;

    if-eqz v0, :cond_1f

    .line 2126
    iget-boolean v0, v1, Lorg/telegram/tgnet/TLRPC$MessageAction;->video:Z

    if-eqz v0, :cond_1e

    .line 2127
    sget v0, Lorg/telegram/messenger/R$string;->CallMessageVideoIncomingMissed:I

    const-string v1, "CallMessageVideoIncomingMissed"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_1c

    .line 2129
    :cond_1e
    sget v0, Lorg/telegram/messenger/R$string;->CallMessageIncomingMissed:I

    const-string v1, "CallMessageIncomingMissed"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_1c

    .line 2131
    :cond_1f
    instance-of v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionSetChatTheme;

    if-eqz v0, :cond_d8

    .line 2132
    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionSetChatTheme;

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionSetChatTheme;->emoticon:Ljava/lang/String;

    .line 2133
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_21

    cmp-long v1, v3, v19

    if-nez v1, :cond_20

    .line 2135
    sget v0, Lorg/telegram/messenger/R$string;->ChatThemeDisabledYou:I

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "ChatThemeDisabledYou"

    invoke-static {v3, v0, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x1

    goto :goto_6

    :cond_20
    const/4 v1, 0x0

    .line 2136
    sget v3, Lorg/telegram/messenger/R$string;->ChatThemeDisabled:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v1

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const-string v0, "ChatThemeDisabled"

    invoke-static {v0, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_21
    const/4 v1, 0x0

    const/4 v5, 0x1

    cmp-long v6, v3, v19

    if-nez v6, :cond_22

    .line 2139
    sget v2, Lorg/telegram/messenger/R$string;->ChatThemeChangedYou:I

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v1

    const-string v0, "ChangedChatThemeYou"

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 2140
    :cond_22
    sget v3, Lorg/telegram/messenger/R$string;->ChatThemeChangedTo:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v1

    aput-object v0, v4, v5

    const-string v0, "ChangedChatThemeTo"

    invoke-static {v0, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_6
    move-object v14, v0

    .line 2142
    aput-boolean v5, p3, v1

    goto/16 :goto_1c

    .line 2124
    :cond_23
    :goto_7
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_1c

    :cond_24
    :goto_8
    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 2117
    sget v0, Lorg/telegram/messenger/R$string;->NotificationContactJoined:I

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v2, v3, v1

    const-string v1, "NotificationContactJoined"

    invoke-static {v1, v0, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_1c

    .line 2145
    :cond_25
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isMediaEmpty()Z

    move-result v3

    if-eqz v3, :cond_28

    if-nez p2, :cond_27

    .line 2147
    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 2148
    sget v1, Lorg/telegram/messenger/R$string;->NotificationMessageText:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v0, v3, v5

    invoke-static {v9, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 2149
    aput-boolean v5, p3, v4

    goto/16 :goto_1c

    :cond_26
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 2151
    sget v0, Lorg/telegram/messenger/R$string;->NotificationMessageNoText:I

    new-array v1, v5, [Ljava/lang/Object;

    aput-object v2, v1, v4

    invoke-static {v8, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_1c

    :cond_27
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 2154
    sget v0, Lorg/telegram/messenger/R$string;->NotificationMessageNoText:I

    new-array v1, v5, [Ljava/lang/Object;

    aput-object v2, v1, v4

    invoke-static {v8, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_1c

    .line 2156
    :cond_28
    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v4, :cond_2b

    if-nez p2, :cond_29

    .line 2157
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-lt v4, v5, :cond_29

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_29

    .line 2158
    sget v3, Lorg/telegram/messenger/R$string;->NotificationMessageText:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v4, v1

    invoke-static {v9, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 2159
    aput-boolean v1, p3, v5

    goto/16 :goto_1c

    :cond_29
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 2161
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->ttl_seconds:I

    if-eqz v0, :cond_2a

    .line 2162
    sget v0, Lorg/telegram/messenger/R$string;->NotificationMessageSDPhoto:I

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v5

    const-string v2, "NotificationMessageSDPhoto"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_1c

    .line 2164
    :cond_2a
    sget v0, Lorg/telegram/messenger/R$string;->NotificationMessagePhoto:I

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v5

    const-string v2, "NotificationMessagePhoto"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_1c

    .line 2167
    :cond_2b
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_2e

    if-nez p2, :cond_2c

    .line 2168
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v1, v3, :cond_2c

    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 2169
    sget v1, Lorg/telegram/messenger/R$string;->NotificationMessageText:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x1

    aput-object v0, v3, v5

    invoke-static {v9, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 2170
    aput-boolean v5, p3, v4

    goto/16 :goto_1c

    :cond_2c
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 2172
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->ttl_seconds:I

    if-eqz v0, :cond_2d

    .line 2173
    sget v0, Lorg/telegram/messenger/R$string;->NotificationMessageSDVideo:I

    new-array v1, v5, [Ljava/lang/Object;

    aput-object v2, v1, v4

    const-string v2, "NotificationMessageSDVideo"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_1c

    .line 2175
    :cond_2d
    sget v0, Lorg/telegram/messenger/R$string;->NotificationMessageVideo:I

    new-array v1, v5, [Ljava/lang/Object;

    aput-object v2, v1, v4

    const-string v2, "NotificationMessageVideo"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_1c

    :cond_2e
    const/4 v4, 0x0

    .line 2178
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isGame()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 2179
    sget v1, Lorg/telegram/messenger/R$string;->NotificationMessageGame:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v4

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->game:Lorg/telegram/tgnet/TLRPC$TL_game;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_game;->title:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const-string v0, "NotificationMessageGame"

    invoke-static {v0, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_1c

    :cond_2f
    const/4 v4, 0x1

    .line 2180
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 2181
    sget v0, Lorg/telegram/messenger/R$string;->NotificationMessageAudio:I

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "NotificationMessageAudio"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_1c

    :cond_30
    const/4 v3, 0x0

    .line 2182
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 2183
    sget v0, Lorg/telegram/messenger/R$string;->NotificationMessageRound:I

    new-array v1, v4, [Ljava/lang/Object;

    aput-object v2, v1, v3

    const-string v2, "NotificationMessageRound"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_1c

    .line 2184
    :cond_31
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 2185
    sget v0, Lorg/telegram/messenger/R$string;->NotificationMessageMusic:I

    new-array v1, v4, [Ljava/lang/Object;

    aput-object v2, v1, v3

    const-string v2, "NotificationMessageMusic"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_1c

    .line 2186
    :cond_32
    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v4, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;

    if-eqz v4, :cond_33

    .line 2187
    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;

    .line 2188
    sget v0, Lorg/telegram/messenger/R$string;->NotificationMessageContact2:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v3

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->first_name:Ljava/lang/String;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->last_name:Ljava/lang/String;

    invoke-static {v2, v1}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v4, v2

    const-string v1, "NotificationMessageContact2"

    invoke-static {v1, v0, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_1c

    .line 2189
    :cond_33
    instance-of v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;

    if-eqz v3, :cond_35

    .line 2190
    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;

    .line 2191
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->poll:Lorg/telegram/tgnet/TLRPC$Poll;

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Poll;->quiz:Z

    if-eqz v1, :cond_34

    .line 2192
    sget v1, Lorg/telegram/messenger/R$string;->NotificationMessageQuiz2:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Poll;->question:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v0, v3, v5

    const-string v0, "NotificationMessageQuiz2"

    invoke-static {v0, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_34
    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 2194
    sget v1, Lorg/telegram/messenger/R$string;->NotificationMessagePoll2:I

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v4

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Poll;->question:Ljava/lang/String;

    aput-object v0, v3, v5

    const-string v0, "NotificationMessagePoll2"

    invoke-static {v0, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_9
    move-object v14, v0

    goto/16 :goto_1c

    .line 2196
    :cond_35
    instance-of v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;

    if-nez v3, :cond_40

    instance-of v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    if-eqz v3, :cond_36

    goto/16 :goto_b

    .line 2198
    :cond_36
    instance-of v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeoLive;

    if-eqz v3, :cond_37

    .line 2199
    sget v0, Lorg/telegram/messenger/R$string;->NotificationMessageLiveLocation:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "NotificationMessageLiveLocation"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_1c

    .line 2200
    :cond_37
    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v1, :cond_3e

    .line 2201
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isSticker()Z

    move-result v1

    if-nez v1, :cond_3c

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isAnimatedSticker()Z

    move-result v1

    if-eqz v1, :cond_38

    goto/16 :goto_a

    .line 2208
    :cond_38
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isGif()Z

    move-result v1

    if-eqz v1, :cond_3a

    if-nez p2, :cond_39

    .line 2209
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v1, v3, :cond_39

    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_39

    .line 2210
    sget v1, Lorg/telegram/messenger/R$string;->NotificationMessageText:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x1

    aput-object v0, v3, v5

    invoke-static {v9, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 2211
    aput-boolean v5, p3, v4

    goto/16 :goto_1c

    :cond_39
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 2213
    sget v0, Lorg/telegram/messenger/R$string;->NotificationMessageGif:I

    new-array v1, v5, [Ljava/lang/Object;

    aput-object v2, v1, v4

    const-string v2, "NotificationMessageGif"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_1c

    :cond_3a
    if-nez p2, :cond_3b

    .line 2216
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v1, v3, :cond_3b

    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3b

    .line 2217
    sget v1, Lorg/telegram/messenger/R$string;->NotificationMessageText:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x1

    aput-object v0, v3, v5

    invoke-static {v9, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 2218
    aput-boolean v5, p3, v4

    goto/16 :goto_1c

    :cond_3b
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 2220
    sget v0, Lorg/telegram/messenger/R$string;->NotificationMessageDocument:I

    new-array v1, v5, [Ljava/lang/Object;

    aput-object v2, v1, v4

    const-string v2, "NotificationMessageDocument"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_1c

    :cond_3c
    :goto_a
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 2202
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getStickerEmoji()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3d

    .line 2204
    sget v1, Lorg/telegram/messenger/R$string;->NotificationMessageStickerEmoji:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v4

    aput-object v0, v3, v5

    const-string v0, "NotificationMessageStickerEmoji"

    invoke-static {v0, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    .line 2206
    :cond_3d
    sget v0, Lorg/telegram/messenger/R$string;->NotificationMessageSticker:I

    new-array v1, v5, [Ljava/lang/Object;

    aput-object v2, v1, v4

    const-string v2, "NotificationMessageSticker"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    :cond_3e
    const/4 v4, 0x0

    if-nez p2, :cond_3f

    .line 2224
    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3f

    .line 2225
    sget v1, Lorg/telegram/messenger/R$string;->NotificationMessageText:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v4

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    const/4 v5, 0x1

    aput-object v0, v3, v5

    invoke-static {v9, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 2226
    aput-boolean v5, p3, v4

    goto/16 :goto_1c

    :cond_3f
    const/4 v5, 0x1

    .line 2228
    sget v0, Lorg/telegram/messenger/R$string;->NotificationMessageNoText:I

    new-array v1, v5, [Ljava/lang/Object;

    aput-object v2, v1, v4

    invoke-static {v8, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_1c

    :cond_40
    :goto_b
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 2197
    sget v0, Lorg/telegram/messenger/R$string;->NotificationMessageMap:I

    new-array v1, v5, [Ljava/lang/Object;

    aput-object v2, v1, v4

    const-string v2, "NotificationMessageMap"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_1c

    :cond_41
    const/4 v4, 0x0

    if-eqz p4, :cond_42

    .line 2234
    aput-boolean v4, p4, v4

    .line 2236
    :cond_42
    sget v0, Lorg/telegram/messenger/R$string;->NotificationMessageNoText:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v4

    invoke-static {v8, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_1c

    :cond_43
    if-eqz v15, :cond_d8

    .line 2239
    invoke-static {v14}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v8

    if-eqz v8, :cond_44

    iget-boolean v8, v14, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v8, :cond_44

    const/4 v8, 0x1

    goto :goto_c

    :cond_44
    const/4 v8, 0x0

    :goto_c
    if-eqz v13, :cond_d5

    if-nez v8, :cond_45

    move-object/from16 v11, v22

    const/4 v13, 0x1

    .line 2240
    invoke-interface {v12, v11, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-nez v11, :cond_46

    goto :goto_d

    :cond_45
    const/4 v13, 0x1

    :goto_d
    if-eqz v8, :cond_d5

    const-string v8, "EnablePreviewChannel"

    invoke-interface {v12, v8, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_d5

    .line 2241
    :cond_46
    iget-object v8, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    instance-of v11, v8, Lorg/telegram/tgnet/TLRPC$TL_messageService;

    if-eqz v11, :cond_a4

    .line 2242
    iget-object v9, v8, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v11, v9, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatAddUser;

    if-eqz v11, :cond_51

    .line 2243
    iget-wide v3, v9, Lorg/telegram/tgnet/TLRPC$MessageAction;->user_id:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-nez v1, :cond_47

    .line 2244
    iget-object v1, v9, Lorg/telegram/tgnet/TLRPC$MessageAction;->users:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v5, 0x1

    if-ne v1, v5, :cond_47

    .line 2245
    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageAction;->users:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    :cond_47
    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4d

    .line 2248
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    cmp-long v7, v0, v5

    if-eqz v7, :cond_48

    iget-boolean v0, v14, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v0, :cond_48

    .line 2249
    sget v0, Lorg/telegram/messenger/R$string;->ChannelAddedByNotification:I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "ChannelAddedByNotification"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    :cond_48
    cmp-long v0, v3, v19

    if-nez v0, :cond_49

    .line 2252
    sget v0, Lorg/telegram/messenger/R$string;->NotificationInvitedToGroup:I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "NotificationInvitedToGroup"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    .line 2254
    :cond_49
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-nez v0, :cond_4a

    const/4 v1, 0x0

    return-object v1

    .line 2258
    :cond_4a
    iget-wide v3, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    cmp-long v1, v24, v3

    if-nez v1, :cond_4c

    .line 2259
    iget-boolean v0, v14, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v0, :cond_4b

    .line 2260
    sget v0, Lorg/telegram/messenger/R$string;->NotificationGroupAddSelfMega:I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "NotificationGroupAddSelfMega"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    :cond_4b
    const/4 v1, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 2262
    sget v0, Lorg/telegram/messenger/R$string;->NotificationGroupAddSelf:I

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v3

    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v1, v4

    const-string v2, "NotificationGroupAddSelf"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    :cond_4c
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 2265
    sget v1, Lorg/telegram/messenger/R$string;->NotificationGroupAddMember:I

    new-array v5, v10, [Ljava/lang/Object;

    aput-object v2, v5, v3

    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v5, v4

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v5, v2

    const-string v0, "NotificationGroupAddMember"

    invoke-static {v0, v1, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    .line 2270
    :cond_4d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    .line 2271
    :goto_e
    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageAction;->users:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_50

    .line 2272
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-object v5, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$MessageAction;->users:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    if-eqz v4, :cond_4f

    .line 2274
    invoke-static {v4}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v4

    .line 2275
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-eqz v5, :cond_4e

    const-string v5, ", "

    .line 2276
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2278
    :cond_4e
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4f
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 2281
    :cond_50
    sget v0, Lorg/telegram/messenger/R$string;->NotificationGroupAddMember:I

    new-array v3, v10, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v11, 0x2

    aput-object v1, v3, v11

    const-string v1, "NotificationGroupAddMember"

    invoke-static {v1, v0, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    :cond_51
    const/4 v11, 0x2

    .line 2283
    instance-of v12, v9, Lorg/telegram/tgnet/TLRPC$TL_messageActionGroupCall;

    if-eqz v12, :cond_52

    .line 2284
    sget v0, Lorg/telegram/messenger/R$string;->NotificationGroupCreatedCall:I

    new-array v1, v11, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "NotificationGroupCreatedCall"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_1c

    .line 2285
    :cond_52
    instance-of v11, v9, Lorg/telegram/tgnet/TLRPC$TL_messageActionGroupCallScheduled;

    if-eqz v11, :cond_53

    .line 2286
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_1c

    .line 2287
    :cond_53
    instance-of v11, v9, Lorg/telegram/tgnet/TLRPC$TL_messageActionInviteToGroupCall;

    if-eqz v11, :cond_5b

    .line 2288
    iget-wide v3, v9, Lorg/telegram/tgnet/TLRPC$MessageAction;->user_id:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-nez v1, :cond_54

    .line 2289
    iget-object v1, v9, Lorg/telegram/tgnet/TLRPC$MessageAction;->users:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v5, 0x1

    if-ne v1, v5, :cond_54

    .line 2290
    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageAction;->users:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    :cond_54
    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_57

    cmp-long v0, v3, v19

    if-nez v0, :cond_55

    .line 2294
    sget v0, Lorg/telegram/messenger/R$string;->NotificationGroupInvitedYouToCall:I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "NotificationGroupInvitedYouToCall"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    .line 2296
    :cond_55
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-nez v0, :cond_56

    const/4 v1, 0x0

    return-object v1

    .line 2300
    :cond_56
    sget v1, Lorg/telegram/messenger/R$string;->NotificationGroupInvitedToCall:I

    new-array v3, v10, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v3, v2

    const-string v0, "NotificationGroupInvitedToCall"

    invoke-static {v0, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    .line 2303
    :cond_57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    .line 2304
    :goto_f
    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageAction;->users:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_5a

    .line 2305
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-object v5, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$MessageAction;->users:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    if-eqz v4, :cond_59

    .line 2307
    invoke-static {v4}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v4

    .line 2308
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-eqz v5, :cond_58

    const-string v5, ", "

    .line 2309
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2311
    :cond_58
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_59
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 2314
    :cond_5a
    sget v0, Lorg/telegram/messenger/R$string;->NotificationGroupInvitedToCall:I

    new-array v3, v10, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v11, 0x2

    aput-object v1, v3, v11

    const-string v1, "NotificationGroupInvitedToCall"

    invoke-static {v1, v0, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    :cond_5b
    const/4 v11, 0x2

    .line 2316
    instance-of v12, v9, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatJoinedByLink;

    if-eqz v12, :cond_5c

    .line 2317
    sget v0, Lorg/telegram/messenger/R$string;->NotificationInvitedToGroupByLink:I

    new-array v1, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v2, v1, v12

    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v13, 0x1

    aput-object v2, v1, v13

    const-string v2, "NotificationInvitedToGroupByLink"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_1c

    :cond_5c
    const/4 v12, 0x0

    const/4 v13, 0x1

    .line 2318
    instance-of v15, v9, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatEditTitle;

    if-eqz v15, :cond_5d

    .line 2319
    sget v0, Lorg/telegram/messenger/R$string;->NotificationEditedGroupName:I

    new-array v1, v11, [Ljava/lang/Object;

    aput-object v2, v1, v12

    iget-object v2, v9, Lorg/telegram/tgnet/TLRPC$MessageAction;->title:Ljava/lang/String;

    aput-object v2, v1, v13

    const-string v2, "NotificationEditedGroupName"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_1c

    .line 2320
    :cond_5d
    instance-of v11, v9, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatEditPhoto;

    if-nez v11, :cond_a0

    instance-of v11, v9, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatDeletePhoto;

    if-eqz v11, :cond_5e

    goto/16 :goto_17

    .line 2334
    :cond_5e
    instance-of v8, v9, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatDeleteUser;

    if-eqz v8, :cond_62

    .line 2335
    iget-wide v3, v9, Lorg/telegram/tgnet/TLRPC$MessageAction;->user_id:J

    cmp-long v1, v3, v19

    if-nez v1, :cond_5f

    .line 2336
    sget v0, Lorg/telegram/messenger/R$string;->NotificationGroupKickYou:I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v1, v5

    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v2, v1, v6

    const-string v2, "NotificationGroupKickYou"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_1c

    :cond_5f
    const/4 v1, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    cmp-long v7, v3, v24

    if-nez v7, :cond_60

    .line 2338
    sget v0, Lorg/telegram/messenger/R$string;->NotificationGroupLeftMember:I

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v5

    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v1, v6

    const-string v2, "NotificationGroupLeftMember"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_1c

    .line 2340
    :cond_60
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-wide v3, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->user_id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-nez v0, :cond_61

    const/4 v11, 0x0

    return-object v11

    .line 2344
    :cond_61
    sget v1, Lorg/telegram/messenger/R$string;->NotificationGroupKickMember:I

    new-array v3, v10, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v3, v2

    const-string v0, "NotificationGroupKickMember"

    invoke-static {v0, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_1c

    :cond_62
    const/4 v11, 0x0

    .line 2346
    instance-of v8, v9, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatCreate;

    if-eqz v8, :cond_63

    .line 2347
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_1c

    .line 2348
    :cond_63
    instance-of v8, v9, Lorg/telegram/tgnet/TLRPC$TL_messageActionChannelCreate;

    if-eqz v8, :cond_64

    .line 2349
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_1c

    .line 2350
    :cond_64
    instance-of v8, v9, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatMigrateTo;

    if-eqz v8, :cond_65

    .line 2351
    sget v0, Lorg/telegram/messenger/R$string;->ActionMigrateFromGroupNotify:I

    const/4 v8, 0x1

    new-array v1, v8, [Ljava/lang/Object;

    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v2, v1, v12

    const-string v2, "ActionMigrateFromGroupNotify"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_1c

    :cond_65
    const/4 v8, 0x1

    const/4 v12, 0x0

    .line 2352
    instance-of v13, v9, Lorg/telegram/tgnet/TLRPC$TL_messageActionChannelMigrateFrom;

    if-eqz v13, :cond_66

    .line 2353
    sget v0, Lorg/telegram/messenger/R$string;->ActionMigrateFromGroupNotify:I

    new-array v1, v8, [Ljava/lang/Object;

    iget-object v2, v9, Lorg/telegram/tgnet/TLRPC$MessageAction;->title:Ljava/lang/String;

    aput-object v2, v1, v12

    const-string v2, "ActionMigrateFromGroupNotify"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_1c

    .line 2354
    :cond_66
    instance-of v8, v9, Lorg/telegram/tgnet/TLRPC$TL_messageActionScreenshotTaken;

    if-eqz v8, :cond_67

    .line 2355
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_1c

    .line 2356
    :cond_67
    instance-of v8, v9, Lorg/telegram/tgnet/TLRPC$TL_messageActionPinMessage;

    if-eqz v8, :cond_9a

    .line 2357
    invoke-static {v14}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    const/16 v4, 0x14

    if-eqz v3, :cond_81

    iget-boolean v3, v14, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v3, :cond_68

    goto/16 :goto_13

    .line 2430
    :cond_68
    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v2, :cond_69

    .line 2431
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedNoTextChannel:I

    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v2, v1, v8

    const-string v2, "NotificationActionPinnedNoTextChannel"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_1c

    :cond_69
    const/4 v3, 0x1

    const/4 v8, 0x0

    .line 2434
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v9

    if-eqz v9, :cond_6a

    .line 2435
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedMusicChannel:I

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v1, v8

    const-string v2, "NotificationActionPinnedMusicChannel"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    .line 2436
    :cond_6a
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v3

    const-string v8, "NotificationActionPinnedTextChannel"

    if-eqz v3, :cond_6c

    .line 2437
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_6b

    iget-object v0, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6b

    .line 2438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2439
    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedTextChannel:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, v14, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v8, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    :cond_6b
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2441
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedVideoChannel:I

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v1, v4

    const-string v2, "NotificationActionPinnedVideoChannel"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    .line 2443
    :cond_6c
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isGif()Z

    move-result v3

    if-eqz v3, :cond_6e

    .line 2444
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_6d

    iget-object v0, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6d

    .line 2445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2446
    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedTextChannel:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, v14, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v3, v2, v5

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v8, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    :cond_6d
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 2448
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedGifChannel:I

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v1, v5

    const-string v2, "NotificationActionPinnedGifChannel"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    :cond_6e
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 2450
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v7

    if-eqz v7, :cond_6f

    .line 2451
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedVoiceChannel:I

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v1, v5

    const-string v2, "NotificationActionPinnedVoiceChannel"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    .line 2452
    :cond_6f
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v7

    if-eqz v7, :cond_70

    .line 2453
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedRoundChannel:I

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v1, v5

    const-string v2, "NotificationActionPinnedRoundChannel"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    .line 2454
    :cond_70
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isSticker()Z

    move-result v3

    if-nez v3, :cond_7f

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isAnimatedSticker()Z

    move-result v3

    if-eqz v3, :cond_71

    goto/16 :goto_12

    .line 2461
    :cond_71
    iget-object v3, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v7, v5, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v7, :cond_73

    .line 2462
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_72

    iget-object v0, v3, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_72

    .line 2463
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2464
    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedTextChannel:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, v14, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v8, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    :cond_72
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2466
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedFileChannel:I

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v1, v4

    const-string v2, "NotificationActionPinnedFileChannel"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    .line 2468
    :cond_73
    instance-of v6, v5, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;

    if-nez v6, :cond_7e

    instance-of v6, v5, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    if-eqz v6, :cond_74

    goto/16 :goto_11

    .line 2470
    :cond_74
    instance-of v6, v5, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeoLive;

    if-eqz v6, :cond_75

    .line 2471
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedGeoLiveChannel:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "NotificationActionPinnedGeoLiveChannel"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    .line 2472
    :cond_75
    instance-of v6, v5, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;

    if-eqz v6, :cond_76

    .line 2473
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;

    .line 2474
    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedContactChannel2:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, v14, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->first_name:Ljava/lang/String;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->last_name:Ljava/lang/String;

    invoke-static {v3, v0}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const-string v0, "NotificationActionPinnedContactChannel2"

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    .line 2475
    :cond_76
    instance-of v0, v5, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;

    if-eqz v0, :cond_78

    .line 2476
    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;

    .line 2477
    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->poll:Lorg/telegram/tgnet/TLRPC$Poll;

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Poll;->quiz:Z

    if-eqz v1, :cond_77

    .line 2478
    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedQuizChannel2:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, v14, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Poll;->question:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const-string v0, "NotificationActionPinnedQuizChannel2"

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    :cond_77
    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2480
    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedPollChannel2:I

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, v14, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v5, v2, v4

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Poll;->question:Ljava/lang/String;

    aput-object v0, v2, v3

    const-string v0, "NotificationActionPinnedPollChannel2"

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    .line 2482
    :cond_78
    instance-of v0, v5, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v0, :cond_7a

    .line 2483
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v0, v4, :cond_79

    iget-object v0, v3, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_79

    .line 2484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2485
    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedTextChannel:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, v14, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v3, v2, v6

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v8, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    :cond_79
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 2487
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedPhotoChannel:I

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v1, v6

    const-string v2, "NotificationActionPinnedPhotoChannel"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    :cond_7a
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 2489
    instance-of v0, v5, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;

    if-eqz v0, :cond_7b

    .line 2490
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedGameChannel:I

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v1, v6

    const-string v2, "NotificationActionPinnedGameChannel"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    .line 2491
    :cond_7b
    iget-object v0, v2, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_7d

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_7d

    .line 2492
    iget-object v0, v2, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    .line 2493
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v1, v4, :cond_7c

    .line 2494
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-interface {v0, v3, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "..."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_7c
    const/4 v3, 0x0

    .line 2496
    :goto_10
    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedTextChannel:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, v14, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v4, 0x1

    aput-object v0, v2, v4

    invoke-static {v8, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    :cond_7d
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 2498
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedNoTextChannel:I

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v1, v3

    const-string v2, "NotificationActionPinnedNoTextChannel"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    :cond_7e
    :goto_11
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 2469
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedGeoChannel:I

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v1, v3

    const-string v2, "NotificationActionPinnedGeoChannel"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    :cond_7f
    :goto_12
    const/4 v3, 0x0

    .line 2455
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getStickerEmoji()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_80

    .line 2457
    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedStickerEmojiChannel:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, v14, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v4, 0x1

    aput-object v0, v2, v4

    const-string v0, "NotificationActionPinnedStickerEmojiChannel"

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    :cond_80
    const/4 v4, 0x1

    .line 2459
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedStickerChannel:I

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v1, v3

    const-string v2, "NotificationActionPinnedStickerChannel"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    :cond_81
    :goto_13
    const/4 v3, 0x0

    .line 2358
    iget-object v8, v0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v8, :cond_82

    .line 2359
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedNoText:I

    const/4 v9, 0x2

    new-array v1, v9, [Ljava/lang/Object;

    aput-object v2, v1, v3

    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v11, 0x1

    aput-object v2, v1, v11

    const-string v2, "NotificationActionPinnedNoText"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_1c

    :cond_82
    const/4 v9, 0x2

    const/4 v11, 0x1

    .line 2362
    invoke-virtual {v8}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v12

    if-eqz v12, :cond_83

    .line 2363
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedMusic:I

    new-array v1, v9, [Ljava/lang/Object;

    aput-object v2, v1, v3

    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v1, v11

    const-string v2, "NotificationActionPinnedMusic"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    .line 2364
    :cond_83
    invoke-virtual {v8}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v3

    const-string v9, "NotificationActionPinnedText"

    if-eqz v3, :cond_85

    .line 2365
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_84

    iget-object v0, v8, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_84

    .line 2366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2367
    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedText:I

    new-array v3, v10, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v5, 0x1

    aput-object v0, v3, v5

    iget-object v0, v14, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v6, 0x2

    aput-object v0, v3, v6

    invoke-static {v9, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    :cond_84
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x2

    .line 2369
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedVideo:I

    new-array v1, v6, [Ljava/lang/Object;

    aput-object v2, v1, v4

    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v1, v5

    const-string v2, "NotificationActionPinnedVideo"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    .line 2371
    :cond_85
    invoke-virtual {v8}, Lorg/telegram/messenger/MessageObject;->isGif()Z

    move-result v3

    if-eqz v3, :cond_87

    .line 2372
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_86

    iget-object v0, v8, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_86

    .line 2373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2374
    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedText:I

    new-array v3, v10, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v3, v5

    const/4 v7, 0x1

    aput-object v0, v3, v7

    iget-object v0, v14, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v11, 0x2

    aput-object v0, v3, v11

    invoke-static {v9, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    :cond_86
    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v11, 0x2

    .line 2376
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedGif:I

    new-array v1, v11, [Ljava/lang/Object;

    aput-object v2, v1, v5

    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v1, v7

    const-string v2, "NotificationActionPinnedGif"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    :cond_87
    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v11, 0x2

    .line 2378
    invoke-virtual {v8}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v3

    if-eqz v3, :cond_88

    .line 2379
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedVoice:I

    new-array v1, v11, [Ljava/lang/Object;

    aput-object v2, v1, v5

    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v1, v7

    const-string v2, "NotificationActionPinnedVoice"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    .line 2380
    :cond_88
    invoke-virtual {v8}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v3

    if-eqz v3, :cond_89

    .line 2381
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedRound:I

    new-array v1, v11, [Ljava/lang/Object;

    aput-object v2, v1, v5

    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v1, v7

    const-string v2, "NotificationActionPinnedRound"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    .line 2382
    :cond_89
    invoke-virtual {v8}, Lorg/telegram/messenger/MessageObject;->isSticker()Z

    move-result v3

    if-nez v3, :cond_98

    invoke-virtual {v8}, Lorg/telegram/messenger/MessageObject;->isAnimatedSticker()Z

    move-result v3

    if-eqz v3, :cond_8a

    goto/16 :goto_16

    .line 2389
    :cond_8a
    iget-object v3, v8, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v7, v5, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v7, :cond_8c

    .line 2390
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_8b

    iget-object v0, v3, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8b

    .line 2391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2392
    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedText:I

    new-array v3, v10, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v5, 0x1

    aput-object v0, v3, v5

    iget-object v0, v14, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v6, 0x2

    aput-object v0, v3, v6

    invoke-static {v9, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    :cond_8b
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x2

    .line 2394
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedFile:I

    new-array v1, v6, [Ljava/lang/Object;

    aput-object v2, v1, v4

    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v1, v5

    const-string v2, "NotificationActionPinnedFile"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    .line 2396
    :cond_8c
    instance-of v6, v5, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;

    if-nez v6, :cond_97

    instance-of v6, v5, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    if-eqz v6, :cond_8d

    goto/16 :goto_15

    .line 2398
    :cond_8d
    instance-of v6, v5, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeoLive;

    if-eqz v6, :cond_8e

    .line 2399
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedGeoLive:I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "NotificationActionPinnedGeoLive"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    .line 2400
    :cond_8e
    instance-of v6, v5, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;

    if-eqz v6, :cond_8f

    .line 2401
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;

    .line 2402
    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedContact2:I

    new-array v3, v10, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v2, v3, v4

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->first_name:Ljava/lang/String;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->last_name:Ljava/lang/String;

    invoke-static {v2, v0}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v3, v2

    const-string v0, "NotificationActionPinnedContact2"

    invoke-static {v0, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    .line 2403
    :cond_8f
    instance-of v0, v5, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;

    if-eqz v0, :cond_91

    .line 2404
    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;

    .line 2405
    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->poll:Lorg/telegram/tgnet/TLRPC$Poll;

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Poll;->quiz:Z

    if-eqz v1, :cond_90

    .line 2406
    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedQuiz2:I

    new-array v3, v10, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v2, v3, v5

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Poll;->question:Ljava/lang/String;

    const/4 v6, 0x2

    aput-object v0, v3, v6

    const-string v0, "NotificationActionPinnedQuiz2"

    invoke-static {v0, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    :cond_90
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x2

    .line 2408
    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedPoll2:I

    new-array v3, v10, [Ljava/lang/Object;

    aput-object v2, v3, v4

    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v3, v5

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Poll;->question:Ljava/lang/String;

    aput-object v0, v3, v6

    const-string v0, "NotificationActionPinnedPoll2"

    invoke-static {v0, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    .line 2410
    :cond_91
    instance-of v0, v5, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v0, :cond_93

    .line 2411
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v0, v4, :cond_92

    iget-object v0, v3, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_92

    .line 2412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2413
    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedText:I

    new-array v3, v10, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v3, v6

    const/4 v7, 0x1

    aput-object v0, v3, v7

    iget-object v0, v14, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v11, 0x2

    aput-object v0, v3, v11

    invoke-static {v9, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    :cond_92
    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v11, 0x2

    .line 2415
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedPhoto:I

    new-array v1, v11, [Ljava/lang/Object;

    aput-object v2, v1, v6

    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v1, v7

    const-string v2, "NotificationActionPinnedPhoto"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    :cond_93
    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v11, 0x2

    .line 2417
    instance-of v0, v5, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;

    if-eqz v0, :cond_94

    .line 2418
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedGame:I

    new-array v1, v11, [Ljava/lang/Object;

    aput-object v2, v1, v6

    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v1, v7

    const-string v2, "NotificationActionPinnedGame"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    .line 2419
    :cond_94
    iget-object v0, v8, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_96

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_96

    .line 2420
    iget-object v0, v8, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    .line 2421
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v1, v4, :cond_95

    .line 2422
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-interface {v0, v3, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "..."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    :cond_95
    const/4 v3, 0x0

    .line 2424
    :goto_14
    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedText:I

    new-array v4, v10, [Ljava/lang/Object;

    aput-object v2, v4, v3

    const/4 v5, 0x1

    aput-object v0, v4, v5

    iget-object v0, v14, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v6, 0x2

    aput-object v0, v4, v6

    invoke-static {v9, v1, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    :cond_96
    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x2

    .line 2426
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedNoText:I

    new-array v1, v6, [Ljava/lang/Object;

    aput-object v2, v1, v3

    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v1, v5

    const-string v2, "NotificationActionPinnedNoText"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    :cond_97
    :goto_15
    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x2

    .line 2397
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedGeo:I

    new-array v1, v6, [Ljava/lang/Object;

    aput-object v2, v1, v3

    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v1, v5

    const-string v2, "NotificationActionPinnedGeo"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    :cond_98
    :goto_16
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 2383
    invoke-virtual {v8}, Lorg/telegram/messenger/MessageObject;->getStickerEmoji()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_99

    .line 2385
    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedStickerEmoji:I

    new-array v4, v10, [Ljava/lang/Object;

    aput-object v2, v4, v3

    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v4, v5

    const/4 v6, 0x2

    aput-object v0, v4, v6

    const-string v0, "NotificationActionPinnedStickerEmoji"

    invoke-static {v0, v1, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    :cond_99
    const/4 v6, 0x2

    .line 2387
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedSticker:I

    new-array v1, v6, [Ljava/lang/Object;

    aput-object v2, v1, v3

    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v1, v5

    const-string v2, "NotificationActionPinnedSticker"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    .line 2502
    :cond_9a
    instance-of v1, v9, Lorg/telegram/tgnet/TLRPC$TL_messageActionGameScore;

    if-eqz v1, :cond_9b

    .line 2503
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_1c

    .line 2504
    :cond_9b
    instance-of v1, v9, Lorg/telegram/tgnet/TLRPC$TL_messageActionSetChatTheme;

    if-eqz v1, :cond_9f

    .line 2505
    check-cast v9, Lorg/telegram/tgnet/TLRPC$TL_messageActionSetChatTheme;

    iget-object v0, v9, Lorg/telegram/tgnet/TLRPC$TL_messageActionSetChatTheme;->emoticon:Ljava/lang/String;

    .line 2506
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9d

    cmp-long v1, v3, v19

    if-nez v1, :cond_9c

    .line 2508
    sget v0, Lorg/telegram/messenger/R$string;->ChatThemeDisabledYou:I

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ChatThemeDisabledYou"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    :cond_9c
    const/4 v1, 0x0

    .line 2509
    sget v3, Lorg/telegram/messenger/R$string;->ChatThemeDisabled:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v1

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const-string v0, "ChatThemeDisabled"

    invoke-static {v0, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    :cond_9d
    const/4 v1, 0x0

    const/4 v5, 0x1

    cmp-long v6, v3, v19

    if-nez v6, :cond_9e

    .line 2512
    sget v2, Lorg/telegram/messenger/R$string;->ChatThemeChangedYou:I

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v1

    const-string v0, "ChangedChatThemeYou"

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    .line 2513
    :cond_9e
    sget v3, Lorg/telegram/messenger/R$string;->ChatThemeChangedTo:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v1

    aput-object v0, v4, v5

    const-string v0, "ChangedChatThemeTo"

    invoke-static {v0, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    .line 2515
    :cond_9f
    instance-of v1, v9, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatJoinedByRequest;

    if-eqz v1, :cond_d9

    .line 2516
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_1c

    .line 2321
    :cond_a0
    :goto_17
    iget-object v1, v8, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v3, v1, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_a2

    iget-boolean v1, v14, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v1, :cond_a2

    .line 2322
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isVideoAvatar()Z

    move-result v0

    if-eqz v0, :cond_a1

    .line 2323
    sget v0, Lorg/telegram/messenger/R$string;->ChannelVideoEditNotification:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "ChannelVideoEditNotification"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_1c

    :cond_a1
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 2325
    sget v0, Lorg/telegram/messenger/R$string;->ChannelPhotoEditNotification:I

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v1, v3

    const-string v2, "ChannelPhotoEditNotification"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_1c

    :cond_a2
    const/4 v3, 0x0

    .line 2328
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isVideoAvatar()Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 2329
    sget v0, Lorg/telegram/messenger/R$string;->NotificationEditedGroupVideo:I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v3

    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "NotificationEditedGroupVideo"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_1c

    :cond_a3
    const/4 v1, 0x2

    const/4 v4, 0x1

    .line 2331
    sget v0, Lorg/telegram/messenger/R$string;->NotificationEditedGroupPhoto:I

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v3

    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v1, v4

    const-string v2, "NotificationEditedGroupPhoto"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_1c

    .line 2518
    :cond_a4
    invoke-static {v14}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-eqz v3, :cond_bc

    iget-boolean v3, v14, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v3, :cond_bc

    .line 2519
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isMediaEmpty()Z

    move-result v3

    if-eqz v3, :cond_a6

    if-nez p2, :cond_a5

    .line 2520
    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a5

    .line 2521
    sget v1, Lorg/telegram/messenger/R$string;->NotificationMessageText:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v0, v3, v5

    invoke-static {v9, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 2522
    aput-boolean v5, p3, v4

    goto/16 :goto_1c

    :cond_a5
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 2524
    sget v0, Lorg/telegram/messenger/R$string;->ChannelMessageNoText:I

    new-array v1, v5, [Ljava/lang/Object;

    aput-object v2, v1, v4

    move-object/from16 v3, v23

    invoke-static {v3, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_1c

    :cond_a6
    move-object/from16 v3, v23

    .line 2526
    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v8, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v8, v8, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v8, :cond_a8

    if-nez p2, :cond_a7

    .line 2527
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-lt v3, v5, :cond_a7

    iget-object v3, v4, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a7

    .line 2528
    sget v3, Lorg/telegram/messenger/R$string;->NotificationMessageText:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v4, v1

    invoke-static {v9, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 2529
    aput-boolean v1, p3, v5

    goto/16 :goto_1c

    :cond_a7
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 2531
    sget v0, Lorg/telegram/messenger/R$string;->ChannelMessagePhoto:I

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v5

    const-string v2, "ChannelMessagePhoto"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_1c

    .line 2533
    :cond_a8
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_aa

    if-nez p2, :cond_a9

    .line 2534
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v1, v3, :cond_a9

    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a9

    .line 2535
    sget v1, Lorg/telegram/messenger/R$string;->NotificationMessageText:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x1

    aput-object v0, v3, v7

    invoke-static {v9, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 2536
    aput-boolean v7, p3, v4

    goto/16 :goto_1c

    :cond_a9
    const/4 v4, 0x0

    const/4 v7, 0x1

    .line 2538
    sget v0, Lorg/telegram/messenger/R$string;->ChannelMessageVideo:I

    new-array v1, v7, [Ljava/lang/Object;

    aput-object v2, v1, v4

    const-string v2, "ChannelMessageVideo"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_1c

    :cond_aa
    const/4 v4, 0x0

    const/4 v7, 0x1

    .line 2540
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v1

    if-eqz v1, :cond_ab

    .line 2541
    sget v0, Lorg/telegram/messenger/R$string;->ChannelMessageAudio:I

    new-array v1, v7, [Ljava/lang/Object;

    aput-object v2, v1, v4

    const-string v2, "ChannelMessageAudio"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_1c

    .line 2542
    :cond_ab
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v1

    if-eqz v1, :cond_ac

    .line 2543
    sget v0, Lorg/telegram/messenger/R$string;->ChannelMessageRound:I

    new-array v1, v7, [Ljava/lang/Object;

    aput-object v2, v1, v4

    const-string v2, "ChannelMessageRound"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_1c

    .line 2544
    :cond_ac
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v1

    if-eqz v1, :cond_ad

    .line 2545
    sget v0, Lorg/telegram/messenger/R$string;->ChannelMessageMusic:I

    new-array v1, v7, [Ljava/lang/Object;

    aput-object v2, v1, v4

    const-string v2, "ChannelMessageMusic"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_1c

    .line 2546
    :cond_ad
    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v7, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;

    if-eqz v7, :cond_ae

    .line 2547
    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;

    .line 2548
    sget v0, Lorg/telegram/messenger/R$string;->ChannelMessageContact2:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v4

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->first_name:Ljava/lang/String;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->last_name:Ljava/lang/String;

    invoke-static {v2, v1}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v3, v2

    const-string v1, "ChannelMessageContact2"

    invoke-static {v1, v0, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_1c

    .line 2549
    :cond_ae
    instance-of v4, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;

    if-eqz v4, :cond_b0

    .line 2550
    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;

    .line 2551
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->poll:Lorg/telegram/tgnet/TLRPC$Poll;

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Poll;->quiz:Z

    if-eqz v1, :cond_af

    .line 2552
    sget v1, Lorg/telegram/messenger/R$string;->ChannelMessageQuiz2:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Poll;->question:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v0, v3, v5

    const-string v0, "ChannelMessageQuiz2"

    invoke-static {v0, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    :cond_af
    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 2554
    sget v1, Lorg/telegram/messenger/R$string;->ChannelMessagePoll2:I

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v4

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Poll;->question:Ljava/lang/String;

    aput-object v0, v3, v5

    const-string v0, "ChannelMessagePoll2"

    invoke-static {v0, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    .line 2556
    :cond_b0
    instance-of v4, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;

    if-nez v4, :cond_bb

    instance-of v4, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    if-eqz v4, :cond_b1

    goto/16 :goto_19

    .line 2558
    :cond_b1
    instance-of v4, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeoLive;

    if-eqz v4, :cond_b2

    .line 2559
    sget v0, Lorg/telegram/messenger/R$string;->ChannelMessageLiveLocation:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "ChannelMessageLiveLocation"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_1c

    .line 2560
    :cond_b2
    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v1, :cond_b9

    .line 2561
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isSticker()Z

    move-result v1

    if-nez v1, :cond_b7

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isAnimatedSticker()Z

    move-result v1

    if-eqz v1, :cond_b3

    goto/16 :goto_18

    .line 2568
    :cond_b3
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isGif()Z

    move-result v1

    if-eqz v1, :cond_b5

    if-nez p2, :cond_b4

    .line 2569
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v1, v3, :cond_b4

    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b4

    .line 2570
    sget v1, Lorg/telegram/messenger/R$string;->NotificationMessageText:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x1

    aput-object v0, v3, v5

    invoke-static {v9, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 2571
    aput-boolean v5, p3, v4

    goto/16 :goto_1c

    :cond_b4
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 2573
    sget v0, Lorg/telegram/messenger/R$string;->ChannelMessageGIF:I

    new-array v1, v5, [Ljava/lang/Object;

    aput-object v2, v1, v4

    const-string v2, "ChannelMessageGIF"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_1c

    :cond_b5
    if-nez p2, :cond_b6

    .line 2576
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v1, v3, :cond_b6

    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b6

    .line 2577
    sget v1, Lorg/telegram/messenger/R$string;->NotificationMessageText:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x1

    aput-object v0, v3, v5

    invoke-static {v9, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 2578
    aput-boolean v5, p3, v4

    goto/16 :goto_1c

    :cond_b6
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 2580
    sget v0, Lorg/telegram/messenger/R$string;->ChannelMessageDocument:I

    new-array v1, v5, [Ljava/lang/Object;

    aput-object v2, v1, v4

    const-string v2, "ChannelMessageDocument"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_1c

    :cond_b7
    :goto_18
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 2562
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getStickerEmoji()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b8

    .line 2564
    sget v1, Lorg/telegram/messenger/R$string;->ChannelMessageStickerEmoji:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v4

    aput-object v0, v3, v5

    const-string v0, "ChannelMessageStickerEmoji"

    invoke-static {v0, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    .line 2566
    :cond_b8
    sget v0, Lorg/telegram/messenger/R$string;->ChannelMessageSticker:I

    new-array v1, v5, [Ljava/lang/Object;

    aput-object v2, v1, v4

    const-string v2, "ChannelMessageSticker"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    :cond_b9
    const/4 v4, 0x0

    if-nez p2, :cond_ba

    .line 2584
    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_ba

    .line 2585
    sget v1, Lorg/telegram/messenger/R$string;->NotificationMessageText:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v4

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    const/4 v5, 0x1

    aput-object v0, v3, v5

    invoke-static {v9, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 2586
    aput-boolean v5, p3, v4

    goto/16 :goto_1c

    :cond_ba
    const/4 v5, 0x1

    .line 2588
    sget v0, Lorg/telegram/messenger/R$string;->ChannelMessageNoText:I

    new-array v1, v5, [Ljava/lang/Object;

    aput-object v2, v1, v4

    invoke-static {v3, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_1c

    :cond_bb
    :goto_19
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 2557
    sget v0, Lorg/telegram/messenger/R$string;->ChannelMessageMap:I

    new-array v1, v5, [Ljava/lang/Object;

    aput-object v2, v1, v4

    const-string v2, "ChannelMessageMap"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_1c

    .line 2592
    :cond_bc
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isMediaEmpty()Z

    move-result v3

    const-string v4, "NotificationMessageGroupText"

    if-eqz v3, :cond_be

    if-nez p2, :cond_bd

    .line 2593
    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_bd

    .line 2594
    sget v1, Lorg/telegram/messenger/R$string;->NotificationMessageGroupText:I

    new-array v3, v10, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v3, v5

    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v2, v3, v5

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    const/4 v5, 0x2

    aput-object v0, v3, v5

    invoke-static {v4, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_1c

    :cond_bd
    const/4 v5, 0x2

    .line 2596
    sget v0, Lorg/telegram/messenger/R$string;->NotificationMessageGroupNoText:I

    new-array v1, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    move-object/from16 v8, v18

    invoke-static {v8, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_1c

    :cond_be
    move-object/from16 v8, v18

    .line 2598
    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v9, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v9, v9, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v9, :cond_c0

    if-nez p2, :cond_bf

    .line 2599
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x13

    if-lt v5, v6, :cond_bf

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_bf

    .line 2600
    sget v3, Lorg/telegram/messenger/R$string;->NotificationMessageGroupText:I

    new-array v5, v10, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v2, v5, v6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, v5, v1

    invoke-static {v4, v3, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_1c

    :cond_bf
    const/4 v1, 0x2

    .line 2602
    sget v0, Lorg/telegram/messenger/R$string;->NotificationMessageGroupPhoto:I

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "NotificationMessageGroupPhoto"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_1c

    .line 2604
    :cond_c0
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_c2

    if-nez p2, :cond_c1

    .line 2605
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v1, v3, :cond_c1

    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c1

    .line 2606
    sget v1, Lorg/telegram/messenger/R$string;->NotificationMessageGroupText:I

    new-array v3, v10, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v3, v5

    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v2, v3, v5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x2

    aput-object v0, v3, v7

    invoke-static {v4, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_1c

    :cond_c1
    const/4 v7, 0x2

    .line 2608
    sget v0, Lorg/telegram/messenger/R$string;->NotificationMessageGroupVideo:I

    new-array v1, v7, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v9, 0x1

    aput-object v2, v1, v9

    const-string v2, " "

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_1c

    :cond_c2
    const/4 v3, 0x0

    const/4 v7, 0x2

    const/4 v9, 0x1

    .line 2610
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v1

    if-eqz v1, :cond_c3

    .line 2611
    sget v0, Lorg/telegram/messenger/R$string;->NotificationMessageGroupAudio:I

    new-array v1, v7, [Ljava/lang/Object;

    aput-object v2, v1, v3

    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v1, v9

    const-string v2, "NotificationMessageGroupAudio"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_1c

    .line 2612
    :cond_c3
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v1

    if-eqz v1, :cond_c4

    .line 2613
    sget v0, Lorg/telegram/messenger/R$string;->NotificationMessageGroupRound:I

    new-array v1, v7, [Ljava/lang/Object;

    aput-object v2, v1, v3

    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v1, v9

    const-string v2, "NotificationMessageGroupRound"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_1c

    .line 2614
    :cond_c4
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v1

    if-eqz v1, :cond_c5

    .line 2615
    sget v0, Lorg/telegram/messenger/R$string;->NotificationMessageGroupMusic:I

    new-array v1, v7, [Ljava/lang/Object;

    aput-object v2, v1, v3

    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v1, v9

    const-string v2, "NotificationMessageGroupMusic"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_1c

    .line 2616
    :cond_c5
    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;

    if-eqz v3, :cond_c6

    .line 2617
    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;

    .line 2618
    sget v0, Lorg/telegram/messenger/R$string;->NotificationMessageGroupContact2:I

    new-array v3, v10, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v2, v3, v4

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->first_name:Ljava/lang/String;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->last_name:Ljava/lang/String;

    invoke-static {v2, v1}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v3, v2

    const-string v1, "NotificationMessageGroupContact2"

    invoke-static {v1, v0, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_1c

    .line 2619
    :cond_c6
    instance-of v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;

    if-eqz v3, :cond_c8

    .line 2620
    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;

    .line 2621
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->poll:Lorg/telegram/tgnet/TLRPC$Poll;

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Poll;->quiz:Z

    if-eqz v1, :cond_c7

    .line 2622
    sget v1, Lorg/telegram/messenger/R$string;->NotificationMessageGroupQuiz2:I

    new-array v3, v10, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v2, v3, v5

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Poll;->question:Ljava/lang/String;

    const/4 v6, 0x2

    aput-object v0, v3, v6

    const-string v0, "NotificationMessageGroupQuiz2"

    invoke-static {v0, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    :cond_c7
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x2

    .line 2624
    sget v1, Lorg/telegram/messenger/R$string;->NotificationMessageGroupPoll2:I

    new-array v3, v10, [Ljava/lang/Object;

    aput-object v2, v3, v4

    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v3, v5

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Poll;->question:Ljava/lang/String;

    aput-object v0, v3, v6

    const-string v0, "NotificationMessageGroupPoll2"

    invoke-static {v0, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    .line 2626
    :cond_c8
    instance-of v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;

    if-eqz v3, :cond_c9

    .line 2627
    sget v0, Lorg/telegram/messenger/R$string;->NotificationMessageGroupGame:I

    new-array v3, v10, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v2, v3, v4

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->game:Lorg/telegram/tgnet/TLRPC$TL_game;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_game;->title:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v3, v2

    const-string v1, "NotificationMessageGroupGame"

    invoke-static {v1, v0, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_1c

    .line 2628
    :cond_c9
    instance-of v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;

    if-nez v3, :cond_d4

    instance-of v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    if-eqz v3, :cond_ca

    goto/16 :goto_1b

    .line 2630
    :cond_ca
    instance-of v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeoLive;

    if-eqz v3, :cond_cb

    .line 2631
    sget v0, Lorg/telegram/messenger/R$string;->NotificationMessageGroupLiveLocation:I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "NotificationMessageGroupLiveLocation"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_1c

    .line 2632
    :cond_cb
    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v1, :cond_d2

    .line 2633
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isSticker()Z

    move-result v1

    if-nez v1, :cond_d0

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isAnimatedSticker()Z

    move-result v1

    if-eqz v1, :cond_cc

    goto/16 :goto_1a

    .line 2640
    :cond_cc
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isGif()Z

    move-result v1

    if-eqz v1, :cond_ce

    if-nez p2, :cond_cd

    .line 2641
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v1, v3, :cond_cd

    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_cd

    .line 2642
    sget v1, Lorg/telegram/messenger/R$string;->NotificationMessageGroupText:I

    new-array v3, v10, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v3, v6

    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v2, v3, v6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x2

    aput-object v0, v3, v5

    invoke-static {v4, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_1c

    :cond_cd
    const/4 v5, 0x2

    .line 2644
    sget v0, Lorg/telegram/messenger/R$string;->NotificationMessageGroupGif:I

    new-array v1, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "NotificationMessageGroupGif"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_1c

    :cond_ce
    if-nez p2, :cond_cf

    .line 2647
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v1, v3, :cond_cf

    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_cf

    .line 2648
    sget v1, Lorg/telegram/messenger/R$string;->NotificationMessageGroupText:I

    new-array v3, v10, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v3, v5

    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v2, v3, v5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x2

    aput-object v0, v3, v5

    invoke-static {v4, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_1c

    :cond_cf
    const/4 v5, 0x2

    .line 2650
    sget v0, Lorg/telegram/messenger/R$string;->NotificationMessageGroupDocument:I

    new-array v1, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "NotificationMessageGroupDocument"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_1c

    :cond_d0
    :goto_1a
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 2634
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getStickerEmoji()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d1

    .line 2636
    sget v1, Lorg/telegram/messenger/R$string;->NotificationMessageGroupStickerEmoji:I

    new-array v5, v10, [Ljava/lang/Object;

    aput-object v2, v5, v3

    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v5, v4

    const/4 v6, 0x2

    aput-object v0, v5, v6

    const-string v0, "NotificationMessageGroupStickerEmoji"

    invoke-static {v0, v1, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    :cond_d1
    const/4 v6, 0x2

    .line 2638
    sget v0, Lorg/telegram/messenger/R$string;->NotificationMessageGroupSticker:I

    new-array v1, v6, [Ljava/lang/Object;

    aput-object v2, v1, v3

    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v1, v4

    const-string v2, "NotificationMessageGroupSticker"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    :cond_d2
    if-nez p2, :cond_d3

    .line 2654
    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d3

    .line 2655
    sget v1, Lorg/telegram/messenger/R$string;->NotificationMessageGroupText:I

    new-array v3, v10, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v3, v5

    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v2, v3, v6

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    const/4 v7, 0x2

    aput-object v0, v3, v7

    invoke-static {v4, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto :goto_1c

    :cond_d3
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x2

    .line 2657
    sget v0, Lorg/telegram/messenger/R$string;->NotificationMessageGroupNoText:I

    new-array v1, v7, [Ljava/lang/Object;

    aput-object v2, v1, v5

    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v1, v6

    invoke-static {v8, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto :goto_1c

    :cond_d4
    :goto_1b
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x2

    .line 2629
    sget v0, Lorg/telegram/messenger/R$string;->NotificationMessageGroupMap:I

    new-array v1, v7, [Ljava/lang/Object;

    aput-object v2, v1, v5

    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v1, v6

    const-string v2, "NotificationMessageGroupMap"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto :goto_1c

    :cond_d5
    move-object/from16 v8, v18

    move-object/from16 v3, v23

    const/4 v5, 0x0

    if-eqz p4, :cond_d6

    .line 2663
    aput-boolean v5, p4, v5

    .line 2665
    :cond_d6
    invoke-static {v14}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_d7

    iget-boolean v0, v14, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v0, :cond_d7

    .line 2666
    sget v0, Lorg/telegram/messenger/R$string;->ChannelMessageNoText:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v5

    invoke-static {v3, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto :goto_1c

    :cond_d7
    const/4 v1, 0x1

    .line 2668
    sget v0, Lorg/telegram/messenger/R$string;->NotificationMessageGroupNoText:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v5

    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v3, v1

    invoke-static {v8, v0, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto :goto_1c

    :cond_d8
    const/4 v11, 0x0

    :cond_d9
    move-object v14, v11

    :goto_1c
    return-object v14

    :cond_da
    :goto_1d
    move-object v1, v2

    .line 2024
    sget v0, Lorg/telegram/messenger/R$string;->YouHaveNewMessage:I

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTotalAllUnreadCount()I
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x5

    if-ge v1, v3, :cond_8

    .line 1370
    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/UserConfig;->isClientActivated()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1371
    invoke-static {v1}, Lorg/telegram/messenger/NotificationsController;->getInstance(I)Lorg/telegram/messenger/NotificationsController;

    move-result-object v3

    .line 1372
    iget-boolean v4, v3, Lorg/telegram/messenger/NotificationsController;->showBadgeNumber:Z

    if-eqz v4, :cond_7

    .line 1373
    iget-boolean v4, v3, Lorg/telegram/messenger/NotificationsController;->showBadgeMessages:Z

    if-eqz v4, :cond_3

    .line 1374
    iget-boolean v4, v3, Lorg/telegram/messenger/NotificationsController;->showBadgeMuted:Z

    if-eqz v4, :cond_2

    .line 1376
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/MessagesController;->allDialogs:Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1377
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_7

    .line 1378
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$Dialog;

    if-eqz v6, :cond_0

    .line 1379
    iget-wide v7, v6, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-static {v7, v8}, Lorg/telegram/messenger/DialogObject;->isChatDialog(J)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1380
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget-wide v8, v6, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    neg-long v8, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v7

    .line 1381
    invoke-static {v7}, Lorg/telegram/messenger/ChatObject;->isNotInChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_2

    :cond_0
    if-eqz v6, :cond_1

    .line 1386
    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    invoke-virtual {v7, v6}, Lorg/telegram/messenger/MessagesController;->getDialogUnreadCount(Lorg/telegram/tgnet/TLRPC$Dialog;)I

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v2, v6

    :cond_1
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :catch_0
    move-exception v3

    .line 1390
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_6

    .line 1393
    :cond_2
    iget v3, v3, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    goto :goto_5

    .line 1396
    :cond_3
    iget-boolean v4, v3, Lorg/telegram/messenger/NotificationsController;->showBadgeMuted:Z

    if-eqz v4, :cond_6

    .line 1398
    :try_start_1
    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v3, :cond_7

    .line 1399
    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/messenger/MessagesController;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$Dialog;

    .line 1400
    iget-wide v6, v5, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-static {v6, v7}, Lorg/telegram/messenger/DialogObject;->isChatDialog(J)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1401
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-wide v7, v5, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    neg-long v7, v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v6

    .line 1402
    invoke-static {v6}, Lorg/telegram/messenger/ChatObject;->isNotInChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_4

    .line 1406
    :cond_4
    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    invoke-virtual {v6, v5}, Lorg/telegram/messenger/MessagesController;->getDialogUnreadCount(Lorg/telegram/tgnet/TLRPC$Dialog;)I

    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v5, :cond_5

    add-int/lit8 v2, v2, 0x1

    :cond_5
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :catch_1
    move-exception v3

    .line 1411
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_6

    .line 1414
    :cond_6
    iget-object v3, v3, Lorg/telegram/messenger/NotificationsController;->pushDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v3}, Landroidx/collection/LongSparseArray;->size()I

    move-result v3

    :goto_5
    add-int/2addr v2, v3

    :cond_7
    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_8
    return v2
.end method

.method private isEmptyVibration([J)Z
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 2829
    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 2832
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 2833
    aget-wide v2, p1, v1

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_1
    return v0
.end method

.method private isPersonalMessage(Lorg/telegram/messenger/MessageObject;)Z
    .locals 6

    .line 2694
    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v0, :cond_1

    iget-wide v1, v0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    cmp-long v2, v0, v3

    if-nez v2, :cond_1

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    if-eqz p1, :cond_0

    instance-of p1, p1, Lorg/telegram/tgnet/TLRPC$TL_messageActionEmpty;

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isSilentMessage(Lorg/telegram/messenger/MessageObject;)Z
    .locals 1

    .line 3992
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->silent:Z

    if-nez v0, :cond_1

    iget-boolean p1, p1, Lorg/telegram/messenger/MessageObject;->isReactionPush:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private synthetic lambda$cleanup$1()V
    .locals 7

    const-wide/16 v0, 0x0

    .line 342
    iput-wide v0, p0, Lorg/telegram/messenger/NotificationsController;->openedDialogId:J

    const/4 v0, 0x0

    .line 343
    iput v0, p0, Lorg/telegram/messenger/NotificationsController;->openedTopicId:I

    .line 344
    iput v0, p0, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    .line 345
    iput v0, p0, Lorg/telegram/messenger/NotificationsController;->personalCount:I

    .line 346
    iget-object v1, p0, Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 347
    iget-object v1, p0, Lorg/telegram/messenger/NotificationsController;->pushMessagesDict:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1}, Landroidx/collection/LongSparseArray;->clear()V

    .line 348
    iget-object v1, p0, Lorg/telegram/messenger/NotificationsController;->fcmRandomMessagesDict:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1}, Landroidx/collection/LongSparseArray;->clear()V

    .line 349
    iget-object v1, p0, Lorg/telegram/messenger/NotificationsController;->pushDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1}, Landroidx/collection/LongSparseArray;->clear()V

    .line 350
    iget-object v1, p0, Lorg/telegram/messenger/NotificationsController;->wearNotificationsIds:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1}, Landroidx/collection/LongSparseArray;->clear()V

    .line 351
    iget-object v1, p0, Lorg/telegram/messenger/NotificationsController;->lastWearNotifiedMessageId:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1}, Landroidx/collection/LongSparseArray;->clear()V

    .line 352
    iget-object v1, p0, Lorg/telegram/messenger/NotificationsController;->openedInBubbleDialogs:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 353
    iget-object v1, p0, Lorg/telegram/messenger/NotificationsController;->delayedPushMessages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 354
    iput-boolean v0, p0, Lorg/telegram/messenger/NotificationsController;->notifyCheck:Z

    .line 355
    iput v0, p0, Lorg/telegram/messenger/NotificationsController;->lastBadgeCount:I

    .line 357
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/NotificationsController;->notificationDelayWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 358
    iget-object v1, p0, Lorg/telegram/messenger/NotificationsController;->notificationDelayWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 361
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 363
    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/telegram/messenger/NotificationsController;->dismissNotification()V

    .line 364
    invoke-direct {p0}, Lorg/telegram/messenger/NotificationsController;->getTotalAllUnreadCount()I

    move-result v1

    invoke-direct {p0, v1}, Lorg/telegram/messenger/NotificationsController;->setBadge(I)V

    .line 365
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/AccountInstance;->getNotificationsSettings()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 366
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 367
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 368
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 370
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_2

    .line 372
    :try_start_1
    sget-object v1, Lorg/telegram/messenger/NotificationsController;->systemNotificationManager:Landroid/app/NotificationManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "channels"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->deleteNotificationChannelGroup(Ljava/lang/String;)V

    .line 373
    sget-object v1, Lorg/telegram/messenger/NotificationsController;->systemNotificationManager:Landroid/app/NotificationManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "groups"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->deleteNotificationChannelGroup(Ljava/lang/String;)V

    .line 374
    sget-object v1, Lorg/telegram/messenger/NotificationsController;->systemNotificationManager:Landroid/app/NotificationManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "private"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->deleteNotificationChannelGroup(Ljava/lang/String;)V

    .line 375
    sget-object v1, Lorg/telegram/messenger/NotificationsController;->systemNotificationManager:Landroid/app/NotificationManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "other"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->deleteNotificationChannelGroup(Ljava/lang/String;)V

    .line 377
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "channel"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 378
    sget-object v2, Lorg/telegram/messenger/NotificationsController;->systemNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v2}, Landroid/app/NotificationManager;->getNotificationChannels()Ljava/util/List;

    move-result-object v2

    .line 379
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    :goto_1
    if-ge v0, v3, :cond_2

    .line 381
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationChannel;

    .line 382
    invoke-virtual {v4}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v4

    .line 383
    invoke-virtual {v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_1

    .line 385
    :try_start_2
    sget-object v5, Lorg/telegram/messenger/NotificationsController;->systemNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v5, v4}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v5

    .line 387
    :try_start_3
    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 389
    :goto_2
    sget-boolean v5, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v5, :cond_1

    .line 390
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "delete channel cleanup "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 395
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$deleteAllNotificationChannels$33()V
    .locals 6

    .line 2981
    :try_start_0
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getNotificationsSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2982
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    .line 2983
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2984
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 2985
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "org.telegram.key"

    .line 2986
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "_s"

    .line 2987
    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2988
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2989
    sget-object v4, Lorg/telegram/messenger/NotificationsController;->systemNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v4, v2}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    .line 2990
    sget-boolean v4, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v4, :cond_1

    .line 2991
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delete all channel "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 2994
    :cond_1
    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 2997
    :cond_2
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 2999
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method private synthetic lambda$deleteNotificationChannel$31(JII)V
    .locals 0

    .line 2894
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/NotificationsController;->deleteNotificationChannelInternal(JII)V

    return-void
.end method

.method private synthetic lambda$deleteNotificationChannelGlobal$32(II)V
    .locals 0

    .line 2972
    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/NotificationsController;->deleteNotificationChannelGlobalInternal(II)V

    return-void
.end method

.method private static synthetic lambda$dismissNotification$27()V
    .locals 3

    .line 2741
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->pushMessagesUpdated:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$forceShowPopupForReply$5(Ljava/util/ArrayList;)V
    .locals 2

    .line 465
    iput-object p1, p0, Lorg/telegram/messenger/NotificationsController;->popupReplyMessages:Ljava/util/ArrayList;

    .line 466
    new-instance p1, Landroid/content/Intent;

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v1, Lorg/telegram/ui/PopupNotificationActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "force"

    const/4 v1, 0x1

    .line 467
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 468
    iget v0, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    const-string v1, "currentAccount"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const v0, 0x10050004

    .line 469
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 470
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 471
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 472
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic lambda$forceShowPopupForReply$6()V
    .locals 9

    .line 453
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 454
    :goto_0
    iget-object v3, p0, Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 455
    iget-object v3, p0, Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    .line 456
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v4

    .line 457
    iget-object v6, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-boolean v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->mentioned:Z

    if-eqz v7, :cond_0

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v6, v6, Lorg/telegram/tgnet/TLRPC$TL_messageActionPinMessage;

    if-nez v6, :cond_2

    .line 458
    :cond_0
    invoke-static {v4, v5}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isSupergroup()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    .line 461
    :cond_1
    invoke-virtual {v0, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 463
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->needShowPasscode()Z

    move-result v1

    if-nez v1, :cond_4

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isWaitingForPasscodeEnter:Z

    if-nez v1, :cond_4

    .line 464
    new-instance v1, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda31;

    invoke-direct {v1, p0, v0}, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda31;-><init>(Lorg/telegram/messenger/NotificationsController;Ljava/util/ArrayList;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_4
    return-void
.end method

.method private synthetic lambda$hideNotifications$26()V
    .locals 3

    .line 2718
    sget-object v0, Lorg/telegram/messenger/NotificationsController;->notificationManager:Landroidx/core/app/NotificationManagerCompat;

    iget v1, p0, Lorg/telegram/messenger/NotificationsController;->notificationId:I

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationManagerCompat;->cancel(I)V

    .line 2719
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController;->lastWearNotifiedMessageId:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->clear()V

    const/4 v0, 0x0

    .line 2720
    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/NotificationsController;->wearNotificationsIds:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1}, Landroidx/collection/LongSparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2721
    sget-object v1, Lorg/telegram/messenger/NotificationsController;->notificationManager:Landroidx/core/app/NotificationManagerCompat;

    iget-object v2, p0, Lorg/telegram/messenger/NotificationsController;->wearNotificationsIds:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2, v0}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationManagerCompat;->cancel(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2723
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController;->wearNotificationsIds:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->clear()V

    return-void
.end method

.method private static synthetic lambda$loadRoundAvatar$35(Landroid/graphics/Canvas;)I
    .locals 9

    .line 4739
    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    .line 4740
    sget-object v0, Landroid/graphics/Path$FillType;->INVERSE_EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v8, v0}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 4741
    invoke-virtual {p0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    .line 4742
    invoke-virtual {p0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v3, v0

    int-to-float v4, v1

    .line 4743
    div-int/lit8 v0, v0, 0x2

    int-to-float v6, v0

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, v8

    move v5, v6

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    .line 4744
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, 0x1

    .line 4745
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v1, 0x0

    .line 4746
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4747
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 4748
    invoke-virtual {p0, v8, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    const/4 p0, -0x3

    return p0
.end method

.method private static synthetic lambda$loadRoundAvatar$36(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .locals 0

    .line 4738
    sget-object p1, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda1;->INSTANCE:Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda1;

    invoke-virtual {p0, p1}, Landroid/graphics/ImageDecoder;->setPostProcessor(Landroid/graphics/PostProcessor;)V

    return-void
.end method

.method private static synthetic lambda$loadTopicsNotificationsExceptions$41(Lj$/util/function/Consumer;Ljava/util/HashSet;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 5107
    invoke-interface {p0, p1}, Lj$/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$loadTopicsNotificationsExceptions$42(JLj$/util/function/Consumer;)V
    .locals 6

    .line 5089
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 5090
    iget v1, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getNotificationsSettings(I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 5091
    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    .line 5092
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 5093
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5094
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notify2_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5095
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 5097
    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_0

    .line 5099
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-virtual {v3, p1, p2, v2}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(JI)Z

    move-result v3

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, p1, p2, v5}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(JI)Z

    move-result v4

    if-eq v3, v4, :cond_0

    .line 5100
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5105
    :cond_1
    new-instance p1, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda5;

    invoke-direct {p1, p3, v0}, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda5;-><init>(Lj$/util/function/Consumer;Ljava/util/HashSet;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    .line 237
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    const-string v0, "delay reached"

    .line 238
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 240
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController;->delayedPushMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 241
    invoke-direct {p0, v0}, Lorg/telegram/messenger/NotificationsController;->showOrUpdateNotification(Z)V

    .line 242
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController;->delayedPushMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 245
    :cond_1
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController;->notificationDelayWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 246
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController;->notificationDelayWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 249
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private static synthetic lambda$playInChatSound$28(Landroid/media/SoundPool;II)V
    .locals 7

    if-nez p2, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p0

    move v1, p1

    .line 2775
    :try_start_0
    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2777
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private synthetic lambda$playInChatSound$29()V
    .locals 8

    .line 2766
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/messenger/NotificationsController;->lastSoundPlay:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x1f4

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    return-void

    .line 2770
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController;->soundPool:Landroid/media/SoundPool;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 2771
    new-instance v0, Landroid/media/SoundPool;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lorg/telegram/messenger/NotificationsController;->soundPool:Landroid/media/SoundPool;

    .line 2772
    sget-object v2, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda3;->INSTANCE:Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda3;

    invoke-virtual {v0, v2}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 2782
    :cond_1
    iget v0, p0, Lorg/telegram/messenger/NotificationsController;->soundIn:I

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/messenger/NotificationsController;->soundInLoaded:Z

    if-nez v0, :cond_2

    .line 2783
    iput-boolean v1, p0, Lorg/telegram/messenger/NotificationsController;->soundInLoaded:Z

    .line 2784
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController;->soundPool:Landroid/media/SoundPool;

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    sget v3, Lorg/telegram/messenger/R$raw;->sound_in:I

    invoke-virtual {v0, v2, v3, v1}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/NotificationsController;->soundIn:I

    .line 2786
    :cond_2
    iget v2, p0, Lorg/telegram/messenger/NotificationsController;->soundIn:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_3

    .line 2788
    :try_start_1
    iget-object v1, p0, Lorg/telegram/messenger/NotificationsController;->soundPool:Landroid/media/SoundPool;

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual/range {v1 .. v7}, Landroid/media/SoundPool;->play(IFFIIF)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2790
    :try_start_2
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 2794
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private static synthetic lambda$playOutChatSound$37(Landroid/media/SoundPool;II)V
    .locals 7

    if-nez p2, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p0

    move v1, p1

    .line 4781
    :try_start_0
    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4783
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private synthetic lambda$playOutChatSound$38()V
    .locals 8

    .line 4772
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/messenger/NotificationsController;->lastSoundOutPlay:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x64

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    return-void

    .line 4775
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/NotificationsController;->lastSoundOutPlay:J

    .line 4776
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController;->soundPool:Landroid/media/SoundPool;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 4777
    new-instance v0, Landroid/media/SoundPool;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lorg/telegram/messenger/NotificationsController;->soundPool:Landroid/media/SoundPool;

    .line 4778
    sget-object v2, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda2;->INSTANCE:Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda2;

    invoke-virtual {v0, v2}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 4788
    :cond_1
    iget v0, p0, Lorg/telegram/messenger/NotificationsController;->soundOut:I

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/messenger/NotificationsController;->soundOutLoaded:Z

    if-nez v0, :cond_2

    .line 4789
    iput-boolean v1, p0, Lorg/telegram/messenger/NotificationsController;->soundOutLoaded:Z

    .line 4790
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController;->soundPool:Landroid/media/SoundPool;

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    sget v3, Lorg/telegram/messenger/R$raw;->sound_out:I

    invoke-virtual {v0, v2, v3, v1}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/NotificationsController;->soundOut:I

    .line 4792
    :cond_2
    iget v2, p0, Lorg/telegram/messenger/NotificationsController;->soundOut:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_3

    .line 4794
    :try_start_1
    iget-object v1, p0, Lorg/telegram/messenger/NotificationsController;->soundPool:Landroid/media/SoundPool;

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual/range {v1 .. v7}, Landroid/media/SoundPool;->play(IFFIIF)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4796
    :try_start_2
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 4800
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private synthetic lambda$processDialogsUpdateRead$19(Ljava/util/ArrayList;)V
    .locals 5

    .line 1150
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 1151
    iget-object v3, p0, Lorg/telegram/messenger/NotificationsController;->popupMessages:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1153
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->pushMessagesUpdated:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$processDialogsUpdateRead$20(I)V
    .locals 6

    .line 1165
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->notificationsCountUpdated:I

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget v4, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1166
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->dialogsUnreadCounterChanged:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v5

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$processDialogsUpdateRead$21(Lorg/telegram/messenger/support/LongSparseIntArray;Ljava/util/ArrayList;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1054
    iget v3, v0, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    .line 1055
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/AccountInstance;->getNotificationsSettings()Landroid/content/SharedPreferences;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1056
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/support/LongSparseIntArray;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ge v6, v7, :cond_16

    .line 1057
    invoke-virtual {v1, v6}, Lorg/telegram/messenger/support/LongSparseIntArray;->keyAt(I)J

    move-result-wide v9

    .line 1058
    iget-object v7, v0, Lorg/telegram/messenger/NotificationsController;->pushDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v7, v9, v10}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 1059
    invoke-virtual {v1, v9, v10}, Lorg/telegram/messenger/support/LongSparseIntArray;->get(J)I

    move-result v11

    .line 1061
    invoke-static {v9, v10}, Lorg/telegram/messenger/DialogObject;->isChatDialog(J)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1062
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v12

    neg-long v13, v9

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v12

    if-eqz v12, :cond_0

    .line 1063
    iget-boolean v13, v12, Lorg/telegram/tgnet/TLRPC$Chat;->min:Z

    if-nez v13, :cond_0

    invoke-static {v12}, Lorg/telegram/messenger/ChatObject;->isNotInChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v13

    if-eqz v13, :cond_1

    :cond_0
    const/4 v11, 0x0

    :cond_1
    if-eqz v12, :cond_2

    .line 1067
    iget-boolean v12, v12, Lorg/telegram/tgnet/TLRPC$Chat;->forum:Z

    goto :goto_1

    :cond_2
    const/4 v12, 0x0

    :goto_1
    if-nez v12, :cond_5

    .line 1074
    invoke-direct {v0, v4, v9, v10, v5}, Lorg/telegram/messenger/NotificationsController;->getNotifyOverride(Landroid/content/SharedPreferences;JI)I

    move-result v12

    const/4 v13, -0x1

    if-ne v12, v13, :cond_3

    .line 1076
    invoke-virtual {v0, v9, v10}, Lorg/telegram/messenger/NotificationsController;->isGlobalNotificationsEnabled(J)Z

    move-result v12

    goto :goto_3

    :cond_3
    const/4 v13, 0x2

    if-eq v12, v13, :cond_4

    goto :goto_2

    :cond_4
    const/4 v12, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v12, 0x1

    .line 1084
    :goto_3
    iget-boolean v13, v0, Lorg/telegram/messenger/NotificationsController;->notifyCheck:Z

    if-eqz v13, :cond_6

    if-nez v12, :cond_6

    .line 1085
    iget-object v13, v0, Lorg/telegram/messenger/NotificationsController;->pushDialogsOverrideMention:Landroidx/collection/LongSparseArray;

    invoke-virtual {v13, v9, v10}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    if-eqz v13, :cond_6

    .line 1086
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-eqz v14, :cond_6

    .line 1088
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const/4 v12, 0x1

    :cond_6
    if-nez v11, :cond_7

    .line 1093
    iget-object v13, v0, Lorg/telegram/messenger/NotificationsController;->smartNotificationsDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v13, v9, v10}, Landroidx/collection/LongSparseArray;->remove(J)V

    :cond_7
    if-gez v11, :cond_9

    if-nez v7, :cond_8

    goto/16 :goto_9

    .line 1100
    :cond_8
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v13

    add-int/2addr v11, v13

    :cond_9
    if-nez v12, :cond_a

    if-nez v11, :cond_d

    :cond_a
    if-eqz v7, :cond_d

    .line 1104
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v13

    invoke-virtual {v13, v9, v10}, Lorg/telegram/messenger/MessagesController;->isForum(J)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 1105
    iget v13, v0, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-lez v7, :cond_b

    const/4 v7, 0x1

    goto :goto_4

    :cond_b
    const/4 v7, 0x0

    :goto_4
    sub-int/2addr v13, v7

    iput v13, v0, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    goto :goto_5

    .line 1107
    :cond_c
    iget v13, v0, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sub-int/2addr v13, v7

    iput v13, v0, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    :cond_d
    :goto_5
    if-nez v11, :cond_12

    .line 1112
    iget-object v7, v0, Lorg/telegram/messenger/NotificationsController;->pushDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v7, v9, v10}, Landroidx/collection/LongSparseArray;->remove(J)V

    .line 1113
    iget-object v7, v0, Lorg/telegram/messenger/NotificationsController;->pushDialogsOverrideMention:Landroidx/collection/LongSparseArray;

    invoke-virtual {v7, v9, v10}, Landroidx/collection/LongSparseArray;->remove(J)V

    const/4 v7, 0x0

    .line 1114
    :goto_6
    iget-object v11, v0, Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v7, v11, :cond_15

    .line 1115
    iget-object v11, v0, Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/messenger/MessageObject;

    .line 1116
    iget-object v12, v11, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-boolean v12, v12, Lorg/telegram/tgnet/TLRPC$Message;->from_scheduled:Z

    if-nez v12, :cond_11

    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v12

    cmp-long v14, v12, v9

    if-nez v14, :cond_11

    .line 1117
    invoke-direct {v0, v11}, Lorg/telegram/messenger/NotificationsController;->isPersonalMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 1118
    iget v12, v0, Lorg/telegram/messenger/NotificationsController;->personalCount:I

    sub-int/2addr v12, v8

    iput v12, v0, Lorg/telegram/messenger/NotificationsController;->personalCount:I

    .line 1120
    :cond_e
    iget-object v12, v0, Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v7, v7, -0x1

    .line 1122
    iget-object v12, v0, Lorg/telegram/messenger/NotificationsController;->delayedPushMessages:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1124
    iget-object v12, v11, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v12, v12, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v12, v12, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    const-wide/16 v14, 0x0

    cmp-long v16, v12, v14

    if-eqz v16, :cond_f

    neg-long v14, v12

    .line 1129
    :cond_f
    iget-object v12, v0, Lorg/telegram/messenger/NotificationsController;->pushMessagesDict:Landroidx/collection/LongSparseArray;

    invoke-virtual {v12, v14, v15}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/SparseArray;

    if-eqz v12, :cond_10

    .line 1131
    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/util/SparseArray;->remove(I)V

    .line 1132
    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v12

    if-nez v12, :cond_10

    .line 1133
    iget-object v12, v0, Lorg/telegram/messenger/NotificationsController;->pushMessagesDict:Landroidx/collection/LongSparseArray;

    invoke-virtual {v12, v14, v15}, Landroidx/collection/LongSparseArray;->remove(J)V

    .line 1136
    :cond_10
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    add-int/2addr v7, v8

    goto :goto_6

    :cond_12
    if-eqz v12, :cond_15

    .line 1140
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    invoke-virtual {v7, v9, v10}, Lorg/telegram/messenger/MessagesController;->isForum(J)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 1141
    iget v7, v0, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    if-lez v11, :cond_13

    goto :goto_7

    :cond_13
    const/4 v8, 0x0

    :goto_7
    add-int/2addr v7, v8

    iput v7, v0, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    goto :goto_8

    .line 1143
    :cond_14
    iget v7, v0, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    add-int/2addr v7, v11

    iput v7, v0, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    .line 1145
    :goto_8
    iget-object v7, v0, Lorg/telegram/messenger/NotificationsController;->pushDialogs:Landroidx/collection/LongSparseArray;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v9, v10, v8}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_15
    :goto_9
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 1148
    :cond_16
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_17

    .line 1149
    new-instance v1, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda28;

    invoke-direct {v1, v0, v2}, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda28;-><init>(Lorg/telegram/messenger/NotificationsController;Ljava/util/ArrayList;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1156
    :cond_17
    iget v1, v0, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    if-eq v3, v1, :cond_1a

    .line 1157
    iget-boolean v1, v0, Lorg/telegram/messenger/NotificationsController;->notifyCheck:Z

    if-nez v1, :cond_18

    .line 1158
    iget-object v1, v0, Lorg/telegram/messenger/NotificationsController;->delayedPushMessages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1159
    iget-boolean v1, v0, Lorg/telegram/messenger/NotificationsController;->notifyCheck:Z

    invoke-direct {v0, v1}, Lorg/telegram/messenger/NotificationsController;->showOrUpdateNotification(Z)V

    goto :goto_b

    .line 1161
    :cond_18
    iget v1, v0, Lorg/telegram/messenger/NotificationsController;->lastOnlineFromOtherDevice:I

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v2

    if-le v1, v2, :cond_19

    goto :goto_a

    :cond_19
    const/4 v8, 0x0

    :goto_a
    invoke-direct {v0, v8}, Lorg/telegram/messenger/NotificationsController;->scheduleNotificationDelay(Z)V

    .line 1163
    :goto_b
    iget-object v1, v0, Lorg/telegram/messenger/NotificationsController;->pushDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1}, Landroidx/collection/LongSparseArray;->size()I

    move-result v1

    .line 1164
    new-instance v2, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda18;

    invoke-direct {v2, v0, v1}, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/messenger/NotificationsController;I)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1169
    :cond_1a
    iput-boolean v5, v0, Lorg/telegram/messenger/NotificationsController;->notifyCheck:Z

    .line 1170
    iget-boolean v1, v0, Lorg/telegram/messenger/NotificationsController;->showBadgeNumber:Z

    if-eqz v1, :cond_1b

    .line 1171
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/NotificationsController;->getTotalAllUnreadCount()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/telegram/messenger/NotificationsController;->setBadge(I)V

    :cond_1b
    return-void
.end method

.method private synthetic lambda$processEditedMessages$15(Landroidx/collection/LongSparseArray;)V
    .locals 13

    .line 771
    invoke-virtual {p1}, Landroidx/collection/LongSparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_8

    .line 772
    invoke-virtual {p1, v2}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    .line 773
    iget-object v6, p0, Lorg/telegram/messenger/NotificationsController;->pushDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v6, v4, v5}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result v4

    if-gez v4, :cond_0

    goto :goto_2

    .line 776
    :cond_0
    invoke-virtual {p1, v2}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 777
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_7

    .line 778
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/messenger/MessageObject;

    .line 780
    iget-object v8, v7, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v8, v8, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    const-wide/16 v10, 0x0

    cmp-long v12, v8, v10

    if-eqz v12, :cond_1

    neg-long v10, v8

    .line 785
    :cond_1
    iget-object v8, p0, Lorg/telegram/messenger/NotificationsController;->pushMessagesDict:Landroidx/collection/LongSparseArray;

    invoke-virtual {v8, v10, v11}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/SparseArray;

    if-nez v8, :cond_2

    goto :goto_2

    .line 789
    :cond_2
    invoke-virtual {v7}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/messenger/MessageObject;

    if-eqz v9, :cond_3

    .line 790
    iget-boolean v10, v9, Lorg/telegram/messenger/MessageObject;->isReactionPush:Z

    if-eqz v10, :cond_3

    const/4 v9, 0x0

    :cond_3
    if-eqz v9, :cond_6

    .line 795
    invoke-virtual {v7}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-virtual {v8, v3, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 796
    iget-object v3, p0, Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_4

    .line 798
    iget-object v8, p0, Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;

    invoke-virtual {v8, v3, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 800
    :cond_4
    iget-object v3, p0, Lorg/telegram/messenger/NotificationsController;->delayedPushMessages:Ljava/util/ArrayList;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_5

    .line 802
    iget-object v8, p0, Lorg/telegram/messenger/NotificationsController;->delayedPushMessages:Ljava/util/ArrayList;

    invoke-virtual {v8, v3, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const/4 v3, 0x1

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_7
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_8
    if-eqz v3, :cond_9

    .line 808
    invoke-direct {p0, v1}, Lorg/telegram/messenger/NotificationsController;->showOrUpdateNotification(Z)V

    :cond_9
    return-void
.end method

.method private synthetic lambda$processLoadedUnreadMessages$22(I)V
    .locals 6

    .line 1352
    iget v0, p0, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1353
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController;->popupMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1354
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->pushMessagesUpdated:I

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1356
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->notificationsCountUpdated:I

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    iget v5, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v0, v2, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1357
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->dialogsUnreadCounterChanged:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$processLoadedUnreadMessages$23(Ljava/util/ArrayList;Landroidx/collection/LongSparseArray;Ljava/util/ArrayList;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 1182
    iget-object v4, v0, Lorg/telegram/messenger/NotificationsController;->pushDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v4}, Landroidx/collection/LongSparseArray;->clear()V

    .line 1183
    iget-object v4, v0, Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1184
    iget-object v4, v0, Lorg/telegram/messenger/NotificationsController;->pushMessagesDict:Landroidx/collection/LongSparseArray;

    invoke-virtual {v4}, Landroidx/collection/LongSparseArray;->clear()V

    const/4 v4, 0x0

    .line 1185
    iput v4, v0, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    .line 1186
    iput v4, v0, Lorg/telegram/messenger/NotificationsController;->personalCount:I

    .line 1187
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/AccountInstance;->getNotificationsSettings()Landroid/content/SharedPreferences;

    move-result-object v5

    .line 1188
    new-instance v6, Landroidx/collection/LongSparseArray;

    invoke-direct {v6}, Landroidx/collection/LongSparseArray;-><init>()V

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    if-eqz v1, :cond_f

    const/4 v12, 0x0

    .line 1191
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v12, v13, :cond_f

    .line 1192
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/tgnet/TLRPC$Message;

    if-nez v13, :cond_1

    :cond_0
    :goto_1
    move/from16 v17, v12

    goto/16 :goto_8

    .line 1196
    :cond_1
    iget-object v14, v13, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    if-eqz v14, :cond_2

    iget-boolean v14, v14, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->imported:Z

    if-nez v14, :cond_0

    :cond_2
    iget-object v14, v13, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v15, v14, Lorg/telegram/tgnet/TLRPC$TL_messageActionSetMessagesTTL;

    if-nez v15, :cond_0

    iget-boolean v15, v13, Lorg/telegram/tgnet/TLRPC$Message;->silent:Z

    if-eqz v15, :cond_3

    instance-of v15, v14, Lorg/telegram/tgnet/TLRPC$TL_messageActionContactSignUp;

    if-nez v15, :cond_0

    instance-of v14, v14, Lorg/telegram/tgnet/TLRPC$TL_messageActionUserJoined;

    if-eqz v14, :cond_3

    goto :goto_1

    .line 1202
    :cond_3
    iget-object v14, v13, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v14, v14, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    cmp-long v16, v14, v9

    if-eqz v16, :cond_4

    neg-long v14, v14

    goto :goto_2

    :cond_4
    move-wide v14, v9

    .line 1207
    :goto_2
    iget-object v9, v0, Lorg/telegram/messenger/NotificationsController;->pushMessagesDict:Landroidx/collection/LongSparseArray;

    invoke-virtual {v9, v14, v15}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/SparseArray;

    if-eqz v9, :cond_5

    .line 1208
    iget v10, v13, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v10

    if-ltz v10, :cond_5

    goto :goto_1

    .line 1211
    :cond_5
    new-instance v10, Lorg/telegram/messenger/MessageObject;

    iget v7, v0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-direct {v10, v7, v13, v4, v4}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    .line 1212
    invoke-direct {v0, v10}, Lorg/telegram/messenger/NotificationsController;->isPersonalMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1213
    iget v7, v0, Lorg/telegram/messenger/NotificationsController;->personalCount:I

    add-int/2addr v7, v11

    iput v7, v0, Lorg/telegram/messenger/NotificationsController;->personalCount:I

    :cond_6
    move/from16 v17, v12

    .line 1215
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v11

    .line 1217
    iget-object v7, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-virtual {v4, v10}, Lorg/telegram/messenger/MessagesController;->isForum(Lorg/telegram/messenger/MessageObject;)Z

    move-result v4

    invoke-static {v7, v4}, Lorg/telegram/messenger/MessageObject;->getTopicId(Lorg/telegram/tgnet/TLRPC$Message;Z)I

    move-result v4

    .line 1218
    iget-object v7, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-boolean v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->mentioned:Z

    if-eqz v7, :cond_7

    .line 1219
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->getFromChatId()J

    move-result-wide v19

    move-object v7, v9

    move-wide/from16 v8, v19

    goto :goto_3

    :cond_7
    move-object v7, v9

    move-wide v8, v11

    .line 1221
    :goto_3
    invoke-virtual {v6, v8, v9}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result v1

    if-ltz v1, :cond_8

    if-nez v4, :cond_8

    .line 1224
    invoke-virtual {v6, v1}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_5

    .line 1226
    :cond_8
    invoke-direct {v0, v5, v8, v9, v4}, Lorg/telegram/messenger/NotificationsController;->getNotifyOverride(Landroid/content/SharedPreferences;JI)I

    move-result v1

    const/4 v4, -0x1

    if-ne v1, v4, :cond_9

    .line 1228
    invoke-virtual {v0, v8, v9}, Lorg/telegram/messenger/NotificationsController;->isGlobalNotificationsEnabled(J)Z

    move-result v1

    goto :goto_4

    :cond_9
    const/4 v4, 0x2

    if-eq v1, v4, :cond_a

    const/4 v1, 0x1

    goto :goto_4

    :cond_a
    const/4 v1, 0x0

    .line 1232
    :goto_4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v6, v8, v9, v4}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    :goto_5
    if-eqz v1, :cond_e

    .line 1234
    iget-wide v3, v0, Lorg/telegram/messenger/NotificationsController;->openedDialogId:J

    cmp-long v1, v8, v3

    if-nez v1, :cond_b

    sget-boolean v1, Lorg/telegram/messenger/ApplicationLoader;->isScreenOn:Z

    if-eqz v1, :cond_b

    goto :goto_8

    :cond_b
    if-nez v7, :cond_c

    .line 1238
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 1239
    iget-object v3, v0, Lorg/telegram/messenger/NotificationsController;->pushMessagesDict:Landroidx/collection/LongSparseArray;

    invoke-virtual {v3, v14, v15, v1}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_6

    :cond_c
    move-object v1, v7

    .line 1241
    :goto_6
    iget v3, v13, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    invoke-virtual {v1, v3, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1242
    iget-object v1, v0, Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    cmp-long v1, v11, v8

    if-eqz v1, :cond_e

    .line 1244
    iget-object v1, v0, Lorg/telegram/messenger/NotificationsController;->pushDialogsOverrideMention:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1, v11, v12}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1245
    iget-object v3, v0, Lorg/telegram/messenger/NotificationsController;->pushDialogsOverrideMention:Landroidx/collection/LongSparseArray;

    if-nez v1, :cond_d

    const/4 v1, 0x1

    goto :goto_7

    :cond_d
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v4, 0x1

    add-int/2addr v1, v4

    :goto_7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v11, v12, v1}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_e
    :goto_8
    add-int/lit8 v12, v17, 0x1

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    const/4 v4, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_f
    const/4 v3, 0x0

    .line 1249
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroidx/collection/LongSparseArray;->size()I

    move-result v1

    if-ge v3, v1, :cond_16

    .line 1250
    invoke-virtual {v2, v3}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v8

    .line 1251
    invoke-virtual {v6, v8, v9}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result v1

    if-ltz v1, :cond_10

    .line 1254
    invoke-virtual {v6, v1}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_b

    :cond_10
    const/4 v1, 0x0

    .line 1256
    invoke-direct {v0, v5, v8, v9, v1}, Lorg/telegram/messenger/NotificationsController;->getNotifyOverride(Landroid/content/SharedPreferences;JI)I

    move-result v4

    const/4 v1, -0x1

    if-ne v4, v1, :cond_11

    .line 1258
    invoke-virtual {v0, v8, v9}, Lorg/telegram/messenger/NotificationsController;->isGlobalNotificationsEnabled(J)Z

    move-result v1

    goto :goto_a

    :cond_11
    const/4 v1, 0x2

    if-eq v4, v1, :cond_12

    const/4 v1, 0x1

    goto :goto_a

    :cond_12
    const/4 v1, 0x0

    .line 1263
    :goto_a
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v6, v8, v9, v4}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    :goto_b
    if-nez v1, :cond_13

    goto :goto_d

    .line 1268
    :cond_13
    invoke-virtual {v2, v3}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1269
    iget-object v4, v0, Lorg/telegram/messenger/NotificationsController;->pushDialogs:Landroidx/collection/LongSparseArray;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v8, v9, v10}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1270
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Lorg/telegram/messenger/MessagesController;->isForum(J)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 1271
    iget v4, v0, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    if-lez v1, :cond_14

    const/4 v1, 0x1

    goto :goto_c

    :cond_14
    const/4 v1, 0x0

    :goto_c
    add-int/2addr v4, v1

    iput v4, v0, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    goto :goto_d

    .line 1273
    :cond_15
    iget v4, v0, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    add-int/2addr v4, v1

    iput v4, v0, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    :goto_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_16
    move-object/from16 v1, p3

    if-eqz v1, :cond_2b

    const/4 v3, 0x0

    .line 1278
    :goto_e
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_2b

    .line 1279
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    .line 1280
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    .line 1281
    iget-object v8, v0, Lorg/telegram/messenger/NotificationsController;->pushMessagesDict:Landroidx/collection/LongSparseArray;

    int-to-long v9, v4

    invoke-virtual {v8, v9, v10}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result v8

    if-ltz v8, :cond_18

    :cond_17
    :goto_f
    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/16 v18, 0x1

    goto/16 :goto_1b

    .line 1284
    :cond_18
    invoke-direct {v0, v2}, Lorg/telegram/messenger/NotificationsController;->isPersonalMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v8

    if-eqz v8, :cond_19

    .line 1285
    iget v8, v0, Lorg/telegram/messenger/NotificationsController;->personalCount:I

    const/4 v7, 0x1

    add-int/2addr v8, v7

    iput v8, v0, Lorg/telegram/messenger/NotificationsController;->personalCount:I

    .line 1287
    :cond_19
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v8

    .line 1289
    iget-object v10, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v11

    invoke-virtual {v11, v2}, Lorg/telegram/messenger/MessagesController;->isForum(Lorg/telegram/messenger/MessageObject;)Z

    move-result v11

    invoke-static {v10, v11}, Lorg/telegram/messenger/MessageObject;->getTopicId(Lorg/telegram/tgnet/TLRPC$Message;Z)I

    move-result v10

    .line 1290
    iget-object v11, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v12, v11, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    .line 1291
    iget-boolean v11, v11, Lorg/telegram/tgnet/TLRPC$Message;->mentioned:Z

    if-eqz v11, :cond_1a

    .line 1292
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getFromChatId()J

    move-result-wide v14

    goto :goto_10

    :cond_1a
    move-wide v14, v8

    .line 1294
    :goto_10
    invoke-virtual {v6, v14, v15}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result v11

    if-ltz v11, :cond_1b

    if-nez v10, :cond_1b

    .line 1297
    invoke-virtual {v6, v11}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    const/4 v11, -0x1

    goto :goto_12

    .line 1299
    :cond_1b
    invoke-direct {v0, v5, v14, v15, v10}, Lorg/telegram/messenger/NotificationsController;->getNotifyOverride(Landroid/content/SharedPreferences;JI)I

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_1c

    .line 1301
    invoke-virtual {v0, v14, v15}, Lorg/telegram/messenger/NotificationsController;->isGlobalNotificationsEnabled(J)Z

    move-result v10

    goto :goto_11

    :cond_1c
    const/4 v7, 0x2

    if-eq v10, v7, :cond_1d

    const/4 v10, 0x1

    goto :goto_11

    :cond_1d
    const/4 v10, 0x0

    .line 1305
    :goto_11
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v14, v15, v7}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    :goto_12
    if-eqz v10, :cond_17

    move-wide/from16 v19, v12

    .line 1307
    iget-wide v11, v0, Lorg/telegram/messenger/NotificationsController;->openedDialogId:J

    cmp-long v10, v14, v11

    if-nez v10, :cond_1e

    sget-boolean v10, Lorg/telegram/messenger/ApplicationLoader;->isScreenOn:Z

    if-eqz v10, :cond_1e

    goto :goto_f

    :cond_1e
    if-eqz v4, :cond_21

    .line 1312
    iget-object v10, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v10, v10, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    const-wide/16 v12, 0x0

    cmp-long v17, v10, v12

    if-eqz v17, :cond_1f

    neg-long v12, v10

    goto :goto_13

    :cond_1f
    const-wide/16 v12, 0x0

    .line 1317
    :goto_13
    iget-object v10, v0, Lorg/telegram/messenger/NotificationsController;->pushMessagesDict:Landroidx/collection/LongSparseArray;

    invoke-virtual {v10, v12, v13}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/SparseArray;

    if-nez v10, :cond_20

    .line 1319
    new-instance v10, Landroid/util/SparseArray;

    invoke-direct {v10}, Landroid/util/SparseArray;-><init>()V

    .line 1320
    iget-object v11, v0, Lorg/telegram/messenger/NotificationsController;->pushMessagesDict:Landroidx/collection/LongSparseArray;

    invoke-virtual {v11, v12, v13, v10}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1322
    :cond_20
    invoke-virtual {v10, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-wide/16 v10, 0x0

    goto :goto_14

    :cond_21
    const-wide/16 v10, 0x0

    cmp-long v4, v19, v10

    if-eqz v4, :cond_22

    .line 1324
    iget-object v4, v0, Lorg/telegram/messenger/NotificationsController;->fcmRandomMessagesDict:Landroidx/collection/LongSparseArray;

    move-wide/from16 v12, v19

    invoke-virtual {v4, v12, v13, v2}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1326
    :cond_22
    :goto_14
    iget-object v4, v0, Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;

    const/4 v12, 0x0

    invoke-virtual {v4, v12, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    cmp-long v2, v8, v14

    if-eqz v2, :cond_24

    .line 1328
    iget-object v2, v0, Lorg/telegram/messenger/NotificationsController;->pushDialogsOverrideMention:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2, v8, v9}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1329
    iget-object v4, v0, Lorg/telegram/messenger/NotificationsController;->pushDialogsOverrideMention:Landroidx/collection/LongSparseArray;

    if-nez v2, :cond_23

    const/4 v2, 0x1

    const/16 v18, 0x1

    goto :goto_15

    :cond_23
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v18, 0x1

    add-int/lit8 v2, v2, 0x1

    :goto_15
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v8, v9, v2}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_16

    :cond_24
    const/16 v18, 0x1

    .line 1332
    :goto_16
    iget-object v2, v0, Lorg/telegram/messenger/NotificationsController;->pushDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2, v14, v15}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_25

    .line 1333
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    :cond_25
    const/4 v4, 0x1

    .line 1335
    :goto_17
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    invoke-virtual {v8, v14, v15}, Lorg/telegram/messenger/MessagesController;->isForum(J)Z

    move-result v8

    if-eqz v8, :cond_29

    if-eqz v2, :cond_27

    .line 1337
    iget v8, v0, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_26

    const/4 v2, 0x1

    goto :goto_18

    :cond_26
    const/4 v2, 0x0

    :goto_18
    sub-int/2addr v8, v2

    iput v8, v0, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    .line 1339
    :cond_27
    iget v2, v0, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    if-lez v4, :cond_28

    const/4 v8, 0x1

    goto :goto_19

    :cond_28
    const/4 v8, 0x0

    :goto_19
    add-int/2addr v2, v8

    iput v2, v0, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    goto :goto_1a

    :cond_29
    if-eqz v2, :cond_2a

    .line 1342
    iget v8, v0, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int/2addr v8, v2

    iput v8, v0, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    .line 1344
    :cond_2a
    iget v2, v0, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    add-int/2addr v2, v4

    iput v2, v0, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    .line 1346
    :goto_1a
    iget-object v2, v0, Lorg/telegram/messenger/NotificationsController;->pushDialogs:Landroidx/collection/LongSparseArray;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v14, v15, v4}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    :goto_1b
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_e

    :cond_2b
    const/4 v12, 0x0

    const/16 v18, 0x1

    .line 1350
    iget-object v1, v0, Lorg/telegram/messenger/NotificationsController;->pushDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1}, Landroidx/collection/LongSparseArray;->size()I

    move-result v1

    .line 1351
    new-instance v2, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda17;

    invoke-direct {v2, v0, v1}, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/messenger/NotificationsController;I)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1359
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    const-wide/16 v3, 0x3c

    cmp-long v5, v1, v3

    if-gez v5, :cond_2c

    const/4 v4, 0x1

    goto :goto_1c

    :cond_2c
    const/4 v4, 0x0

    :goto_1c
    invoke-direct {v0, v4}, Lorg/telegram/messenger/NotificationsController;->showOrUpdateNotification(Z)V

    .line 1361
    iget-boolean v1, v0, Lorg/telegram/messenger/NotificationsController;->showBadgeNumber:Z

    if-eqz v1, :cond_2d

    .line 1362
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/NotificationsController;->getTotalAllUnreadCount()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/telegram/messenger/NotificationsController;->setBadge(I)V

    :cond_2d
    return-void
.end method

.method private synthetic lambda$processNewMessages$16(Ljava/util/ArrayList;I)V
    .locals 2

    .line 965
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController;->popupMessages:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 966
    sget-boolean p1, Lorg/telegram/messenger/ApplicationLoader;->mainInterfacePaused:Z

    if-nez p1, :cond_0

    sget-boolean p1, Lorg/telegram/messenger/ApplicationLoader;->isScreenOn:Z

    if-nez p1, :cond_3

    :cond_0
    const/4 p1, 0x3

    if-eq p2, p1, :cond_2

    const/4 p1, 0x1

    if-ne p2, p1, :cond_1

    .line 967
    sget-boolean p1, Lorg/telegram/messenger/ApplicationLoader;->isScreenOn:Z

    if-nez p1, :cond_2

    :cond_1
    const/4 p1, 0x2

    if-ne p2, p1, :cond_3

    sget-boolean p1, Lorg/telegram/messenger/ApplicationLoader;->isScreenOn:Z

    if-nez p1, :cond_3

    .line 968
    :cond_2
    new-instance p1, Landroid/content/Intent;

    sget-object p2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v0, Lorg/telegram/ui/PopupNotificationActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const p2, 0x10050004

    .line 969
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 971
    :try_start_0
    sget-object p2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_3
    return-void
.end method

.method private synthetic lambda$processNewMessages$17(I)V
    .locals 6

    .line 1031
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->notificationsCountUpdated:I

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget v4, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1032
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->dialogsUnreadCounterChanged:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v5

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$processNewMessages$18(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZLjava/util/concurrent/CountDownLatch;)V
    .locals 29

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 825
    new-instance v9, Landroidx/collection/LongSparseArray;

    invoke-direct {v9}, Landroidx/collection/LongSparseArray;-><init>()V

    .line 826
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getNotificationsSettings()Landroid/content/SharedPreferences;

    move-result-object v10

    const-string v0, "PinnedMessages"

    const/4 v11, 0x1

    .line 827
    invoke-interface {v10, v0, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    const/4 v0, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 831
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v14, v1, :cond_24

    .line 832
    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lorg/telegram/messenger/MessageObject;

    .line 833
    iget-object v1, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v1, :cond_1

    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isImportedForward()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v4, v5, Lorg/telegram/tgnet/TLRPC$TL_messageActionSetMessagesTTL;

    if-nez v4, :cond_0

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->silent:Z

    if-eqz v1, :cond_1

    instance-of v1, v5, Lorg/telegram/tgnet/TLRPC$TL_messageActionContactSignUp;

    if-nez v1, :cond_0

    instance-of v1, v5, Lorg/telegram/tgnet/TLRPC$TL_messageActionUserJoined;

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    :goto_1
    move/from16 v26, v0

    move/from16 v23, v12

    move/from16 v21, v14

    goto/16 :goto_a

    .line 836
    :cond_1
    :goto_2
    invoke-static {v6}, Lorg/telegram/messenger/MessageObject;->isTopicActionMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 839
    :cond_2
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    .line 840
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isFcmMessage()Z

    move-result v1

    const-wide/16 v19, 0x0

    if-eqz v1, :cond_3

    iget-object v1, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move/from16 v21, v14

    iget-wide v13, v1, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    goto :goto_3

    :cond_3
    move/from16 v21, v14

    move-wide/from16 v13, v19

    .line 841
    :goto_3
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v3

    .line 843
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isFcmMessage()Z

    move-result v22

    if-eqz v22, :cond_4

    .line 844
    iget-boolean v1, v6, Lorg/telegram/messenger/MessageObject;->localChannel:Z

    move v11, v1

    move/from16 v23, v12

    goto :goto_5

    .line 845
    :cond_4
    invoke-static {v3, v4}, Lorg/telegram/messenger/DialogObject;->isChatDialog(J)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 846
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    move/from16 v23, v12

    neg-long v11, v3

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v1, v11}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    .line 847
    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v11

    if-eqz v11, :cond_5

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v1, :cond_5

    const/4 v1, 0x1

    goto :goto_4

    :cond_5
    const/4 v1, 0x0

    :goto_4
    move v11, v1

    goto :goto_5

    :cond_6
    move/from16 v23, v12

    const/4 v11, 0x0

    .line 852
    :goto_5
    iget-object v1, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-wide/from16 v24, v3

    iget-wide v2, v1, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    cmp-long v1, v2, v19

    if-eqz v1, :cond_7

    neg-long v1, v2

    move-wide v3, v1

    goto :goto_6

    :cond_7
    move-wide/from16 v3, v19

    .line 857
    :goto_6
    iget-object v1, v7, Lorg/telegram/messenger/NotificationsController;->pushMessagesDict:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1, v3, v4}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/util/SparseArray;

    if-eqz v2, :cond_8

    .line 858
    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    goto :goto_7

    :cond_8
    const/4 v1, 0x0

    :goto_7
    if-nez v1, :cond_a

    .line 859
    iget-object v12, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move/from16 v26, v0

    move-object/from16 v18, v1

    iget-wide v0, v12, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    cmp-long v12, v0, v19

    if-eqz v12, :cond_b

    .line 860
    iget-object v12, v7, Lorg/telegram/messenger/NotificationsController;->fcmRandomMessagesDict:Landroidx/collection/LongSparseArray;

    invoke-virtual {v12, v0, v1}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    if-eqz v1, :cond_9

    .line 862
    iget-object v0, v7, Lorg/telegram/messenger/NotificationsController;->fcmRandomMessagesDict:Landroidx/collection/LongSparseArray;

    iget-object v12, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-wide/from16 v27, v13

    iget-wide v12, v12, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    invoke-virtual {v0, v12, v13}, Landroidx/collection/LongSparseArray;->remove(J)V

    goto :goto_8

    :cond_9
    move-wide/from16 v27, v13

    goto :goto_8

    :cond_a
    move/from16 v26, v0

    move-object/from16 v18, v1

    :cond_b
    move-wide/from16 v27, v13

    move-object/from16 v1, v18

    :goto_8
    if-eqz v1, :cond_10

    .line 866
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isFcmMessage()Z

    move-result v0

    if-eqz v0, :cond_14

    if-nez v2, :cond_c

    .line 868
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 869
    iget-object v0, v7, Lorg/telegram/messenger/NotificationsController;->pushMessagesDict:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, v3, v4, v2}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 871
    :cond_c
    invoke-virtual {v2, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 872
    iget-object v0, v7, Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_d

    .line 874
    iget-object v1, v7, Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v2, v6

    move-wide/from16 v3, v24

    move v5, v11

    move-object v12, v6

    move-object v6, v10

    .line 875
    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/NotificationsController;->addToPopupMessages(Ljava/util/ArrayList;Lorg/telegram/messenger/MessageObject;JZLandroid/content/SharedPreferences;)I

    move-result v0

    goto :goto_9

    :cond_d
    move-object v12, v6

    move/from16 v0, v26

    :goto_9
    if-eqz p3, :cond_f

    .line 877
    iget-boolean v1, v12, Lorg/telegram/messenger/MessageObject;->localEdit:Z

    if-eqz v1, :cond_e

    .line 878
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    invoke-virtual {v2, v12}, Lorg/telegram/messenger/MessagesStorage;->putPushMessage(Lorg/telegram/messenger/MessageObject;)V

    :cond_e
    move/from16 v16, v1

    :cond_f
    move-object/from16 v22, v9

    goto/16 :goto_13

    :cond_10
    move-object v12, v6

    if-eqz v16, :cond_11

    goto :goto_a

    :cond_11
    if-eqz p3, :cond_12

    .line 887
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0, v12}, Lorg/telegram/messenger/MessagesStorage;->putPushMessage(Lorg/telegram/messenger/MessageObject;)V

    .line 891
    :cond_12
    iget-object v0, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1, v12}, Lorg/telegram/messenger/MessagesController;->isForum(Lorg/telegram/messenger/MessageObject;)Z

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/MessageObject;->getTopicId(Lorg/telegram/tgnet/TLRPC$Message;Z)I

    move-result v13

    .line 892
    iget-wide v0, v7, Lorg/telegram/messenger/NotificationsController;->openedDialogId:J

    cmp-long v6, v24, v0

    if-nez v6, :cond_13

    sget-boolean v0, Lorg/telegram/messenger/ApplicationLoader;->isScreenOn:Z

    if-eqz v0, :cond_13

    if-nez p3, :cond_14

    .line 894
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/NotificationsController;->playInChatSound()V

    goto :goto_a

    .line 898
    :cond_13
    iget-object v0, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->mentioned:Z

    if-eqz v1, :cond_16

    if-nez v23, :cond_15

    .line 899
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionPinMessage;

    if-eqz v0, :cond_15

    :cond_14
    :goto_a
    move-object/from16 v22, v9

    move/from16 v0, v26

    goto/16 :goto_13

    .line 902
    :cond_15
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->getFromChatId()J

    move-result-wide v0

    move-wide v14, v0

    goto :goto_b

    :cond_16
    move-wide/from16 v14, v24

    .line 904
    :goto_b
    invoke-direct {v7, v12}, Lorg/telegram/messenger/NotificationsController;->isPersonalMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 905
    iget v0, v7, Lorg/telegram/messenger/NotificationsController;->personalCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, v7, Lorg/telegram/messenger/NotificationsController;->personalCount:I

    .line 909
    :cond_17
    invoke-static {v14, v15}, Lorg/telegram/messenger/DialogObject;->isChatDialog(J)Z

    .line 910
    invoke-virtual {v9, v14, v15}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result v0

    if-ltz v0, :cond_18

    if-nez v13, :cond_18

    .line 913
    invoke-virtual {v9, v0}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_d

    .line 915
    :cond_18
    invoke-direct {v7, v10, v14, v15, v13}, Lorg/telegram/messenger/NotificationsController;->getNotifyOverride(Landroid/content/SharedPreferences;JI)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_19

    .line 917
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v7, v14, v15, v0}, Lorg/telegram/messenger/NotificationsController;->isGlobalNotificationsEnabled(JLjava/lang/Boolean;)Z

    move-result v0

    goto :goto_c

    :cond_19
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1a

    const/4 v0, 0x1

    goto :goto_c

    :cond_1a
    const/4 v0, 0x0

    .line 925
    :goto_c
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v9, v14, v15, v1}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    :goto_d
    if-eqz v0, :cond_21

    if-nez p3, :cond_1b

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v18, v2

    move-object v2, v12

    move-object/from16 v22, v9

    move-wide v8, v3

    move-wide v3, v14

    move v6, v5

    move v5, v11

    move v11, v6

    move-object v6, v10

    .line 930
    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/NotificationsController;->addToPopupMessages(Ljava/util/ArrayList;Lorg/telegram/messenger/MessageObject;JZLandroid/content/SharedPreferences;)I

    move-result v0

    goto :goto_e

    :cond_1b
    move-object/from16 v18, v2

    move v11, v5

    move-object/from16 v22, v9

    move-wide v8, v3

    move/from16 v0, v26

    :goto_e
    if-nez v17, :cond_1c

    .line 933
    iget-object v1, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->from_scheduled:Z

    move/from16 v17, v1

    .line 935
    :cond_1c
    iget-object v1, v7, Lorg/telegram/messenger/NotificationsController;->delayedPushMessages:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 936
    iget-object v1, v7, Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v12}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    if-eqz v11, :cond_1e

    if-nez v18, :cond_1d

    .line 939
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 940
    iget-object v1, v7, Lorg/telegram/messenger/NotificationsController;->pushMessagesDict:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1, v8, v9, v2}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_f

    :cond_1d
    move-object/from16 v2, v18

    .line 942
    :goto_f
    invoke-virtual {v2, v11, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_10

    :cond_1e
    cmp-long v1, v27, v19

    if-eqz v1, :cond_1f

    .line 944
    iget-object v1, v7, Lorg/telegram/messenger/NotificationsController;->fcmRandomMessagesDict:Landroidx/collection/LongSparseArray;

    move-wide/from16 v2, v27

    invoke-virtual {v1, v2, v3, v12}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_1f
    :goto_10
    cmp-long v1, v24, v14

    if-eqz v1, :cond_22

    .line 947
    iget-object v1, v7, Lorg/telegram/messenger/NotificationsController;->pushDialogsOverrideMention:Landroidx/collection/LongSparseArray;

    move-wide/from16 v2, v24

    invoke-virtual {v1, v2, v3}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 948
    iget-object v4, v7, Lorg/telegram/messenger/NotificationsController;->pushDialogsOverrideMention:Landroidx/collection/LongSparseArray;

    if-nez v1, :cond_20

    const/4 v1, 0x1

    goto :goto_11

    :cond_20
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v5, 0x1

    add-int/2addr v1, v5

    :goto_11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v2, v3, v1}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_12

    :cond_21
    move v11, v5

    move-object/from16 v22, v9

    move/from16 v0, v26

    .line 951
    :cond_22
    :goto_12
    iget-boolean v1, v12, Lorg/telegram/messenger/MessageObject;->isReactionPush:Z

    if-eqz v1, :cond_23

    .line 952
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    const/4 v2, 0x1

    .line 953
    invoke-virtual {v1, v11, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 954
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2, v14, v15, v13, v1}, Lorg/telegram/messenger/MessagesController;->checkUnreadReactions(JILandroid/util/SparseBooleanArray;)V

    :cond_23
    const/4 v15, 0x1

    :goto_13
    add-int/lit8 v14, v21, 0x1

    move-object/from16 v8, p1

    move-object/from16 v9, v22

    move/from16 v12, v23

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_24
    move/from16 v26, v0

    if-eqz v15, :cond_25

    move/from16 v0, p4

    .line 959
    iput-boolean v0, v7, Lorg/telegram/messenger/NotificationsController;->notifyCheck:Z

    .line 962
    :cond_25
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_26

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->needShowPasscode()Z

    move-result v0

    if-nez v0, :cond_26

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->isWaitingForPasscodeEnter:Z

    if-nez v0, :cond_26

    .line 964
    new-instance v0, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda33;

    move-object/from16 v2, p2

    move/from16 v13, v26

    invoke-direct {v0, v7, v2, v13}, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda33;-><init>(Lorg/telegram/messenger/NotificationsController;Ljava/util/ArrayList;I)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_26
    if-nez p3, :cond_27

    if-eqz v17, :cond_34

    :cond_27
    if-eqz v16, :cond_28

    .line 981
    iget-object v0, v7, Lorg/telegram/messenger/NotificationsController;->delayedPushMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 982
    iget-boolean v0, v7, Lorg/telegram/messenger/NotificationsController;->notifyCheck:Z

    invoke-direct {v7, v0}, Lorg/telegram/messenger/NotificationsController;->showOrUpdateNotification(Z)V

    goto/16 :goto_1a

    :cond_28
    if-eqz v15, :cond_34

    move-object/from16 v0, p1

    const/4 v2, 0x0

    .line 984
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    .line 985
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v2

    .line 986
    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Lorg/telegram/messenger/MessagesController;->isForum(J)Z

    move-result v5

    invoke-static {v4, v5}, Lorg/telegram/messenger/MessageObject;->getTopicId(Lorg/telegram/tgnet/TLRPC$Message;Z)I

    move-result v4

    .line 988
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isFcmMessage()Z

    move-result v5

    if-eqz v5, :cond_29

    .line 989
    iget-boolean v0, v0, Lorg/telegram/messenger/MessageObject;->localChannel:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_14

    :cond_29
    const/4 v0, 0x0

    .line 993
    :goto_14
    iget v5, v7, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    .line 995
    invoke-direct {v7, v10, v2, v3, v4}, Lorg/telegram/messenger/NotificationsController;->getNotifyOverride(Landroid/content/SharedPreferences;JI)I

    move-result v4

    const/4 v1, -0x1

    if-ne v4, v1, :cond_2a

    .line 998
    invoke-virtual {v7, v2, v3, v0}, Lorg/telegram/messenger/NotificationsController;->isGlobalNotificationsEnabled(JLjava/lang/Boolean;)Z

    move-result v0

    move v1, v0

    goto :goto_15

    :cond_2a
    const/4 v0, 0x2

    if-eq v4, v0, :cond_2b

    const/4 v1, 0x1

    goto :goto_15

    :cond_2b
    const/4 v1, 0x0

    .line 1003
    :goto_15
    iget-object v0, v7, Lorg/telegram/messenger/NotificationsController;->pushDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, v2, v3}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_2c

    .line 1004
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v6, 0x1

    add-int/2addr v4, v6

    goto :goto_16

    :cond_2c
    const/4 v6, 0x1

    const/4 v4, 0x1

    .line 1006
    :goto_16
    iget-boolean v8, v7, Lorg/telegram/messenger/NotificationsController;->notifyCheck:Z

    if-eqz v8, :cond_2d

    if-nez v1, :cond_2d

    .line 1007
    iget-object v8, v7, Lorg/telegram/messenger/NotificationsController;->pushDialogsOverrideMention:Landroidx/collection/LongSparseArray;

    invoke-virtual {v8, v2, v3}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    if-eqz v8, :cond_2d

    .line 1008
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eqz v9, :cond_2d

    .line 1010
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v1, 0x1

    :cond_2d
    if-eqz v1, :cond_32

    .line 1015
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->isForum(J)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 1016
    iget v1, v7, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_2e

    const/4 v0, 0x1

    goto :goto_17

    :cond_2e
    const/4 v0, 0x0

    :goto_17
    sub-int/2addr v1, v0

    iput v1, v7, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    if-lez v4, :cond_2f

    const/4 v11, 0x1

    goto :goto_18

    :cond_2f
    const/4 v11, 0x0

    :goto_18
    add-int/2addr v1, v11

    .line 1017
    iput v1, v7, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    goto :goto_19

    :cond_30
    if-eqz v0, :cond_31

    .line 1020
    iget v1, v7, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr v1, v0

    iput v1, v7, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    .line 1022
    :cond_31
    iget v0, v7, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    add-int/2addr v0, v4

    iput v0, v7, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    .line 1024
    :goto_19
    iget-object v0, v7, Lorg/telegram/messenger/NotificationsController;->pushDialogs:Landroidx/collection/LongSparseArray;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1026
    :cond_32
    iget v0, v7, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    if-eq v5, v0, :cond_33

    .line 1027
    iget-object v0, v7, Lorg/telegram/messenger/NotificationsController;->delayedPushMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1028
    iget-boolean v0, v7, Lorg/telegram/messenger/NotificationsController;->notifyCheck:Z

    invoke-direct {v7, v0}, Lorg/telegram/messenger/NotificationsController;->showOrUpdateNotification(Z)V

    .line 1029
    iget-object v0, v7, Lorg/telegram/messenger/NotificationsController;->pushDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->size()I

    move-result v0

    .line 1030
    new-instance v1, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda21;

    invoke-direct {v1, v7, v0}, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/messenger/NotificationsController;I)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_33
    const/4 v0, 0x0

    .line 1035
    iput-boolean v0, v7, Lorg/telegram/messenger/NotificationsController;->notifyCheck:Z

    .line 1036
    iget-boolean v0, v7, Lorg/telegram/messenger/NotificationsController;->showBadgeNumber:Z

    if-eqz v0, :cond_34

    .line 1037
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/NotificationsController;->getTotalAllUnreadCount()I

    move-result v0

    invoke-direct {v7, v0}, Lorg/telegram/messenger/NotificationsController;->setBadge(I)V

    :cond_34
    :goto_1a
    if-eqz p5, :cond_35

    .line 1042
    invoke-virtual/range {p5 .. p5}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_35
    return-void
.end method

.method private synthetic lambda$processReadMessages$13(Ljava/util/ArrayList;)V
    .locals 5

    .line 728
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 729
    iget-object v3, p0, Lorg/telegram/messenger/NotificationsController;->popupMessages:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 731
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->pushMessagesUpdated:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$processReadMessages$14(Lorg/telegram/messenger/support/LongSparseIntArray;Ljava/util/ArrayList;JIIZ)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p5

    move/from16 v4, p6

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    if-eqz v1, :cond_5

    const/4 v9, 0x0

    .line 651
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/support/LongSparseIntArray;->size()I

    move-result v10

    if-ge v9, v10, :cond_5

    .line 652
    invoke-virtual {v1, v9}, Lorg/telegram/messenger/support/LongSparseIntArray;->keyAt(I)J

    move-result-wide v10

    .line 653
    invoke-virtual {v1, v10, v11}, Lorg/telegram/messenger/support/LongSparseIntArray;->get(J)I

    move-result v12

    const/4 v13, 0x0

    .line 654
    :goto_1
    iget-object v14, v0, Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v13, v14, :cond_4

    .line 655
    iget-object v14, v0, Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/messenger/MessageObject;

    .line 656
    iget-object v15, v14, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-boolean v15, v15, Lorg/telegram/tgnet/TLRPC$Message;->from_scheduled:Z

    if-nez v15, :cond_3

    invoke-virtual {v14}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v15

    cmp-long v17, v15, v10

    if-nez v17, :cond_3

    invoke-virtual {v14}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v15

    if-gt v15, v12, :cond_3

    .line 657
    invoke-direct {v0, v14}, Lorg/telegram/messenger/NotificationsController;->isPersonalMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 658
    iget v15, v0, Lorg/telegram/messenger/NotificationsController;->personalCount:I

    sub-int/2addr v15, v8

    iput v15, v0, Lorg/telegram/messenger/NotificationsController;->personalCount:I

    .line 660
    :cond_0
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 662
    iget-object v15, v14, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v15, v15, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move/from16 v17, v9

    iget-wide v8, v15, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    cmp-long v15, v8, v6

    if-eqz v15, :cond_1

    neg-long v8, v8

    goto :goto_2

    :cond_1
    move-wide v8, v6

    .line 667
    :goto_2
    iget-object v15, v0, Lorg/telegram/messenger/NotificationsController;->pushMessagesDict:Landroidx/collection/LongSparseArray;

    invoke-virtual {v15, v8, v9}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/SparseArray;

    if-eqz v15, :cond_2

    .line 669
    invoke-virtual {v14}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    invoke-virtual {v15, v5}, Landroid/util/SparseArray;->remove(I)V

    .line 670
    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-nez v5, :cond_2

    .line 671
    iget-object v5, v0, Lorg/telegram/messenger/NotificationsController;->pushMessagesDict:Landroidx/collection/LongSparseArray;

    invoke-virtual {v5, v8, v9}, Landroidx/collection/LongSparseArray;->remove(J)V

    .line 674
    :cond_2
    iget-object v5, v0, Lorg/telegram/messenger/NotificationsController;->delayedPushMessages:Ljava/util/ArrayList;

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 675
    iget-object v5, v0, Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v13, v13, -0x1

    goto :goto_3

    :cond_3
    move/from16 v17, v9

    :goto_3
    const/4 v5, 0x1

    add-int/2addr v13, v5

    move/from16 v9, v17

    const/4 v8, 0x1

    goto :goto_1

    :cond_4
    move/from16 v17, v9

    add-int/lit8 v9, v17, 0x1

    const/4 v8, 0x1

    goto/16 :goto_0

    :cond_5
    cmp-long v1, p3, v6

    if-eqz v1, :cond_f

    if-nez v3, :cond_6

    if-eqz v4, :cond_f

    :cond_6
    const/4 v1, 0x0

    .line 682
    :goto_4
    iget-object v5, v0, Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_f

    .line 683
    iget-object v5, v0, Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/MessageObject;

    .line 684
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v8

    cmp-long v10, v8, p3

    if-nez v10, :cond_e

    if-eqz v4, :cond_8

    .line 687
    iget-object v8, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    if-gt v8, v4, :cond_a

    :cond_7
    :goto_5
    const/4 v8, 0x1

    goto :goto_6

    :cond_8
    if-nez p7, :cond_9

    .line 692
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v8

    if-le v8, v3, :cond_7

    if-gez v3, :cond_a

    goto :goto_5

    .line 696
    :cond_9
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v8

    if-eq v8, v3, :cond_7

    if-gez v3, :cond_a

    goto :goto_5

    :cond_a
    const/4 v8, 0x0

    :goto_6
    if-eqz v8, :cond_e

    .line 702
    invoke-direct {v0, v5}, Lorg/telegram/messenger/NotificationsController;->isPersonalMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 703
    iget v8, v0, Lorg/telegram/messenger/NotificationsController;->personalCount:I

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    iput v8, v0, Lorg/telegram/messenger/NotificationsController;->personalCount:I

    .line 706
    :cond_b
    iget-object v8, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v8, v8, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    cmp-long v10, v8, v6

    if-eqz v10, :cond_c

    neg-long v8, v8

    goto :goto_7

    :cond_c
    move-wide v8, v6

    .line 711
    :goto_7
    iget-object v10, v0, Lorg/telegram/messenger/NotificationsController;->pushMessagesDict:Landroidx/collection/LongSparseArray;

    invoke-virtual {v10, v8, v9}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/SparseArray;

    if-eqz v10, :cond_d

    .line 713
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->remove(I)V

    .line 714
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v10

    if-nez v10, :cond_d

    .line 715
    iget-object v10, v0, Lorg/telegram/messenger/NotificationsController;->pushMessagesDict:Landroidx/collection/LongSparseArray;

    invoke-virtual {v10, v8, v9}, Landroidx/collection/LongSparseArray;->remove(J)V

    .line 718
    :cond_d
    iget-object v8, v0, Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 719
    iget-object v8, v0, Lorg/telegram/messenger/NotificationsController;->delayedPushMessages:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 720
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    :cond_e
    const/4 v5, 0x1

    add-int/2addr v1, v5

    goto :goto_4

    .line 726
    :cond_f
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_10

    .line 727
    new-instance v1, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda32;

    invoke-direct {v1, v0, v2}, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda32;-><init>(Lorg/telegram/messenger/NotificationsController;Ljava/util/ArrayList;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_10
    return-void
.end method

.method private synthetic lambda$removeDeletedHisoryFromNotifications$10(Ljava/util/ArrayList;)V
    .locals 5

    .line 621
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 622
    iget-object v3, p0, Lorg/telegram/messenger/NotificationsController;->popupMessages:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 624
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->pushMessagesUpdated:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$removeDeletedHisoryFromNotifications$11(I)V
    .locals 6

    .line 636
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->notificationsCountUpdated:I

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget v4, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 637
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->dialogsUnreadCounterChanged:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v5

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$removeDeletedHisoryFromNotifications$12(Lorg/telegram/messenger/support/LongSparseIntArray;Ljava/util/ArrayList;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 566
    iget v3, v0, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    .line 567
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/AccountInstance;->getNotificationsSettings()Landroid/content/SharedPreferences;

    const/4 v4, 0x0

    .line 575
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    .line 569
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/support/LongSparseIntArray;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ge v6, v7, :cond_c

    .line 570
    invoke-virtual {v1, v6}, Lorg/telegram/messenger/support/LongSparseIntArray;->keyAt(I)J

    move-result-wide v9

    neg-long v11, v9

    .line 572
    invoke-virtual {v1, v9, v10}, Lorg/telegram/messenger/support/LongSparseIntArray;->get(J)I

    move-result v7

    int-to-long v9, v7

    .line 573
    iget-object v7, v0, Lorg/telegram/messenger/NotificationsController;->pushDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v7, v11, v12}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    if-nez v7, :cond_0

    move-object v7, v5

    :cond_0
    move-object v14, v7

    const/4 v13, 0x0

    .line 579
    :goto_1
    iget-object v15, v0, Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v13, v15, :cond_5

    .line 580
    iget-object v15, v0, Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;

    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/telegram/messenger/MessageObject;

    .line 581
    invoke-virtual {v15}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v16

    cmp-long v18, v16, v11

    if-nez v18, :cond_3

    invoke-virtual {v15}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    move-object/from16 v17, v5

    int-to-long v4, v4

    cmp-long v18, v4, v9

    if-gtz v18, :cond_4

    .line 582
    iget-object v4, v0, Lorg/telegram/messenger/NotificationsController;->pushMessagesDict:Landroidx/collection/LongSparseArray;

    invoke-virtual {v4, v11, v12}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    if-eqz v4, :cond_1

    .line 584
    invoke-virtual {v15}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->remove(I)V

    .line 585
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 586
    iget-object v4, v0, Lorg/telegram/messenger/NotificationsController;->pushMessagesDict:Landroidx/collection/LongSparseArray;

    invoke-virtual {v4, v11, v12}, Landroidx/collection/LongSparseArray;->remove(J)V

    .line 589
    :cond_1
    iget-object v4, v0, Lorg/telegram/messenger/NotificationsController;->delayedPushMessages:Ljava/util/ArrayList;

    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 590
    iget-object v4, v0, Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;

    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, -0x1

    .line 592
    invoke-direct {v0, v15}, Lorg/telegram/messenger/NotificationsController;->isPersonalMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 593
    iget v4, v0, Lorg/telegram/messenger/NotificationsController;->personalCount:I

    sub-int/2addr v4, v8

    iput v4, v0, Lorg/telegram/messenger/NotificationsController;->personalCount:I

    .line 595
    :cond_2
    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 596
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    goto :goto_2

    :cond_3
    move-object/from16 v17, v5

    :cond_4
    :goto_2
    add-int/2addr v13, v8

    move-object/from16 v5, v17

    const/4 v4, 0x0

    goto :goto_1

    :cond_5
    move-object/from16 v17, v5

    .line 600
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-gtz v4, :cond_6

    .line 602
    iget-object v4, v0, Lorg/telegram/messenger/NotificationsController;->smartNotificationsDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v4, v11, v12}, Landroidx/collection/LongSparseArray;->remove(J)V

    move-object/from16 v14, v17

    .line 604
    :cond_6
    invoke-virtual {v14, v7}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 605
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-virtual {v4, v11, v12}, Lorg/telegram/messenger/MessagesController;->isForum(J)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 606
    iget v4, v0, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lez v5, :cond_7

    const/4 v5, 0x1

    goto :goto_3

    :cond_7
    const/4 v5, 0x0

    :goto_3
    sub-int/2addr v4, v5

    iput v4, v0, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    .line 607
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lez v5, :cond_8

    goto :goto_4

    :cond_8
    const/4 v8, 0x0

    :goto_4
    add-int/2addr v4, v8

    iput v4, v0, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    goto :goto_5

    .line 609
    :cond_9
    iget v4, v0, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v0, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    .line 610
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v0, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    .line 612
    :goto_5
    iget-object v4, v0, Lorg/telegram/messenger/NotificationsController;->pushDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v4, v11, v12, v14}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 614
    :cond_a
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_b

    .line 615
    iget-object v4, v0, Lorg/telegram/messenger/NotificationsController;->pushDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v4, v11, v12}, Landroidx/collection/LongSparseArray;->remove(J)V

    .line 616
    iget-object v4, v0, Lorg/telegram/messenger/NotificationsController;->pushDialogsOverrideMention:Landroidx/collection/LongSparseArray;

    invoke-virtual {v4, v11, v12}, Landroidx/collection/LongSparseArray;->remove(J)V

    :cond_b
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v5, v17

    const/4 v4, 0x0

    goto/16 :goto_0

    .line 619
    :cond_c
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 620
    new-instance v1, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda30;

    invoke-direct {v1, v0, v2}, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda30;-><init>(Lorg/telegram/messenger/NotificationsController;Ljava/util/ArrayList;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 627
    :cond_d
    iget v1, v0, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    if-eq v3, v1, :cond_10

    .line 628
    iget-boolean v1, v0, Lorg/telegram/messenger/NotificationsController;->notifyCheck:Z

    if-nez v1, :cond_e

    .line 629
    iget-object v1, v0, Lorg/telegram/messenger/NotificationsController;->delayedPushMessages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 630
    iget-boolean v1, v0, Lorg/telegram/messenger/NotificationsController;->notifyCheck:Z

    invoke-direct {v0, v1}, Lorg/telegram/messenger/NotificationsController;->showOrUpdateNotification(Z)V

    goto :goto_7

    .line 632
    :cond_e
    iget v1, v0, Lorg/telegram/messenger/NotificationsController;->lastOnlineFromOtherDevice:I

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v2

    if-le v1, v2, :cond_f

    goto :goto_6

    :cond_f
    const/4 v8, 0x0

    :goto_6
    invoke-direct {v0, v8}, Lorg/telegram/messenger/NotificationsController;->scheduleNotificationDelay(Z)V

    .line 634
    :goto_7
    iget-object v1, v0, Lorg/telegram/messenger/NotificationsController;->pushDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1}, Landroidx/collection/LongSparseArray;->size()I

    move-result v1

    .line 635
    new-instance v2, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda20;

    invoke-direct {v2, v0, v1}, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/messenger/NotificationsController;I)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_10
    const/4 v1, 0x0

    .line 640
    iput-boolean v1, v0, Lorg/telegram/messenger/NotificationsController;->notifyCheck:Z

    .line 641
    iget-boolean v1, v0, Lorg/telegram/messenger/NotificationsController;->showBadgeNumber:Z

    if-eqz v1, :cond_11

    .line 642
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/NotificationsController;->getTotalAllUnreadCount()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/telegram/messenger/NotificationsController;->setBadge(I)V

    :cond_11
    return-void
.end method

.method private synthetic lambda$removeDeletedMessagesFromNotifications$7(Ljava/util/ArrayList;)V
    .locals 5

    .line 537
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 538
    iget-object v3, p0, Lorg/telegram/messenger/NotificationsController;->popupMessages:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 540
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->pushMessagesUpdated:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$removeDeletedMessagesFromNotifications$8(I)V
    .locals 6

    .line 552
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->notificationsCountUpdated:I

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget v4, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 553
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->dialogsUnreadCounterChanged:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v5

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$removeDeletedMessagesFromNotifications$9(Landroidx/collection/LongSparseArray;ZLjava/util/ArrayList;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 481
    iget v3, v0, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    .line 482
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/AccountInstance;->getNotificationsSettings()Landroid/content/SharedPreferences;

    const/4 v4, 0x0

    .line 500
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    .line 483
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroidx/collection/LongSparseArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_d

    .line 484
    invoke-virtual {v1, v6}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v9

    .line 485
    iget-object v7, v0, Lorg/telegram/messenger/NotificationsController;->pushMessagesDict:Landroidx/collection/LongSparseArray;

    invoke-virtual {v7, v9, v10}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/SparseArray;

    if-nez v7, :cond_0

    goto/16 :goto_9

    .line 489
    :cond_0
    invoke-virtual {v1, v9, v10}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    .line 490
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v12, :cond_b

    .line 491
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 492
    invoke-virtual {v7, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/telegram/messenger/MessageObject;

    if-eqz v15, :cond_a

    if-eqz p2, :cond_1

    .line 494
    iget-boolean v4, v15, Lorg/telegram/messenger/MessageObject;->isReactionPush:Z

    if-nez v4, :cond_1

    goto/16 :goto_7

    :cond_1
    move-wide/from16 v16, v9

    .line 497
    invoke-virtual {v15}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v8

    .line 498
    iget-object v10, v0, Lorg/telegram/messenger/NotificationsController;->pushDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v10, v8, v9}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    if-nez v10, :cond_2

    move-object v10, v5

    .line 502
    :cond_2
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v18

    const/4 v4, 0x1

    add-int/lit8 v18, v18, -0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    .line 503
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v19

    if-gtz v19, :cond_3

    .line 505
    iget-object v4, v0, Lorg/telegram/messenger/NotificationsController;->smartNotificationsDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v4, v8, v9}, Landroidx/collection/LongSparseArray;->remove(J)V

    move-object v4, v5

    goto :goto_2

    :cond_3
    move-object/from16 v4, v18

    .line 507
    :goto_2
    invoke-virtual {v4, v10}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_7

    .line 508
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Lorg/telegram/messenger/MessagesController;->isForum(J)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 509
    iget v1, v0, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-lez v10, :cond_4

    const/4 v10, 0x1

    goto :goto_3

    :cond_4
    const/4 v10, 0x0

    :goto_3
    sub-int/2addr v1, v10

    iput v1, v0, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    .line 510
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-lez v10, :cond_5

    const/4 v10, 0x1

    goto :goto_4

    :cond_5
    const/4 v10, 0x0

    :goto_4
    add-int/2addr v1, v10

    iput v1, v0, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    goto :goto_5

    .line 512
    :cond_6
    iget v1, v0, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    sub-int/2addr v1, v10

    iput v1, v0, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    .line 513
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v10

    add-int/2addr v1, v10

    iput v1, v0, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    .line 515
    :goto_5
    iget-object v1, v0, Lorg/telegram/messenger/NotificationsController;->pushDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1, v8, v9, v4}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 517
    :cond_7
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_8

    .line 518
    iget-object v1, v0, Lorg/telegram/messenger/NotificationsController;->pushDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1, v8, v9}, Landroidx/collection/LongSparseArray;->remove(J)V

    .line 519
    iget-object v1, v0, Lorg/telegram/messenger/NotificationsController;->pushDialogsOverrideMention:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1, v8, v9}, Landroidx/collection/LongSparseArray;->remove(J)V

    .line 522
    :cond_8
    invoke-virtual {v7, v14}, Landroid/util/SparseArray;->remove(I)V

    .line 523
    iget-object v1, v0, Lorg/telegram/messenger/NotificationsController;->delayedPushMessages:Ljava/util/ArrayList;

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 524
    iget-object v1, v0, Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 525
    invoke-direct {v0, v15}, Lorg/telegram/messenger/NotificationsController;->isPersonalMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 526
    iget v1, v0, Lorg/telegram/messenger/NotificationsController;->personalCount:I

    const/4 v4, 0x1

    sub-int/2addr v1, v4

    iput v1, v0, Lorg/telegram/messenger/NotificationsController;->personalCount:I

    goto :goto_6

    :cond_9
    const/4 v4, 0x1

    .line 528
    :goto_6
    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_a
    :goto_7
    move-wide/from16 v16, v9

    const/4 v4, 0x1

    :goto_8
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, p1

    move-wide/from16 v9, v16

    const/4 v4, 0x0

    goto/16 :goto_1

    :cond_b
    move-wide/from16 v16, v9

    .line 531
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_c

    .line 532
    iget-object v1, v0, Lorg/telegram/messenger/NotificationsController;->pushMessagesDict:Landroidx/collection/LongSparseArray;

    move-wide/from16 v7, v16

    invoke-virtual {v1, v7, v8}, Landroidx/collection/LongSparseArray;->remove(J)V

    :cond_c
    :goto_9
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, p1

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_d
    const/4 v4, 0x1

    .line 535
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_e

    .line 536
    new-instance v1, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda29;

    invoke-direct {v1, v0, v2}, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda29;-><init>(Lorg/telegram/messenger/NotificationsController;Ljava/util/ArrayList;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 543
    :cond_e
    iget v1, v0, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    if-eq v3, v1, :cond_11

    .line 544
    iget-boolean v1, v0, Lorg/telegram/messenger/NotificationsController;->notifyCheck:Z

    if-nez v1, :cond_f

    .line 545
    iget-object v1, v0, Lorg/telegram/messenger/NotificationsController;->delayedPushMessages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 546
    iget-boolean v1, v0, Lorg/telegram/messenger/NotificationsController;->notifyCheck:Z

    invoke-direct {v0, v1}, Lorg/telegram/messenger/NotificationsController;->showOrUpdateNotification(Z)V

    goto :goto_b

    .line 548
    :cond_f
    iget v1, v0, Lorg/telegram/messenger/NotificationsController;->lastOnlineFromOtherDevice:I

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v2

    if-le v1, v2, :cond_10

    const/4 v8, 0x1

    goto :goto_a

    :cond_10
    const/4 v8, 0x0

    :goto_a
    invoke-direct {v0, v8}, Lorg/telegram/messenger/NotificationsController;->scheduleNotificationDelay(Z)V

    .line 550
    :goto_b
    iget-object v1, v0, Lorg/telegram/messenger/NotificationsController;->pushDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1}, Landroidx/collection/LongSparseArray;->size()I

    move-result v1

    .line 551
    new-instance v2, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda16;

    invoke-direct {v2, v0, v1}, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/messenger/NotificationsController;I)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_11
    const/4 v1, 0x0

    .line 556
    iput-boolean v1, v0, Lorg/telegram/messenger/NotificationsController;->notifyCheck:Z

    .line 557
    iget-boolean v1, v0, Lorg/telegram/messenger/NotificationsController;->showBadgeNumber:Z

    if-eqz v1, :cond_12

    .line 558
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/NotificationsController;->getTotalAllUnreadCount()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/telegram/messenger/NotificationsController;->setBadge(I)V

    :cond_12
    return-void
.end method

.method private synthetic lambda$repeatNotificationMaybe$30()V
    .locals 2

    .line 2818
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-lt v0, v1, :cond_0

    const/16 v1, 0x16

    if-gt v0, v1, :cond_0

    .line 2820
    sget-object v0, Lorg/telegram/messenger/NotificationsController;->notificationManager:Landroidx/core/app/NotificationManagerCompat;

    iget v1, p0, Lorg/telegram/messenger/NotificationsController;->notificationId:I

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationManagerCompat;->cancel(I)V

    const/4 v0, 0x1

    .line 2821
    invoke-direct {p0, v0}, Lorg/telegram/messenger/NotificationsController;->showOrUpdateNotification(Z)V

    goto :goto_0

    .line 2823
    :cond_0
    invoke-direct {p0}, Lorg/telegram/messenger/NotificationsController;->scheduleNotificationRepeat()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$setLastOnlineFromOtherDevice$4(I)V
    .locals 2

    .line 424
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "set last online from other device = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 427
    :cond_0
    iput p1, p0, Lorg/telegram/messenger/NotificationsController;->lastOnlineFromOtherDevice:I

    return-void
.end method

.method private synthetic lambda$setOpenedDialogId$2(JI)V
    .locals 0

    .line 407
    iput-wide p1, p0, Lorg/telegram/messenger/NotificationsController;->openedDialogId:J

    .line 408
    iput p3, p0, Lorg/telegram/messenger/NotificationsController;->openedTopicId:I

    return-void
.end method

.method private synthetic lambda$setOpenedInBubble$3(ZJ)V
    .locals 0

    if-eqz p1, :cond_0

    .line 415
    iget-object p1, p0, Lorg/telegram/messenger/NotificationsController;->openedInBubbleDialogs:Ljava/util/HashSet;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 417
    :cond_0
    iget-object p1, p0, Lorg/telegram/messenger/NotificationsController;->openedInBubbleDialogs:Ljava/util/HashSet;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method private static synthetic lambda$showExtraNotifications$34(Landroid/net/Uri;Ljava/io/File;)V
    .locals 2

    .line 4507
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    if-eqz p1, :cond_0

    .line 4509
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method private synthetic lambda$showNotifications$25()V
    .locals 1

    const/4 v0, 0x0

    .line 2713
    invoke-direct {p0, v0}, Lorg/telegram/messenger/NotificationsController;->showOrUpdateNotification(Z)V

    return-void
.end method

.method private synthetic lambda$updateBadge$24()V
    .locals 1

    .line 1424
    invoke-direct {p0}, Lorg/telegram/messenger/NotificationsController;->getTotalAllUnreadCount()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/telegram/messenger/NotificationsController;->setBadge(I)V

    return-void
.end method

.method private static synthetic lambda$updateServerNotificationsSettings$39(Ljava/lang/Runnable;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    if-nez p3, :cond_0

    if-eqz p0, :cond_1

    .line 4938
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 4942
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    :goto_0
    return-void
.end method

.method private static synthetic lambda$updateServerNotificationsSettings$40(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    return-void
.end method

.method private loadRoundAvatar(Ljava/io/File;Landroidx/core/app/Person$Builder;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 4738
    :try_start_0
    invoke-static {p1}, Landroid/graphics/ImageDecoder;->createSource(Ljava/io/File;)Landroid/graphics/ImageDecoder$Source;

    move-result-object p1

    sget-object v0, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda0;->INSTANCE:Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda0;

    invoke-static {p1, v0}, Landroid/graphics/ImageDecoder;->decodeBitmap(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 4751
    invoke-static {p1}, Landroidx/core/graphics/drawable/IconCompat;->createWithBitmap(Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p1

    .line 4752
    invoke-virtual {p2, p1}, Landroidx/core/app/Person$Builder;->setIcon(Landroidx/core/graphics/drawable/IconCompat;)Landroidx/core/app/Person$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method private playInChatSound()V
    .locals 4

    .line 2748
    iget-boolean v0, p0, Lorg/telegram/messenger/NotificationsController;->inChatSoundEnabled:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->isRecordingAudio()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2752
    :cond_0
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/NotificationsController;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_1

    return-void

    :catch_0
    move-exception v0

    .line 2756
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2760
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getNotificationsSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2761
    iget-wide v1, p0, Lorg/telegram/messenger/NotificationsController;->openedDialogId:J

    iget v3, p0, Lorg/telegram/messenger/NotificationsController;->openedTopicId:I

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/telegram/messenger/NotificationsController;->getNotifyOverride(Landroid/content/SharedPreferences;JI)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    return-void

    .line 2765
    :cond_2
    sget-object v0, Lorg/telegram/messenger/NotificationsController;->notificationsQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/messenger/NotificationsController;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 2798
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private replaceSpoilers(Lorg/telegram/messenger/MessageObject;)Ljava/lang/String;
    .locals 8

    .line 2006
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 2007
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    goto :goto_2

    .line 2010
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2011
    :goto_0
    iget-object v3, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 2012
    iget-object v3, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageEntitySpoiler;

    if-eqz v3, :cond_1

    .line 2013
    iget-object v3, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_messageEntitySpoiler;

    const/4 v4, 0x0

    .line 2014
    :goto_1
    iget v5, v3, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    if-ge v4, v5, :cond_1

    .line 2015
    iget v5, v3, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    add-int/2addr v5, v4

    iget-object v6, p0, Lorg/telegram/messenger/NotificationsController;->spoilerChars:[C

    array-length v7, v6

    rem-int v7, v4, v7

    aget-char v6, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2019
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private resetNotificationSound(Landroidx/core/app/NotificationCompat$Builder;JILjava/lang/String;[JILandroid/net/Uri;IZZZI)V
    .locals 14

    move-object v13, p0

    move/from16 v12, p13

    .line 4005
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    if-eqz v0, :cond_5

    if-eqz p8, :cond_5

    .line 4006
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p8 .. p8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 4007
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/AccountInstance;->getNotificationsSettings()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 4008
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 4010
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4011
    sget v2, Lorg/telegram/messenger/R$string;->DefaultRingtone:I

    const-string v3, "DefaultRingtone"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    if-eqz p10, :cond_4

    const/4 v4, 0x2

    if-ne v12, v4, :cond_0

    const-string v5, "ChannelSound"

    .line 4014
    invoke-interface {v1, v5, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_0
    if-nez v12, :cond_1

    const-string v5, "GroupSound"

    .line 4016
    invoke-interface {v1, v5, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_1
    const-string v5, "GlobalSound"

    .line 4018
    invoke-interface {v1, v5, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_0
    if-ne v12, v4, :cond_2

    const-string v2, "ChannelSoundPath"

    .line 4021
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    :cond_2
    if-nez v12, :cond_3

    const-string v2, "GroupSoundPath"

    .line 4023
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    :cond_3
    const-string v2, "GlobalSoundPath"

    .line 4025
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4027
    :goto_1
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationsController()Lorg/telegram/messenger/NotificationsController;

    move-result-object v0

    invoke-virtual {v0, v12, v3}, Lorg/telegram/messenger/NotificationsController;->deleteNotificationChannelGlobalInternal(II)V

    move-wide/from16 v4, p2

    move/from16 v6, p4

    goto :goto_2

    .line 4029
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sound_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p4}, Lorg/telegram/messenger/NotificationsController;->getSharedPrefKey(JI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4030
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sound_path_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p4}, Lorg/telegram/messenger/NotificationsController;->getSharedPrefKey(JI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-wide/from16 v4, p2

    move/from16 v6, p4

    .line 4031
    invoke-direct {p0, v4, v5, v6, v3}, Lorg/telegram/messenger/NotificationsController;->deleteNotificationChannelInternal(JII)V

    .line 4033
    :goto_2
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4034
    sget-object v7, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    move-object v0, p0

    move-wide/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move/from16 v8, p9

    move/from16 v9, p10

    move/from16 v10, p11

    move/from16 v11, p12

    move/from16 v12, p13

    .line 4035
    invoke-direct/range {v0 .. v12}, Lorg/telegram/messenger/NotificationsController;->validateChannelId(JILjava/lang/String;[JILandroid/net/Uri;IZZZI)Ljava/lang/String;

    move-result-object v0

    move-object v1, p1

    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setChannelId(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    .line 4036
    sget-object v0, Lorg/telegram/messenger/NotificationsController;->notificationManager:Landroidx/core/app/NotificationManagerCompat;

    iget v2, v13, Lorg/telegram/messenger/NotificationsController;->notificationId:I

    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    :cond_5
    return-void
.end method

.method private scheduleNotificationDelay(Z)V
    .locals 4

    .line 2804
    :try_start_0
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    .line 2805
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delay notification start, onlineReason = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 2807
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController;->notificationDelayWakelock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 2808
    sget-object v0, Lorg/telegram/messenger/NotificationsController;->notificationsQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v1, p0, Lorg/telegram/messenger/NotificationsController;->notificationDelayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    .line 2809
    sget-object v0, Lorg/telegram/messenger/NotificationsController;->notificationsQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v1, p0, Lorg/telegram/messenger/NotificationsController;->notificationDelayRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    const/16 p1, 0xbb8

    goto :goto_0

    :cond_1
    const/16 p1, 0x3e8

    :goto_0
    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 2811
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2812
    iget-boolean p1, p0, Lorg/telegram/messenger/NotificationsController;->notifyCheck:Z

    invoke-direct {p0, p1}, Lorg/telegram/messenger/NotificationsController;->showOrUpdateNotification(Z)V

    :goto_1
    return-void
.end method

.method private scheduleNotificationRepeat()V
    .locals 9

    .line 2678
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v2, Lorg/telegram/messenger/NotificationRepeat;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "currentAccount"

    .line 2679
    iget v2, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2680
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x2000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 2681
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/AccountInstance;->getNotificationsSettings()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "repeat_messages"

    const/16 v3, 0x3c

    .line 2682
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    .line 2683
    iget v2, p0, Lorg/telegram/messenger/NotificationsController;->personalCount:I

    if-lez v2, :cond_0

    .line 2684
    iget-object v2, p0, Lorg/telegram/messenger/NotificationsController;->alarmManager:Landroid/app/AlarmManager;

    const/4 v4, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v7, v1

    add-long/2addr v5, v7

    invoke-virtual {v2, v4, v5, v6, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 2686
    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/NotificationsController;->alarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2689
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private setBadge(I)V
    .locals 1

    .line 1428
    iget v0, p0, Lorg/telegram/messenger/NotificationsController;->lastBadgeCount:I

    if-ne v0, p1, :cond_0

    return-void

    .line 1431
    :cond_0
    iput p1, p0, Lorg/telegram/messenger/NotificationsController;->lastBadgeCount:I

    .line 1432
    invoke-static {p1}, Lorg/telegram/messenger/NotificationBadge;->applyCount(I)Z

    return-void
.end method

.method private setNotificationChannel(Landroid/app/Notification;Landroidx/core/app/NotificationCompat$Builder;Z)V
    .locals 0

    if-eqz p3, :cond_0

    .line 3998
    sget-object p1, Lorg/telegram/messenger/NotificationsController;->OTHER_NOTIFICATIONS_CHANNEL:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroidx/core/app/NotificationCompat$Builder;->setChannelId(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_0

    .line 4000
    :cond_0
    invoke-virtual {p1}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/core/app/NotificationCompat$Builder;->setChannelId(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    :goto_0
    return-void
.end method

.method private showExtraNotifications(Landroidx/core/app/NotificationCompat$Builder;Ljava/lang/String;JILjava/lang/String;[JILandroid/net/Uri;IZZZI)V
    .locals 73

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    .line 4042
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x1a

    if-lt v0, v13, :cond_0

    move-object/from16 v1, p0

    move-wide/from16 v2, p3

    move/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v8, p9

    move/from16 v9, p10

    move/from16 v10, p11

    move/from16 v11, p12

    move/from16 v12, p13

    move/from16 v13, p14

    .line 4043
    invoke-direct/range {v1 .. v13}, Lorg/telegram/messenger/NotificationsController;->validateChannelId(JILjava/lang/String;[JILandroid/net/Uri;IZZZI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Landroidx/core/app/NotificationCompat$Builder;->setChannelId(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    .line 4045
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v13

    const/16 v1, 0x12

    if-ge v0, v1, :cond_2

    .line 4047
    sget-object v0, Lorg/telegram/messenger/NotificationsController;->notificationManager:Landroidx/core/app/NotificationManagerCompat;

    iget v1, v15, Lorg/telegram/messenger/NotificationsController;->notificationId:I

    invoke-virtual {v0, v1, v13}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    .line 4048
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "show summary notification by SDK check"

    .line 4049
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_1
    return-void

    .line 4054
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getNotificationsSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 4056
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 4057
    new-instance v11, Landroidx/collection/LongSparseArray;

    invoke-direct {v11}, Landroidx/collection/LongSparseArray;-><init>()V

    const/4 v10, 0x0

    const/4 v1, 0x0

    .line 4058
    :goto_0
    iget-object v2, v15, Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v9, 0x0

    if-ge v1, v2, :cond_5

    .line 4059
    iget-object v2, v15, Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    .line 4060
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v3

    .line 4061
    iget-object v5, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    invoke-virtual {v6, v2}, Lorg/telegram/messenger/MessagesController;->isForum(Lorg/telegram/messenger/MessageObject;)Z

    move-result v6

    invoke-static {v5, v6}, Lorg/telegram/messenger/MessageObject;->getTopicId(Lorg/telegram/tgnet/TLRPC$Message;Z)I

    move-result v5

    .line 4062
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dismissDate"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 4063
    iget-object v7, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    if-gt v7, v6, :cond_3

    goto :goto_1

    .line 4067
    :cond_3
    invoke-virtual {v11, v3, v4}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    if-nez v6, :cond_4

    .line 4069
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 4070
    invoke-virtual {v11, v3, v4, v6}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 4071
    new-instance v7, Lorg/telegram/messenger/NotificationsController$DialogKey;

    invoke-direct {v7, v3, v4, v5, v9}, Lorg/telegram/messenger/NotificationsController$DialogKey;-><init>(JILorg/telegram/messenger/NotificationsController$1;)V

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4073
    :cond_4
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4076
    :cond_5
    new-instance v8, Landroidx/collection/LongSparseArray;

    invoke-direct {v8}, Landroidx/collection/LongSparseArray;-><init>()V

    const/4 v0, 0x0

    .line 4077
    :goto_2
    iget-object v1, v15, Lorg/telegram/messenger/NotificationsController;->wearNotificationsIds:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1}, Landroidx/collection/LongSparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 4078
    iget-object v1, v15, Lorg/telegram/messenger/NotificationsController;->wearNotificationsIds:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1, v0}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v1

    iget-object v3, v15, Lorg/telegram/messenger/NotificationsController;->wearNotificationsIds:Landroidx/collection/LongSparseArray;

    invoke-virtual {v3, v0}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v8, v1, v2, v3}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 4080
    :cond_6
    iget-object v0, v15, Lorg/telegram/messenger/NotificationsController;->wearNotificationsIds:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->clear()V

    .line 4114
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 4116
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1b

    const/4 v4, 0x1

    if-le v0, v6, :cond_8

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v4, :cond_7

    goto :goto_3

    :cond_7
    const/4 v5, 0x0

    goto :goto_4

    :cond_8
    :goto_3
    const/4 v5, 0x1

    :goto_4
    const/16 v2, 0x1a

    if-eqz v5, :cond_9

    if-lt v0, v2, :cond_9

    .line 4118
    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->checkOtherNotificationsChannel()V

    .line 4121
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v2

    .line 4122
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->needShowPasscode()Z

    move-result v0

    if-nez v0, :cond_b

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->isWaitingForPasscodeEnter:Z

    if-eqz v0, :cond_a

    goto :goto_5

    :cond_a
    const/16 v22, 0x0

    goto :goto_6

    :cond_b
    :goto_5
    const/16 v22, 0x1

    .line 4123
    :goto_6
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_c

    const/16 v23, 0x1

    goto :goto_7

    :cond_c
    const/16 v23, 0x0

    :goto_7
    const/4 v1, 0x7

    .line 4126
    new-instance v6, Landroidx/collection/LongSparseArray;

    invoke-direct {v6}, Landroidx/collection/LongSparseArray;-><init>()V

    .line 4127
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v4, 0x0

    :goto_8
    if-ge v4, v9, :cond_7c

    .line 4128
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v1, :cond_d

    goto/16 :goto_4b

    .line 4131
    :cond_d
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/NotificationsController$DialogKey;

    move-object/from16 v20, v12

    move-object/from16 v19, v13

    .line 4132
    iget-wide v12, v0, Lorg/telegram/messenger/NotificationsController$DialogKey;->dialogId:J

    .line 4133
    iget v10, v0, Lorg/telegram/messenger/NotificationsController$DialogKey;->topicId:I

    .line 4134
    invoke-virtual {v11, v12, v13}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/ArrayList;

    move/from16 v26, v4

    const/4 v4, 0x0

    .line 4135
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    .line 4137
    invoke-virtual {v8, v12, v13}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    move-object/from16 v27, v7

    const/16 v7, 0x20

    if-nez v0, :cond_e

    long-to-int v0, v12

    move/from16 v29, v4

    move/from16 v28, v5

    shr-long v4, v12, v7

    long-to-int v5, v4

    add-int/2addr v0, v5

    .line 4139
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_9

    :cond_e
    move/from16 v29, v4

    move/from16 v28, v5

    .line 4141
    invoke-virtual {v8, v12, v13}, Landroidx/collection/LongSparseArray;->remove(J)V

    :goto_9
    move-object v4, v0

    const/4 v5, 0x0

    .line 4144
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lorg/telegram/messenger/MessageObject;

    move-object/from16 v31, v8

    const/4 v0, 0x0

    const/4 v7, 0x0

    .line 4146
    :goto_a
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v0, v8, :cond_10

    .line 4147
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/messenger/MessageObject;

    iget-object v8, v8, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    if-ge v7, v8, :cond_f

    .line 4148
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/messenger/MessageObject;

    iget-object v7, v7, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 4161
    :cond_10
    invoke-static {v12, v13}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v0

    const-wide/32 v32, 0xbdb28

    const-wide/16 v34, 0x0

    if-nez v0, :cond_22

    cmp-long v0, v12, v32

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    goto :goto_b

    :cond_11
    const/4 v0, 0x0

    .line 4163
    :goto_b
    invoke-static {v12, v13}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v8

    if-eqz v8, :cond_18

    .line 4164
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    move/from16 v36, v9

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v8

    if-nez v8, :cond_13

    .line 4166
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isFcmMessage()Z

    move-result v9

    if-eqz v9, :cond_12

    .line 4167
    iget-object v9, v5, Lorg/telegram/messenger/MessageObject;->localName:Ljava/lang/String;

    move/from16 v38, v7

    move-object/from16 v39, v8

    goto :goto_c

    .line 4169
    :cond_12
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_1a

    .line 4170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "not found user to show dialog notification "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->w(Ljava/lang/String;)V

    goto/16 :goto_f

    .line 4175
    :cond_13
    invoke-static {v8}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v37, v9

    .line 4176
    iget-object v9, v8, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v9, :cond_14

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v9, :cond_14

    move/from16 v38, v7

    move-object/from16 v39, v8

    iget-wide v7, v9, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    cmp-long v40, v7, v34

    if-eqz v40, :cond_15

    iget v7, v9, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    if-eqz v7, :cond_15

    move-object v7, v9

    move-object/from16 v9, v37

    goto :goto_d

    :cond_14
    move/from16 v38, v7

    move-object/from16 v39, v8

    :cond_15
    move-object/from16 v9, v37

    :goto_c
    const/4 v7, 0x0

    .line 4180
    :goto_d
    invoke-static {v12, v13}, Lorg/telegram/messenger/UserObject;->isReplyUser(J)Z

    move-result v8

    if-eqz v8, :cond_16

    .line 4181
    sget v8, Lorg/telegram/messenger/R$string;->RepliesTitle:I

    const-string v9, "RepliesTitle"

    invoke-static {v9, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    goto :goto_e

    :cond_16
    cmp-long v8, v12, v2

    if-nez v8, :cond_17

    .line 4183
    sget v8, Lorg/telegram/messenger/R$string;->MessageScheduledReminderNotification:I

    const-string v9, "MessageScheduledReminderNotification"

    invoke-static {v9, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    :cond_17
    :goto_e
    move-wide/from16 v42, v2

    move-object/from16 v40, v4

    move-object/from16 v41, v5

    move-object/from16 v8, v39

    const/16 v37, 0x0

    const/16 v39, 0x0

    move-object v3, v1

    move-object v1, v9

    const/4 v9, 0x0

    goto/16 :goto_15

    :cond_18
    move/from16 v38, v7

    move/from16 v36, v9

    .line 4186
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    neg-long v8, v12

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v7

    if-nez v7, :cond_1b

    .line 4189
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isFcmMessage()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 4190
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isSupergroup()Z

    move-result v0

    .line 4191
    iget-object v9, v5, Lorg/telegram/messenger/MessageObject;->localName:Ljava/lang/String;

    .line 4192
    iget-boolean v8, v5, Lorg/telegram/messenger/MessageObject;->localChannel:Z

    move/from16 v37, v0

    move-wide/from16 v42, v2

    move-object/from16 v40, v4

    move-object/from16 v41, v5

    move/from16 v39, v8

    const/4 v0, 0x0

    const/4 v8, 0x0

    move-object v3, v1

    move-object v1, v9

    move-object v9, v7

    const/4 v7, 0x0

    goto/16 :goto_15

    .line 4194
    :cond_19
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_1a

    .line 4195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "not found chat to show dialog notification "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->w(Ljava/lang/String;)V

    :cond_1a
    :goto_f
    move-wide/from16 v24, v2

    move-object/from16 v67, v6

    move-object/from16 v35, v11

    move-object v14, v15

    move-object/from16 v71, v19

    move/from16 v30, v26

    move-object/from16 v15, v27

    move/from16 v26, v28

    move-object/from16 v27, v31

    move/from16 v31, v36

    goto/16 :goto_14

    .line 4200
    :cond_1b
    iget-boolean v8, v7, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    .line 4201
    invoke-static {v7}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v9

    if-eqz v9, :cond_1c

    iget-boolean v9, v7, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v9, :cond_1c

    move/from16 v37, v8

    const/4 v9, 0x1

    goto :goto_10

    :cond_1c
    move/from16 v37, v8

    const/4 v9, 0x0

    .line 4202
    :goto_10
    iget-object v8, v7, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move/from16 v39, v9

    .line 4203
    iget-object v9, v7, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    if-eqz v9, :cond_1d

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v9, :cond_1d

    move-object/from16 v40, v4

    move-object/from16 v41, v5

    iget-wide v4, v9, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    cmp-long v42, v4, v34

    if-eqz v42, :cond_1e

    iget v4, v9, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    if-eqz v4, :cond_1e

    goto :goto_11

    :cond_1d
    move-object/from16 v40, v4

    move-object/from16 v41, v5

    :cond_1e
    const/4 v9, 0x0

    :goto_11
    if-eqz v10, :cond_1f

    .line 4208
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object v4

    move-wide/from16 v42, v2

    move-object v3, v1

    iget-wide v1, v7, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {v4, v1, v2, v10}, Lorg/telegram/messenger/TopicsController;->findTopic(JI)Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 4210
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->title:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_12

    :cond_1f
    move-wide/from16 v42, v2

    move-object v3, v1

    :cond_20
    move-object v1, v8

    :goto_12
    if-eqz v0, :cond_21

    .line 4214
    invoke-static {v7}, Lorg/telegram/messenger/ChatObject;->canSendPlain(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    :cond_21
    const/4 v8, 0x0

    move-object/from16 v72, v9

    move-object v9, v7

    move-object/from16 v7, v72

    goto/16 :goto_15

    :cond_22
    move-wide/from16 v42, v2

    move-object/from16 v40, v4

    move-object/from16 v41, v5

    move/from16 v38, v7

    move/from16 v36, v9

    move-object v3, v1

    .line 4220
    sget-wide v0, Lorg/telegram/messenger/NotificationsController;->globalSecretChatId:J

    cmp-long v2, v12, v0

    if-eqz v2, :cond_25

    .line 4221
    invoke-static {v12, v13}, Lorg/telegram/messenger/DialogObject;->getEncryptedChatId(J)I

    move-result v0

    .line 4222
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v1

    if-nez v1, :cond_24

    .line 4224
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_23

    .line 4225
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not found secret chat to show dialog notification "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->w(Ljava/lang/String;)V

    :cond_23
    :goto_13
    move-object/from16 v67, v6

    move-object/from16 v35, v11

    move-object v14, v15

    move-object/from16 v71, v19

    move/from16 v30, v26

    move-object/from16 v15, v27

    move/from16 v26, v28

    move-object/from16 v27, v31

    move/from16 v31, v36

    move-wide/from16 v24, v42

    :goto_14
    const/16 v21, 0x7

    const/16 v28, 0x1a

    const/16 v29, 0x0

    const/16 v32, 0x1

    const/16 v33, 0x1b

    const/16 v34, 0x0

    move-object/from16 v36, v20

    goto/16 :goto_4a

    .line 4229
    :cond_24
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v4, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-nez v0, :cond_26

    .line 4231
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_23

    .line 4232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not found secret chat user to show dialog notification "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->w(Ljava/lang/String;)V

    goto :goto_13

    :cond_25
    const/4 v0, 0x0

    .line 4237
    :cond_26
    sget v1, Lorg/telegram/messenger/R$string;->SecretChatName:I

    const-string v2, "SecretChatName"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    move-object v8, v0

    move-object v1, v9

    const/4 v0, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/16 v37, 0x0

    const/16 v39, 0x0

    :goto_15
    const-string v2, "NotificationHiddenChatName"

    const-string v4, "NotificationHiddenName"

    if-eqz v22, :cond_28

    .line 4242
    invoke-static {v12, v13}, Lorg/telegram/messenger/DialogObject;->isChatDialog(J)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 4243
    sget v0, Lorg/telegram/messenger/R$string;->NotificationHiddenChatName:I

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    .line 4245
    :cond_27
    sget v0, Lorg/telegram/messenger/R$string;->NotificationHiddenName:I

    invoke-static {v4, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :goto_16
    move-object v5, v0

    const/4 v0, 0x0

    const/4 v7, 0x0

    goto :goto_17

    :cond_28
    move-object v5, v1

    :goto_17
    if-eqz v7, :cond_2d

    .line 4252
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    move-object/from16 v44, v11

    const/4 v11, 0x1

    invoke-virtual {v1, v7, v11}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v1

    .line 4253
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    move-object/from16 v45, v8

    const/16 v8, 0x1c

    if-ge v11, v8, :cond_2b

    .line 4254
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v8

    const-string v11, "50_50"

    const/4 v14, 0x0

    invoke-virtual {v8, v7, v14, v11}, Lorg/telegram/messenger/ImageLoader;->getImageFromMemory(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v7

    if-eqz v7, :cond_29

    .line 4256
    invoke-virtual {v7}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    goto :goto_19

    .line 4259
    :cond_29
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2c

    const/high16 v7, 0x43200000    # 160.0f

    const/16 v8, 0x32

    .line 4260
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    .line 4261
    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/high16 v11, 0x3f800000    # 1.0f

    cmpg-float v11, v7, v11

    if-gez v11, :cond_2a

    const/4 v7, 0x1

    goto :goto_18

    :cond_2a
    float-to-int v7, v7

    .line 4262
    :goto_18
    iput v7, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 4263
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v8}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_19

    :cond_2b
    const/4 v14, 0x0

    :catchall_0
    :cond_2c
    move-object v7, v14

    goto :goto_19

    :cond_2d
    move-object/from16 v45, v8

    move-object/from16 v44, v11

    const/4 v14, 0x0

    move-object v1, v14

    move-object v7, v1

    :goto_19
    if-eqz v9, :cond_2f

    .line 4273
    new-instance v8, Landroidx/core/app/Person$Builder;

    invoke-direct {v8}, Landroidx/core/app/Person$Builder;-><init>()V

    invoke-virtual {v8, v5}, Landroidx/core/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Landroidx/core/app/Person$Builder;

    move-result-object v8

    if-eqz v1, :cond_2e

    .line 4274
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_2e

    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x1c

    if-lt v11, v14, :cond_2e

    .line 4275
    invoke-direct {v15, v1, v8}, Lorg/telegram/messenger/NotificationsController;->loadRoundAvatar(Ljava/io/File;Landroidx/core/app/Person$Builder;)V

    :cond_2e
    move-object v14, v1

    move-object v11, v2

    .line 4277
    iget-wide v1, v9, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v1, v1

    invoke-virtual {v8}, Landroidx/core/app/Person$Builder;->build()Landroidx/core/app/Person;

    move-result-object v8

    invoke-virtual {v6, v1, v2, v8}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_1a

    :cond_2f
    move-object v14, v1

    move-object v11, v2

    :goto_1a
    const-string v1, "max_id"

    const-string v2, "dialog_id"

    const-string v8, "currentAccount"

    if-eqz v39, :cond_30

    if-eqz v37, :cond_32

    :cond_30
    if-eqz v0, :cond_32

    .line 4282
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->isWaitingForPasscodeEnter:Z

    if-nez v0, :cond_32

    cmp-long v0, v42, v12

    if-eqz v0, :cond_32

    invoke-static {v12, v13}, Lorg/telegram/messenger/UserObject;->isReplyUser(J)Z

    move-result v0

    if-nez v0, :cond_32

    .line 4283
    new-instance v0, Landroid/content/Intent;

    move-object/from16 v37, v11

    sget-object v11, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    move-object/from16 v46, v14

    const-class v14, Lorg/telegram/messenger/WearReplyReceiver;

    invoke-direct {v0, v11, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4284
    invoke-virtual {v0, v2, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move/from16 v11, v29

    .line 4285
    invoke-virtual {v0, v1, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v14, "topic_id"

    .line 4286
    invoke-virtual {v0, v14, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4287
    iget v14, v15, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-virtual {v0, v8, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4288
    sget-object v14, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    move-object/from16 v29, v9

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Integer;->intValue()I

    move-result v9

    move-object/from16 v47, v7

    const/high16 v7, 0xa000000

    invoke-static {v14, v9, v0, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 4289
    new-instance v7, Landroidx/core/app/RemoteInput$Builder;

    const-string v9, "extra_voice_reply"

    invoke-direct {v7, v9}, Landroidx/core/app/RemoteInput$Builder;-><init>(Ljava/lang/String;)V

    sget v9, Lorg/telegram/messenger/R$string;->Reply:I

    const-string v14, "Reply"

    invoke-static {v14, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroidx/core/app/RemoteInput$Builder;->setLabel(Ljava/lang/CharSequence;)Landroidx/core/app/RemoteInput$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/core/app/RemoteInput$Builder;->build()Landroidx/core/app/RemoteInput;

    move-result-object v7

    .line 4291
    invoke-static {v12, v13}, Lorg/telegram/messenger/DialogObject;->isChatDialog(J)Z

    move-result v9

    if-eqz v9, :cond_31

    .line 4292
    sget v9, Lorg/telegram/messenger/R$string;->ReplyToGroup:I

    move-object/from16 v48, v1

    const/4 v14, 0x1

    new-array v1, v14, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v5, v1, v14

    const-string v14, "ReplyToGroup"

    invoke-static {v14, v9, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1b

    :cond_31
    move-object/from16 v48, v1

    .line 4294
    sget v1, Lorg/telegram/messenger/R$string;->ReplyToUser:I

    const/4 v9, 0x1

    new-array v14, v9, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v14, v9

    const-string v9, "ReplyToUser"

    invoke-static {v9, v1, v14}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 4296
    :goto_1b
    new-instance v9, Landroidx/core/app/NotificationCompat$Action$Builder;

    sget v14, Lorg/telegram/messenger/R$drawable;->ic_reply_icon:I

    invoke-direct {v9, v14, v1, v0}, Landroidx/core/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const/4 v1, 0x1

    .line 4297
    invoke-virtual {v9, v1}, Landroidx/core/app/NotificationCompat$Action$Builder;->setAllowGeneratedReplies(Z)Landroidx/core/app/NotificationCompat$Action$Builder;

    move-result-object v0

    .line 4298
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Action$Builder;->setSemanticAction(I)Landroidx/core/app/NotificationCompat$Action$Builder;

    move-result-object v0

    .line 4299
    invoke-virtual {v0, v7}, Landroidx/core/app/NotificationCompat$Action$Builder;->addRemoteInput(Landroidx/core/app/RemoteInput;)Landroidx/core/app/NotificationCompat$Action$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 4300
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Action$Builder;->setShowsUserInterface(Z)Landroidx/core/app/NotificationCompat$Action$Builder;

    move-result-object v0

    .line 4301
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Action$Builder;->build()Landroidx/core/app/NotificationCompat$Action;

    move-result-object v0

    move-object v1, v0

    goto :goto_1c

    :cond_32
    move-object/from16 v48, v1

    move-object/from16 v47, v7

    move-object/from16 v37, v11

    move-object/from16 v46, v14

    move/from16 v11, v29

    move-object/from16 v29, v9

    const/4 v1, 0x0

    .line 4304
    :goto_1c
    iget-object v0, v15, Lorg/telegram/messenger/NotificationsController;->pushDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, v12, v13}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_33

    const/4 v7, 0x0

    .line 4306
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 4308
    :cond_33
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v7, 0x2

    const/4 v9, 0x1

    if-le v0, v9, :cond_35

    .line 4310
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x1c

    if-lt v14, v9, :cond_34

    goto :goto_1d

    :cond_34
    new-array v9, v7, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v5, v9, v14

    .line 4313
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v14, 0x1

    aput-object v0, v9, v14

    const-string v0, "%1$s (%2$d)"

    invoke-static {v0, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    goto :goto_1e

    :cond_35
    :goto_1d
    move-object v9, v5

    :goto_1e
    move-object v14, v8

    move-wide/from16 v7, v42

    .line 4316
    invoke-virtual {v6, v7, v8}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v43, v0

    check-cast v43, Landroidx/core/app/Person;

    .line 4317
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    move-object/from16 v49, v14

    const/16 v14, 0x1c

    if-lt v0, v14, :cond_37

    if-nez v43, :cond_37

    .line 4318
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v0, v14}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-nez v0, :cond_36

    .line 4320
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    :cond_36
    if-eqz v0, :cond_37

    .line 4323
    :try_start_1
    iget-object v14, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v14, :cond_37

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-eqz v14, :cond_37

    move-object/from16 v51, v1

    move-object/from16 v50, v2

    :try_start_2
    iget-wide v1, v14, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    cmp-long v52, v1, v34

    if-eqz v52, :cond_38

    iget v1, v14, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    if-eqz v1, :cond_38

    .line 4324
    new-instance v1, Landroidx/core/app/Person$Builder;

    invoke-direct {v1}, Landroidx/core/app/Person$Builder;-><init>()V

    const-string v2, "FromYou"

    sget v14, Lorg/telegram/messenger/R$string;->FromYou:I

    invoke-static {v2, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/core/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Landroidx/core/app/Person$Builder;

    move-result-object v1

    .line 4325
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object v2

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    const/4 v14, 0x1

    invoke-virtual {v2, v0, v14}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v0

    .line 4326
    invoke-direct {v15, v0, v1}, Lorg/telegram/messenger/NotificationsController;->loadRoundAvatar(Ljava/io/File;Landroidx/core/app/Person$Builder;)V

    .line 4327
    invoke-virtual {v1}, Landroidx/core/app/Person$Builder;->build()Landroidx/core/app/Person;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 4328
    :try_start_3
    invoke-virtual {v6, v7, v8, v1}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v43, v1

    goto :goto_20

    :catchall_1
    move-exception v0

    move-object/from16 v43, v1

    goto :goto_1f

    :catchall_2
    move-exception v0

    goto :goto_1f

    :catchall_3
    move-exception v0

    move-object/from16 v51, v1

    move-object/from16 v50, v2

    .line 4331
    :goto_1f
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_20

    :cond_37
    move-object/from16 v51, v1

    move-object/from16 v50, v2

    :cond_38
    :goto_20
    move-object/from16 v1, v41

    move-object/from16 v0, v43

    .line 4335
    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatJoinedByRequest;

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const-string v2, ""

    if-eqz v0, :cond_39

    if-eqz v1, :cond_39

    .line 4338
    new-instance v1, Landroidx/core/app/NotificationCompat$MessagingStyle;

    invoke-direct {v1, v0}, Landroidx/core/app/NotificationCompat$MessagingStyle;-><init>(Landroidx/core/app/Person;)V

    goto :goto_21

    .line 4340
    :cond_39
    new-instance v1, Landroidx/core/app/NotificationCompat$MessagingStyle;

    invoke-direct {v1, v2}, Landroidx/core/app/NotificationCompat$MessagingStyle;-><init>(Ljava/lang/CharSequence;)V

    .line 4342
    :goto_21
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x1c

    if-lt v0, v14, :cond_3b

    invoke-static {v12, v13}, Lorg/telegram/messenger/DialogObject;->isChatDialog(J)Z

    move-result v14

    if-eqz v14, :cond_3a

    if-eqz v39, :cond_3b

    :cond_3a
    invoke-static {v12, v13}, Lorg/telegram/messenger/UserObject;->isReplyUser(J)Z

    move-result v14

    if-eqz v14, :cond_3c

    .line 4343
    :cond_3b
    invoke-virtual {v1, v9}, Landroidx/core/app/NotificationCompat$MessagingStyle;->setConversationTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$MessagingStyle;

    :cond_3c
    const/16 v9, 0x1c

    if-lt v0, v9, :cond_3f

    if-nez v39, :cond_3d

    .line 4345
    invoke-static {v12, v13}, Lorg/telegram/messenger/DialogObject;->isChatDialog(J)Z

    move-result v0

    if-nez v0, :cond_3f

    :cond_3d
    invoke-static {v12, v13}, Lorg/telegram/messenger/UserObject;->isReplyUser(J)Z

    move-result v0

    if-eqz v0, :cond_3e

    goto :goto_22

    :cond_3e
    const/4 v0, 0x0

    goto :goto_23

    :cond_3f
    :goto_22
    const/4 v0, 0x1

    :goto_23
    invoke-virtual {v1, v0}, Landroidx/core/app/NotificationCompat$MessagingStyle;->setGroupConversation(Z)Landroidx/core/app/NotificationCompat$MessagingStyle;

    .line 4347
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v41, v11

    const/4 v14, 0x1

    new-array v11, v14, [Ljava/lang/String;

    move-object/from16 v43, v1

    new-array v1, v14, [Z

    .line 4352
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v14

    move v14, v0

    move-object/from16 v52, v3

    const/4 v3, 0x0

    const/16 v53, 0x0

    :goto_24
    const-wide/16 v54, 0x3e8

    if-ltz v14, :cond_66

    move-object/from16 v56, v3

    move-object/from16 v3, v52

    .line 4353
    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    .line 4354
    iget-object v0, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move/from16 v57, v14

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v14

    invoke-virtual {v14, v3}, Lorg/telegram/messenger/MessagesController;->isForum(Lorg/telegram/messenger/MessageObject;)Z

    move-result v14

    invoke-static {v0, v14}, Lorg/telegram/messenger/MessageObject;->getTopicId(Lorg/telegram/tgnet/TLRPC$Message;Z)I

    move-result v0

    if-eq v10, v0, :cond_40

    move-object/from16 v58, v4

    move-object/from16 v59, v5

    move-object/from16 v63, v6

    move-wide/from16 v60, v7

    :goto_25
    move-object/from16 v65, v9

    move v7, v10

    move-object/from16 v62, v11

    move-object/from16 v8, v43

    goto/16 :goto_40

    .line 4358
    :cond_40
    invoke-direct {v15, v3, v11, v1}, Lorg/telegram/messenger/NotificationsController;->getShortStringForMessage(Lorg/telegram/messenger/MessageObject;[Ljava/lang/String;[Z)Ljava/lang/String;

    move-result-object v0

    const-string v14, "NotificationMessageScheduledName"

    cmp-long v58, v12, v7

    if-nez v58, :cond_41

    const/16 v24, 0x0

    aput-object v5, v11, v24

    goto :goto_26

    :cond_41
    const/16 v24, 0x0

    .line 4361
    invoke-static {v12, v13}, Lorg/telegram/messenger/DialogObject;->isChatDialog(J)Z

    move-result v59

    if-eqz v59, :cond_42

    move-object/from16 v59, v5

    iget-object v5, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->from_scheduled:Z

    if-eqz v5, :cond_43

    .line 4362
    sget v5, Lorg/telegram/messenger/R$string;->NotificationMessageScheduledName:I

    invoke-static {v14, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v11, v24

    goto :goto_27

    :cond_42
    :goto_26
    move-object/from16 v59, v5

    :cond_43
    :goto_27
    if-nez v0, :cond_45

    .line 4365
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_44

    .line 4366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "message text is null for "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " did = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v60, v7

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->w(Ljava/lang/String;)V

    goto :goto_28

    :cond_44
    move-wide/from16 v60, v7

    :goto_28
    move-object/from16 v58, v4

    move-object/from16 v63, v6

    goto :goto_25

    :cond_45
    move-wide/from16 v60, v7

    .line 4370
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_46

    const-string v5, "\n\n"

    .line 4371
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_46
    const-string v5, "%1$s: %2$s"

    if-eqz v58, :cond_47

    .line 4373
    iget-object v7, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-boolean v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->from_scheduled:Z

    if-eqz v7, :cond_47

    invoke-static {v12, v13}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v7

    if-eqz v7, :cond_47

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Object;

    .line 4374
    sget v7, Lorg/telegram/messenger/R$string;->NotificationMessageScheduledName:I

    invoke-static {v14, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const/4 v14, 0x0

    aput-object v7, v8, v14

    const/4 v7, 0x1

    aput-object v0, v8, v7

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 4375
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_29

    :cond_47
    const/4 v14, 0x0

    .line 4377
    aget-object v7, v11, v14

    if-eqz v7, :cond_48

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Object;

    .line 4378
    aget-object v7, v11, v14

    aput-object v7, v8, v14

    const/4 v7, 0x1

    aput-object v0, v8, v7

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_29

    .line 4380
    :cond_48
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_29
    move-object v5, v0

    .line 4385
    invoke-static {v12, v13}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v0

    if-eqz v0, :cond_49

    goto :goto_2a

    :cond_49
    if-eqz v39, :cond_4a

    neg-long v7, v12

    goto :goto_2b

    .line 4389
    :cond_4a
    invoke-static {v12, v13}, Lorg/telegram/messenger/DialogObject;->isChatDialog(J)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 4390
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getSenderId()J

    move-result-wide v7

    goto :goto_2b

    :cond_4b
    :goto_2a
    move-wide v7, v12

    :goto_2b
    int-to-long v14, v10

    const/16 v0, 0x10

    shl-long/2addr v14, v0

    add-long/2addr v14, v7

    .line 4394
    invoke-virtual {v6, v14, v15}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/app/Person;

    const/4 v14, 0x0

    .line 4396
    aget-object v15, v11, v14

    if-nez v15, :cond_50

    if-eqz v22, :cond_4e

    .line 4398
    invoke-static {v12, v13}, Lorg/telegram/messenger/DialogObject;->isChatDialog(J)Z

    move-result v14

    if-eqz v14, :cond_4d

    if-eqz v39, :cond_4c

    .line 4400
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x1b

    if-le v14, v15, :cond_4e

    .line 4401
    sget v14, Lorg/telegram/messenger/R$string;->NotificationHiddenChatName:I

    move-object/from16 v15, v37

    invoke-static {v15, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    goto :goto_2c

    :cond_4c
    move-object/from16 v15, v37

    .line 4404
    sget v14, Lorg/telegram/messenger/R$string;->NotificationHiddenChatUserName:I

    const-string v15, "NotificationHiddenChatUserName"

    invoke-static {v15, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    :goto_2c
    const/16 v15, 0x1b

    goto :goto_2d

    .line 4406
    :cond_4d
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x1b

    if-le v14, v15, :cond_4f

    .line 4407
    sget v14, Lorg/telegram/messenger/R$string;->NotificationHiddenName:I

    invoke-static {v4, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    goto :goto_2d

    :cond_4e
    const/16 v15, 0x1b

    :cond_4f
    move-object v14, v2

    goto :goto_2d

    :cond_50
    const/4 v14, 0x0

    const/16 v15, 0x1b

    .line 4411
    aget-object v16, v11, v14

    move-object/from16 v14, v16

    :goto_2d
    if-eqz v0, :cond_52

    .line 4414
    invoke-virtual {v0}, Landroidx/core/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-static {v15, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_51

    goto :goto_2f

    :cond_51
    move-object/from16 v15, p0

    move-object/from16 v58, v4

    move-object/from16 v62, v11

    :goto_2e
    move-object v4, v0

    goto/16 :goto_34

    .line 4415
    :cond_52
    :goto_2f
    new-instance v0, Landroidx/core/app/Person$Builder;

    invoke-direct {v0}, Landroidx/core/app/Person$Builder;-><init>()V

    invoke-virtual {v0, v14}, Landroidx/core/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Landroidx/core/app/Person$Builder;

    move-result-object v0

    const/4 v14, 0x0

    .line 4416
    aget-boolean v15, v1, v14

    if-eqz v15, :cond_57

    invoke-static {v12, v13}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v14

    if-nez v14, :cond_57

    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x1c

    if-lt v14, v15, :cond_57

    .line 4418
    invoke-static {v12, v13}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v14

    if-nez v14, :cond_56

    if-eqz v39, :cond_53

    goto :goto_31

    .line 4421
    :cond_53
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getSenderId()J

    move-result-wide v14

    move-object/from16 v58, v4

    .line 4422
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    move-object/from16 v62, v11

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v4, v11}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    if-nez v4, :cond_54

    .line 4424
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    invoke-virtual {v4, v14, v15}, Lorg/telegram/messenger/MessagesStorage;->getUserSync(J)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    if-eqz v4, :cond_54

    .line 4426
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v11

    const/4 v14, 0x1

    invoke-virtual {v11, v4, v14}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    :cond_54
    if-eqz v4, :cond_55

    .line 4429
    iget-object v11, v4, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v11, :cond_55

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v11, :cond_55

    iget-wide v14, v11, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    cmp-long v63, v14, v34

    if-eqz v63, :cond_55

    iget v11, v11, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    if-eqz v11, :cond_55

    .line 4430
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object v11

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    const/4 v14, 0x1

    invoke-virtual {v11, v4, v14}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v4

    goto :goto_30

    :cond_55
    const/4 v4, 0x0

    :goto_30
    move-object/from16 v15, p0

    goto :goto_32

    :cond_56
    :goto_31
    move-object/from16 v58, v4

    move-object/from16 v62, v11

    move-object/from16 v15, p0

    move-object/from16 v4, v46

    .line 4433
    :goto_32
    invoke-direct {v15, v4, v0}, Lorg/telegram/messenger/NotificationsController;->loadRoundAvatar(Ljava/io/File;Landroidx/core/app/Person$Builder;)V

    goto :goto_33

    :cond_57
    move-object/from16 v15, p0

    move-object/from16 v58, v4

    move-object/from16 v62, v11

    .line 4435
    :goto_33
    invoke-virtual {v0}, Landroidx/core/app/Person$Builder;->build()Landroidx/core/app/Person;

    move-result-object v0

    .line 4436
    invoke-virtual {v6, v7, v8, v0}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto/16 :goto_2e

    .line 4440
    :goto_34
    invoke-static {v12, v13}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v0

    if-nez v0, :cond_63

    const/4 v7, 0x0

    .line 4442
    aget-boolean v0, v1, v7

    if-eqz v0, :cond_5f

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1c

    if-lt v0, v7, :cond_5f

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v8, "activity"

    invoke-virtual {v0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v0

    if-nez v0, :cond_5f

    if-nez v22, :cond_5f

    .line 4443
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isSecretMedia()Z

    move-result v0

    if-nez v0, :cond_5f

    iget v0, v3, Lorg/telegram/messenger/MessageObject;->type:I

    const/4 v8, 0x1

    if-eq v0, v8, :cond_58

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isSticker()Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 4444
    :cond_58
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v8, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v0, v8}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v8

    .line 4446
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->hasMediaSpoilers()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 4447
    new-instance v11, Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".blur.jpg"

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v11, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4448
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_59

    .line 4450
    :try_start_4
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 4452
    invoke-static {v0}, Lorg/telegram/messenger/Utilities;->stackBlurBitmapMax(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 4453
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 4455
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-object/from16 v63, v6

    const/4 v6, 0x1

    :try_start_5
    invoke-static {v7, v14, v0, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v6, 0x5

    .line 4456
    invoke-static {v0, v6}, Lorg/telegram/messenger/Utilities;->stackBlurBitmap(Landroid/graphics/Bitmap;I)V

    .line 4457
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 4459
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 4461
    iget-object v7, v15, Lorg/telegram/messenger/NotificationsController;->mediaSpoilerEffect:Lorg/telegram/ui/Components/spoilers/SpoilerEffect;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    const/4 v14, -0x1

    move-object/from16 v64, v8

    :try_start_6
    invoke-static {v14}, Landroid/graphics/Color;->alpha(I)I

    move-result v8

    int-to-float v8, v8

    const v65, 0x3ea66666    # 0.325f

    mul-float v8, v8, v65

    float-to-int v8, v8

    invoke-static {v14, v8}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v8

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->setColor(I)V

    .line 4462
    iget-object v7, v15, Lorg/telegram/messenger/NotificationsController;->mediaSpoilerEffect:Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    move-object/from16 v65, v9

    const/4 v9, 0x0

    :try_start_7
    invoke-virtual {v7, v9, v9, v8, v14}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->setBounds(IIII)V

    .line 4463
    iget-object v7, v15, Lorg/telegram/messenger/NotificationsController;->mediaSpoilerEffect:Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    invoke-virtual {v7, v6}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->draw(Landroid/graphics/Canvas;)V

    .line 4465
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 4466
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x64

    invoke-virtual {v0, v7, v8, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 4467
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 4469
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    move-object v8, v11

    goto :goto_39

    :catch_0
    move-exception v0

    goto :goto_37

    :catch_1
    move-exception v0

    goto :goto_36

    :catch_2
    move-exception v0

    goto :goto_35

    :catch_3
    move-exception v0

    move-object/from16 v63, v6

    :goto_35
    move-object/from16 v64, v8

    :goto_36
    move-object/from16 v65, v9

    .line 4473
    :goto_37
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_38

    :cond_59
    move-object/from16 v63, v6

    move-object/from16 v64, v8

    move-object/from16 v65, v9

    :goto_38
    move-object/from16 v8, v64

    goto :goto_39

    :cond_5a
    move-object/from16 v63, v6

    move-object/from16 v64, v8

    move-object/from16 v65, v9

    move-object/from16 v8, v64

    const/4 v11, 0x0

    .line 4479
    :goto_39
    new-instance v6, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;

    iget-object v0, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move v7, v10

    int-to-long v9, v0

    mul-long v9, v9, v54

    invoke-direct {v6, v5, v9, v10, v4}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;-><init>(Ljava/lang/CharSequence;JLandroidx/core/app/Person;)V

    .line 4480
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isSticker()Z

    move-result v0

    if-eqz v0, :cond_5b

    const-string v0, "image/webp"

    goto :goto_3a

    :cond_5b
    const-string v0, "image/jpeg"

    :goto_3a
    move-object v9, v0

    .line 4482
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 4484
    :try_start_8
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getApplicationId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ".provider"

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10, v8}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_3c

    :catch_4
    move-exception v0

    .line 4486
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_3b

    .line 4489
    :cond_5c
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lorg/telegram/messenger/FileLoader;->isLoadingFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 4490
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v10, "content"

    .line 4491
    invoke-virtual {v0, v10}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 4492
    invoke-static {}, Lorg/telegram/messenger/NotificationImageProvider;->getAuthority()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v10, "msg_media_raw"

    .line 4493
    invoke-virtual {v0, v10}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget v14, v15, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 4494
    invoke-virtual {v0, v10}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 4495
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 4496
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    const-string v10, "final_path"

    invoke-virtual {v0, v10, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 4497
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    goto :goto_3c

    :cond_5d
    :goto_3b
    const/4 v0, 0x0

    :goto_3c
    if-eqz v0, :cond_60

    .line 4502
    invoke-virtual {v6, v9, v0}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->setData(Ljava/lang/String;Landroid/net/Uri;)Landroidx/core/app/NotificationCompat$MessagingStyle$Message;

    move-object/from16 v8, v43

    .line 4503
    invoke-virtual {v8, v6}, Landroidx/core/app/NotificationCompat$MessagingStyle;->addMessage(Landroidx/core/app/NotificationCompat$MessagingStyle$Message;)Landroidx/core/app/NotificationCompat$MessagingStyle;

    .line 4505
    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v9, "com.android.systemui"

    const/4 v10, 0x1

    invoke-virtual {v6, v9, v0, v10}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 4506
    new-instance v6, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda4;

    invoke-direct {v6, v0, v11}, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda4;-><init>(Landroid/net/Uri;Ljava/io/File;)V

    const-wide/16 v9, 0x4e20

    invoke-static {v6, v9, v10}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 4513
    iget-object v0, v3, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5e

    .line 4514
    iget-object v0, v3, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    iget-object v6, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    int-to-long v9, v6

    mul-long v9, v9, v54

    invoke-virtual {v8, v0, v9, v10, v4}, Landroidx/core/app/NotificationCompat$MessagingStyle;->addMessage(Ljava/lang/CharSequence;JLandroidx/core/app/Person;)Landroidx/core/app/NotificationCompat$MessagingStyle;

    :cond_5e
    const/4 v0, 0x1

    goto :goto_3d

    :cond_5f
    move-object/from16 v63, v6

    move-object/from16 v65, v9

    move v7, v10

    :cond_60
    move-object/from16 v8, v43

    const/4 v0, 0x0

    :goto_3d
    if-nez v0, :cond_61

    .line 4521
    iget-object v0, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    int-to-long v9, v0

    mul-long v9, v9, v54

    invoke-virtual {v8, v5, v9, v10, v4}, Landroidx/core/app/NotificationCompat$MessagingStyle;->addMessage(Ljava/lang/CharSequence;JLandroidx/core/app/Person;)Landroidx/core/app/NotificationCompat$MessagingStyle;

    :cond_61
    const/4 v4, 0x0

    .line 4523
    aget-boolean v0, v1, v4

    if-eqz v0, :cond_64

    if-nez v22, :cond_64

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v0

    if-eqz v0, :cond_64

    .line 4524
    invoke-virtual {v8}, Landroidx/core/app/NotificationCompat$MessagingStyle;->getMessages()Ljava/util/List;

    move-result-object v0

    .line 4525
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_64

    .line 4526
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    iget-object v5, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v4

    .line 4528
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x18

    if-lt v5, v6, :cond_62

    .line 4530
    :try_start_9
    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getApplicationId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ".provider"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_3e

    :catch_5
    const/4 v4, 0x0

    goto :goto_3e

    .line 4535
    :cond_62
    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    :goto_3e
    if-eqz v4, :cond_64

    .line 4538
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;

    const-string v5, "audio/ogg"

    .line 4539
    invoke-virtual {v0, v5, v4}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->setData(Ljava/lang/String;Landroid/net/Uri;)Landroidx/core/app/NotificationCompat$MessagingStyle$Message;

    goto :goto_3f

    :cond_63
    move-object/from16 v63, v6

    move-object/from16 v65, v9

    move v7, v10

    move-object/from16 v8, v43

    .line 4544
    iget-object v0, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    int-to-long v9, v0

    mul-long v9, v9, v54

    invoke-virtual {v8, v5, v9, v10, v4}, Landroidx/core/app/NotificationCompat$MessagingStyle;->addMessage(Ljava/lang/CharSequence;JLandroidx/core/app/Person;)Landroidx/core/app/NotificationCompat$MessagingStyle;

    :cond_64
    :goto_3f
    cmp-long v0, v12, v32

    if-nez v0, :cond_65

    .line 4547
    iget-object v0, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    if-eqz v0, :cond_65

    .line 4548
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;->rows:Ljava/util/ArrayList;

    .line 4549
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    move/from16 v53, v3

    move-object v3, v0

    goto :goto_41

    :cond_65
    :goto_40
    move-object/from16 v3, v56

    :goto_41
    add-int/lit8 v14, v57, -0x1

    move v10, v7

    move-object/from16 v43, v8

    move-object/from16 v4, v58

    move-object/from16 v5, v59

    move-wide/from16 v7, v60

    move-object/from16 v11, v62

    move-object/from16 v6, v63

    move-object/from16 v9, v65

    goto/16 :goto_24

    :cond_66
    move-object/from16 v56, v3

    move-object/from16 v59, v5

    move-object/from16 v63, v6

    move-wide/from16 v60, v7

    move-object/from16 v65, v9

    move v7, v10

    move-object/from16 v8, v43

    .line 4553
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v2, Lorg/telegram/ui/LaunchActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4554
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.tmessages.openchat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const v2, 0x7fffffff

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x4000000

    .line 4555
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "android.intent.category.LAUNCHER"

    .line 4556
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 4557
    invoke-static {v12, v13}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v1

    if-eqz v1, :cond_67

    .line 4558
    invoke-static {v12, v13}, Lorg/telegram/messenger/DialogObject;->getEncryptedChatId(J)I

    move-result v1

    const-string v2, "encId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_42

    .line 4559
    :cond_67
    invoke-static {v12, v13}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v1

    if-eqz v1, :cond_68

    const-string/jumbo v1, "userId"

    .line 4560
    invoke-virtual {v0, v1, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_42

    :cond_68
    neg-long v1, v12

    const-string v3, "chatId"

    .line 4562
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 4564
    :goto_42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "show extra notifications chatId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " topicId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v6, v7

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    if-eqz v6, :cond_69

    const-string/jumbo v1, "topicId"

    .line 4566
    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4568
    :cond_69
    iget v1, v15, Lorg/telegram/messenger/BaseController;->currentAccount:I

    move-object/from16 v2, v49

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4569
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const/high16 v3, 0x42000000    # 32.0f

    const/4 v4, 0x0

    invoke-static {v1, v4, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 4571
    new-instance v1, Landroidx/core/app/NotificationCompat$WearableExtender;

    invoke-direct {v1}, Landroidx/core/app/NotificationCompat$WearableExtender;-><init>()V

    move-object/from16 v3, v51

    if-eqz v51, :cond_6a

    .line 4573
    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$WearableExtender;->addAction(Landroidx/core/app/NotificationCompat$Action;)Landroidx/core/app/NotificationCompat$WearableExtender;

    .line 4575
    :cond_6a
    new-instance v4, Landroid/content/Intent;

    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v7, Lorg/telegram/messenger/AutoMessageHeardReceiver;

    invoke-direct {v4, v5, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v5, 0x20

    .line 4576
    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v5, "org.telegram.messenger.ACTION_MESSAGE_HEARD"

    .line 4577
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v5, v50

    .line 4578
    invoke-virtual {v4, v5, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move/from16 v5, v41

    move-object/from16 v7, v48

    .line 4579
    invoke-virtual {v4, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4580
    iget v7, v15, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-virtual {v4, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4581
    sget-object v7, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/high16 v10, 0xa000000

    invoke-static {v7, v9, v4, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 4582
    new-instance v7, Landroidx/core/app/NotificationCompat$Action$Builder;

    sget v9, Lorg/telegram/messenger/R$drawable;->msg_markread:I

    sget v10, Lorg/telegram/messenger/R$string;->MarkAsRead:I

    const-string v11, "MarkAsRead"

    invoke-static {v11, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v9, v10, v4}, Landroidx/core/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const/4 v4, 0x2

    .line 4583
    invoke-virtual {v7, v4}, Landroidx/core/app/NotificationCompat$Action$Builder;->setSemanticAction(I)Landroidx/core/app/NotificationCompat$Action$Builder;

    move-result-object v4

    const/4 v7, 0x0

    .line 4584
    invoke-virtual {v4, v7}, Landroidx/core/app/NotificationCompat$Action$Builder;->setShowsUserInterface(Z)Landroidx/core/app/NotificationCompat$Action$Builder;

    move-result-object v4

    .line 4585
    invoke-virtual {v4}, Landroidx/core/app/NotificationCompat$Action$Builder;->build()Landroidx/core/app/NotificationCompat$Action;

    move-result-object v4

    .line 4588
    invoke-static {v12, v13}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v7

    const-string v9, "_"

    if-nez v7, :cond_6c

    .line 4589
    invoke-static {v12, v13}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v7

    if-eqz v7, :cond_6b

    .line 4590
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "tguser"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_43

    .line 4592
    :cond_6b
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "tgchat"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    neg-long v10, v12

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_43

    .line 4594
    :cond_6c
    sget-wide v10, Lorg/telegram/messenger/NotificationsController;->globalSecretChatId:J

    cmp-long v7, v12, v10

    if-eqz v7, :cond_6d

    .line 4595
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "tgenc"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12, v13}, Lorg/telegram/messenger/DialogObject;->getEncryptedChatId(J)I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_43

    :cond_6d
    const/4 v5, 0x0

    :goto_43
    if-eqz v5, :cond_6e

    .line 4601
    invoke-virtual {v1, v5}, Landroidx/core/app/NotificationCompat$WearableExtender;->setDismissalId(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$WearableExtender;

    .line 4602
    new-instance v7, Landroidx/core/app/NotificationCompat$WearableExtender;

    invoke-direct {v7}, Landroidx/core/app/NotificationCompat$WearableExtender;-><init>()V

    .line 4603
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "summary_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Landroidx/core/app/NotificationCompat$WearableExtender;->setDismissalId(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$WearableExtender;

    move-object/from16 v14, p1

    const/4 v9, 0x0

    .line 4604
    invoke-virtual {v14, v7}, Landroidx/core/app/NotificationCompat$Builder;->extend(Landroidx/core/app/NotificationCompat$Extender;)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_44

    :cond_6e
    move-object/from16 v14, p1

    const/4 v9, 0x0

    .line 4606
    :goto_44
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "tgaccount"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v10, v60

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroidx/core/app/NotificationCompat$WearableExtender;->setBridgeTag(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$WearableExtender;

    move-object/from16 v5, v52

    const/4 v7, 0x0

    .line 4608
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v7, v17

    check-cast v7, Lorg/telegram/messenger/MessageObject;

    iget-object v7, v7, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move-wide/from16 v42, v10

    int-to-long v9, v7

    mul-long v9, v9, v54

    .line 4610
    new-instance v7, Landroidx/core/app/NotificationCompat$Builder;

    sget-object v11, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-direct {v7, v11}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v11, v59

    .line 4611
    invoke-virtual {v7, v11}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v7

    sget v11, Lorg/telegram/messenger/R$drawable;->notification:I

    .line 4612
    invoke-virtual {v7, v11}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v7

    .line 4613
    invoke-virtual/range {v65 .. v65}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v7

    const/4 v11, 0x1

    .line 4614
    invoke-virtual {v7, v11}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v7

    .line 4615
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v7, v5}, Landroidx/core/app/NotificationCompat$Builder;->setNumber(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v5

    const v7, -0xee5306

    .line 4616
    invoke-virtual {v5, v7}, Landroidx/core/app/NotificationCompat$Builder;->setColor(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v5

    const/4 v7, 0x0

    .line 4617
    invoke-virtual {v5, v7}, Landroidx/core/app/NotificationCompat$Builder;->setGroupSummary(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v5

    .line 4618
    invoke-virtual {v5, v9, v10}, Landroidx/core/app/NotificationCompat$Builder;->setWhen(J)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v5

    .line 4619
    invoke-virtual {v5, v11}, Landroidx/core/app/NotificationCompat$Builder;->setShowWhen(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v5

    .line 4620
    invoke-virtual {v5, v8}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v5

    .line 4621
    invoke-virtual {v5, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 4622
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->extend(Landroidx/core/app/NotificationCompat$Extender;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    const-wide v7, 0x7fffffffffffffffL

    sub-long/2addr v7, v9

    .line 4623
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setSortKey(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    const-string v1, "msg"

    .line 4624
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v10

    .line 4626
    sget v0, Lorg/telegram/messenger/R$drawable;->fork_notification:I

    invoke-virtual {v10, v0}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    sget v5, Lorg/telegram/messenger/R$color;->fork_color:I

    .line 4627
    invoke-static {v1, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setColor(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 4630
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v5, Lorg/telegram/messenger/NotificationDismissReceiver;

    invoke-direct {v0, v1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "messageDate"

    move/from16 v7, v38

    .line 4631
    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "dialogId"

    .line 4632
    invoke-virtual {v0, v1, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 4633
    iget v1, v15, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4634
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/high16 v7, 0xa000000

    invoke-static {v1, v5, v0, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroidx/core/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    if-eqz v28, :cond_6f

    .line 4637
    iget-object v0, v15, Lorg/telegram/messenger/NotificationsController;->notificationGroup:Ljava/lang/String;

    invoke-virtual {v10, v0}, Landroidx/core/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    const/4 v1, 0x1

    .line 4638
    invoke-virtual {v10, v1}, Landroidx/core/app/NotificationCompat$Builder;->setGroupAlertBehavior(I)Landroidx/core/app/NotificationCompat$Builder;

    :cond_6f
    if-eqz v3, :cond_70

    .line 4642
    invoke-virtual {v10, v3}, Landroidx/core/app/NotificationCompat$Builder;->addAction(Landroidx/core/app/NotificationCompat$Action;)Landroidx/core/app/NotificationCompat$Builder;

    :cond_70
    if-nez v23, :cond_71

    .line 4645
    invoke-virtual {v10, v4}, Landroidx/core/app/NotificationCompat$Builder;->addAction(Landroidx/core/app/NotificationCompat$Action;)Landroidx/core/app/NotificationCompat$Builder;

    .line 4647
    :cond_71
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_72

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_72

    move-object/from16 v11, p2

    .line 4648
    invoke-virtual {v10, v11}, Landroidx/core/app/NotificationCompat$Builder;->setSubText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_45

    :cond_72
    move-object/from16 v11, p2

    .line 4650
    :goto_45
    invoke-static {v12, v13}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 4651
    invoke-virtual {v10, v4}, Landroidx/core/app/NotificationCompat$Builder;->setLocalOnly(Z)Landroidx/core/app/NotificationCompat$Builder;

    :cond_73
    if-eqz v47, :cond_74

    move-object/from16 v7, v47

    .line 4654
    invoke-virtual {v10, v7}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    :cond_74
    const/4 v1, 0x0

    .line 4657
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->needShowPasscode(Z)Z

    move-result v0

    if-nez v0, :cond_78

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->isWaitingForPasscodeEnter:Z

    if-nez v0, :cond_78

    if-eqz v56, :cond_78

    .line 4659
    invoke-virtual/range {v56 .. v56}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_46
    if-ge v1, v0, :cond_78

    move-object/from16 v3, v56

    .line 4660
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRow;

    .line 4661
    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRow;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_47
    if-ge v8, v7, :cond_77

    .line 4662
    iget-object v9, v5, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRow;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$KeyboardButton;

    .line 4663
    instance-of v4, v9, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonCallback;

    if-eqz v4, :cond_76

    .line 4664
    new-instance v4, Landroid/content/Intent;

    move/from16 v30, v0

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    move-object/from16 v56, v3

    const-class v3, Lorg/telegram/messenger/NotificationCallbackReceiver;

    invoke-direct {v4, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4665
    iget v0, v15, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-virtual {v4, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "did"

    .line 4666
    invoke-virtual {v4, v0, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 4667
    iget-object v0, v9, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->data:[B

    if-eqz v0, :cond_75

    const-string v3, "data"

    .line 4668
    invoke-virtual {v4, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    :cond_75
    const-string v0, "mid"

    move/from16 v3, v53

    .line 4670
    invoke-virtual {v4, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4671
    iget-object v0, v9, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->text:Ljava/lang/String;

    sget-object v9, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    move-object/from16 v49, v2

    iget v2, v15, Lorg/telegram/messenger/NotificationsController;->lastButtonId:I

    move/from16 v32, v3

    add-int/lit8 v3, v2, 0x1

    iput v3, v15, Lorg/telegram/messenger/NotificationsController;->lastButtonId:I

    const/high16 v3, 0xa000000

    invoke-static {v9, v2, v4, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    const/4 v9, 0x0

    invoke-virtual {v10, v9, v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_48

    :cond_76
    move/from16 v30, v0

    move-object/from16 v49, v2

    move-object/from16 v56, v3

    move/from16 v32, v53

    const/high16 v3, 0xa000000

    const/4 v9, 0x0

    :goto_48
    add-int/lit8 v8, v8, 0x1

    move/from16 v0, v30

    move/from16 v53, v32

    move-object/from16 v2, v49

    move-object/from16 v3, v56

    const/4 v4, 0x1

    goto :goto_47

    :cond_77
    move/from16 v30, v0

    move-object/from16 v49, v2

    move-object/from16 v56, v3

    move/from16 v32, v53

    const/high16 v3, 0xa000000

    const/4 v9, 0x0

    add-int/lit8 v1, v1, 0x1

    const/4 v4, 0x1

    goto/16 :goto_46

    :cond_78
    const/4 v9, 0x0

    if-nez v29, :cond_79

    if-eqz v45, :cond_79

    move-object/from16 v8, v45

    .line 4678
    iget-object v0, v8, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    if-eqz v0, :cond_7a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_7a

    .line 4679
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "tel:+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroidx/core/app/NotificationCompat$Builder;->addPerson(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_49

    :cond_79
    move-object/from16 v8, v45

    .line 4682
    :cond_7a
    :goto_49
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    move-object/from16 v7, v19

    move/from16 v4, v28

    if-lt v0, v2, :cond_7b

    .line 4683
    invoke-direct {v15, v7, v10, v4}, Lorg/telegram/messenger/NotificationsController;->setNotificationChannel(Landroid/app/Notification;Landroidx/core/app/NotificationCompat$Builder;Z)V

    .line 4685
    :cond_7b
    new-instance v0, Lorg/telegram/messenger/NotificationsController$1NotificationHolder;

    const/16 v21, 0x7

    move-object v1, v0

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-wide/from16 v24, v42

    const/16 v28, 0x1a

    move-object/from16 v2, p0

    move/from16 v30, v26

    move-object/from16 v66, v40

    move-object/from16 v18, v59

    const/16 v32, 0x1

    move/from16 v26, v4

    move-wide v4, v12

    move-object/from16 v67, v63

    const/16 v33, 0x1b

    move-object/from16 v16, v7

    move-object/from16 v68, v27

    move-object/from16 v7, v18

    move-object/from16 v27, v31

    move/from16 v31, v36

    const/16 v17, 0x0

    const/16 v34, 0x0

    move-object/from16 v9, v29

    const/16 v29, 0x0

    move-object/from16 v35, v44

    move/from16 v11, p5

    move-wide/from16 v69, v12

    move-object/from16 v36, v20

    move-object/from16 v12, p6

    move-object/from16 v71, v16

    move-object/from16 v13, p7

    move/from16 v14, p8

    move-object/from16 v15, p9

    move/from16 v16, p10

    move/from16 v17, p11

    move/from16 v18, p12

    move/from16 v19, p13

    move/from16 v20, p14

    invoke-direct/range {v1 .. v20}, Lorg/telegram/messenger/NotificationsController$1NotificationHolder;-><init>(Lorg/telegram/messenger/NotificationsController;IJILjava/lang/String;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;Landroidx/core/app/NotificationCompat$Builder;ILjava/lang/String;[JILandroid/net/Uri;IZZZI)V

    move-object/from16 v15, v68

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v14, p0

    .line 4686
    iget-object v0, v14, Lorg/telegram/messenger/NotificationsController;->wearNotificationsIds:Landroidx/collection/LongSparseArray;

    move-object/from16 v3, v66

    move-wide/from16 v1, v69

    invoke-virtual {v0, v1, v2, v3}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    :goto_4a
    add-int/lit8 v4, v30, 0x1

    move-object v7, v15

    move-wide/from16 v2, v24

    move/from16 v5, v26

    move-object/from16 v8, v27

    move/from16 v9, v31

    move-object/from16 v11, v35

    move-object/from16 v12, v36

    move-object/from16 v6, v67

    move-object/from16 v13, v71

    const/4 v1, 0x7

    const/4 v10, 0x0

    move-object v15, v14

    move-object/from16 v14, p1

    goto/16 :goto_8

    :cond_7c
    :goto_4b
    move/from16 v26, v5

    move-object/from16 v67, v6

    move-object/from16 v27, v8

    move-object/from16 v71, v13

    move-object v14, v15

    const/16 v29, 0x0

    move-object v15, v7

    if-eqz v26, :cond_7e

    .line 4690
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_7d

    .line 4691
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "show summary with id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v14, Lorg/telegram/messenger/NotificationsController;->notificationId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 4694
    :cond_7d
    :try_start_a
    sget-object v0, Lorg/telegram/messenger/NotificationsController;->notificationManager:Landroidx/core/app/NotificationManagerCompat;

    iget v1, v14, Lorg/telegram/messenger/NotificationsController;->notificationId:I

    move-object/from16 v2, v71

    invoke-virtual {v0, v1, v2}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V
    :try_end_a
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_a} :catch_6

    move-object/from16 v68, v15

    move-object v15, v14

    goto :goto_4c

    :catch_6
    move-exception v0

    .line 4696
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p3

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move-object/from16 v68, v15

    move-object v15, v14

    move/from16 v14, p14

    .line 4697
    invoke-direct/range {v1 .. v14}, Lorg/telegram/messenger/NotificationsController;->resetNotificationSound(Landroidx/core/app/NotificationCompat$Builder;JILjava/lang/String;[JILandroid/net/Uri;IZZZI)V

    goto :goto_4c

    :cond_7e
    move-object/from16 v68, v15

    move-object v15, v14

    .line 4700
    iget-object v0, v15, Lorg/telegram/messenger/NotificationsController;->openedInBubbleDialogs:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 4701
    sget-object v0, Lorg/telegram/messenger/NotificationsController;->notificationManager:Landroidx/core/app/NotificationManagerCompat;

    iget v1, v15, Lorg/telegram/messenger/NotificationsController;->notificationId:I

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationManagerCompat;->cancel(I)V

    :cond_7f
    :goto_4c
    const/4 v10, 0x0

    .line 4705
    :goto_4d
    invoke-virtual/range {v27 .. v27}, Landroidx/collection/LongSparseArray;->size()I

    move-result v0

    if-ge v10, v0, :cond_82

    move-object/from16 v1, v27

    .line 4706
    invoke-virtual {v1, v10}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    .line 4707
    iget-object v0, v15, Lorg/telegram/messenger/NotificationsController;->openedInBubbleDialogs:Ljava/util/HashSet;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_80

    goto :goto_4e

    .line 4710
    :cond_80
    invoke-virtual {v1, v10}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 4711
    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v2, :cond_81

    .line 4712
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancel notification id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 4714
    :cond_81
    sget-object v2, Lorg/telegram/messenger/NotificationsController;->notificationManager:Landroidx/core/app/NotificationManagerCompat;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Landroidx/core/app/NotificationManagerCompat;->cancel(I)V

    :goto_4e
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v27, v1

    goto :goto_4d

    .line 4717
    :cond_82
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual/range {v68 .. v68}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4718
    invoke-virtual/range {v68 .. v68}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v10, 0x0

    :goto_4f
    if-ge v10, v1, :cond_86

    move-object/from16 v2, v68

    .line 4719
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/NotificationsController$1NotificationHolder;

    .line 4720
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4721
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1d

    if-lt v4, v5, :cond_83

    iget-wide v4, v3, Lorg/telegram/messenger/NotificationsController$1NotificationHolder;->dialogId:J

    invoke-static {v4, v5}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v4

    if-nez v4, :cond_83

    .line 4722
    iget-object v4, v3, Lorg/telegram/messenger/NotificationsController$1NotificationHolder;->notification:Landroidx/core/app/NotificationCompat$Builder;

    iget-wide v5, v3, Lorg/telegram/messenger/NotificationsController$1NotificationHolder;->dialogId:J

    iget-object v7, v3, Lorg/telegram/messenger/NotificationsController$1NotificationHolder;->name:Ljava/lang/String;

    iget-object v8, v3, Lorg/telegram/messenger/NotificationsController$1NotificationHolder;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v9, v3, Lorg/telegram/messenger/NotificationsController$1NotificationHolder;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    move-object/from16 v11, v67

    invoke-virtual {v11, v5, v6}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/core/app/Person;

    move-object/from16 p1, p0

    move-object/from16 p2, v4

    move-wide/from16 p3, v5

    move-object/from16 p5, v7

    move-object/from16 p6, v8

    move-object/from16 p7, v9

    move-object/from16 p8, v12

    invoke-direct/range {p1 .. p8}, Lorg/telegram/messenger/NotificationsController;->createNotificationShortcut(Landroidx/core/app/NotificationCompat$Builder;JLjava/lang/String;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;Landroidx/core/app/Person;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_84

    .line 4724
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_50

    :cond_83
    move-object/from16 v11, v67

    .line 4727
    :cond_84
    :goto_50
    invoke-virtual {v3}, Lorg/telegram/messenger/NotificationsController$1NotificationHolder;->call()V

    .line 4728
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/NotificationsController;->unsupportedNotificationShortcut()Z

    move-result v3

    if-nez v3, :cond_85

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_85

    .line 4729
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v3, v0}, Landroidx/core/content/pm/ShortcutManagerCompat;->removeDynamicShortcuts(Landroid/content/Context;Ljava/util/List;)V

    :cond_85
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v68, v2

    move-object/from16 v67, v11

    goto :goto_4f

    :cond_86
    return-void
.end method

.method private showOrUpdateNotification(Z)V
    .locals 49

    move-object/from16 v15, p0

    const-string v1, "currentAccount"

    .line 3447
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->isClientActivated()Z

    move-result v2

    if-eqz v2, :cond_78

    iget-object v2, v15, Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_78

    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->showNotificationsForAllAccounts:Z

    if-nez v2, :cond_0

    iget v2, v15, Lorg/telegram/messenger/BaseController;->currentAccount:I

    sget v3, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    if-ne v2, v3, :cond_78

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getForkCommonController()Lorg/fork/controller/ForkCommonController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/fork/controller/ForkCommonController;->isAccountMuted()Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_44

    .line 3452
    :cond_1
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/ConnectionsManager;->resumeNetworkMaybe()V

    .line 3454
    iget-object v2, v15, Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    .line 3455
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/AccountInstance;->getNotificationsSettings()Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "dismissDate"

    .line 3456
    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 3457
    iget-object v6, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    if-gt v6, v5, :cond_2

    .line 3458
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/NotificationsController;->dismissNotification()V

    return-void

    .line 3462
    :cond_2
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v13

    .line 3464
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getAlbumsController()Lorg/fork/controller/AlbumsController;

    move-result-object v6

    invoke-virtual {v6, v13, v14}, Lorg/fork/controller/AlbumsController;->isDialogAlbum(J)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3465
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/NotificationsController;->dismissNotification()V

    return-void

    .line 3469
    :cond_3
    iget-object v6, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    invoke-virtual {v7, v2}, Lorg/telegram/messenger/MessagesController;->isForum(Lorg/telegram/messenger/MessageObject;)Z

    move-result v7

    invoke-static {v6, v7}, Lorg/telegram/messenger/MessageObject;->getTopicId(Lorg/telegram/tgnet/TLRPC$Message;Z)I

    move-result v6

    .line 3473
    iget-object v7, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-boolean v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->mentioned:Z

    if-eqz v7, :cond_4

    .line 3474
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getFromChatId()J

    move-result-wide v7

    goto :goto_0

    :cond_4
    move-wide v7, v13

    .line 3476
    :goto_0
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    .line 3477
    iget-object v9, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v10, v9, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:J

    move-wide/from16 v16, v13

    const-wide/16 v12, 0x0

    cmp-long v14, v10, v12

    if-eqz v14, :cond_5

    goto :goto_1

    :cond_5
    iget-wide v10, v9, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    :goto_1
    move-object/from16 v18, v4

    .line 3478
    iget-wide v3, v9, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 3479
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isFromUser()Z

    move-result v9

    if-eqz v9, :cond_7

    cmp-long v9, v3, v12

    if-eqz v9, :cond_6

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v19

    cmp-long v9, v3, v19

    if-nez v9, :cond_7

    .line 3480
    :cond_6
    iget-object v3, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 3483
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v9, v14}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v9

    cmp-long v21, v10, v12

    if-eqz v21, :cond_a

    .line 3486
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v12

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v12

    if-nez v12, :cond_8

    .line 3487
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isFcmMessage()Z

    move-result v13

    if-eqz v13, :cond_8

    .line 3488
    iget-boolean v13, v2, Lorg/telegram/messenger/MessageObject;->localChannel:Z

    goto :goto_2

    .line 3490
    :cond_8
    invoke-static {v12}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v13

    if-eqz v13, :cond_9

    iget-boolean v13, v12, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v13, :cond_9

    const/4 v13, 0x1

    goto :goto_2

    :cond_9
    const/4 v13, 0x0

    :goto_2
    move/from16 v48, v13

    move-object v13, v12

    move-object/from16 v12, v18

    move/from16 v18, v48

    goto :goto_3

    :cond_a
    move-object/from16 v12, v18

    const/4 v13, 0x0

    const/16 v18, 0x0

    .line 3502
    :goto_3
    invoke-direct {v15, v12, v7, v8, v6}, Lorg/telegram/messenger/NotificationsController;->getNotifyOverride(Landroid/content/SharedPreferences;JI)I

    move-result v14

    move-object/from16 v24, v1

    const/4 v1, -0x1

    move-wide/from16 v25, v3

    const/4 v3, 0x2

    if-ne v14, v1, :cond_b

    .line 3505
    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object/from16 v27, v2

    move-wide/from16 v1, v16

    invoke-virtual {v15, v1, v2, v4}, Lorg/telegram/messenger/NotificationsController;->isGlobalNotificationsEnabled(JLjava/lang/Boolean;)Z

    move-result v4

    goto :goto_5

    :cond_b
    move-object/from16 v27, v2

    move-wide/from16 v1, v16

    if-eq v14, v3, :cond_c

    const/4 v14, 0x1

    goto :goto_4

    :cond_c
    const/4 v14, 0x0

    :goto_4
    move v4, v14

    :goto_5
    if-eqz v21, :cond_d

    if-eqz v13, :cond_e

    :cond_d
    if-nez v9, :cond_f

    .line 3513
    :cond_e
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/messenger/MessageObject;->isFcmMessage()Z

    move-result v14

    if-eqz v14, :cond_f

    move-object/from16 v14, v27

    .line 3514
    iget-object v3, v14, Lorg/telegram/messenger/MessageObject;->localName:Ljava/lang/String;

    goto :goto_6

    :cond_f
    move-object/from16 v14, v27

    if-eqz v13, :cond_10

    .line 3516
    iget-object v3, v13, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    goto :goto_6

    .line 3518
    :cond_10
    invoke-static {v9}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v3

    :goto_6
    move-object/from16 v17, v3

    .line 3520
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->needShowPasscode()Z

    move-result v3

    if-nez v3, :cond_12

    sget-boolean v3, Lorg/telegram/messenger/SharedConfig;->isWaitingForPasscodeEnter:Z

    if-eqz v3, :cond_11

    goto :goto_7

    :cond_11
    const/4 v3, 0x0

    goto :goto_8

    :cond_12
    :goto_7
    const/4 v3, 0x1

    .line 3521
    :goto_8
    invoke-static {v1, v2}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v27

    if-nez v27, :cond_14

    move-object/from16 v27, v9

    iget-object v9, v15, Lorg/telegram/messenger/NotificationsController;->pushDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v9}, Landroidx/collection/LongSparseArray;->size()I

    move-result v9

    move-wide/from16 v28, v10

    const/4 v10, 0x1

    if-gt v9, v10, :cond_15

    if-eqz v3, :cond_13

    goto :goto_9

    :cond_13
    move-object/from16 v3, v17

    const/4 v9, 0x1

    goto :goto_b

    :cond_14
    move-object/from16 v27, v9

    move-wide/from16 v28, v10

    :cond_15
    :goto_9
    if-eqz v3, :cond_17

    if-eqz v21, :cond_16

    const-string v3, "NotificationHiddenChatName"

    .line 3524
    sget v9, Lorg/telegram/messenger/R$string;->NotificationHiddenChatName:I

    invoke-static {v3, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_a

    :cond_16
    const-string v3, "NotificationHiddenName"

    .line 3526
    sget v9, Lorg/telegram/messenger/R$string;->NotificationHiddenName:I

    invoke-static {v3, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_a

    :cond_17
    const-string v3, "AppName"

    .line 3529
    sget v9, Lorg/telegram/messenger/R$string;->AppName:I

    invoke-static {v3, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    :goto_a
    const/4 v9, 0x0

    .line 3537
    :goto_b
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getActivatedAccountsCount()I

    move-result v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const-string v11, ""

    move-object/from16 v30, v14

    const/4 v14, 0x1

    if-le v10, v14, :cond_19

    .line 3538
    :try_start_1
    iget-object v10, v15, Lorg/telegram/messenger/NotificationsController;->pushDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v10}, Landroidx/collection/LongSparseArray;->size()I

    move-result v10

    if-ne v10, v14, :cond_18

    .line 3539
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v10

    invoke-static {v10}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v10

    goto :goto_c

    .line 3541
    :cond_18
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v14

    invoke-virtual {v14}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v14

    invoke-static {v14}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v14, "\u30fb"

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_c

    :cond_19
    move-object v10, v11

    .line 3546
    :goto_c
    iget-object v14, v15, Lorg/telegram/messenger/NotificationsController;->pushDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v14}, Landroidx/collection/LongSparseArray;->size()I

    move-result v14

    move/from16 v31, v6

    const/4 v6, 0x1

    if-ne v14, v6, :cond_1b

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x17

    if-ge v6, v14, :cond_1a

    goto :goto_d

    :cond_1a
    move-wide/from16 v33, v1

    move-wide/from16 v35, v7

    move-object v6, v10

    move-object/from16 v32, v12

    goto :goto_e

    .line 3547
    :cond_1b
    :goto_d
    iget-object v6, v15, Lorg/telegram/messenger/NotificationsController;->pushDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v6}, Landroidx/collection/LongSparseArray;->size()I

    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    const-string v14, "NewMessages"

    move-object/from16 v32, v12

    const/4 v12, 0x1

    if-ne v6, v12, :cond_1c

    .line 3548
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v15, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    move-wide/from16 v33, v1

    const/4 v12, 0x0

    new-array v1, v12, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v14, v10, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    move-wide/from16 v35, v7

    goto :goto_e

    :cond_1c
    move-wide/from16 v33, v1

    const/4 v2, 0x0

    .line 3550
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "NotificationMessagesPeopleDisplayOrder"

    sget v10, Lorg/telegram/messenger/R$string;->NotificationMessagesPeopleDisplayOrder:I

    const/4 v12, 0x2

    new-array v2, v12, [Ljava/lang/Object;

    iget v12, v15, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    move-wide/from16 v35, v7

    const/4 v7, 0x0

    new-array v8, v7, [Ljava/lang/Object;

    invoke-static {v14, v12, v8}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v2, v7

    const-string v8, "FromChats"

    iget-object v12, v15, Lorg/telegram/messenger/NotificationsController;->pushDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v12}, Landroidx/collection/LongSparseArray;->size()I

    move-result v12

    new-array v14, v7, [Ljava/lang/Object;

    invoke-static {v8, v12, v14}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/4 v12, 0x1

    aput-object v8, v2, v12

    invoke-static {v6, v10, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    .line 3554
    :goto_e
    new-instance v2, Landroidx/core/app/NotificationCompat$Builder;

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-direct {v2, v1}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 3559
    iget-object v1, v15, Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    const-string v8, ": "

    const-string v10, " "

    const-string v12, " @ "

    const/4 v7, 0x1

    if-ne v1, v7, :cond_21

    .line 3560
    :try_start_3
    iget-object v1, v15, Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    new-array v14, v7, [Z

    move/from16 v37, v4

    const/4 v7, 0x0

    .line 3562
    invoke-direct {v15, v1, v5, v14, v7}, Lorg/telegram/messenger/NotificationsController;->getStringForMessage(Lorg/telegram/messenger/MessageObject;Z[Z[Z)Ljava/lang/String;

    move-result-object v4

    .line 3563
    invoke-direct {v15, v1}, Lorg/telegram/messenger/NotificationsController;->isSilentMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v1

    if-nez v4, :cond_1d

    return-void

    :cond_1d
    if-eqz v9, :cond_20

    if-eqz v13, :cond_1e

    .line 3569
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    goto :goto_f

    :cond_1e
    const/4 v5, 0x0

    .line 3571
    aget-boolean v7, v14, v5

    if-eqz v7, :cond_1f

    .line 3572
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    goto :goto_f

    .line 3574
    :cond_1f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    goto :goto_f

    :cond_20
    move-object v7, v4

    .line 3578
    :goto_f
    invoke-virtual {v2, v7}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 3579
    new-instance v5, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {v5}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    invoke-virtual {v5, v7}, Landroidx/core/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    move-object v14, v2

    move-object v2, v4

    move-object v5, v6

    goto/16 :goto_14

    :cond_21
    move/from16 v37, v4

    .line 3581
    invoke-virtual {v2, v6}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 3582
    new-instance v1, Landroidx/core/app/NotificationCompat$InboxStyle;

    invoke-direct {v1}, Landroidx/core/app/NotificationCompat$InboxStyle;-><init>()V

    .line 3583
    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$InboxStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$InboxStyle;

    .line 3584
    iget-object v4, v15, Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v7, 0xa

    invoke-static {v7, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v7, 0x1

    new-array v14, v7, [Z

    move-object/from16 v40, v2

    const/4 v2, 0x2

    const/4 v7, 0x0

    const/16 v39, 0x0

    :goto_10
    if-ge v7, v4, :cond_28

    move/from16 v41, v4

    .line 3587
    iget-object v4, v15, Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessageObject;

    move-object/from16 v43, v1

    move-object/from16 v42, v6

    move/from16 v38, v7

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 3588
    invoke-direct {v15, v4, v7, v14, v6}, Lorg/telegram/messenger/NotificationsController;->getStringForMessage(Lorg/telegram/messenger/MessageObject;Z[Z[Z)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_27

    .line 3589
    iget-object v7, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    if-gt v7, v5, :cond_22

    goto :goto_12

    :cond_22
    const/4 v7, 0x2

    if-ne v2, v7, :cond_23

    .line 3594
    invoke-direct {v15, v4}, Lorg/telegram/messenger/NotificationsController;->isSilentMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v2

    move-object/from16 v39, v1

    .line 3596
    :cond_23
    iget-object v4, v15, Lorg/telegram/messenger/NotificationsController;->pushDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v4}, Landroidx/collection/LongSparseArray;->size()I

    move-result v4

    const/4 v7, 0x1

    if-ne v4, v7, :cond_26

    if-eqz v9, :cond_26

    if-eqz v13, :cond_24

    .line 3599
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_11

    :cond_24
    const/4 v4, 0x0

    .line 3601
    aget-boolean v6, v14, v4

    if-eqz v6, :cond_25

    .line 3602
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_11

    .line 3604
    :cond_25
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    :cond_26
    :goto_11
    move-object/from16 v6, v43

    .line 3609
    invoke-virtual {v6, v1}, Landroidx/core/app/NotificationCompat$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$InboxStyle;

    goto :goto_13

    :cond_27
    :goto_12
    move-object/from16 v6, v43

    :goto_13
    add-int/lit8 v7, v38, 0x1

    move-object v1, v6

    move/from16 v4, v41

    move-object/from16 v6, v42

    goto/16 :goto_10

    :cond_28
    move-object v5, v6

    move-object v6, v1

    .line 3611
    invoke-virtual {v6, v5}, Landroidx/core/app/NotificationCompat$InboxStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$InboxStyle;

    move-object/from16 v14, v40

    .line 3612
    invoke-virtual {v14, v6}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    move v1, v2

    move-object/from16 v2, v39

    :goto_14
    if-eqz p1, :cond_2a

    if-eqz v37, :cond_2a

    .line 3615
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/MediaController;->isRecordingAudio()Z

    move-result v6

    if-nez v6, :cond_2a

    const/4 v6, 0x1

    if-ne v1, v6, :cond_29

    goto :goto_15

    :cond_29
    const/4 v6, 0x0

    goto :goto_16

    :cond_2a
    :goto_15
    const/4 v6, 0x1

    :goto_16
    const-wide/16 v37, 0x3e8

    if-nez v6, :cond_30

    cmp-long v7, v33, v35

    if-nez v7, :cond_30

    if-eqz v13, :cond_30

    .line 3622
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "custom_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v9, v33

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v4, v32

    const/4 v8, 0x0

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_2b

    .line 3623
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "smart_max_count_"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v12, 0x2

    invoke-interface {v4, v7, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 3624
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "smart_delay_"

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v12, 0xb4

    invoke-interface {v4, v8, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    goto :goto_17

    :cond_2b
    const/16 v12, 0xb4

    const/4 v7, 0x2

    const/16 v8, 0xb4

    :goto_17
    if-eqz v7, :cond_2f

    .line 3630
    iget-object v12, v15, Lorg/telegram/messenger/NotificationsController;->smartNotificationsDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v12, v9, v10}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Point;

    if-nez v12, :cond_2c

    .line 3632
    new-instance v7, Landroid/graphics/Point;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v33

    move-object/from16 v35, v11

    div-long v11, v33, v37

    long-to-int v8, v11

    const/4 v11, 0x1

    invoke-direct {v7, v11, v8}, Landroid/graphics/Point;-><init>(II)V

    .line 3633
    iget-object v8, v15, Lorg/telegram/messenger/NotificationsController;->smartNotificationsDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v8, v9, v10, v7}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    move-object/from16 v42, v5

    move v8, v6

    goto :goto_18

    :cond_2c
    move-object/from16 v35, v11

    .line 3635
    iget v11, v12, Landroid/graphics/Point;->y:I

    add-int/2addr v11, v8

    move-object/from16 v42, v5

    move v8, v6

    int-to-long v5, v11

    .line 3636
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v33

    div-long v33, v33, v37

    cmp-long v11, v5, v33

    if-gez v11, :cond_2d

    .line 3637
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    div-long v5, v5, v37

    long-to-int v6, v5

    const/4 v5, 0x1

    invoke-virtual {v12, v5, v6}, Landroid/graphics/Point;->set(II)V

    goto :goto_18

    .line 3639
    :cond_2d
    iget v5, v12, Landroid/graphics/Point;->x:I

    if-ge v5, v7, :cond_2e

    const/4 v6, 0x1

    add-int/2addr v5, v6

    .line 3641
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    div-long v6, v6, v37

    long-to-int v7, v6

    invoke-virtual {v12, v5, v7}, Landroid/graphics/Point;->set(II)V

    goto :goto_18

    :cond_2e
    const/4 v8, 0x1

    goto :goto_18

    :cond_2f
    move-object/from16 v42, v5

    move v8, v6

    move-object/from16 v35, v11

    goto :goto_18

    :cond_30
    move-object/from16 v42, v5

    move v8, v6

    move-object/from16 v35, v11

    move-object/from16 v4, v32

    move-wide/from16 v9, v33

    :goto_18
    if-nez v8, :cond_31

    .line 3650
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sound_enabled_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, v31

    invoke-static {v9, v10, v6}, Lorg/telegram/messenger/NotificationsController;->getSharedPrefKey(JI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_32

    const/16 v31, 0x1

    goto :goto_19

    :cond_31
    move/from16 v6, v31

    :cond_32
    move/from16 v31, v8

    .line 3654
    :goto_19
    sget-object v5, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 3657
    sget-boolean v7, Lorg/telegram/messenger/ApplicationLoader;->mainInterfacePaused:Z

    if-nez v7, :cond_33

    const/16 v33, 0x1

    goto :goto_1a

    :cond_33
    const/16 v33, 0x0

    .line 3665
    :goto_1a
    invoke-static {v9, v10, v6}, Lorg/telegram/messenger/NotificationsController;->getSharedPrefKey(JI)Ljava/lang/String;

    .line 3666
    iget-object v7, v15, Lorg/telegram/messenger/NotificationsController;->dialogsNotificationsFacade:Lorg/telegram/messenger/NotificationsSettingsFacade;

    const-string v8, "custom_"

    const/4 v12, 0x0

    move-object/from16 v11, v27

    move-wide/from16 v44, v28

    move-wide/from16 v28, v9

    move-object/from16 v46, v11

    move-object/from16 v47, v35

    move v11, v6

    invoke-virtual/range {v7 .. v12}, Lorg/telegram/messenger/NotificationsSettingsFacade;->getProperty(Ljava/lang/String;JIZ)Z

    move-result v7

    const/4 v12, 0x3

    if-eqz v7, :cond_36

    .line 3667
    iget-object v7, v15, Lorg/telegram/messenger/NotificationsController;->dialogsNotificationsFacade:Lorg/telegram/messenger/NotificationsSettingsFacade;

    const-string/jumbo v8, "vibrate_"

    const/16 v22, 0x0

    move-wide/from16 v9, v28

    move v11, v6

    move/from16 v12, v22

    invoke-virtual/range {v7 .. v12}, Lorg/telegram/messenger/NotificationsSettingsFacade;->getProperty(Ljava/lang/String;JII)I

    move-result v22

    .line 3668
    iget-object v7, v15, Lorg/telegram/messenger/NotificationsController;->dialogsNotificationsFacade:Lorg/telegram/messenger/NotificationsSettingsFacade;

    const-string v8, "priority_"

    const/4 v12, 0x3

    move-wide/from16 v9, v28

    move v11, v6

    invoke-virtual/range {v7 .. v12}, Lorg/telegram/messenger/NotificationsSettingsFacade;->getProperty(Ljava/lang/String;JII)I

    move-result v23

    .line 3669
    iget-object v7, v15, Lorg/telegram/messenger/NotificationsController;->dialogsNotificationsFacade:Lorg/telegram/messenger/NotificationsSettingsFacade;

    const-string/jumbo v8, "sound_document_id_"

    const-wide/16 v34, 0x0

    move-wide/from16 v9, v28

    move v11, v6

    move-object/from16 v27, v2

    move-object v2, v13

    move-wide/from16 v39, v28

    move-wide/from16 v12, v34

    invoke-virtual/range {v7 .. v13}, Lorg/telegram/messenger/NotificationsSettingsFacade;->getProperty(Ljava/lang/String;JIJ)J

    move-result-wide v7

    const-wide/16 v12, 0x0

    cmp-long v9, v7, v12

    if-eqz v9, :cond_34

    .line 3672
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v9

    iget-object v9, v9, Lorg/telegram/messenger/MediaDataController;->ringtoneDataStore:Lorg/telegram/messenger/ringtone/RingtoneDataStore;

    invoke-virtual {v9, v7, v8}, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->getSoundPath(J)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v28, v7

    move-object/from16 v29, v14

    const/16 v34, 0x1

    move-wide v13, v12

    goto :goto_1b

    .line 3674
    :cond_34
    iget-object v7, v15, Lorg/telegram/messenger/NotificationsController;->dialogsNotificationsFacade:Lorg/telegram/messenger/NotificationsSettingsFacade;

    const-string/jumbo v8, "sound_path_"

    const/16 v28, 0x0

    move-wide/from16 v9, v39

    move v11, v6

    move-object/from16 v29, v14

    move-wide v13, v12

    move-object/from16 v12, v28

    invoke-virtual/range {v7 .. v12}, Lorg/telegram/messenger/NotificationsSettingsFacade;->getPropertyString(Ljava/lang/String;JILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v28, v7

    const/16 v34, 0x0

    .line 3677
    :goto_1b
    iget-object v7, v15, Lorg/telegram/messenger/NotificationsController;->dialogsNotificationsFacade:Lorg/telegram/messenger/NotificationsSettingsFacade;

    const-string v8, "color_"

    const/4 v12, 0x0

    move-wide/from16 v9, v39

    move v11, v6

    invoke-virtual/range {v7 .. v12}, Lorg/telegram/messenger/NotificationsSettingsFacade;->getProperty(Ljava/lang/String;JII)I

    move-result v7

    if-eqz v7, :cond_35

    .line 3679
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_1c

    :cond_35
    const/4 v7, 0x0

    :goto_1c
    move-object v9, v7

    move/from16 v8, v22

    move/from16 v12, v23

    move-object/from16 v7, v28

    goto :goto_1d

    :cond_36
    move-object/from16 v27, v2

    move-object v2, v13

    move-wide/from16 v39, v28

    move-object/from16 v29, v14

    const-wide/16 v13, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x3

    const/16 v34, 0x0

    :goto_1d
    if-eqz v21, :cond_3a

    if-eqz v18, :cond_38

    const-string v11, "ChannelSoundDocId"

    .line 3693
    invoke-interface {v4, v11, v13, v14}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    cmp-long v22, v10, v13

    if-eqz v22, :cond_37

    .line 3696
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v13

    iget-object v13, v13, Lorg/telegram/messenger/MediaDataController;->ringtoneDataStore:Lorg/telegram/messenger/ringtone/RingtoneDataStore;

    invoke-virtual {v13, v10, v11}, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->getSoundPath(J)Ljava/lang/String;

    move-result-object v10

    move-object v14, v10

    const/4 v10, 0x1

    goto :goto_1e

    :cond_37
    const-string v10, "ChannelSoundPath"

    .line 3698
    invoke-interface {v4, v10, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v14, v10

    const/4 v10, 0x0

    :goto_1e
    const-string/jumbo v11, "vibrate_channel"

    const/4 v13, 0x0

    .line 3700
    invoke-interface {v4, v11, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    const-string v13, "priority_channel"

    move/from16 v22, v10

    const/4 v10, 0x1

    .line 3701
    invoke-interface {v4, v13, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v13

    const-string v10, "ChannelLed"

    move/from16 v23, v11

    const v11, -0xffff01

    .line 3702
    invoke-interface {v4, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    move-object v11, v14

    move/from16 v14, v23

    const/16 v18, 0x2

    goto/16 :goto_21

    :cond_38
    const-string v10, "GroupSoundDocId"

    const-wide/16 v13, 0x0

    .line 3705
    invoke-interface {v4, v10, v13, v14}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    cmp-long v22, v10, v13

    if-eqz v22, :cond_39

    .line 3708
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v13

    iget-object v13, v13, Lorg/telegram/messenger/MediaDataController;->ringtoneDataStore:Lorg/telegram/messenger/ringtone/RingtoneDataStore;

    invoke-virtual {v13, v10, v11}, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->getSoundPath(J)Ljava/lang/String;

    move-result-object v10

    move-object v14, v10

    const/4 v10, 0x1

    goto :goto_1f

    :cond_39
    const-string v10, "GroupSoundPath"

    .line 3710
    invoke-interface {v4, v10, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v14, v10

    const/4 v10, 0x0

    :goto_1f
    const-string/jumbo v11, "vibrate_group"

    const/4 v13, 0x0

    .line 3712
    invoke-interface {v4, v11, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    const-string v13, "priority_group"

    move/from16 v22, v10

    const/4 v10, 0x1

    .line 3713
    invoke-interface {v4, v13, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v13

    const-string v10, "GroupLed"

    move/from16 v23, v11

    const v11, -0xffff01

    .line 3714
    invoke-interface {v4, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    move-object v11, v14

    move/from16 v14, v23

    const/16 v18, 0x0

    goto :goto_21

    :cond_3a
    move-wide v10, v13

    cmp-long v13, v25, v10

    if-eqz v13, :cond_3c

    const-string v13, "GlobalSoundDocId"

    .line 3718
    invoke-interface {v4, v13, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v13

    cmp-long v22, v13, v10

    if-eqz v22, :cond_3b

    .line 3721
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v10

    iget-object v10, v10, Lorg/telegram/messenger/MediaDataController;->ringtoneDataStore:Lorg/telegram/messenger/ringtone/RingtoneDataStore;

    invoke-virtual {v10, v13, v14}, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->getSoundPath(J)Ljava/lang/String;

    move-result-object v10

    move-object v14, v10

    const/4 v10, 0x1

    goto :goto_20

    :cond_3b
    const-string v10, "GlobalSoundPath"

    .line 3723
    invoke-interface {v4, v10, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v14, v10

    const/4 v10, 0x0

    :goto_20
    const-string/jumbo v11, "vibrate_messages"

    const/4 v13, 0x0

    .line 3725
    invoke-interface {v4, v11, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    const-string v13, "priority_messages"

    move/from16 v22, v10

    const/4 v10, 0x1

    .line 3726
    invoke-interface {v4, v13, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v13

    const-string v10, "MessagesLed"

    move/from16 v23, v11

    const v11, -0xffff01

    .line 3727
    invoke-interface {v4, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    move-object v11, v14

    move/from16 v14, v23

    const/16 v18, 0x1

    :goto_21
    move/from16 v23, v6

    goto :goto_22

    :cond_3c
    const v11, -0xffff01

    move/from16 v23, v6

    const v10, -0xffff01

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v18, 0x1

    const/16 v22, 0x0

    :goto_22
    const/4 v6, 0x4

    if-ne v14, v6, :cond_3d

    const/4 v14, 0x0

    const/16 v28, 0x1

    goto :goto_23

    :cond_3d
    const/16 v28, 0x0

    .line 3734
    :goto_23
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v35

    if-nez v35, :cond_3e

    invoke-static {v11, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v35

    if-nez v35, :cond_3e

    const/4 v6, 0x3

    const/4 v11, 0x0

    goto :goto_24

    :cond_3e
    move-object v7, v11

    move/from16 v34, v22

    const/4 v6, 0x3

    const/4 v11, 0x1

    :goto_24
    if-eq v12, v6, :cond_3f

    if-eq v13, v12, :cond_3f

    const/4 v11, 0x0

    goto :goto_25

    :cond_3f
    move v12, v13

    :goto_25
    if-eqz v9, :cond_40

    .line 3743
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-eq v13, v10, :cond_40

    .line 3744
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/4 v11, 0x0

    :cond_40
    if-eqz v8, :cond_41

    const/4 v9, 0x4

    if-eq v8, v9, :cond_41

    if-eq v8, v14, :cond_41

    move v14, v8

    const/4 v13, 0x0

    goto :goto_26

    :cond_41
    move v13, v11

    :goto_26
    if-eqz v33, :cond_45

    const-string v8, "EnableInAppSounds"

    const/4 v9, 0x1

    .line 3752
    invoke-interface {v4, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_42

    const/4 v7, 0x0

    :cond_42
    const-string v8, "EnableInAppVibrate"

    .line 3755
    invoke-interface {v4, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_43

    const/4 v14, 0x2

    :cond_43
    const-string v8, "EnableInAppPriority"

    const/4 v9, 0x0

    .line 3758
    invoke-interface {v4, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    if-nez v8, :cond_44

    move v8, v14

    const/4 v14, 0x0

    goto :goto_27

    :cond_44
    const/4 v8, 0x2

    if-ne v12, v8, :cond_45

    move v8, v14

    const/4 v14, 0x1

    goto :goto_27

    :cond_45
    move v8, v14

    move v14, v12

    :goto_27
    if-eqz v28, :cond_46

    const/4 v11, 0x2

    if-eq v8, v11, :cond_46

    .line 3766
    :try_start_4
    sget-object v11, Lorg/telegram/messenger/NotificationsController;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v11}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v11
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    if-eqz v11, :cond_46

    const/4 v12, 0x1

    if-eq v11, v12, :cond_46

    const/4 v8, 0x2

    goto :goto_28

    :catch_0
    move-exception v0

    move-object v11, v0

    .line 3771
    :try_start_5
    invoke-static {v11}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_46
    :goto_28
    if-eqz v31, :cond_47

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v14, 0x0

    .line 3782
    :cond_47
    new-instance v11, Landroid/content/Intent;

    sget-object v12, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v9, Lorg/telegram/ui/LaunchActivity;

    invoke-direct {v11, v12, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3783
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "com.tmessages.openchat"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v12, v7

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const v6, 0x7fffffff

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v6, 0x4000000

    .line 3784
    invoke-virtual {v11, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3786
    invoke-static/range {v39 .. v40}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v6

    if-nez v6, :cond_52

    .line 3787
    iget-object v6, v15, Lorg/telegram/messenger/NotificationsController;->pushDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v6}, Landroidx/collection/LongSparseArray;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_49

    if-eqz v21, :cond_48

    const-string v6, "chatId"

    move v9, v8

    move-wide/from16 v7, v44

    .line 3789
    invoke-virtual {v11, v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_29

    :cond_48
    move v9, v8

    const-wide/16 v6, 0x0

    cmp-long v8, v25, v6

    if-eqz v8, :cond_4a

    const-string/jumbo v6, "userId"

    move-wide/from16 v7, v25

    .line 3791
    invoke-virtual {v11, v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_29

    :cond_49
    move v9, v8

    .line 3794
    :cond_4a
    :goto_29
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->needShowPasscode()Z

    move-result v6

    if-nez v6, :cond_50

    sget-boolean v6, Lorg/telegram/messenger/SharedConfig;->isWaitingForPasscodeEnter:Z

    if-eqz v6, :cond_4b

    goto/16 :goto_2a

    .line 3797
    :cond_4b
    iget-object v6, v15, Lorg/telegram/messenger/NotificationsController;->pushDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v6}, Landroidx/collection/LongSparseArray;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4f

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1c

    if-ge v6, v7, :cond_4f

    if-eqz v2, :cond_4d

    .line 3799
    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    if-eqz v6, :cond_4c

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v6, :cond_4c

    iget-wide v7, v6, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    const-wide/16 v25, 0x0

    cmp-long v21, v7, v25

    if-eqz v21, :cond_4c

    iget v7, v6, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    if-eqz v7, :cond_4c

    move-object v7, v6

    move/from16 v21, v9

    move/from16 v25, v10

    move-wide/from16 v9, v39

    move-object/from16 v6, v46

    goto/16 :goto_2d

    :cond_4c
    move/from16 v21, v9

    move/from16 v25, v10

    move-wide/from16 v9, v39

    move-object/from16 v6, v46

    goto :goto_2c

    :cond_4d
    move-object/from16 v6, v46

    if-eqz v6, :cond_4e

    .line 3803
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v7, :cond_4e

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v7, :cond_4e

    move/from16 v21, v9

    iget-wide v8, v7, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    const-wide/16 v25, 0x0

    cmp-long v28, v8, v25

    if-eqz v28, :cond_51

    iget v8, v7, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    if-eqz v8, :cond_51

    move/from16 v25, v10

    move-wide/from16 v9, v39

    goto :goto_2d

    :cond_4e
    move/from16 v21, v9

    goto :goto_2b

    :cond_4f
    move/from16 v21, v9

    move-object/from16 v6, v46

    goto :goto_2b

    :cond_50
    :goto_2a
    move/from16 v21, v9

    move-object/from16 v6, v46

    :cond_51
    :goto_2b
    move/from16 v25, v10

    move-wide/from16 v9, v39

    goto :goto_2c

    :cond_52
    move/from16 v21, v8

    move-object/from16 v6, v46

    .line 3810
    iget-object v7, v15, Lorg/telegram/messenger/NotificationsController;->pushDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v7}, Landroidx/collection/LongSparseArray;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_51

    sget-wide v7, Lorg/telegram/messenger/NotificationsController;->globalSecretChatId:J

    move/from16 v25, v10

    move-wide/from16 v9, v39

    cmp-long v26, v9, v7

    if-eqz v26, :cond_53

    const-string v7, "encId"

    .line 3811
    invoke-static {v9, v10}, Lorg/telegram/messenger/DialogObject;->getEncryptedChatId(J)I

    move-result v8

    invoke-virtual {v11, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_53
    :goto_2c
    const/4 v7, 0x0

    .line 3814
    :goto_2d
    iget v8, v15, Lorg/telegram/messenger/BaseController;->currentAccount:I

    move/from16 v26, v13

    move-object/from16 v13, v24

    invoke-virtual {v11, v13, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3815
    sget-object v8, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    move-wide/from16 v39, v9

    const/high16 v9, 0x42000000    # 32.0f

    const/4 v10, 0x0

    invoke-static {v8, v10, v11, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    move-object/from16 v10, v29

    .line 3817
    invoke-virtual {v10, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    sget v11, Lorg/telegram/messenger/R$drawable;->notification:I

    .line 3818
    invoke-virtual {v3, v11}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    const/4 v11, 0x1

    .line 3819
    invoke-virtual {v3, v11}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    iget v11, v15, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    .line 3820
    invoke-virtual {v3, v11}, Landroidx/core/app/NotificationCompat$Builder;->setNumber(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    .line 3821
    invoke-virtual {v3, v8}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    iget-object v8, v15, Lorg/telegram/messenger/NotificationsController;->notificationGroup:Ljava/lang/String;

    .line 3822
    invoke-virtual {v3, v8}, Landroidx/core/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    const/4 v8, 0x1

    .line 3823
    invoke-virtual {v3, v8}, Landroidx/core/app/NotificationCompat$Builder;->setGroupSummary(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    .line 3824
    invoke-virtual {v3, v8}, Landroidx/core/app/NotificationCompat$Builder;->setShowWhen(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    move-object/from16 v8, v30

    iget-object v11, v8, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v11, v11, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move-object/from16 v29, v10

    int-to-long v9, v11

    mul-long v9, v9, v37

    .line 3825
    invoke-virtual {v3, v9, v10}, Landroidx/core/app/NotificationCompat$Builder;->setWhen(J)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    const v9, -0xee5306

    .line 3826
    invoke-virtual {v3, v9}, Landroidx/core/app/NotificationCompat$Builder;->setColor(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 3828
    sget v3, Lorg/telegram/messenger/R$drawable;->fork_notification:I

    move-object/from16 v9, v29

    invoke-virtual {v9, v3}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    sget-object v10, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    sget v11, Lorg/telegram/messenger/R$color;->fork_color:I

    .line 3829
    invoke-static {v10, v11}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v10

    invoke-virtual {v3, v10}, Landroidx/core/app/NotificationCompat$Builder;->setColor(I)Landroidx/core/app/NotificationCompat$Builder;

    const-string v3, "msg"

    .line 3835
    invoke-virtual {v9, v3}, Landroidx/core/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    if-nez v2, :cond_54

    if-eqz v6, :cond_54

    .line 3836
    iget-object v2, v6, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    if-eqz v2, :cond_54

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_54

    .line 3837
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tel:+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v6, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroidx/core/app/NotificationCompat$Builder;->addPerson(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    .line 3840
    :cond_54
    new-instance v2, Landroid/content/Intent;

    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v6, Lorg/telegram/messenger/NotificationDismissReceiver;

    invoke-direct {v2, v3, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "messageDate"

    .line 3841
    iget-object v6, v8, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3842
    iget v3, v15, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-virtual {v2, v13, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3843
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const/high16 v6, 0xa000000

    const/4 v10, 0x1

    invoke-static {v3, v10, v2, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroidx/core/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    if-eqz v7, :cond_57

    .line 3846
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v2

    const-string v3, "50_50"

    const/4 v10, 0x0

    invoke-virtual {v2, v7, v10, v3}, Lorg/telegram/messenger/ImageLoader;->getImageFromMemory(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    if-eqz v2, :cond_55

    .line 3848
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2f

    .line 3851
    :cond_55
    :try_start_6
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v7, v3}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v2

    .line 3852
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_58

    const/high16 v3, 0x43200000    # 160.0f

    const/16 v7, 0x32

    .line 3853
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v3, v7

    .line 3854
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/high16 v11, 0x3f800000    # 1.0f

    cmpg-float v11, v3, v11

    if-gez v11, :cond_56

    const/4 v3, 0x1

    goto :goto_2e

    :cond_56
    float-to-int v3, v3

    .line 3855
    :goto_2e
    iput v3, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 3856
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_58

    .line 3858
    invoke-virtual {v9, v2}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2f

    :catchall_0
    nop

    goto :goto_2f

    :cond_57
    const/4 v10, 0x0

    :cond_58
    :goto_2f
    const/4 v2, 0x5

    const/16 v3, 0x1a

    if-eqz p1, :cond_5e

    const/4 v7, 0x1

    if-ne v1, v7, :cond_59

    goto :goto_31

    :cond_59
    if-nez v14, :cond_5a

    const/4 v7, 0x0

    .line 3875
    :try_start_7
    invoke-virtual {v9, v7}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 3876
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v11, v3, :cond_5f

    const/4 v11, 0x3

    goto :goto_33

    :cond_5a
    const/4 v11, 0x1

    if-eq v14, v11, :cond_5d

    const/4 v11, 0x2

    if-ne v14, v11, :cond_5b

    const/4 v11, 0x1

    goto :goto_30

    :cond_5b
    const/4 v11, 0x4

    if-ne v14, v11, :cond_5c

    const/4 v11, -0x2

    .line 3885
    invoke-virtual {v9, v11}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 3886
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v11, v3, :cond_5f

    const/4 v11, 0x1

    goto :goto_33

    :cond_5c
    if-ne v14, v2, :cond_5f

    const/4 v11, -0x1

    .line 3890
    invoke-virtual {v9, v11}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 3891
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v11, v3, :cond_5f

    goto :goto_32

    .line 3880
    :cond_5d
    :goto_30
    invoke-virtual {v9, v11}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 3881
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v11, v3, :cond_5f

    const/4 v11, 0x4

    goto :goto_33

    :cond_5e
    :goto_31
    const/4 v11, -0x1

    .line 3869
    invoke-virtual {v9, v11}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 3870
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v11, v3, :cond_5f

    :goto_32
    const/4 v11, 0x2

    goto :goto_33

    :cond_5f
    const/4 v11, 0x0

    :goto_33
    const/4 v14, 0x1

    if-eq v1, v14, :cond_70

    if-nez v31, :cond_70

    if-eqz v33, :cond_60

    const-string v1, "EnableInAppPreview"

    .line 3898
    invoke-interface {v4, v1, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_62

    if-eqz v27, :cond_62

    .line 3899
    :cond_60
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v4, 0x64

    if-le v1, v4, :cond_61

    .line 3900
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v7, v27

    const/4 v14, 0x0

    invoke-virtual {v7, v14, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0x20

    const/16 v10, 0xa

    invoke-virtual {v4, v10, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "..."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_34

    :cond_61
    move-object/from16 v7, v27

    move-object v1, v7

    .line 3902
    :goto_34
    invoke-virtual {v9, v1}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    :cond_62
    if-eqz v12, :cond_69

    const-string v1, "NoSound"

    .line 3904
    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_69

    .line 3905
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_66

    const-string v1, "Default"

    .line 3906
    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_65

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_63

    goto :goto_35

    :cond_63
    if-eqz v34, :cond_64

    .line 3910
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getApplicationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".provider"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v3}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 3911
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v3, "com.android.systemui"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    goto/16 :goto_37

    .line 3913
    :cond_64
    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_37

    .line 3907
    :cond_65
    :goto_35
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    goto :goto_37

    .line 3917
    :cond_66
    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_67

    .line 3918
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v9, v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;I)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_36

    :cond_67
    const/16 v3, 0x18

    if-lt v1, v3, :cond_68

    const-string v1, "file://"

    .line 3920
    invoke-virtual {v12, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_68

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->isInternalUri(Landroid/net/Uri;)Z

    move-result v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    if-nez v1, :cond_68

    .line 3922
    :try_start_8
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getApplicationId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".provider"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    const-string v5, "file://"

    move-object/from16 v7, v47

    invoke-virtual {v12, v5, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v3, v4}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 3923
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v4, "com.android.systemui"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v1, v5}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 3924
    invoke-virtual {v9, v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;I)Landroidx/core/app/NotificationCompat$Builder;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_36

    .line 3926
    :catch_1
    :try_start_9
    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v9, v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;I)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_36

    .line 3929
    :cond_68
    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v9, v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;I)Landroidx/core/app/NotificationCompat$Builder;

    :cond_69
    :goto_36
    const/4 v1, 0x0

    :goto_37
    if-eqz v25, :cond_6a

    const/16 v2, 0x3e8

    const/16 v3, 0x3e8

    move/from16 v10, v25

    .line 3935
    invoke-virtual {v9, v10, v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setLights(III)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_38

    :cond_6a
    move/from16 v10, v25

    :goto_38
    move/from16 v2, v21

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6b

    new-array v2, v3, [J

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    aput-wide v3, v2, v5

    const/4 v7, 0x1

    aput-wide v3, v2, v7

    .line 3938
    invoke-virtual {v9, v2}, Landroidx/core/app/NotificationCompat$Builder;->setVibrate([J)Landroidx/core/app/NotificationCompat$Builder;

    :goto_39
    move-object v12, v1

    move-object/from16 v20, v2

    goto :goto_3c

    :cond_6b
    const/4 v3, 0x1

    if-ne v2, v3, :cond_6c

    const/4 v4, 0x4

    new-array v2, v4, [J

    const-wide/16 v4, 0x0

    const/4 v7, 0x0

    aput-wide v4, v2, v7

    const-wide/16 v19, 0x64

    aput-wide v19, v2, v3

    const/4 v3, 0x2

    aput-wide v4, v2, v3

    const-wide/16 v3, 0x64

    const/4 v5, 0x3

    aput-wide v3, v2, v5

    .line 3940
    invoke-virtual {v9, v2}, Landroidx/core/app/NotificationCompat$Builder;->setVibrate([J)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_39

    :cond_6c
    if-eqz v2, :cond_6f

    const/4 v3, 0x4

    if-ne v2, v3, :cond_6d

    goto :goto_3a

    :cond_6d
    const/4 v3, 0x3

    if-ne v2, v3, :cond_6e

    const/4 v2, 0x2

    new-array v3, v2, [J

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    aput-wide v4, v3, v2

    const/4 v4, 0x1

    aput-wide v37, v3, v4

    .line 3945
    invoke-virtual {v9, v3}, Landroidx/core/app/NotificationCompat$Builder;->setVibrate([J)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_3b

    :cond_6e
    move-object v12, v1

    const/4 v5, 0x1

    const/16 v20, 0x0

    goto :goto_3d

    :cond_6f
    :goto_3a
    const/4 v3, 0x2

    .line 3942
    invoke-virtual {v9, v3}, Landroidx/core/app/NotificationCompat$Builder;->setDefaults(I)Landroidx/core/app/NotificationCompat$Builder;

    const/4 v2, 0x0

    new-array v3, v2, [J

    :goto_3b
    move-object v12, v1

    move-object/from16 v20, v3

    :goto_3c
    const/4 v5, 0x1

    goto :goto_3d

    :cond_70
    move/from16 v10, v25

    const/4 v1, 0x2

    new-array v3, v1, [J

    const-wide/16 v1, 0x0

    const/4 v4, 0x0

    aput-wide v1, v3, v4

    const/4 v5, 0x1

    aput-wide v1, v3, v5

    .line 3948
    invoke-virtual {v9, v3}, Landroidx/core/app/NotificationCompat$Builder;->setVibrate([J)Landroidx/core/app/NotificationCompat$Builder;

    move-object/from16 v20, v3

    const/4 v12, 0x0

    .line 3952
    :goto_3d
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->needShowPasscode()Z

    move-result v1

    if-nez v1, :cond_75

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isWaitingForPasscodeEnter:Z

    if-nez v1, :cond_75

    invoke-virtual {v8}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v1

    const-wide/32 v21, 0xbdb28

    cmp-long v3, v1, v21

    if-nez v3, :cond_75

    .line 3953
    iget-object v1, v8, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    if-eqz v1, :cond_75

    .line 3954
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;->rows:Ljava/util/ArrayList;

    .line 3955
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    const/16 v19, 0x0

    :goto_3e
    if-ge v3, v2, :cond_74

    .line 3956
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRow;

    .line 3957
    iget-object v14, v7, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRow;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/4 v4, 0x0

    :goto_3f
    if-ge v4, v14, :cond_73

    .line 3958
    iget-object v5, v7, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRow;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$KeyboardButton;

    .line 3959
    instance-of v6, v5, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonCallback;

    if-eqz v6, :cond_72

    .line 3960
    new-instance v6, Landroid/content/Intent;

    move-object/from16 v22, v1

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    move/from16 p1, v2

    const-class v2, Lorg/telegram/messenger/NotificationCallbackReceiver;

    invoke-direct {v6, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3961
    iget v1, v15, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-virtual {v6, v13, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "did"

    move/from16 v24, v11

    move-object/from16 v25, v12

    move-wide/from16 v11, v39

    .line 3962
    invoke-virtual {v6, v1, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3963
    iget-object v1, v5, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->data:[B

    if-eqz v1, :cond_71

    const-string v2, "data"

    .line 3964
    invoke-virtual {v6, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    :cond_71
    const-string v1, "mid"

    .line 3966
    invoke-virtual {v8}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    invoke-virtual {v6, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3967
    iget-object v1, v5, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->text:Ljava/lang/String;

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    iget v5, v15, Lorg/telegram/messenger/NotificationsController;->lastButtonId:I

    move-object/from16 v27, v7

    add-int/lit8 v7, v5, 0x1

    iput v7, v15, Lorg/telegram/messenger/NotificationsController;->lastButtonId:I

    const/high16 v7, 0xa000000

    invoke-static {v2, v5, v6, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v9, v5, v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    const/16 v19, 0x1

    goto :goto_40

    :cond_72
    move-object/from16 v22, v1

    move/from16 p1, v2

    move-object/from16 v27, v7

    move/from16 v24, v11

    move-object/from16 v25, v12

    move-wide/from16 v11, v39

    const/4 v5, 0x0

    :goto_40
    add-int/lit8 v4, v4, 0x1

    move/from16 v2, p1

    move-wide/from16 v39, v11

    move-object/from16 v1, v22

    move/from16 v11, v24

    move-object/from16 v12, v25

    move-object/from16 v7, v27

    const/4 v5, 0x1

    const/high16 v6, 0xa000000

    goto :goto_3f

    :cond_73
    move-object/from16 v22, v1

    move/from16 p1, v2

    move/from16 v24, v11

    move-object/from16 v25, v12

    move-wide/from16 v11, v39

    const/4 v5, 0x0

    add-int/lit8 v3, v3, 0x1

    move/from16 v11, v24

    move-object/from16 v12, v25

    const/4 v5, 0x1

    const/high16 v6, 0xa000000

    goto/16 :goto_3e

    :cond_74
    move/from16 v24, v11

    move-object/from16 v25, v12

    move-wide/from16 v11, v39

    move/from16 v3, v19

    goto :goto_41

    :cond_75
    move/from16 v24, v11

    move-object/from16 v25, v12

    move-wide/from16 v11, v39

    const/4 v5, 0x0

    const/4 v3, 0x0

    :goto_41
    if-nez v3, :cond_77

    .line 3975
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-ge v1, v2, :cond_77

    sget-object v2, Lorg/telegram/messenger/SharedConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_77

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/NotificationsController;->hasMessagesToReply()Z

    move-result v2

    if-eqz v2, :cond_77

    .line 3976
    new-instance v2, Landroid/content/Intent;

    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v4, Lorg/telegram/messenger/PopupReplyReceiver;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3977
    iget v3, v15, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-virtual {v2, v13, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v3, 0x13

    if-gt v1, v3, :cond_76

    .line 3979
    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_reply2:I

    const-string v3, "Reply"

    sget v4, Lorg/telegram/messenger/R$string;->Reply:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const/high16 v5, 0xa000000

    const/4 v6, 0x2

    invoke-static {v4, v6, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v9, v1, v3, v2}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_42

    .line 3981
    :cond_76
    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_reply:I

    const-string v3, "Reply"

    sget v4, Lorg/telegram/messenger/R$string;->Reply:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const/high16 v5, 0xa000000

    const/4 v6, 0x2

    invoke-static {v4, v6, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v9, v1, v3, v2}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    :cond_77
    :goto_42
    move-object/from16 v1, p0

    move-object v2, v9

    move-object/from16 v3, v42

    move-wide v4, v11

    move/from16 v6, v23

    move-object/from16 v7, v17

    move-object/from16 v8, v20

    move v9, v10

    move-object/from16 v10, v25

    move/from16 v11, v24

    move/from16 v12, v26

    move/from16 v13, v33

    move/from16 v14, v31

    move/from16 v15, v18

    .line 3984
    invoke-direct/range {v1 .. v15}, Lorg/telegram/messenger/NotificationsController;->showExtraNotifications(Landroidx/core/app/NotificationCompat$Builder;Ljava/lang/String;JILjava/lang/String;[JILandroid/net/Uri;IZZZI)V

    .line 3985
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/NotificationsController;->scheduleNotificationRepeat()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_43

    :catch_2
    move-exception v0

    move-object v1, v0

    .line 3987
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_43
    return-void

    .line 3448
    :cond_78
    :goto_44
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/NotificationsController;->dismissNotification()V

    return-void
.end method

.method private unsupportedNotificationShortcut()Z
    .locals 2

    .line 3005
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->chatBubbles:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private validateChannelId(JILjava/lang/String;[JILandroid/net/Uri;IZZZI)Ljava/lang/String;
    .locals 25

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-object/from16 v4, p7

    move/from16 v5, p8

    move/from16 v0, p12

    .line 3190
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/NotificationsController;->ensureGroupsCreated()V

    .line 3192
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/AccountInstance;->getNotificationsSettings()Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "groups"

    const-string v8, "private"

    const-string v9, "channels"

    const/4 v11, 0x2

    if-eqz p11, :cond_0

    .line 3198
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "other"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v1, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    goto :goto_0

    :cond_0
    if-ne v0, v11, :cond_1

    .line 3202
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v1, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "overwrite_channel"

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    .line 3205
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v1, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "overwrite_group"

    goto :goto_0

    .line 3208
    :cond_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v1, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "overwrite_private"

    :goto_0
    const/4 v15, 0x0

    if-nez p9, :cond_3

    .line 3213
    invoke-static/range {p1 .. p2}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v16

    if-eqz v16, :cond_3

    const/16 v16, 0x1

    goto :goto_1

    :cond_3
    const/16 v16, 0x0

    :goto_1
    if-nez p10, :cond_4

    if-eqz v13, :cond_4

    .line 3214
    invoke-interface {v6, v13, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    if-eqz v13, :cond_4

    const/4 v13, 0x1

    goto :goto_2

    :cond_4
    const/4 v13, 0x0

    :goto_2
    if-nez v4, :cond_5

    const-string v17, "NoSound"

    goto :goto_3

    .line 3216
    :cond_5
    invoke-virtual/range {p7 .. p7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v17

    :goto_3
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v14, 0x5

    if-eqz v10, :cond_6

    .line 3217
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-le v11, v14, :cond_6

    .line 3218
    invoke-virtual {v10, v15, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    :cond_6
    const-string v11, "_"

    if-eqz p11, :cond_7

    .line 3221
    sget v7, Lorg/telegram/messenger/R$string;->NotificationsSilent:I

    const-string v8, "NotificationsSilent"

    invoke-static {v8, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "silent"

    goto :goto_8

    :cond_7
    if-eqz p9, :cond_e

    if-eqz p10, :cond_8

    .line 3224
    sget v14, Lorg/telegram/messenger/R$string;->NotificationsInAppDefault:I

    const-string v15, "NotificationsInAppDefault"

    goto :goto_4

    :cond_8
    sget v14, Lorg/telegram/messenger/R$string;->NotificationsDefault:I

    const-string v15, "NotificationsDefault"

    :goto_4
    invoke-static {v15, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x2

    if-ne v0, v15, :cond_b

    if-eqz p10, :cond_9

    const-string v9, "channels_ia"

    :cond_9
    move-object v8, v9

    :cond_a
    :goto_5
    move-object v7, v14

    goto :goto_8

    :cond_b
    if-nez v0, :cond_d

    if-eqz p10, :cond_c

    const-string v7, "groups_ia"

    :cond_c
    move-object v8, v7

    goto :goto_5

    :cond_d
    if-eqz p10, :cond_a

    const-string v8, "private_ia"

    goto :goto_5

    :cond_e
    if-eqz p10, :cond_f

    .line 3234
    sget v7, Lorg/telegram/messenger/R$string;->NotificationsChatInApp:I

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p4, v9, v8

    const-string v8, "NotificationsChatInApp"

    invoke-static {v8, v7, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_6

    :cond_f
    move-object/from16 v7, p4

    .line 3237
    :goto_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p10, :cond_10

    const-string v9, "org.telegram.keyia"

    goto :goto_7

    :cond_10
    const-string v9, "org.telegram.key"

    :goto_7
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, p3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3239
    :goto_8
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    .line 3240
    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3241
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "_s"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v6, v14, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 3243
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 p3, v7

    const-string/jumbo v7, "secret"

    move-object/from16 v18, v12

    if-eqz v10, :cond_37

    .line 3247
    sget-object v12, Lorg/telegram/messenger/NotificationsController;->systemNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v12, v10}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v12

    .line 3248
    sget-boolean v19, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    move-object/from16 v20, v11

    const-string v11, " = "

    if-eqz v19, :cond_11

    .line 3249
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v15

    const-string v15, "current channel for "

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    goto :goto_9

    :cond_11
    move-object/from16 v19, v15

    :goto_9
    if-eqz v12, :cond_36

    if-nez p11, :cond_35

    if-nez v13, :cond_35

    .line 3253
    invoke-virtual {v12}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v4

    .line 3254
    invoke-virtual {v12}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v15

    .line 3255
    invoke-virtual {v12}, Landroid/app/NotificationChannel;->getVibrationPattern()[J

    move-result-object v21

    move/from16 v22, v13

    .line 3256
    invoke-virtual {v12}, Landroid/app/NotificationChannel;->shouldVibrate()Z

    move-result v13

    if-nez v13, :cond_12

    if-nez v21, :cond_12

    move-object/from16 v23, v8

    move/from16 v24, v13

    const/4 v8, 0x2

    new-array v13, v8, [J

    .line 3258
    fill-array-data v13, :array_0

    goto :goto_a

    :cond_12
    move-object/from16 v23, v8

    move/from16 v24, v13

    move-object/from16 v13, v21

    .line 3260
    :goto_a
    invoke-virtual {v12}, Landroid/app/NotificationChannel;->getLightColor()I

    move-result v8

    if-eqz v13, :cond_13

    const/4 v12, 0x0

    .line 3262
    :goto_b
    array-length v5, v13

    if-ge v12, v5, :cond_13

    .line 3263
    aget-wide v2, v13, v12

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v12, v12, 0x1

    move-wide/from16 v2, p1

    goto :goto_b

    .line 3266
    :cond_13
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz v15, :cond_14

    .line 3268
    invoke-virtual {v15}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3270
    :cond_14
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-nez p9, :cond_15

    if-eqz v16, :cond_15

    .line 3272
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3274
    :cond_15
    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v2, :cond_16

    .line 3275
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current channel settings for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " old = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 3277
    :cond_16
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 3278
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3279
    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_33

    const-string v3, "notify2_"

    if-nez v4, :cond_19

    .line 3282
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    if-eqz p9, :cond_18

    if-nez p10, :cond_17

    .line 3285
    invoke-static/range {p12 .. p12}, Lorg/telegram/messenger/NotificationsController;->getGlobalNotificationsKey(I)Ljava/lang/String;

    move-result-object v3

    const v5, 0x7fffffff

    invoke-interface {v4, v3, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3286
    invoke-virtual {v1, v0}, Lorg/telegram/messenger/NotificationsController;->updateServerNotificationsSettings(I)V

    :cond_17
    move-wide/from16 v11, p1

    const/4 v5, 0x1

    goto :goto_c

    .line 3289
    :cond_18
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v11, p1

    const/4 v3, 0x0

    invoke-static {v11, v12, v3}, Lorg/telegram/messenger/NotificationsController;->getSharedPrefKey(JI)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v15, 0x2

    invoke-interface {v4, v5, v15}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const/4 v5, 0x1

    .line 3290
    invoke-virtual {v1, v11, v12, v3, v5}, Lorg/telegram/messenger/NotificationsController;->updateServerNotificationsSettings(JIZ)V

    :goto_c
    move/from16 v15, p8

    move-object/from16 v21, v2

    move-object/from16 v2, p5

    goto/16 :goto_10

    :cond_19
    move-wide/from16 v11, p1

    move/from16 v15, p8

    const/4 v5, 0x1

    if-eq v4, v15, :cond_22

    if-nez p10, :cond_21

    .line 3295
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    move-object/from16 v21, v2

    const/4 v2, 0x4

    if-eq v4, v2, :cond_1d

    const/4 v2, 0x5

    if-ne v4, v2, :cond_1a

    goto :goto_d

    :cond_1a
    const/4 v2, 0x1

    if-ne v4, v2, :cond_1b

    const/4 v2, 0x2

    const/4 v4, 0x4

    goto :goto_e

    :cond_1b
    const/4 v2, 0x2

    if-ne v4, v2, :cond_1c

    const/4 v4, 0x5

    goto :goto_e

    :cond_1c
    const/4 v4, 0x0

    goto :goto_e

    :cond_1d
    :goto_d
    const/4 v2, 0x2

    const/4 v4, 0x1

    :goto_e
    if-eqz p9, :cond_20

    .line 3307
    invoke-static/range {p12 .. p12}, Lorg/telegram/messenger/NotificationsController;->getGlobalNotificationsKey(I)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    invoke-interface {v5, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1e

    const-string v2, "priority_channel"

    .line 3309
    invoke-interface {v5, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_f

    :cond_1e
    if-nez v0, :cond_1f

    const-string v2, "priority_group"

    .line 3311
    invoke-interface {v5, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_f

    :cond_1f
    const-string v2, "priority_messages"

    .line 3313
    invoke-interface {v5, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_f

    .line 3316
    :cond_20
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v5, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3317
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyuntil_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3318
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "priority_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_f

    :cond_21
    move-object/from16 v21, v2

    const/4 v5, 0x0

    :goto_f
    move-object/from16 v2, p5

    move-object v4, v5

    const/4 v5, 0x1

    goto :goto_10

    :cond_22
    move-object/from16 v21, v2

    move-object/from16 v2, p5

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 3323
    :goto_10
    invoke-direct {v1, v2}, Lorg/telegram/messenger/NotificationsController;->isEmptyVibration([J)Z

    move-result v3

    const/16 v17, 0x1

    xor-int/lit8 v3, v3, 0x1

    move/from16 v2, v24

    if-eq v3, v2, :cond_2c

    if-nez p10, :cond_2b

    if-nez v4, :cond_23

    .line 3327
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    :cond_23
    if-eqz p9, :cond_29

    const/4 v3, 0x2

    if-ne v0, v3, :cond_25

    if-eqz v2, :cond_24

    const/4 v2, 0x0

    goto :goto_11

    :cond_24
    const/4 v2, 0x2

    :goto_11
    const-string/jumbo v3, "vibrate_channel"

    .line 3331
    invoke-interface {v4, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_15

    :cond_25
    if-nez v0, :cond_27

    if-eqz v2, :cond_26

    const/4 v2, 0x0

    goto :goto_12

    :cond_26
    const/4 v2, 0x2

    :goto_12
    const-string/jumbo v3, "vibrate_group"

    .line 3333
    invoke-interface {v4, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_15

    :cond_27
    if-eqz v2, :cond_28

    const/4 v2, 0x0

    goto :goto_13

    :cond_28
    const/4 v2, 0x2

    :goto_13
    const-string/jumbo v3, "vibrate_messages"

    .line 3335
    invoke-interface {v4, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_15

    .line 3338
    :cond_29
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "vibrate_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_2a

    const/4 v2, 0x0

    goto :goto_14

    :cond_2a
    const/4 v2, 0x2

    :goto_14
    invoke-interface {v4, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_2b
    :goto_15
    move/from16 v2, p6

    const/4 v5, 0x1

    goto :goto_16

    :cond_2c
    move-object/from16 v13, p5

    move/from16 v2, p6

    :goto_16
    if-eq v8, v2, :cond_32

    if-nez p10, :cond_31

    if-nez v4, :cond_2d

    .line 3347
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    :cond_2d
    if-eqz p9, :cond_30

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2e

    const-string v0, "ChannelLed"

    .line 3351
    invoke-interface {v4, v0, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_17

    :cond_2e
    if-nez v0, :cond_2f

    const-string v0, "GroupLed"

    .line 3353
    invoke-interface {v4, v0, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_17

    :cond_2f
    const-string v0, "MessagesLed"

    .line 3355
    invoke-interface {v4, v0, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_17

    .line 3358
    :cond_30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "color_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_31
    :goto_17
    const/4 v5, 0x1

    goto :goto_18

    :cond_32
    move v8, v2

    :goto_18
    if-eqz v4, :cond_34

    .line 3365
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_19

    :cond_33
    move-wide/from16 v11, p1

    move/from16 v15, p8

    move-object/from16 v21, v2

    move/from16 v2, p6

    move-object/from16 v13, p5

    move v8, v2

    const/4 v5, 0x0

    :cond_34
    :goto_19
    move v2, v8

    move-object/from16 v0, v21

    move v8, v5

    goto :goto_1b

    :cond_35
    move-wide v11, v2

    move v15, v5

    move-object/from16 v23, v8

    move/from16 v22, v13

    goto :goto_1a

    :cond_36
    move-wide v11, v2

    move v15, v5

    move-object/from16 v23, v8

    move/from16 v22, v13

    move/from16 v2, p6

    move-object/from16 v13, p5

    const/4 v0, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v14, 0x0

    goto :goto_1b

    :cond_37
    move-object/from16 v23, v8

    move-object/from16 v20, v11

    move/from16 v22, v13

    move-object/from16 v19, v15

    move-wide v11, v2

    move v15, v5

    :goto_1a
    move/from16 v2, p6

    move-object/from16 v13, p5

    const/4 v0, 0x0

    const/4 v8, 0x0

    :goto_1b
    if-eqz v8, :cond_38

    if-eqz v0, :cond_38

    .line 3376
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    move-object/from16 v4, v23

    invoke-interface {v3, v4, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, v19

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3377
    sget-boolean v3, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v3, :cond_39

    .line 3378
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "change edited channel "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    goto :goto_1c

    :cond_38
    move-object/from16 v8, v19

    move-object/from16 v4, v23

    if-nez v22, :cond_3a

    if-eqz v0, :cond_3a

    if-eqz p10, :cond_3a

    if-nez p9, :cond_39

    goto :goto_1e

    :cond_39
    :goto_1c
    move-object/from16 v5, p7

    move-object v3, v6

    :goto_1d
    move-object v9, v10

    goto/16 :goto_21

    :cond_3a
    :goto_1e
    const/4 v0, 0x0

    .line 3381
    :goto_1f
    array-length v3, v13

    if-ge v0, v3, :cond_3b

    move-object v3, v6

    .line 3382
    aget-wide v5, v13, v0

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    move-object v6, v3

    goto :goto_1f

    :cond_3b
    move-object v3, v6

    .line 3384
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v5, p7

    if-eqz v5, :cond_3c

    .line 3386
    invoke-virtual/range {p7 .. p7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3388
    :cond_3c
    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-nez p9, :cond_3d

    if-eqz v16, :cond_3d

    .line 3390
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3392
    :cond_3d
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez p11, :cond_40

    if-eqz v10, :cond_40

    if-nez v22, :cond_3e

    .line 3394
    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    .line 3396
    :cond_3e
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/NotificationsController;->systemNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v10}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_20

    :catch_0
    move-exception v0

    .line 3398
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 3400
    :goto_20
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_3f

    .line 3401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "delete channel by settings change "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_3f
    move-object v0, v6

    const/4 v9, 0x0

    goto :goto_21

    :cond_40
    move-object v0, v6

    goto :goto_1d

    :goto_21
    if-nez v9, :cond_48

    const-string v6, "channel_"

    if-eqz p9, :cond_41

    .line 3408
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, v1, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, v20

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v6}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v9

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_22

    :cond_41
    move-object/from16 v9, v20

    .line 3410
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v10, v1, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v6}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v9

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_22
    move-object v9, v6

    .line 3412
    new-instance v6, Landroid/app/NotificationChannel;

    if-eqz v16, :cond_42

    sget v7, Lorg/telegram/messenger/R$string;->SecretChatName:I

    const-string v10, "SecretChatName"

    invoke-static {v10, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    goto :goto_23

    :cond_42
    move-object/from16 v7, p3

    :goto_23
    invoke-direct {v6, v9, v7, v15}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    move-object/from16 v12, v18

    .line 3413
    invoke-virtual {v6, v12}, Landroid/app/NotificationChannel;->setGroup(Ljava/lang/String;)V

    if-eqz v2, :cond_43

    const/4 v7, 0x1

    .line 3415
    invoke-virtual {v6, v7}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 3416
    invoke-virtual {v6, v2}, Landroid/app/NotificationChannel;->setLightColor(I)V

    const/4 v2, 0x0

    goto :goto_24

    :cond_43
    const/4 v2, 0x0

    const/4 v7, 0x1

    .line 3418
    invoke-virtual {v6, v2}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 3420
    :goto_24
    invoke-direct {v1, v13}, Lorg/telegram/messenger/NotificationsController;->isEmptyVibration([J)Z

    move-result v10

    if-nez v10, :cond_44

    .line 3421
    invoke-virtual {v6, v7}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 3422
    array-length v2, v13

    if-lez v2, :cond_45

    .line 3423
    invoke-virtual {v6, v13}, Landroid/app/NotificationChannel;->setVibrationPattern([J)V

    goto :goto_25

    .line 3426
    :cond_44
    invoke-virtual {v6, v2}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 3428
    :cond_45
    :goto_25
    new-instance v2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v7, 0x4

    .line 3429
    invoke-virtual {v2, v7}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    const/4 v7, 0x5

    .line 3430
    invoke-virtual {v2, v7}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    if-eqz v5, :cond_46

    .line 3432
    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    invoke-virtual {v6, v5, v2}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    goto :goto_26

    :cond_46
    const/4 v2, 0x0

    .line 3434
    invoke-virtual {v6, v2, v2}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 3436
    :goto_26
    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v2, :cond_47

    .line 3437
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "create new channel "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 3439
    :cond_47
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iput-wide v10, v1, Lorg/telegram/messenger/NotificationsController;->lastNotificationChannelCreateTime:J

    .line 3440
    sget-object v2, Lorg/telegram/messenger/NotificationsController;->systemNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v2, v6}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 3441
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v4, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_48
    return-object v9

    :array_0
    .array-data 8
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public cleanup()V
    .locals 2

    .line 338
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController;->popupMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 339
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController;->popupReplyMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 340
    iput-boolean v0, p0, Lorg/telegram/messenger/NotificationsController;->channelGroupsCreated:Z

    .line 341
    sget-object v0, Lorg/telegram/messenger/NotificationsController;->notificationsQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/messenger/NotificationsController;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public clearDialogNotificationsSettings(JI)V
    .locals 5

    .line 4813
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getNotificationsSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 4814
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4815
    invoke-static {p1, p2, p3}, Lorg/telegram/messenger/NotificationsController;->getSharedPrefKey(JI)Ljava/lang/String;

    move-result-object v1

    .line 4816
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notify2_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "custom_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4817
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, p1, p2, v2, v3}, Lorg/telegram/messenger/MessagesStorage;->setDialogFlags(JJ)V

    .line 4818
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Dialog;

    if-eqz v1, :cond_0

    .line 4820
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings;-><init>()V

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$Dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    .line 4822
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4823
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationsController()Lorg/telegram/messenger/NotificationsController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, p3, v1}, Lorg/telegram/messenger/NotificationsController;->updateServerNotificationsSettings(JIZ)V

    return-void
.end method

.method public deleteAllNotificationChannels()V
    .locals 2

    .line 2976
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    return-void

    .line 2979
    :cond_0
    sget-object v0, Lorg/telegram/messenger/NotificationsController;->notificationsQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/messenger/NotificationsController;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public deleteNotificationChannel(JI)V
    .locals 1

    const/4 v0, -0x1

    .line 2841
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/telegram/messenger/NotificationsController;->deleteNotificationChannel(JII)V

    return-void
.end method

.method public deleteNotificationChannel(JII)V
    .locals 8

    .line 2891
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    return-void

    .line 2894
    :cond_0
    sget-object v0, Lorg/telegram/messenger/NotificationsController;->notificationsQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v7, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda24;

    move-object v1, v7

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/messenger/NotificationsController;JII)V

    invoke-virtual {v0, v7}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public deleteNotificationChannelGlobal(I)V
    .locals 1

    const/4 v0, -0x1

    .line 2898
    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/NotificationsController;->deleteNotificationChannelGlobal(II)V

    return-void
.end method

.method public deleteNotificationChannelGlobal(II)V
    .locals 2

    .line 2969
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    return-void

    .line 2972
    :cond_0
    sget-object v0, Lorg/telegram/messenger/NotificationsController;->notificationsQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda22;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/messenger/NotificationsController;II)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public deleteNotificationChannelGlobalInternal(II)V
    .locals 11

    .line 2902
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    return-void

    .line 2906
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getNotificationsSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2907
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const-string v2, "delete channel global internal "

    const-string v3, "_s"

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x2

    if-eqz p2, :cond_1

    if-ne p2, v5, :cond_4

    :cond_1
    if-ne p1, v6, :cond_2

    :try_start_1
    const-string v7, "channels"

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    const-string v7, "groups"

    goto :goto_0

    :cond_3
    const-string v7, "private"

    .line 2917
    :goto_0
    invoke-interface {v0, v7, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 2919
    invoke-interface {v1, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v9, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 2921
    :try_start_2
    sget-object v7, Lorg/telegram/messenger/NotificationsController;->systemNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v7, v8}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v7

    .line 2923
    :try_start_3
    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2925
    :goto_1
    sget-boolean v7, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v7, :cond_4

    .line 2926
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_4
    const/4 v7, 0x1

    if-eq p2, v7, :cond_5

    if-ne p2, v5, :cond_8

    :cond_5
    if-ne p1, v6, :cond_6

    const-string p2, "channels_ia"

    goto :goto_2

    :cond_6
    if-nez p1, :cond_7

    const-string p2, "groups_ia"

    goto :goto_2

    :cond_7
    const-string p2, "private_ia"

    .line 2940
    :goto_2
    invoke-interface {v0, p2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 2942
    invoke-interface {v1, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v4, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 2944
    :try_start_4
    sget-object p2, Lorg/telegram/messenger/NotificationsController;->systemNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p2, v0}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    :catch_1
    move-exception p2

    .line 2946
    :try_start_5
    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2948
    :goto_3
    sget-boolean p2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p2, :cond_8

    .line 2949
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_8
    if-ne p1, v6, :cond_9

    const-string p1, "overwrite_channel"

    goto :goto_4

    :cond_9
    if-nez p1, :cond_a

    const-string p1, "overwrite_group"

    goto :goto_4

    :cond_a
    const-string p1, "overwrite_private"

    .line 2961
    :goto_4
    invoke-interface {v1, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2962
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_5

    :catch_2
    move-exception p1

    .line 2964
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_5
    return-void
.end method

.method protected ensureGroupsCreated()V
    .locals 17

    move-object/from16 v1, p0

    .line 3077
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getNotificationsSettings()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 3078
    iget-object v0, v1, Lorg/telegram/messenger/NotificationsController;->groupsCreated:Ljava/lang/Boolean;

    const-string v3, "groupsCreated4"

    const/4 v4, 0x0

    if-nez v0, :cond_0

    .line 3079
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/messenger/NotificationsController;->groupsCreated:Ljava/lang/Boolean;

    .line 3081
    :cond_0
    iget-object v0, v1, Lorg/telegram/messenger/NotificationsController;->groupsCreated:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v0, :cond_d

    .line 3083
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, v1, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "channel"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3084
    sget-object v7, Lorg/telegram/messenger/NotificationsController;->systemNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v7}, Landroid/app/NotificationManager;->getNotificationChannels()Ljava/util/List;

    move-result-object v7

    .line 3085
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    move-object v10, v6

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v8, :cond_b

    .line 3088
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/NotificationChannel;

    .line 3089
    invoke-virtual {v11}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v12

    .line 3090
    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 3091
    invoke-virtual {v11}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v11

    const/4 v13, 0x4

    if-eq v11, v13, :cond_9

    const/4 v13, 0x5

    if-eq v11, v13, :cond_9

    const-string v11, "_ia_"

    .line 3093
    invoke-virtual {v12, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    goto/16 :goto_1

    :cond_1
    const-string v11, "_channels_"

    .line 3095
    invoke-virtual {v12, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    if-nez v10, :cond_2

    .line 3097
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/messenger/AccountInstance;->getNotificationsSettings()Landroid/content/SharedPreferences;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    :cond_2
    const-string v11, "priority_channel"

    .line 3099
    invoke-interface {v10, v11}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    const-string/jumbo v13, "vibrate_channel"

    invoke-interface {v11, v13}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    const-string v13, "ChannelSoundPath"

    invoke-interface {v11, v13}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    const-string v13, "ChannelSound"

    invoke-interface {v11, v13}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_1

    :cond_3
    const-string v11, "_groups_"

    .line 3100
    invoke-virtual {v12, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v13, "priority_group"

    if-eqz v11, :cond_5

    if-nez v10, :cond_4

    .line 3102
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/messenger/AccountInstance;->getNotificationsSettings()Landroid/content/SharedPreferences;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    .line 3104
    :cond_4
    invoke-interface {v10, v13}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    const-string/jumbo v13, "vibrate_group"

    invoke-interface {v11, v13}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    const-string v13, "GroupSoundPath"

    invoke-interface {v11, v13}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    const-string v13, "GroupSound"

    invoke-interface {v11, v13}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_1

    :cond_5
    const-string v11, "_private_"

    .line 3105
    invoke-virtual {v12, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_7

    if-nez v10, :cond_6

    .line 3107
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/messenger/AccountInstance;->getNotificationsSettings()Landroid/content/SharedPreferences;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    :cond_6
    const-string v11, "priority_messages"

    .line 3109
    invoke-interface {v10, v11}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3110
    invoke-interface {v10, v13}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    const-string/jumbo v13, "vibrate_messages"

    invoke-interface {v11, v13}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    const-string v13, "GlobalSoundPath"

    invoke-interface {v11, v13}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    const-string v13, "GlobalSound"

    invoke-interface {v11, v13}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_1

    :cond_7
    const/16 v11, 0x5f

    const/16 v13, 0x9

    .line 3112
    invoke-virtual {v12, v11, v13}, Ljava/lang/String;->indexOf(II)I

    move-result v11

    invoke-virtual {v12, v13, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lorg/telegram/messenger/Utilities;->parseLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    const-wide/16 v15, 0x0

    cmp-long v11, v13, v15

    if-eqz v11, :cond_9

    if-nez v10, :cond_8

    .line 3115
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/messenger/AccountInstance;->getNotificationsSettings()Landroid/content/SharedPreferences;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    .line 3117
    :cond_8
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "priority_"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "vibrate_"

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v11, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "sound_path_"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v4, v11}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "sound_"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v4, v11}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3121
    :cond_9
    :goto_1
    sget-object v4, Lorg/telegram/messenger/NotificationsController;->systemNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v4, v12}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    :cond_a
    add-int/lit8 v9, v9, 0x1

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_b
    if-eqz v10, :cond_c

    .line 3125
    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 3128
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 3130
    :cond_c
    :goto_2
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3131
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, v1, Lorg/telegram/messenger/NotificationsController;->groupsCreated:Ljava/lang/Boolean;

    .line 3133
    :cond_d
    iget-boolean v0, v1, Lorg/telegram/messenger/NotificationsController;->channelGroupsCreated:Z

    if-nez v0, :cond_1c

    .line 3134
    sget-object v0, Lorg/telegram/messenger/NotificationsController;->systemNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getNotificationChannelGroups()Ljava/util/List;

    move-result-object v0

    .line 3135
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "channels"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3136
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "groups"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3137
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "private"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3138
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "other"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v1, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3139
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    move-object v9, v7

    move-object v7, v4

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v8, :cond_13

    .line 3140
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/NotificationChannelGroup;

    invoke-virtual {v10}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v10

    if-eqz v2, :cond_e

    .line 3141
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    move-object v2, v6

    goto :goto_4

    :cond_e
    if-eqz v3, :cond_f

    .line 3143
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    move-object v3, v6

    goto :goto_4

    :cond_f
    if-eqz v7, :cond_10

    .line 3145
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    move-object v7, v6

    goto :goto_4

    :cond_10
    if-eqz v9, :cond_11

    .line 3147
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11

    move-object v9, v6

    :cond_11
    :goto_4
    if-nez v2, :cond_12

    if-nez v3, :cond_12

    if-nez v7, :cond_12

    if-nez v9, :cond_12

    goto :goto_5

    :cond_12
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_13
    :goto_5
    if-nez v2, :cond_14

    if-nez v3, :cond_14

    if-nez v7, :cond_14

    if-eqz v9, :cond_1b

    .line 3156
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-nez v0, :cond_15

    .line 3158
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    :cond_15
    if-eqz v0, :cond_16

    .line 3162
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " ("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v6, v0}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_16
    const-string v0, ""

    .line 3167
    :goto_6
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-eqz v2, :cond_17

    .line 3169
    new-instance v6, Landroid/app/NotificationChannelGroup;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget v10, Lorg/telegram/messenger/R$string;->NotificationsChannels:I

    const-string v11, "NotificationsChannels"

    invoke-static {v11, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v2, v8}, Landroid/app/NotificationChannelGroup;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_17
    if-eqz v3, :cond_18

    .line 3172
    new-instance v2, Landroid/app/NotificationChannelGroup;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget v8, Lorg/telegram/messenger/R$string;->NotificationsGroups:I

    const-string v10, "NotificationsGroups"

    invoke-static {v10, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v3, v6}, Landroid/app/NotificationChannelGroup;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_18
    if-eqz v7, :cond_19

    .line 3175
    new-instance v2, Landroid/app/NotificationChannelGroup;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v6, Lorg/telegram/messenger/R$string;->NotificationsPrivateChats:I

    const-string v8, "NotificationsPrivateChats"

    invoke-static {v8, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v7, v3}, Landroid/app/NotificationChannelGroup;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_19
    if-eqz v9, :cond_1a

    .line 3178
    new-instance v2, Landroid/app/NotificationChannelGroup;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v6, Lorg/telegram/messenger/R$string;->NotificationsOther:I

    const-string v7, "NotificationsOther"

    invoke-static {v7, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v9, v0}, Landroid/app/NotificationChannelGroup;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3181
    :cond_1a
    sget-object v0, Lorg/telegram/messenger/NotificationsController;->systemNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v4}, Landroid/app/NotificationManager;->createNotificationChannelGroups(Ljava/util/List;)V

    .line 3184
    :cond_1b
    iput-boolean v5, v1, Lorg/telegram/messenger/NotificationsController;->channelGroupsCreated:Z

    :cond_1c
    return-void
.end method

.method protected forceShowPopupForReply()V
    .locals 2

    .line 452
    sget-object v0, Lorg/telegram/messenger/NotificationsController;->notificationsQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/messenger/NotificationsController;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getNotificationsSettingsFacade()Lorg/telegram/messenger/NotificationsSettingsFacade;
    .locals 1

    .line 5084
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController;->dialogsNotificationsFacade:Lorg/telegram/messenger/NotificationsSettingsFacade;

    return-object v0
.end method

.method public getTotalUnreadCount()I
    .locals 1

    .line 1048
    iget v0, p0, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    return v0
.end method

.method public hasMessagesToReply()Z
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 439
    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 440
    iget-object v2, p0, Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    .line 441
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v3

    .line 442
    iget-object v5, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-boolean v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->mentioned:Z

    if-eqz v6, :cond_0

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$TL_messageActionPinMessage;

    if-nez v5, :cond_2

    .line 443
    :cond_0
    invoke-static {v3, v4}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_1

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isSupergroup()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method public hideNotifications()V
    .locals 2

    .line 2717
    sget-object v0, Lorg/telegram/messenger/NotificationsController;->notificationsQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/messenger/NotificationsController;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public isGlobalNotificationsEnabled(I)Z
    .locals 2

    .line 5038
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getNotificationsSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {p1}, Lorg/telegram/messenger/NotificationsController;->getGlobalNotificationsKey(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isGlobalNotificationsEnabled(J)Z
    .locals 1

    const/4 v0, 0x0

    .line 5011
    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/messenger/NotificationsController;->isGlobalNotificationsEnabled(JLjava/lang/Boolean;)Z

    move-result p1

    return p1
.end method

.method public isGlobalNotificationsEnabled(JLjava/lang/Boolean;)Z
    .locals 3

    .line 5016
    invoke-static {p1, p2}, Lorg/telegram/messenger/DialogObject;->isChatDialog(J)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    if-eqz p3, :cond_1

    .line 5018
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 5024
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    neg-long p1, p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p3, p1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    .line 5025
    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    .line 5034
    :goto_0
    invoke-virtual {p0, v1}, Lorg/telegram/messenger/NotificationsController;->isGlobalNotificationsEnabled(I)Z

    move-result p1

    return p1
.end method

.method public loadTopicsNotificationsExceptions(JLj$/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lj$/util/function/Consumer<",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .line 5088
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda25;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/messenger/NotificationsController;JLj$/util/function/Consumer;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public muteDialog(JIZ)V
    .locals 4

    if-eqz p4, :cond_0

    .line 5060
    iget p4, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {p4}, Lorg/telegram/messenger/NotificationsController;->getInstance(I)Lorg/telegram/messenger/NotificationsController;

    move-result-object p4

    const v0, 0x7fffffff

    invoke-virtual {p4, p1, p2, p3, v0}, Lorg/telegram/messenger/NotificationsController;->muteUntil(JII)V

    goto :goto_2

    .line 5062
    :cond_0
    iget p4, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {p4}, Lorg/telegram/messenger/NotificationsController;->getInstance(I)Lorg/telegram/messenger/NotificationsController;

    move-result-object p4

    invoke-virtual {p4, p1, p2}, Lorg/telegram/messenger/NotificationsController;->isGlobalNotificationsEnabled(J)Z

    move-result p4

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 5064
    :goto_0
    iget v2, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getNotificationsSettings(I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 5065
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "notify2_"

    if-eqz p4, :cond_2

    if-nez v1, :cond_2

    .line 5067
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2, p3}, Lorg/telegram/messenger/NotificationsController;->getSharedPrefKey(JI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-interface {v2, p4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 5069
    :cond_2
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2, p3}, Lorg/telegram/messenger/NotificationsController;->getSharedPrefKey(JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-interface {v2, p4, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :goto_1
    if-nez p3, :cond_3

    .line 5072
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p4

    const-wide/16 v0, 0x0

    invoke-virtual {p4, p1, p2, v0, v1}, Lorg/telegram/messenger/MessagesStorage;->setDialogFlags(JJ)V

    .line 5073
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p4

    iget-object p4, p4, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Landroidx/collection/LongSparseArray;

    invoke-virtual {p4, p1, p2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/telegram/tgnet/TLRPC$Dialog;

    if-eqz p4, :cond_3

    .line 5075
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings;-><init>()V

    iput-object v0, p4, Lorg/telegram/tgnet/TLRPC$Dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    .line 5078
    :cond_3
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 5079
    invoke-virtual {p0, p1, p2, p3}, Lorg/telegram/messenger/NotificationsController;->updateServerNotificationsSettings(JI)V

    :goto_2
    return-void
.end method

.method public muteUntil(JII)V
    .locals 10

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_5

    .line 301
    iget v2, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getNotificationsSettings(I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 302
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    if-eqz p3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 305
    :goto_0
    iget v4, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/NotificationsController;->getInstance(I)Lorg/telegram/messenger/NotificationsController;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Lorg/telegram/messenger/NotificationsController;->isGlobalNotificationsEnabled(J)Z

    move-result v4

    .line 307
    invoke-static {p1, p2, p3}, Lorg/telegram/messenger/NotificationsController;->getSharedPrefKey(JI)Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x1

    const v8, 0x7fffffff

    const-string v9, "notify2_"

    if-ne p4, v8, :cond_2

    if-nez v4, :cond_1

    if-nez v3, :cond_1

    .line 310
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 313
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-wide v0, v6

    goto :goto_1

    .line 317
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyuntil_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v1

    add-int/2addr v1, p4

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    int-to-long v0, p4

    const/16 v3, 0x20

    shl-long/2addr v0, v3

    or-long/2addr v0, v6

    .line 321
    :goto_1
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-nez p3, :cond_4

    .line 323
    iget v2, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/NotificationsController;->getInstance(I)Lorg/telegram/messenger/NotificationsController;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lorg/telegram/messenger/NotificationsController;->removeNotificationsForDialog(J)V

    .line 324
    iget v2, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    invoke-virtual {v2, p1, p2, v0, v1}, Lorg/telegram/messenger/MessagesStorage;->setDialogFlags(JJ)V

    .line 325
    iget v0, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Dialog;

    if-eqz v0, :cond_4

    .line 327
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    if-ne p4, v8, :cond_3

    if-eqz v4, :cond_4

    .line 329
    :cond_3
    iput p4, v1, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    .line 333
    :cond_4
    iget p4, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {p4}, Lorg/telegram/messenger/NotificationsController;->getInstance(I)Lorg/telegram/messenger/NotificationsController;

    move-result-object p4

    invoke-virtual {p4, p1, p2, p3}, Lorg/telegram/messenger/NotificationsController;->updateServerNotificationsSettings(JI)V

    :cond_5
    return-void
.end method

.method public playOutChatSound()V
    .locals 2

    .line 4760
    iget-boolean v0, p0, Lorg/telegram/messenger/NotificationsController;->inChatSoundEnabled:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->isRecordingAudio()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4764
    :cond_0
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/NotificationsController;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_1

    return-void

    :catch_0
    move-exception v0

    .line 4768
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 4770
    :cond_1
    sget-object v0, Lorg/telegram/messenger/NotificationsController;->notificationsQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/messenger/NotificationsController;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public processDialogsUpdateRead(Lorg/telegram/messenger/support/LongSparseIntArray;)V
    .locals 3

    .line 1052
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1053
    sget-object v1, Lorg/telegram/messenger/NotificationsController;->notificationsQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda36;

    invoke-direct {v2, p0, p1, v0}, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda36;-><init>(Lorg/telegram/messenger/NotificationsController;Lorg/telegram/messenger/support/LongSparseIntArray;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public processEditedMessages(Landroidx/collection/LongSparseArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/LongSparseArray<",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;>;)V"
        }
    .end annotation

    .line 765
    invoke-virtual {p1}, Landroidx/collection/LongSparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 768
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 769
    sget-object v0, Lorg/telegram/messenger/NotificationsController;->notificationsQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda26;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/messenger/NotificationsController;Landroidx/collection/LongSparseArray;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public processLoadedUnreadMessages(Landroidx/collection/LongSparseArray;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/LongSparseArray<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$Message;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$Chat;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$EncryptedChat;",
            ">;)V"
        }
    .end annotation

    .line 1177
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p4, v1}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 1178
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p4

    invoke-virtual {p4, p5, v1}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 1179
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p4

    invoke-virtual {p4, p6, v1}, Lorg/telegram/messenger/MessagesController;->putEncryptedChats(Ljava/util/ArrayList;Z)V

    .line 1181
    sget-object p4, Lorg/telegram/messenger/NotificationsController;->notificationsQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance p5, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda34;

    invoke-direct {p5, p0, p2, p1, p3}, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda34;-><init>(Lorg/telegram/messenger/NotificationsController;Ljava/util/ArrayList;Landroidx/collection/LongSparseArray;Ljava/util/ArrayList;)V

    invoke-virtual {p4, p5}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public processNewMessages(Ljava/util/ArrayList;ZZLjava/util/concurrent/CountDownLatch;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;ZZ",
            "Ljava/util/concurrent/CountDownLatch;",
            ")V"
        }
    .end annotation

    .line 814
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p4, :cond_0

    .line 816
    invoke-virtual {p4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_0
    return-void

    .line 820
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 821
    sget-object v0, Lorg/telegram/messenger/NotificationsController;->notificationsQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v8, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda35;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move v5, p3

    move v6, p2

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda35;-><init>(Lorg/telegram/messenger/NotificationsController;Ljava/util/ArrayList;Ljava/util/ArrayList;ZZLjava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v0, v8}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public processReadMessages(Lorg/telegram/messenger/support/LongSparseIntArray;JIIZ)V
    .locals 11

    .line 648
    new-instance v3, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 649
    sget-object v9, Lorg/telegram/messenger/NotificationsController;->notificationsQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v10, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda38;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    move/from16 v6, p5

    move v7, p4

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda38;-><init>(Lorg/telegram/messenger/NotificationsController;Lorg/telegram/messenger/support/LongSparseIntArray;Ljava/util/ArrayList;JIIZ)V

    invoke-virtual {v9, v10}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public removeDeletedHisoryFromNotifications(Lorg/telegram/messenger/support/LongSparseIntArray;)V
    .locals 3

    .line 564
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 565
    sget-object v1, Lorg/telegram/messenger/NotificationsController;->notificationsQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda37;

    invoke-direct {v2, p0, p1, v0}, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda37;-><init>(Lorg/telegram/messenger/NotificationsController;Lorg/telegram/messenger/support/LongSparseIntArray;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public removeDeletedMessagesFromNotifications(Landroidx/collection/LongSparseArray;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/LongSparseArray<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;>;Z)V"
        }
    .end annotation

    .line 479
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 480
    sget-object v1, Lorg/telegram/messenger/NotificationsController;->notificationsQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda27;

    invoke-direct {v2, p0, p1, p2, v0}, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/messenger/NotificationsController;Landroidx/collection/LongSparseArray;ZLjava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public removeNotificationsForDialog(J)V
    .locals 7

    const/4 v1, 0x0

    const/4 v4, 0x0

    const v5, 0x7fffffff

    const/4 v6, 0x0

    move-object v0, p0

    move-wide v2, p1

    .line 432
    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/NotificationsController;->processReadMessages(Lorg/telegram/messenger/support/LongSparseIntArray;JIIZ)V

    .line 433
    new-instance v0, Lorg/telegram/messenger/support/LongSparseIntArray;

    invoke-direct {v0}, Lorg/telegram/messenger/support/LongSparseIntArray;-><init>()V

    const/4 v1, 0x0

    .line 434
    invoke-virtual {v0, p1, p2, v1}, Lorg/telegram/messenger/support/LongSparseIntArray;->put(JI)V

    .line 435
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/NotificationsController;->processDialogsUpdateRead(Lorg/telegram/messenger/support/LongSparseIntArray;)V

    return-void
.end method

.method protected repeatNotificationMaybe()V
    .locals 2

    .line 2817
    sget-object v0, Lorg/telegram/messenger/NotificationsController;->notificationsQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/messenger/NotificationsController;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setDialogNotificationsSettings(JII)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move v4, p4

    .line 92
    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/NotificationsController;->setDialogNotificationsSettings(JIILjava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public setDialogNotificationsSettings(JIILjava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 8

    .line 4827
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getNotificationsSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 4828
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4829
    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Dialog;

    const-string v2, "notify2_"

    const/4 v3, 0x4

    if-ne p4, v3, :cond_1

    .line 4831
    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/NotificationsController;->isGlobalNotificationsEnabled(J)Z

    move-result p4

    if-eqz p4, :cond_0

    .line 4833
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2, p3}, Lorg/telegram/messenger/NotificationsController;->getSharedPrefKey(JI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-interface {v0, p4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 4835
    :cond_0
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2, p3}, Lorg/telegram/messenger/NotificationsController;->getSharedPrefKey(JI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const/4 v2, 0x0

    invoke-interface {v0, p4, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 4838
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p4

    const-wide/16 v2, 0x0

    invoke-virtual {p4, p1, p2, v2, v3}, Lorg/telegram/messenger/MessagesStorage;->setDialogFlags(JJ)V

    if-eqz v1, :cond_7

    .line 4840
    new-instance p4, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings;

    invoke-direct {p4}, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings;-><init>()V

    iput-object p4, v1, Lorg/telegram/tgnet/TLRPC$Dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    goto/16 :goto_3

    .line 4843
    :cond_1
    sget v3, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v3}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x3

    if-nez p4, :cond_2

    add-int/lit16 v3, v3, 0xe10

    goto :goto_1

    :cond_2
    const/4 v6, 0x1

    if-ne p4, v6, :cond_3

    add-int/lit16 v3, v3, 0x7080

    goto :goto_1

    :cond_3
    if-ne p4, v4, :cond_4

    const v6, 0x2a300

    add-int/2addr v3, v6

    goto :goto_1

    :cond_4
    if-ne p4, v5, :cond_5

    const v3, 0x7fffffff

    :cond_5
    :goto_1
    const-wide/16 v6, 0x1

    if-ne p4, v5, :cond_6

    .line 4855
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2, p3}, Lorg/telegram/messenger/NotificationsController;->getSharedPrefKey(JI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-interface {v0, p4, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    .line 4858
    :cond_6
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2, p3}, Lorg/telegram/messenger/NotificationsController;->getSharedPrefKey(JI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-interface {v0, p4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 4859
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyuntil_"

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2, p3}, Lorg/telegram/messenger/NotificationsController;->getSharedPrefKey(JI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-interface {v0, p4, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    int-to-long v4, v3

    const/16 p4, 0x20

    shl-long/2addr v4, p4

    or-long/2addr v6, v4

    .line 4862
    :goto_2
    sget p4, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p4}, Lorg/telegram/messenger/NotificationsController;->getInstance(I)Lorg/telegram/messenger/NotificationsController;

    move-result-object p4

    invoke-virtual {p4, p1, p2}, Lorg/telegram/messenger/NotificationsController;->removeNotificationsForDialog(J)V

    .line 4863
    sget p4, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p4}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object p4

    invoke-virtual {p4, p1, p2, v6, v7}, Lorg/telegram/messenger/MessagesStorage;->setDialogFlags(JJ)V

    if-eqz v1, :cond_7

    .line 4865
    new-instance p4, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings;

    invoke-direct {p4}, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings;-><init>()V

    iput-object p4, v1, Lorg/telegram/tgnet/TLRPC$Dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    .line 4866
    iput v3, p4, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    .line 4869
    :cond_7
    :goto_3
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move-object v4, p5

    move-object v5, p6

    .line 4870
    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/NotificationsController;->updateServerNotificationsSettings(JILjava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public setGlobalNotificationsEnabled(II)V
    .locals 2

    .line 5042
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getNotificationsSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p1}, Lorg/telegram/messenger/NotificationsController;->getGlobalNotificationsKey(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 5043
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/NotificationsController;->updateServerNotificationsSettings(I)V

    .line 5044
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/MessagesStorage;->updateMutedDialogsFiltersCounters()V

    .line 5045
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/NotificationsController;->deleteNotificationChannelGlobal(I)V

    return-void
.end method

.method public setInChatSoundEnabled(Z)V
    .locals 0

    .line 402
    iput-boolean p1, p0, Lorg/telegram/messenger/NotificationsController;->inChatSoundEnabled:Z

    return-void
.end method

.method public setLastOnlineFromOtherDevice(I)V
    .locals 2

    .line 423
    sget-object v0, Lorg/telegram/messenger/NotificationsController;->notificationsQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/messenger/NotificationsController;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setOpenedDialogId(JI)V
    .locals 2

    .line 406
    sget-object v0, Lorg/telegram/messenger/NotificationsController;->notificationsQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda23;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/messenger/NotificationsController;JI)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setOpenedInBubble(JZ)V
    .locals 2

    .line 413
    sget-object v0, Lorg/telegram/messenger/NotificationsController;->notificationsQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda39;

    invoke-direct {v1, p0, p3, p1, p2}, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda39;-><init>(Lorg/telegram/messenger/NotificationsController;ZJ)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public showNotifications()V
    .locals 2

    .line 2713
    sget-object v0, Lorg/telegram/messenger/NotificationsController;->notificationsQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/messenger/NotificationsController;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateBadge()V
    .locals 2

    .line 1424
    sget-object v0, Lorg/telegram/messenger/NotificationsController;->notificationsQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/messenger/NotificationsController;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateServerNotificationsSettings(I)V
    .locals 9

    .line 4955
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getNotificationsSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 4956
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateNotifySettings;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_account_updateNotifySettings;-><init>()V

    .line 4957
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;-><init>()V

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateNotifySettings;->settings:Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;

    const/4 v3, 0x5

    .line 4958
    iput v3, v2, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->flags:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p1, :cond_0

    .line 4963
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_inputNotifyChats;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_inputNotifyChats;-><init>()V

    iput-object p1, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateNotifySettings;->peer:Lorg/telegram/tgnet/TLRPC$InputNotifyPeer;

    .line 4964
    iget-object p1, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateNotifySettings;->settings:Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;

    const-string v4, "EnableGroup2"

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p1, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->mute_until:I

    .line 4965
    iget-object p1, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateNotifySettings;->settings:Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;

    const-string v2, "EnablePreviewGroup"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p1, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->show_previews:Z

    const-string p1, "GroupSound"

    const-string v2, "GroupSoundDocId"

    const-string v3, "GroupSoundPath"

    goto :goto_0

    :cond_0
    if-ne p1, v3, :cond_1

    .line 4970
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_inputNotifyUsers;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_inputNotifyUsers;-><init>()V

    iput-object p1, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateNotifySettings;->peer:Lorg/telegram/tgnet/TLRPC$InputNotifyPeer;

    .line 4971
    iget-object p1, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateNotifySettings;->settings:Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;

    const-string v4, "EnableAll2"

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p1, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->mute_until:I

    .line 4972
    iget-object p1, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateNotifySettings;->settings:Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;

    const-string v2, "EnablePreviewAll"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p1, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->show_previews:Z

    const-string p1, "GlobalSound"

    const-string v2, "GlobalSoundDocId"

    const-string v3, "GlobalSoundPath"

    goto :goto_0

    .line 4977
    :cond_1
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_inputNotifyBroadcasts;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_inputNotifyBroadcasts;-><init>()V

    iput-object p1, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateNotifySettings;->peer:Lorg/telegram/tgnet/TLRPC$InputNotifyPeer;

    .line 4978
    iget-object p1, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateNotifySettings;->settings:Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;

    const-string v4, "EnableChannel2"

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p1, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->mute_until:I

    .line 4979
    iget-object p1, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateNotifySettings;->settings:Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;

    const-string v2, "EnablePreviewChannel"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p1, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->show_previews:Z

    const-string p1, "ChannelSound"

    const-string v2, "ChannelSoundDocId"

    const-string v3, "ChannelSoundPath"

    .line 4985
    :goto_0
    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateNotifySettings;->settings:Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;

    iget v5, v4, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->flags:I

    or-int/lit8 v5, v5, 0x8

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->flags:I

    const-wide/16 v4, 0x0

    .line 4986
    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    const-string v2, "NoSound"

    .line 4987
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    cmp-long v8, v6, v4

    if-eqz v8, :cond_2

    .line 4990
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_notificationSoundRingtone;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_notificationSoundRingtone;-><init>()V

    .line 4991
    iput-wide v6, p1, Lorg/telegram/tgnet/TLRPC$TL_notificationSoundRingtone;->id:J

    .line 4992
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateNotifySettings;->settings:Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->sound:Lorg/telegram/tgnet/TLRPC$NotificationSound;

    goto :goto_1

    :cond_2
    if-eqz v3, :cond_4

    .line 4994
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4995
    iget-object p1, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateNotifySettings;->settings:Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_notificationSoundNone;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_notificationSoundNone;-><init>()V

    iput-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->sound:Lorg/telegram/tgnet/TLRPC$NotificationSound;

    goto :goto_1

    .line 4997
    :cond_3
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_notificationSoundLocal;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_notificationSoundLocal;-><init>()V

    const/4 v4, 0x0

    .line 4998
    invoke-interface {v0, p1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lorg/telegram/tgnet/TLRPC$TL_notificationSoundLocal;->title:Ljava/lang/String;

    .line 4999
    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_notificationSoundLocal;->data:Ljava/lang/String;

    .line 5000
    iget-object p1, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateNotifySettings;->settings:Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;

    iput-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->sound:Lorg/telegram/tgnet/TLRPC$NotificationSound;

    goto :goto_1

    .line 5003
    :cond_4
    iget-object p1, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateNotifySettings;->settings:Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_notificationSoundDefault;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_notificationSoundDefault;-><init>()V

    iput-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->sound:Lorg/telegram/tgnet/TLRPC$NotificationSound;

    .line 5005
    :goto_1
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    sget-object v0, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda42;->INSTANCE:Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda42;

    invoke-virtual {p1, v1, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method public updateServerNotificationsSettings(JI)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    .line 97
    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/NotificationsController;->updateServerNotificationsSettings(JILjava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateServerNotificationsSettings(JILjava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 7

    const/4 v4, 0x1

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move-object v5, p4

    move-object v6, p5

    .line 4874
    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/NotificationsController;->updateServerNotificationsSettings(JIZLjava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateServerNotificationsSettings(JIZ)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move v4, p4

    .line 102
    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/NotificationsController;->updateServerNotificationsSettings(JIZLjava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateServerNotificationsSettings(JIZLjava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 9

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    .line 4879
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p4

    sget v1, Lorg/telegram/messenger/NotificationCenter;->notificationsSettingsUpdated:I

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {p4, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 4881
    :cond_0
    invoke-static {p1, p2}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result p4

    if-eqz p4, :cond_1

    return-void

    .line 4884
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object p4

    invoke-virtual {p4}, Lorg/telegram/messenger/AccountInstance;->getNotificationsSettings()Landroid/content/SharedPreferences;

    move-result-object p4

    .line 4885
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateNotifySettings;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_account_updateNotifySettings;-><init>()V

    .line 4886
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;-><init>()V

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateNotifySettings;->settings:Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;

    .line 4888
    iget v3, v2, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->flags:I

    const/4 v4, 0x1

    or-int/2addr v3, v4

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->flags:I

    .line 4889
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content_preview_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2, p3}, Lorg/telegram/messenger/NotificationsController;->getSharedPrefKey(JI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p4, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->show_previews:Z

    .line 4891
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateNotifySettings;->settings:Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;

    iget v3, v2, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->flags:I

    const/4 v4, 0x2

    or-int/2addr v3, v4

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->flags:I

    .line 4892
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "silent_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2, p3}, Lorg/telegram/messenger/NotificationsController;->getSharedPrefKey(JI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p4, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->silent:Z

    .line 4894
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notify2_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2, p3}, Lorg/telegram/messenger/NotificationsController;->getSharedPrefKey(JI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-interface {p4, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v3, :cond_4

    .line 4896
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateNotifySettings;->settings:Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;

    iget v5, v3, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->flags:I

    or-int/lit8 v5, v5, 0x4

    iput v5, v3, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->flags:I

    const/4 v5, 0x3

    if-ne v2, v5, :cond_2

    .line 4898
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyuntil_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2, p3}, Lorg/telegram/messenger/NotificationsController;->getSharedPrefKey(JI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p4, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v3, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->mute_until:I

    goto :goto_1

    :cond_2
    if-eq v2, v4, :cond_3

    goto :goto_0

    :cond_3
    const v0, 0x7fffffff

    .line 4900
    :goto_0
    iput v0, v3, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->mute_until:I

    .line 4904
    :cond_4
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sound_document_id_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2, p3}, Lorg/telegram/messenger/NotificationsController;->getSharedPrefKey(JI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-interface {p4, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 4905
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sound_path_"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2, p3}, Lorg/telegram/messenger/NotificationsController;->getSharedPrefKey(JI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    invoke-interface {p4, v0, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4906
    iget-object v7, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateNotifySettings;->settings:Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;

    iget v8, v7, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->flags:I

    or-int/lit8 v8, v8, 0x8

    iput v8, v7, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->flags:I

    cmp-long v8, v4, v2

    if-eqz v8, :cond_5

    .line 4908
    new-instance p4, Lorg/telegram/tgnet/TLRPC$TL_notificationSoundRingtone;

    invoke-direct {p4}, Lorg/telegram/tgnet/TLRPC$TL_notificationSoundRingtone;-><init>()V

    .line 4909
    iput-wide v4, p4, Lorg/telegram/tgnet/TLRPC$TL_notificationSoundRingtone;->id:J

    .line 4910
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateNotifySettings;->settings:Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;

    iput-object p4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->sound:Lorg/telegram/tgnet/TLRPC$NotificationSound;

    goto :goto_2

    :cond_5
    if-eqz v0, :cond_7

    const-string v2, "NoSound"

    .line 4912
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 4913
    iget-object p4, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateNotifySettings;->settings:Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_notificationSoundNone;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_notificationSoundNone;-><init>()V

    iput-object v0, p4, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->sound:Lorg/telegram/tgnet/TLRPC$NotificationSound;

    goto :goto_2

    .line 4915
    :cond_6
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_notificationSoundLocal;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_notificationSoundLocal;-><init>()V

    .line 4916
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sound_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2, p3}, Lorg/telegram/messenger/NotificationsController;->getSharedPrefKey(JI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p4, v3, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iput-object p4, v2, Lorg/telegram/tgnet/TLRPC$TL_notificationSoundLocal;->title:Ljava/lang/String;

    .line 4917
    iput-object v0, v2, Lorg/telegram/tgnet/TLRPC$TL_notificationSoundLocal;->data:Ljava/lang/String;

    .line 4918
    iget-object p4, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateNotifySettings;->settings:Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;

    iput-object v2, p4, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->sound:Lorg/telegram/tgnet/TLRPC$NotificationSound;

    goto :goto_2

    .line 4921
    :cond_7
    new-instance p4, Lorg/telegram/tgnet/TLRPC$TL_notificationSoundDefault;

    invoke-direct {p4}, Lorg/telegram/tgnet/TLRPC$TL_notificationSoundDefault;-><init>()V

    iput-object p4, v7, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->sound:Lorg/telegram/tgnet/TLRPC$NotificationSound;

    :goto_2
    if-eqz p3, :cond_8

    .line 4924
    new-instance p4, Lorg/telegram/tgnet/TLRPC$TL_inputNotifyForumTopic;

    invoke-direct {p4}, Lorg/telegram/tgnet/TLRPC$TL_inputNotifyForumTopic;-><init>()V

    .line 4925
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p1

    iput-object p1, p4, Lorg/telegram/tgnet/TLRPC$TL_inputNotifyForumTopic;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 4926
    iput p3, p4, Lorg/telegram/tgnet/TLRPC$TL_inputNotifyForumTopic;->top_msg_id:I

    .line 4927
    iput-object p4, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateNotifySettings;->peer:Lorg/telegram/tgnet/TLRPC$InputNotifyPeer;

    goto :goto_3

    .line 4929
    :cond_8
    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_inputNotifyPeer;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_inputNotifyPeer;-><init>()V

    iput-object p3, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateNotifySettings;->peer:Lorg/telegram/tgnet/TLRPC$InputNotifyPeer;

    .line 4930
    check-cast p3, Lorg/telegram/tgnet/TLRPC$TL_inputNotifyPeer;

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p4

    invoke-virtual {p4, p1, p2}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p1

    iput-object p1, p3, Lorg/telegram/tgnet/TLRPC$TL_inputNotifyPeer;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 4933
    :goto_3
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance p2, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda41;

    invoke-direct {p2, p5, p6}, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda41;-><init>(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-virtual {p1, v1, p2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method
