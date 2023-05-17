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

    .line 113
    new-instance v0, Lorg/telegram/messenger/DispatchQueue;

    const-string v1, "notificationsQueue"

    invoke-direct {v0, v1}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/telegram/messenger/NotificationsController;->notificationsQueue:Lorg/telegram/messenger/DispatchQueue;

    const/4 v0, 0x0

    .line 119
    sput-object v0, Lorg/telegram/messenger/NotificationsController;->notificationManager:Landroidx/core/app/NotificationManagerCompat;

    .line 120
    sput-object v0, Lorg/telegram/messenger/NotificationsController;->systemNotificationManager:Landroid/app/NotificationManager;

    const-wide/16 v0, 0x1

    .line 144
    invoke-static {v0, v1}, Lorg/telegram/messenger/DialogObject;->makeEncryptedDialogId(J)J

    move-result-wide v0

    sput-wide v0, Lorg/telegram/messenger/NotificationsController;->globalSecretChatId:J

    .line 176
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 177
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/NotificationsController;->notificationManager:Landroidx/core/app/NotificationManagerCompat;

    .line 178
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    sput-object v0, Lorg/telegram/messenger/NotificationsController;->systemNotificationManager:Landroid/app/NotificationManager;

    .line 179
    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->checkOtherNotificationsChannel()V

    .line 181
    :cond_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    sput-object v0, Lorg/telegram/messenger/NotificationsController;->audioManager:Landroid/media/AudioManager;

    const/4 v0, 0x5

    new-array v1, v0, [Lorg/telegram/messenger/NotificationsController;

    .line 184
    sput-object v1, Lorg/telegram/messenger/NotificationsController;->Instance:[Lorg/telegram/messenger/NotificationsController;

    new-array v1, v0, [Ljava/lang/Object;

    .line 185
    sput-object v1, Lorg/telegram/messenger/NotificationsController;->lockObjects:[Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 188
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

    .line 206
    invoke-direct {p0, p1}, Lorg/telegram/messenger/BaseController;-><init>(I)V

    .line 114
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;

    .line 115
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/NotificationsController;->delayedPushMessages:Ljava/util/ArrayList;

    .line 116
    new-instance p1, Landroidx/collection/LongSparseArray;

    invoke-direct {p1}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/NotificationsController;->pushMessagesDict:Landroidx/collection/LongSparseArray;

    .line 117
    new-instance p1, Landroidx/collection/LongSparseArray;

    invoke-direct {p1}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/NotificationsController;->fcmRandomMessagesDict:Landroidx/collection/LongSparseArray;

    .line 118
    new-instance p1, Landroidx/collection/LongSparseArray;

    invoke-direct {p1}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/NotificationsController;->smartNotificationsDialogs:Landroidx/collection/LongSparseArray;

    .line 121
    new-instance p1, Landroidx/collection/LongSparseArray;

    invoke-direct {p1}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/NotificationsController;->pushDialogs:Landroidx/collection/LongSparseArray;

    .line 122
    new-instance p1, Landroidx/collection/LongSparseArray;

    invoke-direct {p1}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/NotificationsController;->wearNotificationsIds:Landroidx/collection/LongSparseArray;

    .line 123
    new-instance p1, Landroidx/collection/LongSparseArray;

    invoke-direct {p1}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/NotificationsController;->lastWearNotifiedMessageId:Landroidx/collection/LongSparseArray;

    .line 124
    new-instance p1, Landroidx/collection/LongSparseArray;

    invoke-direct {p1}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/NotificationsController;->pushDialogsOverrideMention:Landroidx/collection/LongSparseArray;

    .line 125
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/NotificationsController;->popupMessages:Ljava/util/ArrayList;

    .line 126
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/NotificationsController;->popupReplyMessages:Ljava/util/ArrayList;

    .line 127
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/NotificationsController;->openedInBubbleDialogs:Ljava/util/HashSet;

    const-wide/16 v0, 0x0

    .line 128
    iput-wide v0, p0, Lorg/telegram/messenger/NotificationsController;->openedDialogId:J

    const/4 p1, 0x0

    .line 129
    iput p1, p0, Lorg/telegram/messenger/NotificationsController;->openedTopicId:I

    const/16 v0, 0x1388

    .line 130
    iput v0, p0, Lorg/telegram/messenger/NotificationsController;->lastButtonId:I

    .line 131
    iput p1, p0, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    .line 132
    iput p1, p0, Lorg/telegram/messenger/NotificationsController;->personalCount:I

    .line 133
    iput-boolean p1, p0, Lorg/telegram/messenger/NotificationsController;->notifyCheck:Z

    .line 134
    iput p1, p0, Lorg/telegram/messenger/NotificationsController;->lastOnlineFromOtherDevice:I

    const/4 v0, -0x1

    .line 136
    iput v0, p0, Lorg/telegram/messenger/NotificationsController;->lastBadgeCount:I

    .line 168
    new-instance v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    invoke-direct {v0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/NotificationsController;->mediaSpoilerEffect:Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    const/4 v0, 0x4

    new-array v0, v0, [C

    .line 2014
    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/telegram/messenger/NotificationsController;->spoilerChars:[C

    .line 207
    iget v0, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/messenger/NotificationsController;->notificationId:I

    .line 208
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

    .line 209
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getNotificationsSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "EnableInChatSound"

    .line 210
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lorg/telegram/messenger/NotificationsController;->inChatSoundEnabled:Z

    const-string v2, "badgeNumber"

    .line 211
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lorg/telegram/messenger/NotificationsController;->showBadgeNumber:Z

    const-string v2, "badgeNumberMuted"

    .line 212
    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lorg/telegram/messenger/NotificationsController;->showBadgeMuted:Z

    const-string v2, "badgeNumberMessages"

    .line 213
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/messenger/NotificationsController;->showBadgeMessages:Z

    .line 215
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/NotificationsController;->notificationManager:Landroidx/core/app/NotificationManagerCompat;

    .line 216
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    sput-object v0, Lorg/telegram/messenger/NotificationsController;->systemNotificationManager:Landroid/app/NotificationManager;

    .line 219
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

    .line 221
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 224
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

    .line 226
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 230
    :goto_2
    :try_start_2
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const-string/jumbo v2, "telegram:notification_delay_lock"

    .line 231
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/NotificationsController;->notificationDelayWakelock:Landroid/os/PowerManager$WakeLock;

    .line 232
    invoke-virtual {v0, p1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception p1

    .line 234
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 237
    :goto_3
    new-instance p1, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda9;

    invoke-direct {p1, p0}, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/messenger/NotificationsController;)V

    iput-object p1, p0, Lorg/telegram/messenger/NotificationsController;->notificationDelayRunnable:Ljava/lang/Runnable;

    .line 254
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

    .line 85
    sget-object v0, Lorg/telegram/messenger/NotificationsController;->notificationManager:Landroidx/core/app/NotificationManagerCompat;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/messenger/NotificationsController;Landroidx/core/app/NotificationCompat$Builder;JILjava/lang/String;[JILandroid/net/Uri;IZZZI)V
    .locals 0

    .line 85
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

    .line 740
    invoke-static {p3, p4}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    .line 741
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

    .line 742
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
    move v0, v1

    :goto_0
    if-nez v0, :cond_3

    if-eqz p5, :cond_1

    const-string p3, "popupChannel"

    .line 746
    invoke-interface {p6, p3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_2

    .line 748
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
    move v0, v1

    :cond_6
    :goto_2
    if-eqz v0, :cond_7

    .line 756
    iget-object p3, p2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide p3, p3, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    const-wide/16 p5, 0x0

    cmp-long p3, p3, p5

    if-eqz p3, :cond_7

    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->isSupergroup()Z

    move-result p3

    if-nez p3, :cond_7

    move v0, v1

    :cond_7
    if-eqz v0, :cond_8

    .line 760
    invoke-virtual {p1, v1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_8
    return v0
.end method

.method private appendMessage(Lorg/telegram/messenger/MessageObject;)V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    .line 1047
    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1048
    iget-object v2, p0, Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v2

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1052
    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public static checkOtherNotificationsChannel()V
    .locals 8

    .line 258
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    return-void

    .line 262
    :cond_0
    sget-object v0, Lorg/telegram/messenger/NotificationsController;->OTHER_NOTIFICATIONS_CHANNEL:Ljava/lang/String;

    const-string v1, "OtherKey"

    const-string v2, "Notifications"

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v0, :cond_1

    .line 263
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v5, "Other3"

    .line 264
    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lorg/telegram/messenger/NotificationsController;->OTHER_NOTIFICATIONS_CHANNEL:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v0, v4

    .line 266
    :goto_0
    sget-object v5, Lorg/telegram/messenger/NotificationsController;->systemNotificationManager:Landroid/app/NotificationManager;

    sget-object v6, Lorg/telegram/messenger/NotificationsController;->OTHER_NOTIFICATIONS_CHANNEL:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 267
    invoke-virtual {v5}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v6

    if-nez v6, :cond_2

    .line 268
    sget-object v5, Lorg/telegram/messenger/NotificationsController;->systemNotificationManager:Landroid/app/NotificationManager;

    sget-object v6, Lorg/telegram/messenger/NotificationsController;->OTHER_NOTIFICATIONS_CHANNEL:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    .line 269
    sput-object v4, Lorg/telegram/messenger/NotificationsController;->OTHER_NOTIFICATIONS_CHANNEL:Ljava/lang/String;

    move-object v5, v4

    .line 272
    :cond_2
    sget-object v6, Lorg/telegram/messenger/NotificationsController;->OTHER_NOTIFICATIONS_CHANNEL:Ljava/lang/String;

    if-nez v6, :cond_4

    if-nez v0, :cond_3

    .line 274
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 276
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

    .line 277
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v2, Lorg/telegram/messenger/NotificationsController;->OTHER_NOTIFICATIONS_CHANNEL:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_4
    if-nez v5, :cond_5

    .line 280
    new-instance v0, Landroid/app/NotificationChannel;

    sget-object v1, Lorg/telegram/messenger/NotificationsController;->OTHER_NOTIFICATIONS_CHANNEL:Ljava/lang/String;

    const/4 v2, 0x3

    const-string v5, "Internal notifications"

    invoke-direct {v0, v1, v5, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 281
    invoke-virtual {v0, v3}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 282
    invoke-virtual {v0, v3}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 283
    invoke-virtual {v0, v4, v4}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 285
    :try_start_0
    sget-object v1, Lorg/telegram/messenger/NotificationsController;->systemNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 287
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    return-void
.end method

.method private createNotificationShortcut(Landroidx/core/app/NotificationCompat$Builder;JLjava/lang/String;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;Landroidx/core/app/Person;)Ljava/lang/String;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-wide/from16 v2, p2

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    const-string v7, "com.tmessages.openchat"

    .line 3030
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/NotificationsController;->unsupportedNotificationShortcut()Z

    move-result v8

    const/4 v9, 0x0

    if-nez v8, :cond_9

    invoke-static/range {p6 .. p6}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-boolean v8, v5, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v8, :cond_0

    goto/16 :goto_7

    .line 3034
    :cond_0
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ndid_"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3036
    new-instance v10, Landroid/content/Intent;

    sget-object v11, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v12, Lorg/telegram/messenger/OpenChatReceiver;

    invoke-direct {v10, v11, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3037
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

    cmp-long v11, v2, v13

    const-string/jumbo v13, "userId"

    const-string v14, "chatId"

    if-lez v11, :cond_1

    .line 3039
    :try_start_1
    invoke-virtual {v10, v13, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-object v15, v13

    goto :goto_0

    :cond_1
    move-object v15, v13

    neg-long v12, v2

    .line 3041
    invoke-virtual {v10, v14, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3044
    :goto_0
    new-instance v12, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    sget-object v13, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-direct {v12, v13, v8}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    if-eqz v5, :cond_2

    move-object/from16 v5, p4

    goto :goto_1

    .line 3045
    :cond_2
    invoke-static/range {p5 .. p5}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-virtual {v12, v5}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->setShortLabel(Ljava/lang/CharSequence;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    move-result-object v5

    move-object/from16 v12, p4

    .line 3046
    invoke-virtual {v5, v12}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->setLongLabel(Ljava/lang/CharSequence;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    move-result-object v5

    new-instance v12, Landroid/content/Intent;

    const-string v13, "android.intent.action.VIEW"

    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3047
    invoke-virtual {v5, v12}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->setIntent(Landroid/content/Intent;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    move-result-object v5

    .line 3048
    invoke-virtual {v5, v10}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->setIntent(Landroid/content/Intent;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    move-result-object v5

    const/4 v10, 0x1

    .line 3049
    invoke-virtual {v5, v10}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->setLongLived(Z)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    move-result-object v5

    new-instance v12, Landroidx/core/content/LocusIdCompat;

    invoke-direct {v12, v8}, Landroidx/core/content/LocusIdCompat;-><init>(Ljava/lang/String;)V

    .line 3050
    invoke-virtual {v5, v12}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->setLocusId(Landroidx/core/content/LocusIdCompat;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    move-result-object v5

    if-eqz v6, :cond_3

    .line 3054
    invoke-virtual {v5, v6}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->setPerson(Landroidx/core/app/Person;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    .line 3055
    invoke-virtual/range {p7 .. p7}, Landroidx/core/app/Person;->getIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v12

    invoke-virtual {v5, v12}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->setIcon(Landroidx/core/graphics/drawable/IconCompat;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    .line 3056
    invoke-virtual/range {p7 .. p7}, Landroidx/core/app/Person;->getIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v12

    if-eqz v12, :cond_3

    .line 3057
    invoke-virtual/range {p7 .. p7}, Landroidx/core/app/Person;->getIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/core/graphics/drawable/IconCompat;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    goto :goto_2

    :cond_3
    move-object v6, v9

    .line 3060
    :goto_2
    invoke-virtual {v5}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->build()Landroidx/core/content/pm/ShortcutInfoCompat;

    move-result-object v5

    .line 3061
    sget-object v12, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v12, v5}, Landroidx/core/content/pm/ShortcutManagerCompat;->pushDynamicShortcut(Landroid/content/Context;Landroidx/core/content/pm/ShortcutInfoCompat;)Z

    .line 3062
    invoke-virtual {v0, v5}, Landroidx/core/app/NotificationCompat$Builder;->setShortcutInfo(Landroidx/core/content/pm/ShortcutInfoCompat;)Landroidx/core/app/NotificationCompat$Builder;

    .line 3063
    new-instance v5, Landroid/content/Intent;

    sget-object v12, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v13, Lorg/telegram/ui/BubbleActivity;

    invoke-direct {v5, v12, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3064
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v10

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const v7, 0x7fffffff

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3065
    invoke-static/range {p2 .. p3}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v7

    if-eqz v7, :cond_4

    move-object v7, v15

    .line 3066
    invoke-virtual {v5, v7, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_3

    :cond_4
    neg-long v10, v2

    .line 3068
    invoke-virtual {v5, v14, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :goto_3
    const-string v7, "currentAccount"

    .line 3070
    iget v10, v1, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-virtual {v5, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz v6, :cond_5

    .line 3074
    invoke-static {v6}, Landroidx/core/graphics/drawable/IconCompat;->createWithAdaptiveBitmap(Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v4

    goto :goto_5

    :cond_5
    if-eqz v4, :cond_7

    .line 3076
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

    .line 3078
    :cond_7
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    sget v6, Lorg/telegram/messenger/R$drawable;->book_group:I

    invoke-static {v4, v6}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v4

    .line 3080
    :goto_5
    new-instance v6, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;

    sget-object v7, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const/high16 v10, 0xa000000

    const/4 v11, 0x0

    .line 3082
    invoke-static {v7, v11, v5, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-direct {v6, v5, v4}, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;-><init>(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;)V

    .line 3084
    iget-wide v4, v1, Lorg/telegram/messenger/NotificationsController;->openedDialogId:J

    cmp-long v2, v4, v2

    if-nez v2, :cond_8

    const/4 v10, 0x1

    goto :goto_6

    :cond_8
    move v10, v11

    :goto_6
    invoke-virtual {v6, v10}, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->setSuppressNotification(Z)Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;

    .line 3085
    invoke-virtual {v6, v11}, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->setAutoExpandBubble(Z)Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;

    const/16 v2, 0x280

    .line 3086
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v6, v2}, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->setDesiredHeight(I)Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;

    .line 3087
    invoke-virtual {v6}, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->build()Landroidx/core/app/NotificationCompat$BubbleMetadata;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setBubbleMetadata(Landroidx/core/app/NotificationCompat$BubbleMetadata;)Landroidx/core/app/NotificationCompat$Builder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v8

    :catch_0
    move-exception v0

    .line 3090
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_9
    :goto_7
    return-object v9
.end method

.method private deleteNotificationChannelInternal(JII)V
    .locals 9

    .line 2865
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    return-void

    .line 2869
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getNotificationsSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2870
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

    .line 2872
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

    .line 2874
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".topic"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2876
    :cond_2
    invoke-interface {v0, v6, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 2878
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

    .line 2880
    :try_start_2
    sget-object v6, Lorg/telegram/messenger/NotificationsController;->systemNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v6, p3}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    .line 2882
    :try_start_3
    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2884
    :goto_0
    sget-boolean v6, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v6, :cond_3

    .line 2885
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

    .line 2890
    :cond_4
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "org.telegram.keyia"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2891
    invoke-interface {v0, p1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 2893
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

    .line 2895
    :try_start_4
    sget-object p1, Lorg/telegram/messenger/NotificationsController;->systemNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p1, p2}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 2897
    :try_start_5
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2899
    :goto_1
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_5

    .line 2900
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 2904
    :cond_5
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 2906
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method private dismissNotification()V
    .locals 4

    .line 2749
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/NotificationsController;->notificationManager:Landroidx/core/app/NotificationManagerCompat;

    iget v1, p0, Lorg/telegram/messenger/NotificationsController;->notificationId:I

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationManagerCompat;->cancel(I)V

    .line 2750
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2751
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController;->pushMessagesDict:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->clear()V

    .line 2752
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController;->lastWearNotifiedMessageId:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->clear()V

    const/4 v0, 0x0

    .line 2753
    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/NotificationsController;->wearNotificationsIds:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1}, Landroidx/collection/LongSparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2754
    iget-object v1, p0, Lorg/telegram/messenger/NotificationsController;->wearNotificationsIds:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1, v0}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v1

    .line 2755
    iget-object v3, p0, Lorg/telegram/messenger/NotificationsController;->openedInBubbleDialogs:Ljava/util/HashSet;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 2758
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

    .line 2760
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController;->wearNotificationsIds:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->clear()V

    .line 2761
    sget-object v0, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda40;->INSTANCE:Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda40;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 2763
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

    .line 193
    sget-object v0, Lorg/telegram/messenger/NotificationsController;->Instance:[Lorg/telegram/messenger/NotificationsController;

    aget-object v0, v0, p0

    if-nez v0, :cond_1

    .line 195
    sget-object v0, Lorg/telegram/messenger/NotificationsController;->lockObjects:[Ljava/lang/Object;

    aget-object v1, v0, p0

    monitor-enter v1

    .line 196
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/NotificationsController;->Instance:[Lorg/telegram/messenger/NotificationsController;

    aget-object v0, v0, p0

    if-nez v0, :cond_0

    .line 198
    sget-object v0, Lorg/telegram/messenger/NotificationsController;->Instance:[Lorg/telegram/messenger/NotificationsController;

    new-instance v2, Lorg/telegram/messenger/NotificationsController;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/NotificationsController;-><init>(I)V

    aput-object v2, v0, p0

    move-object v0, v2

    .line 200
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

    .line 2719
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController;->dialogsNotificationsFacade:Lorg/telegram/messenger/NotificationsSettingsFacade;

    const-string v1, "notify2_"

    const/4 v5, -0x1

    move-wide v2, p2

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/NotificationsSettingsFacade;->getProperty(Ljava/lang/String;JII)I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 2721
    iget-object v1, p0, Lorg/telegram/messenger/NotificationsController;->dialogsNotificationsFacade:Lorg/telegram/messenger/NotificationsSettingsFacade;

    const/4 v6, 0x0

    const-string v2, "notifyuntil_"

    move-wide v3, p2

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/messenger/NotificationsSettingsFacade;->getProperty(Ljava/lang/String;JII)I

    move-result p2

    .line 2722
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
    .locals 3

    if-eqz p2, :cond_0

    .line 294
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, p0

    const-string p0, "%d_%d"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 296
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getShortStringForMessage(Lorg/telegram/messenger/MessageObject;[Ljava/lang/String;[Z)Ljava/lang/String;
    .locals 25

    move-object/from16 v0, p1

    .line 1445
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->needShowPasscode()Z

    move-result v1

    const-string v2, "NotificationHiddenMessage"

    if-nez v1, :cond_c2

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isWaitingForPasscodeEnter:Z

    if-eqz v1, :cond_0

    goto/16 :goto_1d

    .line 1448
    :cond_0
    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v3, v1, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 1449
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v5, v1, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:J

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-eqz v9, :cond_1

    goto :goto_0

    :cond_1
    iget-wide v5, v1, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    .line 1450
    :goto_0
    iget-wide v9, v1, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    const/4 v1, 0x1

    const/4 v11, 0x0

    if-eqz p3, :cond_2

    .line 1452
    aput-boolean v1, p3, v11

    .line 1454
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/messenger/AccountInstance;->getNotificationsSettings()Landroid/content/SharedPreferences;

    move-result-object v12

    .line 1455
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "content_preview_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    .line 1456
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

    .line 1458
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1b

    if-le v1, v2, :cond_3

    .line 1459
    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->localName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, p2, v2

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    if-eqz v13, :cond_4

    const/4 v1, 0x1

    .line 1461
    invoke-interface {v12, v11, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_e

    :cond_4
    if-eqz p3, :cond_5

    .line 1463
    aput-boolean v2, p3, v2

    .line 1465
    :cond_5
    sget v0, Lorg/telegram/messenger/R$string;->Message:I

    invoke-static {v7, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_6
    if-eqz v2, :cond_e

    .line 1468
    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_8

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isSupergroup()Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_2

    .line 1470
    :cond_7
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1b

    if-le v2, v3, :cond_9

    .line 1471
    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->localName:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, p2, v3

    goto :goto_3

    :cond_8
    :goto_2
    const/4 v3, 0x0

    .line 1469
    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->localUserName:Ljava/lang/String;

    aput-object v2, p2, v3

    :cond_9
    :goto_3
    if-eqz v13, :cond_b

    .line 1473
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

    .line 1475
    aput-boolean v1, p3, v1

    .line 1477
    :cond_c
    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_d

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isSupergroup()Z

    move-result v1

    if-nez v1, :cond_d

    .line 1478
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

    .line 1480
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

    .line 1484
    :cond_e
    invoke-direct/range {p0 .. p1}, Lorg/telegram/messenger/NotificationsController;->replaceSpoilers(Lorg/telegram/messenger/MessageObject;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1486
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v14

    invoke-virtual {v14}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v19

    const-wide/16 v17, 0x0

    cmp-long v14, v9, v17

    if-nez v14, :cond_10

    .line 1488
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getFromChatId()J

    move-result-wide v9

    cmp-long v14, v9, v17

    if-nez v14, :cond_11

    neg-long v9, v5

    goto :goto_5

    :cond_10
    cmp-long v14, v9, v19

    if-nez v14, :cond_11

    .line 1493
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

    .line 1505
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

    .line 1506
    invoke-static {v14}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v9

    :cond_14
    const-wide/16 v17, 0x0

    cmp-long v14, v9, v17

    const/16 v21, 0x0

    if-lez v14, :cond_18

    .line 1509
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    move-object/from16 v22, v7

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v8, v7}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v7

    if-eqz v7, :cond_17

    .line 1511
    invoke-static {v7}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v7

    cmp-long v8, v5, v17

    if-eqz v8, :cond_15

    const/4 v8, 0x0

    .line 1513
    aput-object v7, p2, v8

    move-object/from16 v24, v1

    move-object/from16 v23, v15

    goto :goto_7

    :cond_15
    move-object/from16 v23, v15

    const/4 v8, 0x0

    .line 1515
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    move-object/from16 v24, v1

    const/16 v1, 0x1b

    if-le v15, v1, :cond_16

    .line 1516
    aput-object v7, p2, v8

    goto :goto_7

    .line 1518
    :cond_16
    aput-object v21, p2, v8

    goto :goto_7

    :cond_17
    move-object/from16 v24, v1

    move-object/from16 v23, v15

    const/4 v8, 0x0

    move-object/from16 v7, v21

    :goto_7
    move-object v1, v7

    move-object v7, v11

    move-object v15, v12

    goto :goto_8

    :cond_18
    move-object/from16 v24, v1

    move-object/from16 v22, v7

    move-object/from16 v23, v15

    const/4 v8, 0x0

    .line 1523
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    move-object v7, v11

    move-object v15, v12

    neg-long v11, v9

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v1, v11}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 1525
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .line 1526
    aput-object v1, p2, v8

    goto :goto_8

    :cond_19
    move-object/from16 v1, v21

    :goto_8
    if-eqz v1, :cond_1a

    if-lez v14, :cond_1a

    .line 1529
    invoke-static {v3, v4}, Lorg/telegram/messenger/UserObject;->isReplyUser(J)Z

    move-result v8

    if-eqz v8, :cond_1a

    iget-object v8, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    if-eqz v8, :cond_1a

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->saved_from_peer:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v8, :cond_1a

    .line 1530
    invoke-static {v8}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v11

    .line 1531
    invoke-static {v11, v12}, Lorg/telegram/messenger/DialogObject;->isChatDialog(J)Z

    move-result v8

    if-eqz v8, :cond_1a

    .line 1532
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    neg-long v11, v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v8, v11}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v8

    if-eqz v8, :cond_1a

    .line 1534
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " @ "

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x0

    .line 1535
    aget-object v11, p2, v8

    if-eqz v11, :cond_1a

    .line 1536
    aput-object v1, p2, v8

    :cond_1a
    if-nez v1, :cond_1b

    return-object v21

    :cond_1b
    const-wide/16 v11, 0x0

    cmp-long v8, v5, v11

    if-eqz v8, :cond_1e

    .line 1547
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v11

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v11, v5}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v5

    if-nez v5, :cond_1c

    return-object v21

    .line 1550
    :cond_1c
    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v6

    if-eqz v6, :cond_1d

    iget-boolean v6, v5, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v6, :cond_1d

    .line 1551
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x1b

    if-gt v6, v11, :cond_1d

    const/4 v6, 0x0

    .line 1552
    aput-object v21, p2, v6

    goto :goto_9

    :cond_1d
    const/4 v6, 0x0

    goto :goto_9

    :cond_1e
    const/4 v6, 0x0

    move-object/from16 v5, v21

    .line 1558
    :goto_9
    invoke-static {v3, v4}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v11

    if-eqz v11, :cond_1f

    .line 1559
    aput-object v21, p2, v6

    .line 1560
    sget v0, Lorg/telegram/messenger/R$string;->NotificationHiddenMessage:I

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1562
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
    if-eqz v13, :cond_c0

    if-nez v8, :cond_21

    if-eqz v14, :cond_21

    move-object v6, v15

    const/4 v11, 0x1

    .line 1563
    invoke-interface {v6, v7, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_23

    goto :goto_b

    :cond_21
    move-object v6, v15

    const/4 v11, 0x1

    :goto_b
    if-eqz v8, :cond_c0

    if-nez v2, :cond_22

    move-object/from16 v7, v24

    invoke-interface {v6, v7, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_23

    :cond_22
    if-eqz v2, :cond_c0

    move-object/from16 v2, v23

    invoke-interface {v6, v2, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_c0

    .line 1564
    :cond_23
    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    instance-of v6, v2, Lorg/telegram/tgnet/TLRPC$TL_messageService;

    const-string/jumbo v7, "\ud83c\udfac "

    const-string/jumbo v8, "\ud83d\udcce "

    const-string/jumbo v11, "\ud83d\udcf9 "

    const-string/jumbo v12, "\ud83d\uddbc "

    if-eqz v6, :cond_a5

    const/4 v6, 0x0

    .line 1565
    aput-object v21, p2, v6

    .line 1566
    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v14, v6, Lorg/telegram/tgnet/TLRPC$TL_messageActionSetSameChatWallPaper;

    if-eqz v14, :cond_24

    .line 1567
    sget v0, Lorg/telegram/messenger/R$string;->WallpaperSameNotification:I

    const-string v1, "WallpaperSameNotification"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1568
    :cond_24
    instance-of v14, v6, Lorg/telegram/tgnet/TLRPC$TL_messageActionSetChatWallPaper;

    if-eqz v14, :cond_25

    .line 1569
    sget v0, Lorg/telegram/messenger/R$string;->WallpaperNotification:I

    const-string v1, "WallpaperNotification"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1570
    :cond_25
    instance-of v14, v6, Lorg/telegram/tgnet/TLRPC$TL_messageActionGeoProximityReached;

    if-eqz v14, :cond_26

    .line 1571
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1572
    :cond_26
    instance-of v14, v6, Lorg/telegram/tgnet/TLRPC$TL_messageActionUserJoined;

    if-nez v14, :cond_a4

    instance-of v14, v6, Lorg/telegram/tgnet/TLRPC$TL_messageActionContactSignUp;

    if-eqz v14, :cond_27

    goto/16 :goto_1a

    .line 1574
    :cond_27
    instance-of v14, v6, Lorg/telegram/tgnet/TLRPC$TL_messageActionUserUpdatedPhoto;

    if-eqz v14, :cond_28

    .line 1575
    sget v0, Lorg/telegram/messenger/R$string;->NotificationContactNewPhoto:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "NotificationContactNewPhoto"

    invoke-static {v1, v0, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1576
    :cond_28
    instance-of v14, v6, Lorg/telegram/tgnet/TLRPC$TL_messageActionLoginUnknownLocation;

    const/4 v15, 0x3

    if-eqz v14, :cond_29

    .line 1577
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

    mul-long/2addr v4, v6

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

    mul-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Lorg/telegram/messenger/time/FastDateFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v3, v4

    const-string v2, "formatDateAtTime"

    invoke-static {v2, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1578
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

    .line 1579
    :cond_29
    instance-of v14, v6, Lorg/telegram/tgnet/TLRPC$TL_messageActionGameScore;

    if-nez v14, :cond_a3

    instance-of v14, v6, Lorg/telegram/tgnet/TLRPC$TL_messageActionPaymentSent;

    if-eqz v14, :cond_2a

    goto/16 :goto_19

    .line 1581
    :cond_2a
    instance-of v14, v6, Lorg/telegram/tgnet/TLRPC$TL_messageActionPhoneCall;

    if-eqz v14, :cond_2c

    .line 1582
    iget-boolean v0, v6, Lorg/telegram/tgnet/TLRPC$MessageAction;->video:Z

    if-eqz v0, :cond_2b

    .line 1583
    sget v0, Lorg/telegram/messenger/R$string;->CallMessageVideoIncomingMissed:I

    const-string v1, "CallMessageVideoIncomingMissed"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1585
    :cond_2b
    sget v0, Lorg/telegram/messenger/R$string;->CallMessageIncomingMissed:I

    const-string v1, "CallMessageIncomingMissed"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1587
    :cond_2c
    instance-of v14, v6, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatAddUser;

    if-eqz v14, :cond_37

    .line 1588
    iget-wide v2, v6, Lorg/telegram/tgnet/TLRPC$MessageAction;->user_id:J

    const-wide/16 v7, 0x0

    cmp-long v4, v2, v7

    if-nez v4, :cond_2d

    .line 1589
    iget-object v4, v6, Lorg/telegram/tgnet/TLRPC$MessageAction;->users:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_2d

    .line 1590
    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageAction;->users:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :cond_2d
    const-wide/16 v6, 0x0

    cmp-long v4, v2, v6

    if-eqz v4, :cond_33

    .line 1593
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v11, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    cmp-long v0, v11, v6

    if-eqz v0, :cond_2e

    iget-boolean v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v0, :cond_2e

    .line 1594
    sget v0, Lorg/telegram/messenger/R$string;->ChannelAddedByNotification:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    iget-object v1, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const-string v1, "ChannelAddedByNotification"

    invoke-static {v1, v0, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2e
    cmp-long v0, v2, v19

    if-nez v0, :cond_2f

    .line 1597
    sget v0, Lorg/telegram/messenger/R$string;->NotificationInvitedToGroup:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    iget-object v1, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const-string v1, "NotificationInvitedToGroup"

    invoke-static {v1, v0, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1599
    :cond_2f
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-nez v0, :cond_30

    return-object v21

    .line 1603
    :cond_30
    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    cmp-long v2, v9, v2

    if-nez v2, :cond_32

    .line 1604
    iget-boolean v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v0, :cond_31

    .line 1605
    sget v0, Lorg/telegram/messenger/R$string;->NotificationGroupAddSelfMega:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    iget-object v1, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v1, v2, v4

    const-string v1, "NotificationGroupAddSelfMega"

    invoke-static {v1, v0, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_31
    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1607
    sget v0, Lorg/telegram/messenger/R$string;->NotificationGroupAddSelf:I

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v3

    iget-object v1, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v1, v2, v4

    const-string v1, "NotificationGroupAddSelf"

    invoke-static {v1, v0, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_32
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1610
    sget v2, Lorg/telegram/messenger/R$string;->NotificationGroupAddMember:I

    new-array v6, v15, [Ljava/lang/Object;

    aput-object v1, v6, v3

    iget-object v1, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v1, v6, v4

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, v6, v1

    const-string v0, "NotificationGroupAddMember"

    invoke-static {v0, v2, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1615
    :cond_33
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    .line 1616
    :goto_c
    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageAction;->users:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_36

    .line 1617
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$MessageAction;->users:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    if-eqz v4, :cond_35

    .line 1619
    invoke-static {v4}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v4

    .line 1620
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-eqz v6, :cond_34

    const-string v6, ", "

    .line 1621
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1623
    :cond_34
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 1626
    :cond_36
    sget v0, Lorg/telegram/messenger/R$string;->NotificationGroupAddMember:I

    new-array v3, v15, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    iget-object v1, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v14, 0x2

    aput-object v1, v3, v14

    const-string v1, "NotificationGroupAddMember"

    invoke-static {v1, v0, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_37
    const/4 v14, 0x2

    .line 1628
    instance-of v13, v6, Lorg/telegram/tgnet/TLRPC$TL_messageActionGroupCall;

    if-eqz v13, :cond_38

    .line 1629
    sget v0, Lorg/telegram/messenger/R$string;->NotificationGroupCreatedCall:I

    new-array v2, v14, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    iget-object v1, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const-string v1, "NotificationGroupCreatedCall"

    invoke-static {v1, v0, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1630
    :cond_38
    instance-of v13, v6, Lorg/telegram/tgnet/TLRPC$TL_messageActionGroupCallScheduled;

    if-eqz v13, :cond_39

    .line 1631
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1632
    :cond_39
    instance-of v13, v6, Lorg/telegram/tgnet/TLRPC$TL_messageActionInviteToGroupCall;

    if-eqz v13, :cond_41

    .line 1633
    iget-wide v2, v6, Lorg/telegram/tgnet/TLRPC$MessageAction;->user_id:J

    const-wide/16 v7, 0x0

    cmp-long v4, v2, v7

    if-nez v4, :cond_3a

    .line 1634
    iget-object v4, v6, Lorg/telegram/tgnet/TLRPC$MessageAction;->users:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_3a

    .line 1635
    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageAction;->users:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :cond_3a
    const-wide/16 v6, 0x0

    cmp-long v4, v2, v6

    if-eqz v4, :cond_3d

    cmp-long v0, v2, v19

    if-nez v0, :cond_3b

    .line 1639
    sget v0, Lorg/telegram/messenger/R$string;->NotificationGroupInvitedYouToCall:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    iget-object v1, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const-string v1, "NotificationGroupInvitedYouToCall"

    invoke-static {v1, v0, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1641
    :cond_3b
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-nez v0, :cond_3c

    return-object v21

    .line 1645
    :cond_3c
    sget v2, Lorg/telegram/messenger/R$string;->NotificationGroupInvitedToCall:I

    new-array v3, v15, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    iget-object v1, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, v3, v1

    const-string v0, "NotificationGroupInvitedToCall"

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1648
    :cond_3d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    .line 1649
    :goto_d
    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageAction;->users:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_40

    .line 1650
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$MessageAction;->users:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    if-eqz v4, :cond_3f

    .line 1652
    invoke-static {v4}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v4

    .line 1653
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-eqz v6, :cond_3e

    const-string v6, ", "

    .line 1654
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1656
    :cond_3e
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3f
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 1659
    :cond_40
    sget v0, Lorg/telegram/messenger/R$string;->NotificationGroupInvitedToCall:I

    new-array v3, v15, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    iget-object v1, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v13, 0x2

    aput-object v1, v3, v13

    const-string v1, "NotificationGroupInvitedToCall"

    invoke-static {v1, v0, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_41
    const/4 v13, 0x2

    .line 1661
    instance-of v14, v6, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatJoinedByLink;

    if-eqz v14, :cond_42

    .line 1662
    sget v0, Lorg/telegram/messenger/R$string;->NotificationInvitedToGroupByLink:I

    new-array v2, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v1, v2, v14

    iget-object v1, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/16 v16, 0x1

    aput-object v1, v2, v16

    const-string v1, "NotificationInvitedToGroupByLink"

    invoke-static {v1, v0, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_42
    const/4 v14, 0x0

    const/16 v16, 0x1

    .line 1663
    instance-of v15, v6, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatEditTitle;

    if-eqz v15, :cond_43

    .line 1664
    sget v0, Lorg/telegram/messenger/R$string;->NotificationEditedGroupName:I

    new-array v2, v13, [Ljava/lang/Object;

    aput-object v1, v2, v14

    iget-object v1, v6, Lorg/telegram/tgnet/TLRPC$MessageAction;->title:Ljava/lang/String;

    aput-object v1, v2, v16

    const-string v1, "NotificationEditedGroupName"

    invoke-static {v1, v0, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1665
    :cond_43
    instance-of v13, v6, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatEditPhoto;

    if-nez v13, :cond_9f

    instance-of v13, v6, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatDeletePhoto;

    if-eqz v13, :cond_44

    goto/16 :goto_18

    .line 1679
    :cond_44
    instance-of v2, v6, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatDeleteUser;

    if-eqz v2, :cond_48

    .line 1680
    iget-wide v2, v6, Lorg/telegram/tgnet/TLRPC$MessageAction;->user_id:J

    cmp-long v4, v2, v19

    if-nez v4, :cond_45

    .line 1681
    sget v0, Lorg/telegram/messenger/R$string;->NotificationGroupKickYou:I

    const/4 v4, 0x2

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v2, v6

    iget-object v1, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v1, v2, v7

    const-string v1, "NotificationGroupKickYou"

    invoke-static {v1, v0, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_45
    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    cmp-long v2, v2, v9

    if-nez v2, :cond_46

    .line 1683
    sget v0, Lorg/telegram/messenger/R$string;->NotificationGroupLeftMember:I

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v1, v2, v6

    iget-object v1, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v1, v2, v7

    const-string v1, "NotificationGroupLeftMember"

    invoke-static {v1, v0, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1685
    :cond_46
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-wide v3, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->user_id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-nez v0, :cond_47

    return-object v21

    .line 1689
    :cond_47
    sget v2, Lorg/telegram/messenger/R$string;->NotificationGroupKickMember:I

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    iget-object v1, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, v3, v1

    const-string v0, "NotificationGroupKickMember"

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1691
    :cond_48
    instance-of v2, v6, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatCreate;

    if-eqz v2, :cond_49

    .line 1692
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1693
    :cond_49
    instance-of v2, v6, Lorg/telegram/tgnet/TLRPC$TL_messageActionChannelCreate;

    if-eqz v2, :cond_4a

    .line 1694
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1695
    :cond_4a
    instance-of v2, v6, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatMigrateTo;

    if-eqz v2, :cond_4b

    .line 1696
    sget v0, Lorg/telegram/messenger/R$string;->ActionMigrateFromGroupNotify:I

    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v2, v1, v9

    const-string v2, "ActionMigrateFromGroupNotify"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4b
    const/4 v2, 0x1

    const/4 v9, 0x0

    .line 1697
    instance-of v10, v6, Lorg/telegram/tgnet/TLRPC$TL_messageActionChannelMigrateFrom;

    if-eqz v10, :cond_4c

    .line 1698
    sget v0, Lorg/telegram/messenger/R$string;->ActionMigrateFromGroupNotify:I

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, v6, Lorg/telegram/tgnet/TLRPC$MessageAction;->title:Ljava/lang/String;

    aput-object v2, v1, v9

    const-string v2, "ActionMigrateFromGroupNotify"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1699
    :cond_4c
    instance-of v2, v6, Lorg/telegram/tgnet/TLRPC$TL_messageActionScreenshotTaken;

    if-eqz v2, :cond_4d

    .line 1700
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1701
    :cond_4d
    instance-of v2, v6, Lorg/telegram/tgnet/TLRPC$TL_messageActionPinMessage;

    if-eqz v2, :cond_99

    const-string v2, "..."

    const/16 v3, 0x14

    if-eqz v5, :cond_67

    .line 1702
    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v4

    if-eqz v4, :cond_4e

    iget-boolean v4, v5, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v4, :cond_67

    .line 1703
    :cond_4e
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v0, :cond_4f

    .line 1704
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedNoText:I

    const/4 v4, 0x2

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v2, v6

    iget-object v1, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v9, 0x1

    aput-object v1, v2, v9

    const-string v1, "NotificationActionPinnedNoText"

    invoke-static {v1, v0, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4f
    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v9, 0x1

    .line 1707
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v10

    if-eqz v10, :cond_50

    .line 1708
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedMusic:I

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v1, v2, v6

    iget-object v1, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v1, v2, v9

    const-string v1, "NotificationActionPinnedMusic"

    invoke-static {v1, v0, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1709
    :cond_50
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v4

    const-string v6, "NotificationActionPinnedText"

    if-eqz v4, :cond_52

    .line 1710
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_51

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_51

    .line 1711
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1712
    sget v2, Lorg/telegram/messenger/R$string;->NotificationActionPinnedText:I

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v7, 0x1

    aput-object v0, v3, v7

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v8, 0x2

    aput-object v0, v3, v8

    invoke-static {v6, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_51
    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x2

    .line 1714
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedVideo:I

    new-array v2, v8, [Ljava/lang/Object;

    aput-object v1, v2, v4

    iget-object v1, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v1, v2, v7

    const-string v1, "NotificationActionPinnedVideo"

    invoke-static {v1, v0, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1716
    :cond_52
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isGif()Z

    move-result v4

    if-eqz v4, :cond_54

    .line 1717
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_53

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_53

    .line 1718
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1719
    sget v2, Lorg/telegram/messenger/R$string;->NotificationActionPinnedText:I

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v7, 0x1

    aput-object v0, v3, v7

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v9, 0x2

    aput-object v0, v3, v9

    invoke-static {v6, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_53
    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v9, 0x2

    .line 1721
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedGif:I

    new-array v2, v9, [Ljava/lang/Object;

    aput-object v1, v2, v4

    iget-object v1, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v1, v2, v7

    const-string v1, "NotificationActionPinnedGif"

    invoke-static {v1, v0, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_54
    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v9, 0x2

    .line 1723
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v10

    if-eqz v10, :cond_55

    .line 1724
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedVoice:I

    new-array v2, v9, [Ljava/lang/Object;

    aput-object v1, v2, v4

    iget-object v1, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v1, v2, v7

    const-string v1, "NotificationActionPinnedVoice"

    invoke-static {v1, v0, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1725
    :cond_55
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v10

    if-eqz v10, :cond_56

    .line 1726
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedRound:I

    new-array v2, v9, [Ljava/lang/Object;

    aput-object v1, v2, v4

    iget-object v1, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v1, v2, v7

    const-string v1, "NotificationActionPinnedRound"

    invoke-static {v1, v0, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1727
    :cond_56
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isSticker()Z

    move-result v4

    if-nez v4, :cond_65

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isAnimatedSticker()Z

    move-result v4

    if-eqz v4, :cond_57

    goto/16 :goto_10

    .line 1734
    :cond_57
    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v9, v7, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v9, :cond_59

    .line 1735
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_58

    iget-object v2, v4, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_58

    .line 1736
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1737
    sget v2, Lorg/telegram/messenger/R$string;->NotificationActionPinnedText:I

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v7, 0x1

    aput-object v0, v3, v7

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v8, 0x2

    aput-object v0, v3, v8

    invoke-static {v6, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_58
    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x2

    .line 1739
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedFile:I

    new-array v2, v8, [Ljava/lang/Object;

    aput-object v1, v2, v4

    iget-object v1, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v1, v2, v7

    const-string v1, "NotificationActionPinnedFile"

    invoke-static {v1, v0, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1741
    :cond_59
    instance-of v8, v7, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;

    if-nez v8, :cond_64

    instance-of v8, v7, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    if-eqz v8, :cond_5a

    goto/16 :goto_f

    .line 1743
    :cond_5a
    instance-of v8, v7, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeoLive;

    if-eqz v8, :cond_5b

    .line 1744
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedGeoLive:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v2, v8

    iget-object v1, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v9, 0x1

    aput-object v1, v2, v9

    const-string v1, "NotificationActionPinnedGeoLive"

    invoke-static {v1, v0, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5b
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 1745
    instance-of v10, v7, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;

    if-eqz v10, :cond_5c

    .line 1746
    check-cast v7, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;

    .line 1747
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedContact2:I

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v8

    iget-object v1, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v1, v2, v9

    iget-object v1, v7, Lorg/telegram/tgnet/TLRPC$MessageMedia;->first_name:Ljava/lang/String;

    iget-object v3, v7, Lorg/telegram/tgnet/TLRPC$MessageMedia;->last_name:Ljava/lang/String;

    invoke-static {v1, v3}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v2, v3

    const-string v1, "NotificationActionPinnedContact2"

    invoke-static {v1, v0, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1748
    :cond_5c
    instance-of v8, v7, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;

    if-eqz v8, :cond_5e

    .line 1749
    check-cast v7, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;

    .line 1750
    iget-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->poll:Lorg/telegram/tgnet/TLRPC$Poll;

    iget-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$Poll;->quiz:Z

    if-eqz v2, :cond_5d

    .line 1751
    sget v2, Lorg/telegram/messenger/R$string;->NotificationActionPinnedQuiz2:I

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    iget-object v1, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v1, v3, v6

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Poll;->question:Ljava/lang/String;

    const/4 v7, 0x2

    aput-object v0, v3, v7

    const-string v0, "NotificationActionPinnedQuiz2"

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5d
    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x2

    .line 1753
    sget v2, Lorg/telegram/messenger/R$string;->NotificationActionPinnedPoll2:I

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    iget-object v1, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v1, v3, v6

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Poll;->question:Ljava/lang/String;

    aput-object v0, v3, v7

    const-string v0, "NotificationActionPinnedPoll2"

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1755
    :cond_5e
    instance-of v8, v7, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v8, :cond_60

    .line 1756
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_5f

    iget-object v2, v4, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5f

    .line 1757
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1758
    sget v2, Lorg/telegram/messenger/R$string;->NotificationActionPinnedText:I

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v8, 0x1

    aput-object v0, v3, v8

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v9, 0x2

    aput-object v0, v3, v9

    invoke-static {v6, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5f
    const/4 v4, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x2

    .line 1760
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedPhoto:I

    new-array v2, v9, [Ljava/lang/Object;

    aput-object v1, v2, v4

    iget-object v1, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v1, v2, v8

    const-string v1, "NotificationActionPinnedPhoto"

    invoke-static {v1, v0, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_60
    const/4 v4, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x2

    .line 1762
    instance-of v7, v7, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;

    if-eqz v7, :cond_61

    .line 1763
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedGame:I

    new-array v2, v9, [Ljava/lang/Object;

    aput-object v1, v2, v4

    iget-object v1, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v1, v2, v8

    const-string v1, "NotificationActionPinnedGame"

    invoke-static {v1, v0, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1764
    :cond_61
    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    if-eqz v4, :cond_63

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_63

    .line 1765
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    .line 1766
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-le v4, v3, :cond_62

    .line 1767
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    invoke-interface {v0, v7, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :cond_62
    const/4 v7, 0x0

    .line 1769
    :goto_e
    sget v2, Lorg/telegram/messenger/R$string;->NotificationActionPinnedText:I

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v7

    const/4 v4, 0x1

    aput-object v0, v3, v4

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v8, 0x2

    aput-object v0, v3, v8

    invoke-static {v6, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_63
    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x2

    .line 1771
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedNoText:I

    new-array v2, v8, [Ljava/lang/Object;

    aput-object v1, v2, v7

    iget-object v1, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v1, v2, v4

    const-string v1, "NotificationActionPinnedNoText"

    invoke-static {v1, v0, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_64
    :goto_f
    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x2

    .line 1742
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedGeo:I

    new-array v2, v8, [Ljava/lang/Object;

    aput-object v1, v2, v7

    iget-object v1, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v1, v2, v4

    const-string v1, "NotificationActionPinnedGeo"

    invoke-static {v1, v0, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_65
    :goto_10
    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 1728
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getStickerEmoji()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_66

    .line 1730
    sget v2, Lorg/telegram/messenger/R$string;->NotificationActionPinnedStickerEmoji:I

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v7

    iget-object v1, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v1, v3, v4

    const/4 v6, 0x2

    aput-object v0, v3, v6

    const-string v0, "NotificationActionPinnedStickerEmoji"

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_66
    const/4 v6, 0x2

    .line 1732
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedSticker:I

    new-array v2, v6, [Ljava/lang/Object;

    aput-object v1, v2, v7

    iget-object v1, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v1, v2, v4

    const-string v1, "NotificationActionPinnedSticker"

    invoke-static {v1, v0, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_67
    const/4 v4, 0x1

    if-eqz v5, :cond_80

    .line 1775
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v0, :cond_68

    .line 1776
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedNoTextChannel:I

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v2, v1, v6

    const-string v2, "NotificationActionPinnedNoTextChannel"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_68
    const/4 v6, 0x0

    .line 1779
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v1

    if-eqz v1, :cond_69

    .line 1780
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedMusicChannel:I

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v1, v6

    const-string v2, "NotificationActionPinnedMusicChannel"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1781
    :cond_69
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v1

    const-string v4, "NotificationActionPinnedTextChannel"

    if-eqz v1, :cond_6b

    .line 1782
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_6a

    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6a

    .line 1783
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1784
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

    .line 1786
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedVideoChannel:I

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v1, v6

    const-string v2, "NotificationActionPinnedVideoChannel"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1788
    :cond_6b
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isGif()Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 1789
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_6c

    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6c

    .line 1790
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1791
    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedTextChannel:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v3, v2, v6

    const/4 v7, 0x1

    aput-object v0, v2, v7

    invoke-static {v4, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_6c
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 1793
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedGifChannel:I

    new-array v1, v7, [Ljava/lang/Object;

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v1, v6

    const-string v2, "NotificationActionPinnedGifChannel"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_6d
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 1795
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 1796
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedVoiceChannel:I

    new-array v1, v7, [Ljava/lang/Object;

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v1, v6

    const-string v2, "NotificationActionPinnedVoiceChannel"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1797
    :cond_6e
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 1798
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedRoundChannel:I

    new-array v1, v7, [Ljava/lang/Object;

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v1, v6

    const-string v2, "NotificationActionPinnedRoundChannel"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1799
    :cond_6f
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isSticker()Z

    move-result v1

    if-nez v1, :cond_7e

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isAnimatedSticker()Z

    move-result v1

    if-eqz v1, :cond_70

    goto/16 :goto_13

    .line 1806
    :cond_70
    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v7, v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v7, :cond_72

    .line 1807
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_71

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_71

    .line 1808
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1809
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

    :cond_71
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 1811
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedFileChannel:I

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v1, v6

    const-string v2, "NotificationActionPinnedFileChannel"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1813
    :cond_72
    instance-of v7, v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;

    if-nez v7, :cond_7d

    instance-of v7, v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    if-eqz v7, :cond_73

    goto/16 :goto_12

    .line 1815
    :cond_73
    instance-of v7, v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeoLive;

    if-eqz v7, :cond_74

    .line 1816
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

    :cond_74
    const/4 v7, 0x0

    .line 1817
    instance-of v8, v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;

    if-eqz v8, :cond_75

    .line 1818
    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;

    .line 1819
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

    .line 1820
    :cond_75
    instance-of v7, v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;

    if-eqz v7, :cond_77

    .line 1821
    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;

    .line 1822
    iget-object v0, v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->poll:Lorg/telegram/tgnet/TLRPC$Poll;

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Poll;->quiz:Z

    if-eqz v1, :cond_76

    .line 1823
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

    :cond_76
    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1825
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

    .line 1827
    :cond_77
    instance-of v7, v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v7, :cond_79

    .line 1828
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_78

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_78

    .line 1829
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1830
    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedTextChannel:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v3, v2, v7

    const/4 v8, 0x1

    aput-object v0, v2, v8

    invoke-static {v4, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_78
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 1832
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedPhotoChannel:I

    new-array v1, v8, [Ljava/lang/Object;

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v1, v7

    const-string v2, "NotificationActionPinnedPhotoChannel"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_79
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 1834
    instance-of v1, v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;

    if-eqz v1, :cond_7a

    .line 1835
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedGameChannel:I

    new-array v1, v8, [Ljava/lang/Object;

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v1, v7

    const-string v2, "NotificationActionPinnedGameChannel"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1836
    :cond_7a
    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_7c

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_7c

    .line 1837
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    .line 1838
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v1, v3, :cond_7b

    .line 1839
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    invoke-interface {v0, v6, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :cond_7b
    const/4 v6, 0x0

    .line 1841
    :goto_11
    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedTextChannel:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v3, v2, v6

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v4, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_7c
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 1843
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedNoTextChannel:I

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v1, v6

    const-string v2, "NotificationActionPinnedNoTextChannel"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_7d
    :goto_12
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 1814
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedGeoChannel:I

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v1, v6

    const-string v2, "NotificationActionPinnedGeoChannel"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_7e
    :goto_13
    const/4 v6, 0x0

    .line 1800
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getStickerEmoji()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7f

    .line 1802
    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedStickerEmojiChannel:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v3, v2, v6

    const/4 v4, 0x1

    aput-object v0, v2, v4

    const-string v0, "NotificationActionPinnedStickerEmojiChannel"

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_7f
    const/4 v4, 0x1

    .line 1804
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedStickerChannel:I

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v1, v6

    const-string v2, "NotificationActionPinnedStickerChannel"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_80
    const/4 v6, 0x0

    .line 1847
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v0, :cond_81

    .line 1848
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedNoTextUser:I

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v1, v2, v6

    const-string v1, "NotificationActionPinnedNoTextUser"

    invoke-static {v1, v0, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1851
    :cond_81
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v5

    if-eqz v5, :cond_82

    .line 1852
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedMusicUser:I

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v1, v2, v6

    const-string v1, "NotificationActionPinnedMusicUser"

    invoke-static {v1, v0, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1853
    :cond_82
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v4

    const-string v5, "NotificationActionPinnedTextUser"

    if-eqz v4, :cond_84

    .line 1854
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_83

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_83

    .line 1855
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1856
    sget v2, Lorg/telegram/messenger/R$string;->NotificationActionPinnedTextUser:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v6, 0x1

    aput-object v0, v3, v6

    invoke-static {v5, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_83
    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 1858
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedVideoUser:I

    new-array v2, v6, [Ljava/lang/Object;

    aput-object v1, v2, v4

    const-string v1, "NotificationActionPinnedVideoUser"

    invoke-static {v1, v0, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1860
    :cond_84
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isGif()Z

    move-result v4

    if-eqz v4, :cond_86

    .line 1861
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_85

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_85

    .line 1862
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1863
    sget v2, Lorg/telegram/messenger/R$string;->NotificationActionPinnedTextUser:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v6, 0x1

    aput-object v0, v3, v6

    invoke-static {v5, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_85
    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 1865
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedGifUser:I

    new-array v2, v6, [Ljava/lang/Object;

    aput-object v1, v2, v4

    const-string v1, "NotificationActionPinnedGifUser"

    invoke-static {v1, v0, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_86
    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 1867
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v7

    if-eqz v7, :cond_87

    .line 1868
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedVoiceUser:I

    new-array v2, v6, [Ljava/lang/Object;

    aput-object v1, v2, v4

    const-string v1, "NotificationActionPinnedVoiceUser"

    invoke-static {v1, v0, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1869
    :cond_87
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v7

    if-eqz v7, :cond_88

    .line 1870
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedRoundUser:I

    new-array v2, v6, [Ljava/lang/Object;

    aput-object v1, v2, v4

    const-string v1, "NotificationActionPinnedRoundUser"

    invoke-static {v1, v0, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1871
    :cond_88
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isSticker()Z

    move-result v4

    if-nez v4, :cond_97

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isAnimatedSticker()Z

    move-result v4

    if-eqz v4, :cond_89

    goto/16 :goto_16

    .line 1878
    :cond_89
    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v7, v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v7, :cond_8b

    .line 1879
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_8a

    iget-object v2, v4, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8a

    .line 1880
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1881
    sget v2, Lorg/telegram/messenger/R$string;->NotificationActionPinnedTextUser:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v6, 0x1

    aput-object v0, v3, v6

    invoke-static {v5, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_8a
    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 1883
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedFileUser:I

    new-array v2, v6, [Ljava/lang/Object;

    aput-object v1, v2, v4

    const-string v1, "NotificationActionPinnedFileUser"

    invoke-static {v1, v0, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1885
    :cond_8b
    instance-of v7, v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;

    if-nez v7, :cond_96

    instance-of v7, v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    if-eqz v7, :cond_8c

    goto/16 :goto_15

    .line 1887
    :cond_8c
    instance-of v7, v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeoLive;

    if-eqz v7, :cond_8d

    .line 1888
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedGeoLiveUser:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v2, v7

    const-string v1, "NotificationActionPinnedGeoLiveUser"

    invoke-static {v1, v0, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_8d
    const/4 v7, 0x0

    .line 1889
    instance-of v8, v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;

    if-eqz v8, :cond_8e

    .line 1890
    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;

    .line 1891
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedContactUser:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v7

    iget-object v1, v6, Lorg/telegram/tgnet/TLRPC$MessageMedia;->first_name:Ljava/lang/String;

    iget-object v3, v6, Lorg/telegram/tgnet/TLRPC$MessageMedia;->last_name:Ljava/lang/String;

    invoke-static {v1, v3}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const-string v1, "NotificationActionPinnedContactUser"

    invoke-static {v1, v0, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1892
    :cond_8e
    instance-of v7, v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;

    if-eqz v7, :cond_90

    .line 1893
    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;

    .line 1894
    iget-object v0, v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->poll:Lorg/telegram/tgnet/TLRPC$Poll;

    iget-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$Poll;->quiz:Z

    if-eqz v2, :cond_8f

    .line 1895
    sget v2, Lorg/telegram/messenger/R$string;->NotificationActionPinnedQuizUser:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Poll;->question:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v0, v3, v5

    const-string v0, "NotificationActionPinnedQuizUser"

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_8f
    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 1897
    sget v2, Lorg/telegram/messenger/R$string;->NotificationActionPinnedPollUser:I

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Poll;->question:Ljava/lang/String;

    aput-object v0, v3, v5

    const-string v0, "NotificationActionPinnedPollUser"

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1899
    :cond_90
    instance-of v7, v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v7, :cond_92

    .line 1900
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_91

    iget-object v2, v4, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_91

    .line 1901
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1902
    sget v2, Lorg/telegram/messenger/R$string;->NotificationActionPinnedTextUser:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v7, 0x1

    aput-object v0, v3, v7

    invoke-static {v5, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_91
    const/4 v4, 0x0

    const/4 v7, 0x1

    .line 1904
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedPhotoUser:I

    new-array v2, v7, [Ljava/lang/Object;

    aput-object v1, v2, v4

    const-string v1, "NotificationActionPinnedPhotoUser"

    invoke-static {v1, v0, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_92
    const/4 v4, 0x0

    const/4 v7, 0x1

    .line 1906
    instance-of v6, v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;

    if-eqz v6, :cond_93

    .line 1907
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedGameUser:I

    new-array v2, v7, [Ljava/lang/Object;

    aput-object v1, v2, v4

    const-string v1, "NotificationActionPinnedGameUser"

    invoke-static {v1, v0, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1908
    :cond_93
    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    if-eqz v4, :cond_95

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_95

    .line 1909
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    .line 1910
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-le v4, v3, :cond_94

    .line 1911
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    invoke-interface {v0, v6, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    :cond_94
    const/4 v6, 0x0

    .line 1913
    :goto_14
    sget v2, Lorg/telegram/messenger/R$string;->NotificationActionPinnedTextUser:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v6

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v5, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_95
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 1915
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedNoTextUser:I

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v1, v2, v6

    const-string v1, "NotificationActionPinnedNoTextUser"

    invoke-static {v1, v0, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_96
    :goto_15
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 1886
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedGeoUser:I

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v1, v2, v6

    const-string v1, "NotificationActionPinnedGeoUser"

    invoke-static {v1, v0, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_97
    :goto_16
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 1872
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getStickerEmoji()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_98

    .line 1874
    sget v2, Lorg/telegram/messenger/R$string;->NotificationActionPinnedStickerEmojiUser:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v6

    aput-object v0, v3, v4

    const-string v0, "NotificationActionPinnedStickerEmojiUser"

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1876
    :cond_98
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedStickerUser:I

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v1, v2, v6

    const-string v1, "NotificationActionPinnedStickerUser"

    invoke-static {v1, v0, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1919
    :cond_99
    instance-of v2, v6, Lorg/telegram/tgnet/TLRPC$TL_messageActionSetChatTheme;

    if-eqz v2, :cond_9d

    .line 1920
    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_messageActionSetChatTheme;

    iget-object v0, v6, Lorg/telegram/tgnet/TLRPC$TL_messageActionSetChatTheme;->emoticon:Ljava/lang/String;

    .line 1921
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9b

    cmp-long v2, v3, v19

    if-nez v2, :cond_9a

    .line 1923
    sget v0, Lorg/telegram/messenger/R$string;->ChatThemeDisabledYou:I

    const/4 v2, 0x0

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "ChatThemeDisabledYou"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    :cond_9a
    const/4 v2, 0x0

    .line 1924
    sget v3, Lorg/telegram/messenger/R$string;->ChatThemeDisabled:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v2

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const-string v0, "ChatThemeDisabled"

    invoke-static {v0, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    :cond_9b
    const/4 v2, 0x0

    const/4 v5, 0x1

    cmp-long v3, v3, v19

    if-nez v3, :cond_9c

    .line 1927
    sget v1, Lorg/telegram/messenger/R$string;->ChatThemeChangedYou:I

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v2

    const-string v0, "ChangedChatThemeYou"

    invoke-static {v0, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    .line 1928
    :cond_9c
    sget v3, Lorg/telegram/messenger/R$string;->ChatThemeChangedTo:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v2

    aput-object v0, v4, v5

    const-string v0, "ChangedChatThemeTo"

    invoke-static {v0, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_17
    return-object v0

    .line 1931
    :cond_9d
    instance-of v1, v6, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatJoinedByRequest;

    if-eqz v1, :cond_9e

    .line 1932
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_9e
    return-object v21

    .line 1666
    :cond_9f
    :goto_18
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-eqz v2, :cond_a1

    iget-boolean v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v2, :cond_a1

    .line 1667
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isVideoAvatar()Z

    move-result v0

    if-eqz v0, :cond_a0

    .line 1668
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

    :cond_a0
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 1670
    sget v0, Lorg/telegram/messenger/R$string;->ChannelPhotoEditNotification:I

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v1, v3

    const-string v2, "ChannelPhotoEditNotification"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_a1
    const/4 v3, 0x0

    .line 1673
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isVideoAvatar()Z

    move-result v0

    if-eqz v0, :cond_a2

    .line 1674
    sget v0, Lorg/telegram/messenger/R$string;->NotificationEditedGroupVideo:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v3

    iget-object v1, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v1, v2, v4

    const-string v1, "NotificationEditedGroupVideo"

    invoke-static {v1, v0, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_a2
    const/4 v2, 0x2

    const/4 v4, 0x1

    .line 1676
    sget v0, Lorg/telegram/messenger/R$string;->NotificationEditedGroupPhoto:I

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v3

    iget-object v1, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v1, v2, v4

    const-string v1, "NotificationEditedGroupPhoto"

    invoke-static {v1, v0, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1580
    :cond_a3
    :goto_19
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_a4
    :goto_1a
    const/4 v4, 0x1

    .line 1573
    sget v0, Lorg/telegram/messenger/R$string;->NotificationContactJoined:I

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "NotificationContactJoined"

    invoke-static {v1, v0, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1935
    :cond_a5
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isMediaEmpty()Z

    move-result v1

    if-eqz v1, :cond_a7

    .line 1936
    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a6

    .line 1937
    invoke-direct/range {p0 .. p1}, Lorg/telegram/messenger/NotificationsController;->replaceSpoilers(Lorg/telegram/messenger/MessageObject;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1939
    :cond_a6
    sget v0, Lorg/telegram/messenger/R$string;->Message:I

    move-object/from16 v1, v22

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_a7
    move-object/from16 v1, v22

    .line 1941
    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v3, :cond_aa

    .line 1942
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v1, v3, :cond_a8

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a8

    .line 1943
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p1}, Lorg/telegram/messenger/NotificationsController;->replaceSpoilers(Lorg/telegram/messenger/MessageObject;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1944
    :cond_a8
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->ttl_seconds:I

    if-eqz v0, :cond_a9

    .line 1945
    sget v0, Lorg/telegram/messenger/R$string;->AttachDestructingPhoto:I

    const-string v1, "AttachDestructingPhoto"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1947
    :cond_a9
    sget v0, Lorg/telegram/messenger/R$string;->AttachPhoto:I

    const-string v1, "AttachPhoto"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1949
    :cond_aa
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v2

    if-eqz v2, :cond_ad

    .line 1950
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_ab

    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_ab

    .line 1951
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p1}, Lorg/telegram/messenger/NotificationsController;->replaceSpoilers(Lorg/telegram/messenger/MessageObject;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1952
    :cond_ab
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->ttl_seconds:I

    if-eqz v0, :cond_ac

    .line 1953
    sget v0, Lorg/telegram/messenger/R$string;->AttachDestructingVideo:I

    const-string v1, "AttachDestructingVideo"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1955
    :cond_ac
    sget v0, Lorg/telegram/messenger/R$string;->AttachVideo:I

    const-string v1, "AttachVideo"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1957
    :cond_ad
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isGame()Z

    move-result v2

    if-eqz v2, :cond_ae

    .line 1958
    sget v0, Lorg/telegram/messenger/R$string;->AttachGame:I

    const-string v1, "AttachGame"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1959
    :cond_ae
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v2

    if-eqz v2, :cond_af

    .line 1960
    sget v0, Lorg/telegram/messenger/R$string;->AttachAudio:I

    const-string v1, "AttachAudio"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1961
    :cond_af
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v2

    if-eqz v2, :cond_b0

    .line 1962
    sget v0, Lorg/telegram/messenger/R$string;->AttachRound:I

    const-string v1, "AttachRound"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1963
    :cond_b0
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v2

    if-eqz v2, :cond_b1

    .line 1964
    sget v0, Lorg/telegram/messenger/R$string;->AttachMusic:I

    const-string v1, "AttachMusic"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1965
    :cond_b1
    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;

    if-eqz v3, :cond_b2

    .line 1966
    sget v0, Lorg/telegram/messenger/R$string;->AttachContact:I

    const-string v1, "AttachContact"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1967
    :cond_b2
    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;

    if-eqz v3, :cond_b4

    .line 1968
    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;

    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->poll:Lorg/telegram/tgnet/TLRPC$Poll;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Poll;->quiz:Z

    if-eqz v0, :cond_b3

    .line 1969
    sget v0, Lorg/telegram/messenger/R$string;->QuizPoll:I

    const-string v1, "QuizPoll"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1971
    :cond_b3
    sget v0, Lorg/telegram/messenger/R$string;->Poll:I

    const-string v1, "Poll"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1973
    :cond_b4
    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;

    if-nez v3, :cond_bf

    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    if-eqz v3, :cond_b5

    goto/16 :goto_1c

    .line 1975
    :cond_b5
    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeoLive;

    if-eqz v3, :cond_b6

    .line 1976
    sget v0, Lorg/telegram/messenger/R$string;->AttachLiveLocation:I

    const-string v1, "AttachLiveLocation"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1977
    :cond_b6
    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v2, :cond_bd

    .line 1978
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isSticker()Z

    move-result v1

    if-nez v1, :cond_bb

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isAnimatedSticker()Z

    move-result v1

    if-eqz v1, :cond_b7

    goto :goto_1b

    .line 1985
    :cond_b7
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isGif()Z

    move-result v1

    if-eqz v1, :cond_b9

    .line 1986
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_b8

    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b8

    .line 1987
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p1}, Lorg/telegram/messenger/NotificationsController;->replaceSpoilers(Lorg/telegram/messenger/MessageObject;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1989
    :cond_b8
    sget v0, Lorg/telegram/messenger/R$string;->AttachGif:I

    const-string v1, "AttachGif"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1992
    :cond_b9
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_ba

    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_ba

    .line 1993
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p1}, Lorg/telegram/messenger/NotificationsController;->replaceSpoilers(Lorg/telegram/messenger/MessageObject;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1995
    :cond_ba
    sget v0, Lorg/telegram/messenger/R$string;->AttachDocument:I

    const-string v1, "AttachDocument"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1979
    :cond_bb
    :goto_1b
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getStickerEmoji()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_bc

    .line 1981
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

    .line 1983
    :cond_bc
    sget v0, Lorg/telegram/messenger/R$string;->AttachSticker:I

    const-string v1, "AttachSticker"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1998
    :cond_bd
    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_be

    .line 1999
    invoke-direct/range {p0 .. p1}, Lorg/telegram/messenger/NotificationsController;->replaceSpoilers(Lorg/telegram/messenger/MessageObject;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2001
    :cond_be
    sget v0, Lorg/telegram/messenger/R$string;->Message:I

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1974
    :cond_bf
    :goto_1c
    sget v0, Lorg/telegram/messenger/R$string;->AttachLocation:I

    const-string v1, "AttachLocation"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_c0
    move-object/from16 v1, v22

    if-eqz p3, :cond_c1

    const/4 v0, 0x0

    .line 2006
    aput-boolean v0, p3, v0

    .line 2008
    :cond_c1
    sget v0, Lorg/telegram/messenger/R$string;->Message:I

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1446
    :cond_c2
    :goto_1d
    sget v0, Lorg/telegram/messenger/R$string;->NotificationHiddenMessage:I

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getStringForMessage(Lorg/telegram/messenger/MessageObject;Z[Z[Z)Ljava/lang/String;
    .locals 27

    move-object/from16 v0, p1

    .line 2039
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->needShowPasscode()Z

    move-result v1

    const-string v2, "YouHaveNewMessage"

    if-nez v1, :cond_dc

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isWaitingForPasscodeEnter:Z

    if-eqz v1, :cond_0

    goto/16 :goto_1d

    .line 2042
    :cond_0
    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v3, v1, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 2043
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v5, v1, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:J

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-eqz v9, :cond_1

    goto :goto_0

    :cond_1
    iget-wide v5, v1, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    .line 2044
    :goto_0
    iget-wide v9, v1, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    const/4 v1, 0x1

    const/4 v11, 0x0

    if-eqz p4, :cond_2

    .line 2046
    aput-boolean v1, p4, v11

    .line 2048
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/messenger/AccountInstance;->getNotificationsSettings()Landroid/content/SharedPreferences;

    move-result-object v12

    .line 2049
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "content_preview_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    .line 2050
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isFcmMessage()Z

    move-result v14

    const-string v15, "EnablePreviewGroup"

    const-string v11, "EnablePreviewAll"

    const-string v1, "ChannelMessageNoText"

    const-string v7, "NotificationMessageGroupNoText"

    const-string v8, "NotificationMessageNoText"

    move-object/from16 v18, v2

    const/4 v2, 0x2

    if-eqz v14, :cond_c

    const-wide/16 v16, 0x0

    cmp-long v3, v5, v16

    if-nez v3, :cond_5

    cmp-long v4, v9, v16

    if-eqz v4, :cond_5

    const/4 v4, 0x1

    if-eqz v13, :cond_3

    .line 2052
    invoke-interface {v12, v11, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_b

    :cond_3
    const/4 v1, 0x0

    if-eqz p4, :cond_4

    .line 2054
    aput-boolean v1, p4, v1

    .line 2056
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

    if-eqz v3, :cond_b

    if-eqz v13, :cond_8

    .line 2059
    iget-boolean v3, v0, Lorg/telegram/messenger/MessageObject;->localChannel:Z

    if-nez v3, :cond_6

    invoke-interface {v12, v15, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_6
    iget-boolean v3, v0, Lorg/telegram/messenger/MessageObject;->localChannel:Z

    if-eqz v3, :cond_b

    const-string v3, "EnablePreviewChannel"

    invoke-interface {v12, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_1

    :cond_7
    const/4 v3, 0x1

    goto :goto_2

    :cond_8
    :goto_1
    if-eqz p4, :cond_9

    const/4 v3, 0x0

    .line 2061
    aput-boolean v3, p4, v3

    .line 2063
    :cond_9
    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_a

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isSupergroup()Z

    move-result v3

    if-nez v3, :cond_a

    .line 2064
    sget v2, Lorg/telegram/messenger/R$string;->ChannelMessageNoText:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->localName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_a
    const/4 v4, 0x0

    .line 2066
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

    :cond_b
    move v3, v4

    :goto_2
    const/4 v4, 0x0

    .line 2070
    aput-boolean v3, p3, v4

    .line 2071
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 2073
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v14

    invoke-virtual {v14}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v19

    const-wide/16 v16, 0x0

    cmp-long v14, v9, v16

    if-nez v14, :cond_d

    .line 2075
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getFromChatId()J

    move-result-wide v9

    cmp-long v14, v9, v16

    if-nez v14, :cond_e

    neg-long v9, v5

    goto :goto_3

    :cond_d
    cmp-long v14, v9, v19

    if-nez v14, :cond_e

    .line 2080
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getFromChatId()J

    move-result-wide v9

    :cond_e
    :goto_3
    cmp-long v14, v3, v16

    if-nez v14, :cond_10

    cmp-long v14, v5, v16

    if-eqz v14, :cond_f

    neg-long v3, v5

    goto :goto_4

    :cond_f
    cmp-long v14, v9, v16

    if-eqz v14, :cond_10

    move-wide v3, v9

    :cond_10
    :goto_4
    cmp-long v14, v9, v16

    const/16 v21, 0x0

    if-lez v14, :cond_14

    .line 2093
    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->from_scheduled:Z

    if-eqz v2, :cond_12

    cmp-long v2, v3, v19

    if-nez v2, :cond_11

    .line 2095
    sget v2, Lorg/telegram/messenger/R$string;->MessageScheduledReminderNotification:I

    move-object/from16 v22, v7

    const-string v7, "MessageScheduledReminderNotification"

    invoke-static {v7, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_11
    move-object/from16 v22, v7

    .line 2097
    sget v2, Lorg/telegram/messenger/R$string;->NotificationMessageScheduledName:I

    const-string v7, "NotificationMessageScheduledName"

    invoke-static {v7, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_12
    move-object/from16 v22, v7

    .line 2100
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v2, v7}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    if-eqz v2, :cond_13

    .line 2102
    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_13
    move-object/from16 v2, v21

    :goto_5
    move-object/from16 v23, v8

    goto :goto_6

    :cond_14
    move-object/from16 v22, v7

    .line 2106
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    move-object/from16 v23, v8

    neg-long v7, v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v2, v7}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    if-eqz v2, :cond_15

    .line 2108
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    goto :goto_6

    :cond_15
    move-object/from16 v2, v21

    :goto_6
    if-nez v2, :cond_16

    return-object v21

    :cond_16
    const-wide/16 v7, 0x0

    cmp-long v24, v5, v7

    if-eqz v24, :cond_17

    .line 2117
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v7, v5}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v5

    if-nez v5, :cond_18

    return-object v21

    :cond_17
    move-object/from16 v5, v21

    .line 2124
    :cond_18
    invoke-static {v3, v4}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 2125
    sget v0, Lorg/telegram/messenger/R$string;->YouHaveNewMessage:I

    move-object/from16 v1, v18

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_1c

    :cond_19
    const-string/jumbo v6, "\ud83c\udfac "

    const-string/jumbo v7, "\ud83d\udcce "

    const-string/jumbo v8, "\ud83d\udcf9 "

    move-object/from16 v18, v1

    const-string/jumbo v1, "\ud83d\uddbc "

    move-wide/from16 v25, v9

    const-string v9, "NotificationMessageText"

    const/4 v10, 0x3

    if-nez v24, :cond_46

    if-eqz v14, :cond_46

    if-eqz v13, :cond_44

    const/4 v5, 0x1

    .line 2128
    invoke-interface {v12, v11, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_44

    .line 2129
    iget-object v5, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    instance-of v11, v5, Lorg/telegram/tgnet/TLRPC$TL_messageService;

    if-eqz v11, :cond_28

    .line 2130
    iget-object v1, v5, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v5, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionSetSameChatWallPaper;

    if-eqz v5, :cond_1a

    .line 2131
    sget v0, Lorg/telegram/messenger/R$string;->WallpaperSameNotification:I

    const-string v1, "WallpaperSameNotification"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_1c

    .line 2132
    :cond_1a
    instance-of v5, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionSetChatWallPaper;

    if-eqz v5, :cond_1b

    .line 2133
    sget v0, Lorg/telegram/messenger/R$string;->WallpaperNotification:I

    const-string v1, "WallpaperNotification"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_1c

    .line 2134
    :cond_1b
    instance-of v5, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionGeoProximityReached;

    if-eqz v5, :cond_1c

    .line 2135
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_1c

    .line 2136
    :cond_1c
    instance-of v5, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionUserJoined;

    if-nez v5, :cond_27

    instance-of v5, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionContactSignUp;

    if-eqz v5, :cond_1d

    goto/16 :goto_9

    .line 2138
    :cond_1d
    instance-of v5, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionUserUpdatedPhoto;

    if-eqz v5, :cond_1e

    .line 2139
    sget v0, Lorg/telegram/messenger/R$string;->NotificationContactNewPhoto:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "NotificationContactNewPhoto"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_1c

    .line 2140
    :cond_1e
    instance-of v5, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionLoginUnknownLocation;

    if-eqz v5, :cond_1f

    .line 2141
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

    mul-long/2addr v4, v6

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

    mul-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Lorg/telegram/messenger/time/FastDateFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v3, v4

    const-string v2, "formatDateAtTime"

    invoke-static {v2, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2142
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

    move-result-object v21

    goto/16 :goto_1c

    .line 2143
    :cond_1f
    instance-of v5, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionGameScore;

    if-nez v5, :cond_26

    instance-of v5, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionPaymentSent;

    if-eqz v5, :cond_20

    goto/16 :goto_8

    .line 2145
    :cond_20
    instance-of v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionPhoneCall;

    if-eqz v0, :cond_22

    .line 2146
    iget-boolean v0, v1, Lorg/telegram/tgnet/TLRPC$MessageAction;->video:Z

    if-eqz v0, :cond_21

    .line 2147
    sget v0, Lorg/telegram/messenger/R$string;->CallMessageVideoIncomingMissed:I

    const-string v1, "CallMessageVideoIncomingMissed"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_1c

    .line 2149
    :cond_21
    sget v0, Lorg/telegram/messenger/R$string;->CallMessageIncomingMissed:I

    const-string v1, "CallMessageIncomingMissed"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_1c

    .line 2151
    :cond_22
    instance-of v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionSetChatTheme;

    if-eqz v0, :cond_db

    .line 2152
    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionSetChatTheme;

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionSetChatTheme;->emoticon:Ljava/lang/String;

    .line 2153
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_24

    cmp-long v1, v3, v19

    if-nez v1, :cond_23

    .line 2155
    sget v0, Lorg/telegram/messenger/R$string;->ChatThemeDisabledYou:I

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "ChatThemeDisabledYou"

    invoke-static {v3, v0, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x1

    goto :goto_7

    :cond_23
    const/4 v1, 0x0

    .line 2156
    sget v3, Lorg/telegram/messenger/R$string;->ChatThemeDisabled:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v1

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const-string v0, "ChatThemeDisabled"

    invoke-static {v0, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_24
    const/4 v1, 0x0

    const/4 v5, 0x1

    cmp-long v3, v3, v19

    if-nez v3, :cond_25

    .line 2159
    sget v2, Lorg/telegram/messenger/R$string;->ChatThemeChangedYou:I

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v1

    const-string v0, "ChangedChatThemeYou"

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 2160
    :cond_25
    sget v3, Lorg/telegram/messenger/R$string;->ChatThemeChangedTo:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v1

    aput-object v0, v4, v5

    const-string v0, "ChangedChatThemeTo"

    invoke-static {v0, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_7
    move-object/from16 v21, v0

    .line 2162
    aput-boolean v5, p3, v1

    goto/16 :goto_1c

    .line 2144
    :cond_26
    :goto_8
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_1c

    :cond_27
    :goto_9
    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 2137
    sget v0, Lorg/telegram/messenger/R$string;->NotificationContactJoined:I

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v2, v3, v1

    const-string v1, "NotificationContactJoined"

    invoke-static {v1, v0, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_1c

    .line 2165
    :cond_28
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isMediaEmpty()Z

    move-result v3

    if-eqz v3, :cond_2b

    if-nez p2, :cond_2a

    .line 2167
    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_29

    .line 2168
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

    move-result-object v21

    .line 2169
    aput-boolean v5, p3, v4

    goto/16 :goto_1c

    :cond_29
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 2171
    sget v0, Lorg/telegram/messenger/R$string;->NotificationMessageNoText:I

    new-array v1, v5, [Ljava/lang/Object;

    aput-object v2, v1, v4

    move-object/from16 v3, v23

    invoke-static {v3, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_1c

    :cond_2a
    move-object/from16 v3, v23

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 2174
    sget v0, Lorg/telegram/messenger/R$string;->NotificationMessageNoText:I

    new-array v1, v5, [Ljava/lang/Object;

    aput-object v2, v1, v4

    invoke-static {v3, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_1c

    :cond_2b
    move-object/from16 v3, v23

    .line 2176
    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v5, :cond_2e

    if-nez p2, :cond_2c

    .line 2177
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-lt v3, v5, :cond_2c

    iget-object v3, v4, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2c

    .line 2178
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

    move-result-object v21

    .line 2179
    aput-boolean v1, p3, v5

    goto/16 :goto_1c

    :cond_2c
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 2181
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->ttl_seconds:I

    if-eqz v0, :cond_2d

    .line 2182
    sget v0, Lorg/telegram/messenger/R$string;->NotificationMessageSDPhoto:I

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v5

    const-string v2, "NotificationMessageSDPhoto"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_1c

    .line 2184
    :cond_2d
    sget v0, Lorg/telegram/messenger/R$string;->NotificationMessagePhoto:I

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v5

    const-string v2, "NotificationMessagePhoto"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_1c

    .line 2187
    :cond_2e
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_31

    if-nez p2, :cond_2f

    .line 2188
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v1, v3, :cond_2f

    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 2189
    sget v1, Lorg/telegram/messenger/R$string;->NotificationMessageText:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x1

    aput-object v0, v3, v5

    invoke-static {v9, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    .line 2190
    aput-boolean v5, p3, v4

    goto/16 :goto_1c

    :cond_2f
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 2192
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->ttl_seconds:I

    if-eqz v0, :cond_30

    .line 2193
    sget v0, Lorg/telegram/messenger/R$string;->NotificationMessageSDVideo:I

    new-array v1, v5, [Ljava/lang/Object;

    aput-object v2, v1, v4

    const-string v2, "NotificationMessageSDVideo"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_1c

    .line 2195
    :cond_30
    sget v0, Lorg/telegram/messenger/R$string;->NotificationMessageVideo:I

    new-array v1, v5, [Ljava/lang/Object;

    aput-object v2, v1, v4

    const-string v2, "NotificationMessageVideo"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_1c

    :cond_31
    const/4 v4, 0x0

    .line 2198
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isGame()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 2199
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

    move-result-object v21

    goto/16 :goto_1c

    :cond_32
    const/4 v4, 0x1

    .line 2200
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 2201
    sget v0, Lorg/telegram/messenger/R$string;->NotificationMessageAudio:I

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v1, v5

    const-string v2, "NotificationMessageAudio"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_1c

    :cond_33
    const/4 v5, 0x0

    .line 2202
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 2203
    sget v0, Lorg/telegram/messenger/R$string;->NotificationMessageRound:I

    new-array v1, v4, [Ljava/lang/Object;

    aput-object v2, v1, v5

    const-string v2, "NotificationMessageRound"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_1c

    .line 2204
    :cond_34
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 2205
    sget v0, Lorg/telegram/messenger/R$string;->NotificationMessageMusic:I

    new-array v1, v4, [Ljava/lang/Object;

    aput-object v2, v1, v5

    const-string v2, "NotificationMessageMusic"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_1c

    .line 2206
    :cond_35
    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v4, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;

    if-eqz v4, :cond_36

    .line 2207
    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;

    .line 2208
    sget v0, Lorg/telegram/messenger/R$string;->NotificationMessageContact2:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v5

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->first_name:Ljava/lang/String;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->last_name:Ljava/lang/String;

    invoke-static {v2, v1}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v3, v2

    const-string v1, "NotificationMessageContact2"

    invoke-static {v1, v0, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_1c

    .line 2209
    :cond_36
    instance-of v4, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;

    if-eqz v4, :cond_38

    .line 2210
    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;

    .line 2211
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->poll:Lorg/telegram/tgnet/TLRPC$Poll;

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Poll;->quiz:Z

    if-eqz v1, :cond_37

    .line 2212
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

    goto :goto_a

    :cond_37
    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 2214
    sget v1, Lorg/telegram/messenger/R$string;->NotificationMessagePoll2:I

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v4

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Poll;->question:Ljava/lang/String;

    aput-object v0, v3, v5

    const-string v0, "NotificationMessagePoll2"

    invoke-static {v0, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_a
    move-object/from16 v21, v0

    goto/16 :goto_1c

    .line 2216
    :cond_38
    instance-of v4, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;

    if-nez v4, :cond_43

    instance-of v4, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    if-eqz v4, :cond_39

    goto/16 :goto_c

    .line 2218
    :cond_39
    instance-of v4, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeoLive;

    if-eqz v4, :cond_3a

    .line 2219
    sget v0, Lorg/telegram/messenger/R$string;->NotificationMessageLiveLocation:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "NotificationMessageLiveLocation"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_1c

    .line 2220
    :cond_3a
    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v1, :cond_41

    .line 2221
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isSticker()Z

    move-result v1

    if-nez v1, :cond_3f

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isAnimatedSticker()Z

    move-result v1

    if-eqz v1, :cond_3b

    goto/16 :goto_b

    .line 2228
    :cond_3b
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isGif()Z

    move-result v1

    if-eqz v1, :cond_3d

    if-nez p2, :cond_3c

    .line 2229
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v1, v3, :cond_3c

    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3c

    .line 2230
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

    move-result-object v21

    .line 2231
    aput-boolean v5, p3, v4

    goto/16 :goto_1c

    :cond_3c
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 2233
    sget v0, Lorg/telegram/messenger/R$string;->NotificationMessageGif:I

    new-array v1, v5, [Ljava/lang/Object;

    aput-object v2, v1, v4

    const-string v2, "NotificationMessageGif"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_1c

    :cond_3d
    if-nez p2, :cond_3e

    .line 2236
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v1, v3, :cond_3e

    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3e

    .line 2237
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

    move-result-object v21

    .line 2238
    aput-boolean v5, p3, v4

    goto/16 :goto_1c

    :cond_3e
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 2240
    sget v0, Lorg/telegram/messenger/R$string;->NotificationMessageDocument:I

    new-array v1, v5, [Ljava/lang/Object;

    aput-object v2, v1, v4

    const-string v2, "NotificationMessageDocument"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_1c

    :cond_3f
    :goto_b
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 2222
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getStickerEmoji()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_40

    .line 2224
    sget v1, Lorg/telegram/messenger/R$string;->NotificationMessageStickerEmoji:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v4

    aput-object v0, v3, v5

    const-string v0, "NotificationMessageStickerEmoji"

    invoke-static {v0, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a

    .line 2226
    :cond_40
    sget v0, Lorg/telegram/messenger/R$string;->NotificationMessageSticker:I

    new-array v1, v5, [Ljava/lang/Object;

    aput-object v2, v1, v4

    const-string v2, "NotificationMessageSticker"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a

    :cond_41
    const/4 v4, 0x0

    if-nez p2, :cond_42

    .line 2244
    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_42

    .line 2245
    sget v1, Lorg/telegram/messenger/R$string;->NotificationMessageText:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v4

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    const/4 v5, 0x1

    aput-object v0, v3, v5

    invoke-static {v9, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    .line 2246
    aput-boolean v5, p3, v4

    goto/16 :goto_1c

    :cond_42
    const/4 v5, 0x1

    .line 2248
    sget v0, Lorg/telegram/messenger/R$string;->NotificationMessageNoText:I

    new-array v1, v5, [Ljava/lang/Object;

    aput-object v2, v1, v4

    invoke-static {v3, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_1c

    :cond_43
    :goto_c
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 2217
    sget v0, Lorg/telegram/messenger/R$string;->NotificationMessageMap:I

    new-array v1, v5, [Ljava/lang/Object;

    aput-object v2, v1, v4

    const-string v2, "NotificationMessageMap"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_1c

    :cond_44
    move-object/from16 v3, v23

    const/4 v4, 0x0

    if-eqz p4, :cond_45

    .line 2254
    aput-boolean v4, p4, v4

    .line 2256
    :cond_45
    sget v0, Lorg/telegram/messenger/R$string;->NotificationMessageNoText:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v4

    invoke-static {v3, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_1c

    :cond_46
    if-eqz v24, :cond_db

    .line 2259
    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v11

    if-eqz v11, :cond_47

    iget-boolean v11, v5, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v11, :cond_47

    const/4 v11, 0x1

    goto :goto_d

    :cond_47
    const/4 v11, 0x0

    :goto_d
    if-eqz v13, :cond_d8

    const/4 v13, 0x1

    if-nez v11, :cond_48

    .line 2260
    invoke-interface {v12, v15, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    if-nez v14, :cond_49

    :cond_48
    if-eqz v11, :cond_d8

    const-string v11, "EnablePreviewChannel"

    invoke-interface {v12, v11, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_d8

    .line 2261
    :cond_49
    iget-object v11, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    instance-of v12, v11, Lorg/telegram/tgnet/TLRPC$TL_messageService;

    if-eqz v12, :cond_a7

    .line 2262
    iget-object v9, v11, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v12, v9, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatAddUser;

    if-eqz v12, :cond_54

    .line 2263
    iget-wide v3, v9, Lorg/telegram/tgnet/TLRPC$MessageAction;->user_id:J

    const-wide/16 v6, 0x0

    cmp-long v1, v3, v6

    if-nez v1, :cond_4a

    .line 2264
    iget-object v1, v9, Lorg/telegram/tgnet/TLRPC$MessageAction;->users:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v6, 0x1

    if-ne v1, v6, :cond_4a

    .line 2265
    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageAction;->users:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    :cond_4a
    const-wide/16 v6, 0x0

    cmp-long v1, v3, v6

    if-eqz v1, :cond_50

    .line 2268
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_4b

    iget-boolean v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v0, :cond_4b

    .line 2269
    sget v0, Lorg/telegram/messenger/R$string;->ChannelAddedByNotification:I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "ChannelAddedByNotification"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a

    :cond_4b
    cmp-long v0, v3, v19

    if-nez v0, :cond_4c

    .line 2272
    sget v0, Lorg/telegram/messenger/R$string;->NotificationInvitedToGroup:I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "NotificationInvitedToGroup"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a

    .line 2274
    :cond_4c
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-nez v0, :cond_4d

    return-object v21

    .line 2278
    :cond_4d
    iget-wide v3, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    cmp-long v1, v25, v3

    if-nez v1, :cond_4f

    .line 2279
    iget-boolean v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v0, :cond_4e

    .line 2280
    sget v0, Lorg/telegram/messenger/R$string;->NotificationGroupAddSelfMega:I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "NotificationGroupAddSelfMega"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a

    :cond_4e
    const/4 v1, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 2282
    sget v0, Lorg/telegram/messenger/R$string;->NotificationGroupAddSelf:I

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v3

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v1, v4

    const-string v2, "NotificationGroupAddSelf"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a

    :cond_4f
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 2285
    sget v1, Lorg/telegram/messenger/R$string;->NotificationGroupAddMember:I

    new-array v6, v10, [Ljava/lang/Object;

    aput-object v2, v6, v3

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v6, v4

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v6, v2

    const-string v0, "NotificationGroupAddMember"

    invoke-static {v0, v1, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a

    .line 2290
    :cond_50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    .line 2291
    :goto_e
    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageAction;->users:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_53

    .line 2292
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$MessageAction;->users:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    if-eqz v4, :cond_52

    .line 2294
    invoke-static {v4}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v4

    .line 2295
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-eqz v6, :cond_51

    const-string v6, ", "

    .line 2296
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2298
    :cond_51
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_52
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 2301
    :cond_53
    sget v0, Lorg/telegram/messenger/R$string;->NotificationGroupAddMember:I

    new-array v3, v10, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v12, 0x2

    aput-object v1, v3, v12

    const-string v1, "NotificationGroupAddMember"

    invoke-static {v1, v0, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a

    :cond_54
    const/4 v12, 0x2

    .line 2303
    instance-of v13, v9, Lorg/telegram/tgnet/TLRPC$TL_messageActionGroupCall;

    if-eqz v13, :cond_55

    .line 2304
    sget v0, Lorg/telegram/messenger/R$string;->NotificationGroupCreatedCall:I

    new-array v1, v12, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "NotificationGroupCreatedCall"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_1c

    .line 2305
    :cond_55
    instance-of v12, v9, Lorg/telegram/tgnet/TLRPC$TL_messageActionGroupCallScheduled;

    if-eqz v12, :cond_56

    .line 2306
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_1c

    .line 2307
    :cond_56
    instance-of v12, v9, Lorg/telegram/tgnet/TLRPC$TL_messageActionInviteToGroupCall;

    if-eqz v12, :cond_5e

    .line 2308
    iget-wide v3, v9, Lorg/telegram/tgnet/TLRPC$MessageAction;->user_id:J

    const-wide/16 v6, 0x0

    cmp-long v1, v3, v6

    if-nez v1, :cond_57

    .line 2309
    iget-object v1, v9, Lorg/telegram/tgnet/TLRPC$MessageAction;->users:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v6, 0x1

    if-ne v1, v6, :cond_57

    .line 2310
    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageAction;->users:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    :cond_57
    const-wide/16 v6, 0x0

    cmp-long v1, v3, v6

    if-eqz v1, :cond_5a

    cmp-long v0, v3, v19

    if-nez v0, :cond_58

    .line 2314
    sget v0, Lorg/telegram/messenger/R$string;->NotificationGroupInvitedYouToCall:I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "NotificationGroupInvitedYouToCall"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a

    .line 2316
    :cond_58
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-nez v0, :cond_59

    return-object v21

    .line 2320
    :cond_59
    sget v1, Lorg/telegram/messenger/R$string;->NotificationGroupInvitedToCall:I

    new-array v3, v10, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v3, v2

    const-string v0, "NotificationGroupInvitedToCall"

    invoke-static {v0, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a

    .line 2323
    :cond_5a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    .line 2324
    :goto_f
    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageAction;->users:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_5d

    .line 2325
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$MessageAction;->users:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    if-eqz v4, :cond_5c

    .line 2327
    invoke-static {v4}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v4

    .line 2328
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-eqz v6, :cond_5b

    const-string v6, ", "

    .line 2329
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2331
    :cond_5b
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5c
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 2334
    :cond_5d
    sget v0, Lorg/telegram/messenger/R$string;->NotificationGroupInvitedToCall:I

    new-array v3, v10, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v12, 0x2

    aput-object v1, v3, v12

    const-string v1, "NotificationGroupInvitedToCall"

    invoke-static {v1, v0, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a

    :cond_5e
    const/4 v12, 0x2

    .line 2336
    instance-of v13, v9, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatJoinedByLink;

    if-eqz v13, :cond_5f

    .line 2337
    sget v0, Lorg/telegram/messenger/R$string;->NotificationInvitedToGroupByLink:I

    new-array v1, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v2, v1, v13

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v14, 0x1

    aput-object v2, v1, v14

    const-string v2, "NotificationInvitedToGroupByLink"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_1c

    :cond_5f
    const/4 v13, 0x0

    const/4 v14, 0x1

    .line 2338
    instance-of v15, v9, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatEditTitle;

    if-eqz v15, :cond_60

    .line 2339
    sget v0, Lorg/telegram/messenger/R$string;->NotificationEditedGroupName:I

    new-array v1, v12, [Ljava/lang/Object;

    aput-object v2, v1, v13

    iget-object v2, v9, Lorg/telegram/tgnet/TLRPC$MessageAction;->title:Ljava/lang/String;

    aput-object v2, v1, v14

    const-string v2, "NotificationEditedGroupName"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_1c

    .line 2340
    :cond_60
    instance-of v12, v9, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatEditPhoto;

    if-nez v12, :cond_a3

    instance-of v12, v9, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatDeletePhoto;

    if-eqz v12, :cond_61

    goto/16 :goto_17

    .line 2354
    :cond_61
    instance-of v11, v9, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatDeleteUser;

    if-eqz v11, :cond_65

    .line 2355
    iget-wide v3, v9, Lorg/telegram/tgnet/TLRPC$MessageAction;->user_id:J

    cmp-long v1, v3, v19

    if-nez v1, :cond_62

    .line 2356
    sget v0, Lorg/telegram/messenger/R$string;->NotificationGroupKickYou:I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v1, v6

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v2, v1, v7

    const-string v2, "NotificationGroupKickYou"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_1c

    :cond_62
    const/4 v1, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    cmp-long v3, v3, v25

    if-nez v3, :cond_63

    .line 2358
    sget v0, Lorg/telegram/messenger/R$string;->NotificationGroupLeftMember:I

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v6

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v1, v7

    const-string v2, "NotificationGroupLeftMember"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_1c

    .line 2360
    :cond_63
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-wide v3, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->user_id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-nez v0, :cond_64

    return-object v21

    .line 2364
    :cond_64
    sget v1, Lorg/telegram/messenger/R$string;->NotificationGroupKickMember:I

    new-array v3, v10, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v3, v2

    const-string v0, "NotificationGroupKickMember"

    invoke-static {v0, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_1c

    .line 2366
    :cond_65
    instance-of v11, v9, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatCreate;

    if-eqz v11, :cond_66

    .line 2367
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_1c

    .line 2368
    :cond_66
    instance-of v11, v9, Lorg/telegram/tgnet/TLRPC$TL_messageActionChannelCreate;

    if-eqz v11, :cond_67

    .line 2369
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_1c

    .line 2370
    :cond_67
    instance-of v11, v9, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatMigrateTo;

    if-eqz v11, :cond_68

    .line 2371
    sget v0, Lorg/telegram/messenger/R$string;->ActionMigrateFromGroupNotify:I

    const/4 v11, 0x1

    new-array v1, v11, [Ljava/lang/Object;

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v2, v1, v12

    const-string v2, "ActionMigrateFromGroupNotify"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_1c

    :cond_68
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 2372
    instance-of v13, v9, Lorg/telegram/tgnet/TLRPC$TL_messageActionChannelMigrateFrom;

    if-eqz v13, :cond_69

    .line 2373
    sget v0, Lorg/telegram/messenger/R$string;->ActionMigrateFromGroupNotify:I

    new-array v1, v11, [Ljava/lang/Object;

    iget-object v2, v9, Lorg/telegram/tgnet/TLRPC$MessageAction;->title:Ljava/lang/String;

    aput-object v2, v1, v12

    const-string v2, "ActionMigrateFromGroupNotify"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_1c

    .line 2374
    :cond_69
    instance-of v11, v9, Lorg/telegram/tgnet/TLRPC$TL_messageActionScreenshotTaken;

    if-eqz v11, :cond_6a

    .line 2375
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_1c

    .line 2376
    :cond_6a
    instance-of v11, v9, Lorg/telegram/tgnet/TLRPC$TL_messageActionPinMessage;

    if-eqz v11, :cond_9d

    .line 2377
    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    const/16 v4, 0x14

    if-eqz v3, :cond_84

    iget-boolean v3, v5, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v3, :cond_6b

    goto/16 :goto_13

    .line 2450
    :cond_6b
    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v2, :cond_6c

    .line 2451
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedNoTextChannel:I

    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v2, v1, v9

    const-string v2, "NotificationActionPinnedNoTextChannel"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_1c

    :cond_6c
    const/4 v3, 0x1

    const/4 v9, 0x0

    .line 2454
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v10

    if-eqz v10, :cond_6d

    .line 2455
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedMusicChannel:I

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v1, v9

    const-string v2, "NotificationActionPinnedMusicChannel"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a

    .line 2456
    :cond_6d
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v3

    const-string v9, "NotificationActionPinnedTextChannel"

    if-eqz v3, :cond_6f

    .line 2457
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_6e

    iget-object v0, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6e

    .line 2458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2459
    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedTextChannel:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v9, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a

    :cond_6e
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2461
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedVideoChannel:I

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v1, v4

    const-string v2, "NotificationActionPinnedVideoChannel"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a

    .line 2463
    :cond_6f
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isGif()Z

    move-result v3

    if-eqz v3, :cond_71

    .line 2464
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_70

    iget-object v0, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_70

    .line 2465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2466
    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedTextChannel:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v3, v2, v6

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v9, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a

    :cond_70
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 2468
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedGifChannel:I

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v1, v6

    const-string v2, "NotificationActionPinnedGifChannel"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a

    :cond_71
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 2470
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v8

    if-eqz v8, :cond_72

    .line 2471
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedVoiceChannel:I

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v1, v6

    const-string v2, "NotificationActionPinnedVoiceChannel"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a

    .line 2472
    :cond_72
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v8

    if-eqz v8, :cond_73

    .line 2473
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedRoundChannel:I

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v1, v6

    const-string v2, "NotificationActionPinnedRoundChannel"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a

    .line 2474
    :cond_73
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isSticker()Z

    move-result v3

    if-nez v3, :cond_82

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isAnimatedSticker()Z

    move-result v3

    if-eqz v3, :cond_74

    goto/16 :goto_12

    .line 2481
    :cond_74
    iget-object v3, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v8, v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v8, :cond_76

    .line 2482
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_75

    iget-object v0, v3, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_75

    .line 2483
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2484
    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedTextChannel:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v9, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a

    :cond_75
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2486
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedFileChannel:I

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v1, v4

    const-string v2, "NotificationActionPinnedFileChannel"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a

    .line 2488
    :cond_76
    instance-of v7, v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;

    if-nez v7, :cond_81

    instance-of v7, v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    if-eqz v7, :cond_77

    goto/16 :goto_11

    .line 2490
    :cond_77
    instance-of v7, v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeoLive;

    if-eqz v7, :cond_78

    .line 2491
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedGeoLiveChannel:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "NotificationActionPinnedGeoLiveChannel"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a

    .line 2492
    :cond_78
    instance-of v7, v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;

    if-eqz v7, :cond_79

    .line 2493
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;

    .line 2494
    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedContactChannel2:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

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

    goto/16 :goto_a

    .line 2495
    :cond_79
    instance-of v0, v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;

    if-eqz v0, :cond_7b

    .line 2496
    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;

    .line 2497
    iget-object v0, v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->poll:Lorg/telegram/tgnet/TLRPC$Poll;

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Poll;->quiz:Z

    if-eqz v1, :cond_7a

    .line 2498
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

    goto/16 :goto_a

    :cond_7a
    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2500
    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedPollChannel2:I

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v5, v2, v4

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Poll;->question:Ljava/lang/String;

    aput-object v0, v2, v3

    const-string v0, "NotificationActionPinnedPollChannel2"

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a

    .line 2502
    :cond_7b
    instance-of v0, v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v0, :cond_7d

    .line 2503
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v0, v4, :cond_7c

    iget-object v0, v3, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7c

    .line 2504
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2505
    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedTextChannel:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v3, v2, v7

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v9, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a

    :cond_7c
    const/4 v3, 0x1

    const/4 v7, 0x0

    .line 2507
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedPhotoChannel:I

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v1, v7

    const-string v2, "NotificationActionPinnedPhotoChannel"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a

    :cond_7d
    const/4 v3, 0x1

    const/4 v7, 0x0

    .line 2509
    instance-of v0, v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;

    if-eqz v0, :cond_7e

    .line 2510
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedGameChannel:I

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v1, v7

    const-string v2, "NotificationActionPinnedGameChannel"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a

    .line 2511
    :cond_7e
    iget-object v0, v2, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_80

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_80

    .line 2512
    iget-object v0, v2, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    .line 2513
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v1, v4, :cond_7f

    .line 2514
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

    :cond_7f
    const/4 v3, 0x0

    .line 2516
    :goto_10
    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedTextChannel:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v4, 0x1

    aput-object v0, v2, v4

    invoke-static {v9, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a

    :cond_80
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 2518
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedNoTextChannel:I

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v1, v3

    const-string v2, "NotificationActionPinnedNoTextChannel"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a

    :cond_81
    :goto_11
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 2489
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedGeoChannel:I

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v1, v3

    const-string v2, "NotificationActionPinnedGeoChannel"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a

    :cond_82
    :goto_12
    const/4 v3, 0x0

    .line 2475
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getStickerEmoji()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_83

    .line 2477
    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedStickerEmojiChannel:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v4, 0x1

    aput-object v0, v2, v4

    const-string v0, "NotificationActionPinnedStickerEmojiChannel"

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a

    :cond_83
    const/4 v4, 0x1

    .line 2479
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedStickerChannel:I

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v1, v3

    const-string v2, "NotificationActionPinnedStickerChannel"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a

    :cond_84
    :goto_13
    const/4 v3, 0x0

    .line 2378
    iget-object v9, v0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v9, :cond_85

    .line 2379
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedNoText:I

    const/4 v11, 0x2

    new-array v1, v11, [Ljava/lang/Object;

    aput-object v2, v1, v3

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v12, 0x1

    aput-object v2, v1, v12

    const-string v2, "NotificationActionPinnedNoText"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_1c

    :cond_85
    const/4 v11, 0x2

    const/4 v12, 0x1

    .line 2382
    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v13

    if-eqz v13, :cond_86

    .line 2383
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedMusic:I

    new-array v1, v11, [Ljava/lang/Object;

    aput-object v2, v1, v3

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v1, v12

    const-string v2, "NotificationActionPinnedMusic"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a

    .line 2384
    :cond_86
    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v3

    const-string v11, "NotificationActionPinnedText"

    if-eqz v3, :cond_88

    .line 2385
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_87

    iget-object v0, v9, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_87

    .line 2386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v9, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2387
    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedText:I

    new-array v3, v10, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v6, 0x1

    aput-object v0, v3, v6

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v7, 0x2

    aput-object v0, v3, v7

    invoke-static {v11, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a

    :cond_87
    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x2

    .line 2389
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedVideo:I

    new-array v1, v7, [Ljava/lang/Object;

    aput-object v2, v1, v4

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v1, v6

    const-string v2, "NotificationActionPinnedVideo"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a

    .line 2391
    :cond_88
    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->isGif()Z

    move-result v3

    if-eqz v3, :cond_8a

    .line 2392
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_89

    iget-object v0, v9, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_89

    .line 2393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v9, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2394
    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedText:I

    new-array v3, v10, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v3, v6

    const/4 v8, 0x1

    aput-object v0, v3, v8

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v12, 0x2

    aput-object v0, v3, v12

    invoke-static {v11, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a

    :cond_89
    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v12, 0x2

    .line 2396
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedGif:I

    new-array v1, v12, [Ljava/lang/Object;

    aput-object v2, v1, v6

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v1, v8

    const-string v2, "NotificationActionPinnedGif"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a

    :cond_8a
    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v12, 0x2

    .line 2398
    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v3

    if-eqz v3, :cond_8b

    .line 2399
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedVoice:I

    new-array v1, v12, [Ljava/lang/Object;

    aput-object v2, v1, v6

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v1, v8

    const-string v2, "NotificationActionPinnedVoice"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a

    .line 2400
    :cond_8b
    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v3

    if-eqz v3, :cond_8c

    .line 2401
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedRound:I

    new-array v1, v12, [Ljava/lang/Object;

    aput-object v2, v1, v6

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v1, v8

    const-string v2, "NotificationActionPinnedRound"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a

    .line 2402
    :cond_8c
    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->isSticker()Z

    move-result v3

    if-nez v3, :cond_9b

    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->isAnimatedSticker()Z

    move-result v3

    if-eqz v3, :cond_8d

    goto/16 :goto_16

    .line 2409
    :cond_8d
    iget-object v3, v9, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v8, v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v8, :cond_8f

    .line 2410
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_8e

    iget-object v0, v3, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8e

    .line 2411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v9, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2412
    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedText:I

    new-array v3, v10, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v6, 0x1

    aput-object v0, v3, v6

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v7, 0x2

    aput-object v0, v3, v7

    invoke-static {v11, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a

    :cond_8e
    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x2

    .line 2414
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedFile:I

    new-array v1, v7, [Ljava/lang/Object;

    aput-object v2, v1, v4

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v1, v6

    const-string v2, "NotificationActionPinnedFile"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a

    .line 2416
    :cond_8f
    instance-of v7, v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;

    if-nez v7, :cond_9a

    instance-of v7, v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    if-eqz v7, :cond_90

    goto/16 :goto_15

    .line 2418
    :cond_90
    instance-of v7, v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeoLive;

    if-eqz v7, :cond_91

    .line 2419
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedGeoLive:I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "NotificationActionPinnedGeoLive"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a

    .line 2420
    :cond_91
    instance-of v7, v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;

    if-eqz v7, :cond_92

    .line 2421
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;

    .line 2422
    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedContact2:I

    new-array v3, v10, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

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

    goto/16 :goto_a

    .line 2423
    :cond_92
    instance-of v0, v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;

    if-eqz v0, :cond_94

    .line 2424
    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;

    .line 2425
    iget-object v0, v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->poll:Lorg/telegram/tgnet/TLRPC$Poll;

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Poll;->quiz:Z

    if-eqz v1, :cond_93

    .line 2426
    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedQuiz2:I

    new-array v3, v10, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v2, v3, v6

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Poll;->question:Ljava/lang/String;

    const/4 v7, 0x2

    aput-object v0, v3, v7

    const-string v0, "NotificationActionPinnedQuiz2"

    invoke-static {v0, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a

    :cond_93
    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x2

    .line 2428
    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedPoll2:I

    new-array v3, v10, [Ljava/lang/Object;

    aput-object v2, v3, v4

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v3, v6

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Poll;->question:Ljava/lang/String;

    aput-object v0, v3, v7

    const-string v0, "NotificationActionPinnedPoll2"

    invoke-static {v0, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a

    .line 2430
    :cond_94
    instance-of v0, v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v0, :cond_96

    .line 2431
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v0, v4, :cond_95

    iget-object v0, v3, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_95

    .line 2432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v9, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2433
    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedText:I

    new-array v3, v10, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v3, v7

    const/4 v8, 0x1

    aput-object v0, v3, v8

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v12, 0x2

    aput-object v0, v3, v12

    invoke-static {v11, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a

    :cond_95
    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v12, 0x2

    .line 2435
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedPhoto:I

    new-array v1, v12, [Ljava/lang/Object;

    aput-object v2, v1, v7

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v1, v8

    const-string v2, "NotificationActionPinnedPhoto"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a

    :cond_96
    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v12, 0x2

    .line 2437
    instance-of v0, v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;

    if-eqz v0, :cond_97

    .line 2438
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedGame:I

    new-array v1, v12, [Ljava/lang/Object;

    aput-object v2, v1, v7

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v1, v8

    const-string v2, "NotificationActionPinnedGame"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a

    .line 2439
    :cond_97
    iget-object v0, v9, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_99

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_99

    .line 2440
    iget-object v0, v9, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    .line 2441
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v1, v4, :cond_98

    .line 2442
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

    :cond_98
    const/4 v3, 0x0

    .line 2444
    :goto_14
    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedText:I

    new-array v4, v10, [Ljava/lang/Object;

    aput-object v2, v4, v3

    const/4 v6, 0x1

    aput-object v0, v4, v6

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v7, 0x2

    aput-object v0, v4, v7

    invoke-static {v11, v1, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a

    :cond_99
    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x2

    .line 2446
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedNoText:I

    new-array v1, v7, [Ljava/lang/Object;

    aput-object v2, v1, v3

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v1, v6

    const-string v2, "NotificationActionPinnedNoText"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a

    :cond_9a
    :goto_15
    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x2

    .line 2417
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedGeo:I

    new-array v1, v7, [Ljava/lang/Object;

    aput-object v2, v1, v3

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v1, v6

    const-string v2, "NotificationActionPinnedGeo"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a

    :cond_9b
    :goto_16
    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 2403
    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->getStickerEmoji()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9c

    .line 2405
    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedStickerEmoji:I

    new-array v4, v10, [Ljava/lang/Object;

    aput-object v2, v4, v3

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v4, v6

    const/4 v7, 0x2

    aput-object v0, v4, v7

    const-string v0, "NotificationActionPinnedStickerEmoji"

    invoke-static {v0, v1, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a

    :cond_9c
    const/4 v7, 0x2

    .line 2407
    sget v0, Lorg/telegram/messenger/R$string;->NotificationActionPinnedSticker:I

    new-array v1, v7, [Ljava/lang/Object;

    aput-object v2, v1, v3

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v1, v6

    const-string v2, "NotificationActionPinnedSticker"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a

    .line 2522
    :cond_9d
    instance-of v1, v9, Lorg/telegram/tgnet/TLRPC$TL_messageActionGameScore;

    if-eqz v1, :cond_9e

    .line 2523
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_1c

    .line 2524
    :cond_9e
    instance-of v1, v9, Lorg/telegram/tgnet/TLRPC$TL_messageActionSetChatTheme;

    if-eqz v1, :cond_a2

    .line 2525
    check-cast v9, Lorg/telegram/tgnet/TLRPC$TL_messageActionSetChatTheme;

    iget-object v0, v9, Lorg/telegram/tgnet/TLRPC$TL_messageActionSetChatTheme;->emoticon:Ljava/lang/String;

    .line 2526
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a0

    cmp-long v1, v3, v19

    if-nez v1, :cond_9f

    .line 2528
    sget v0, Lorg/telegram/messenger/R$string;->ChatThemeDisabledYou:I

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ChatThemeDisabledYou"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a

    :cond_9f
    const/4 v1, 0x0

    .line 2529
    sget v3, Lorg/telegram/messenger/R$string;->ChatThemeDisabled:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v1

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const-string v0, "ChatThemeDisabled"

    invoke-static {v0, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a

    :cond_a0
    const/4 v1, 0x0

    const/4 v5, 0x1

    cmp-long v3, v3, v19

    if-nez v3, :cond_a1

    .line 2532
    sget v2, Lorg/telegram/messenger/R$string;->ChatThemeChangedYou:I

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v1

    const-string v0, "ChangedChatThemeYou"

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a

    .line 2533
    :cond_a1
    sget v3, Lorg/telegram/messenger/R$string;->ChatThemeChangedTo:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v1

    aput-object v0, v4, v5

    const-string v0, "ChangedChatThemeTo"

    invoke-static {v0, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a

    .line 2535
    :cond_a2
    instance-of v1, v9, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatJoinedByRequest;

    if-eqz v1, :cond_db

    .line 2536
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_1c

    .line 2341
    :cond_a3
    :goto_17
    iget-object v1, v11, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v3, v1, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    const-wide/16 v6, 0x0

    cmp-long v1, v3, v6

    if-eqz v1, :cond_a5

    iget-boolean v1, v5, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v1, :cond_a5

    .line 2342
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isVideoAvatar()Z

    move-result v0

    if-eqz v0, :cond_a4

    .line 2343
    sget v0, Lorg/telegram/messenger/R$string;->ChannelVideoEditNotification:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "ChannelVideoEditNotification"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_1c

    :cond_a4
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 2345
    sget v0, Lorg/telegram/messenger/R$string;->ChannelPhotoEditNotification:I

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v1, v3

    const-string v2, "ChannelPhotoEditNotification"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_1c

    :cond_a5
    const/4 v3, 0x0

    .line 2348
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isVideoAvatar()Z

    move-result v0

    if-eqz v0, :cond_a6

    .line 2349
    sget v0, Lorg/telegram/messenger/R$string;->NotificationEditedGroupVideo:I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v3

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "NotificationEditedGroupVideo"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_1c

    :cond_a6
    const/4 v1, 0x2

    const/4 v4, 0x1

    .line 2351
    sget v0, Lorg/telegram/messenger/R$string;->NotificationEditedGroupPhoto:I

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v3

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v1, v4

    const-string v2, "NotificationEditedGroupPhoto"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_1c

    .line 2538
    :cond_a7
    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-eqz v3, :cond_bf

    iget-boolean v3, v5, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v3, :cond_bf

    .line 2539
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isMediaEmpty()Z

    move-result v3

    if-eqz v3, :cond_a9

    if-nez p2, :cond_a8

    .line 2540
    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a8

    .line 2541
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

    move-result-object v21

    .line 2542
    aput-boolean v5, p3, v4

    goto/16 :goto_1c

    :cond_a8
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 2544
    sget v0, Lorg/telegram/messenger/R$string;->ChannelMessageNoText:I

    new-array v1, v5, [Ljava/lang/Object;

    aput-object v2, v1, v4

    move-object/from16 v3, v18

    invoke-static {v3, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_1c

    :cond_a9
    move-object/from16 v3, v18

    .line 2546
    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v5, :cond_ab

    if-nez p2, :cond_aa

    .line 2547
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-lt v3, v5, :cond_aa

    iget-object v3, v4, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_aa

    .line 2548
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

    move-result-object v21

    .line 2549
    aput-boolean v1, p3, v5

    goto/16 :goto_1c

    :cond_aa
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 2551
    sget v0, Lorg/telegram/messenger/R$string;->ChannelMessagePhoto:I

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v5

    const-string v2, "ChannelMessagePhoto"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_1c

    .line 2553
    :cond_ab
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_ad

    if-nez p2, :cond_ac

    .line 2554
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v1, v3, :cond_ac

    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_ac

    .line 2555
    sget v1, Lorg/telegram/messenger/R$string;->NotificationMessageText:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x1

    aput-object v0, v3, v5

    invoke-static {v9, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    .line 2556
    aput-boolean v5, p3, v4

    goto/16 :goto_1c

    :cond_ac
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 2558
    sget v0, Lorg/telegram/messenger/R$string;->ChannelMessageVideo:I

    new-array v1, v5, [Ljava/lang/Object;

    aput-object v2, v1, v4

    const-string v2, "ChannelMessageVideo"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_1c

    :cond_ad
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 2560
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v1

    if-eqz v1, :cond_ae

    .line 2561
    sget v0, Lorg/telegram/messenger/R$string;->ChannelMessageAudio:I

    new-array v1, v5, [Ljava/lang/Object;

    aput-object v2, v1, v4

    const-string v2, "ChannelMessageAudio"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_1c

    .line 2562
    :cond_ae
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v1

    if-eqz v1, :cond_af

    .line 2563
    sget v0, Lorg/telegram/messenger/R$string;->ChannelMessageRound:I

    new-array v1, v5, [Ljava/lang/Object;

    aput-object v2, v1, v4

    const-string v2, "ChannelMessageRound"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_1c

    .line 2564
    :cond_af
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v1

    if-eqz v1, :cond_b0

    .line 2565
    sget v0, Lorg/telegram/messenger/R$string;->ChannelMessageMusic:I

    new-array v1, v5, [Ljava/lang/Object;

    aput-object v2, v1, v4

    const-string v2, "ChannelMessageMusic"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_1c

    .line 2566
    :cond_b0
    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v5, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;

    if-eqz v5, :cond_b1

    .line 2567
    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;

    .line 2568
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

    move-result-object v21

    goto/16 :goto_1c

    .line 2569
    :cond_b1
    instance-of v4, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;

    if-eqz v4, :cond_b3

    .line 2570
    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;

    .line 2571
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->poll:Lorg/telegram/tgnet/TLRPC$Poll;

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Poll;->quiz:Z

    if-eqz v1, :cond_b2

    .line 2572
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

    goto/16 :goto_a

    :cond_b2
    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 2574
    sget v1, Lorg/telegram/messenger/R$string;->ChannelMessagePoll2:I

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v4

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Poll;->question:Ljava/lang/String;

    aput-object v0, v3, v5

    const-string v0, "ChannelMessagePoll2"

    invoke-static {v0, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a

    .line 2576
    :cond_b3
    instance-of v4, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;

    if-nez v4, :cond_be

    instance-of v4, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    if-eqz v4, :cond_b4

    goto/16 :goto_19

    .line 2578
    :cond_b4
    instance-of v4, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeoLive;

    if-eqz v4, :cond_b5

    .line 2579
    sget v0, Lorg/telegram/messenger/R$string;->ChannelMessageLiveLocation:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "ChannelMessageLiveLocation"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_1c

    .line 2580
    :cond_b5
    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v1, :cond_bc

    .line 2581
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isSticker()Z

    move-result v1

    if-nez v1, :cond_ba

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isAnimatedSticker()Z

    move-result v1

    if-eqz v1, :cond_b6

    goto/16 :goto_18

    .line 2588
    :cond_b6
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isGif()Z

    move-result v1

    if-eqz v1, :cond_b8

    if-nez p2, :cond_b7

    .line 2589
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v1, v3, :cond_b7

    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b7

    .line 2590
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

    move-result-object v21

    .line 2591
    aput-boolean v5, p3, v4

    goto/16 :goto_1c

    :cond_b7
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 2593
    sget v0, Lorg/telegram/messenger/R$string;->ChannelMessageGIF:I

    new-array v1, v5, [Ljava/lang/Object;

    aput-object v2, v1, v4

    const-string v2, "ChannelMessageGIF"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_1c

    :cond_b8
    if-nez p2, :cond_b9

    .line 2596
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v1, v3, :cond_b9

    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b9

    .line 2597
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

    move-result-object v21

    .line 2598
    aput-boolean v5, p3, v4

    goto/16 :goto_1c

    :cond_b9
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 2600
    sget v0, Lorg/telegram/messenger/R$string;->ChannelMessageDocument:I

    new-array v1, v5, [Ljava/lang/Object;

    aput-object v2, v1, v4

    const-string v2, "ChannelMessageDocument"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_1c

    :cond_ba
    :goto_18
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 2582
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getStickerEmoji()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_bb

    .line 2584
    sget v1, Lorg/telegram/messenger/R$string;->ChannelMessageStickerEmoji:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v4

    aput-object v0, v3, v5

    const-string v0, "ChannelMessageStickerEmoji"

    invoke-static {v0, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a

    .line 2586
    :cond_bb
    sget v0, Lorg/telegram/messenger/R$string;->ChannelMessageSticker:I

    new-array v1, v5, [Ljava/lang/Object;

    aput-object v2, v1, v4

    const-string v2, "ChannelMessageSticker"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a

    :cond_bc
    const/4 v4, 0x0

    if-nez p2, :cond_bd

    .line 2604
    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_bd

    .line 2605
    sget v1, Lorg/telegram/messenger/R$string;->NotificationMessageText:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v4

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    const/4 v5, 0x1

    aput-object v0, v3, v5

    invoke-static {v9, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    .line 2606
    aput-boolean v5, p3, v4

    goto/16 :goto_1c

    :cond_bd
    const/4 v5, 0x1

    .line 2608
    sget v0, Lorg/telegram/messenger/R$string;->ChannelMessageNoText:I

    new-array v1, v5, [Ljava/lang/Object;

    aput-object v2, v1, v4

    invoke-static {v3, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_1c

    :cond_be
    :goto_19
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 2577
    sget v0, Lorg/telegram/messenger/R$string;->ChannelMessageMap:I

    new-array v1, v5, [Ljava/lang/Object;

    aput-object v2, v1, v4

    const-string v2, "ChannelMessageMap"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_1c

    .line 2612
    :cond_bf
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isMediaEmpty()Z

    move-result v3

    const-string v4, "NotificationMessageGroupText"

    if-eqz v3, :cond_c1

    if-nez p2, :cond_c0

    .line 2613
    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c0

    .line 2614
    sget v1, Lorg/telegram/messenger/R$string;->NotificationMessageGroupText:I

    new-array v3, v10, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v3, v6

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v2, v3, v5

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    const/4 v6, 0x2

    aput-object v0, v3, v6

    invoke-static {v4, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_1c

    :cond_c0
    const/4 v6, 0x2

    .line 2616
    sget v0, Lorg/telegram/messenger/R$string;->NotificationMessageGroupNoText:I

    new-array v1, v6, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    move-object/from16 v9, v22

    invoke-static {v9, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_1c

    :cond_c1
    move-object/from16 v9, v22

    .line 2618
    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v11, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v11, v11, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v11, :cond_c3

    if-nez p2, :cond_c2

    .line 2619
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x13

    if-lt v6, v7, :cond_c2

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c2

    .line 2620
    sget v3, Lorg/telegram/messenger/R$string;->NotificationMessageGroupText:I

    new-array v6, v10, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v2, v6, v5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, v6, v1

    invoke-static {v4, v3, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_1c

    :cond_c2
    const/4 v1, 0x2

    .line 2622
    sget v0, Lorg/telegram/messenger/R$string;->NotificationMessageGroupPhoto:I

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "NotificationMessageGroupPhoto"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_1c

    .line 2624
    :cond_c3
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_c5

    if-nez p2, :cond_c4

    .line 2625
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v1, v3, :cond_c4

    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c4

    .line 2626
    sget v1, Lorg/telegram/messenger/R$string;->NotificationMessageGroupText:I

    new-array v3, v10, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v3, v6

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v2, v3, v5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x2

    aput-object v0, v3, v8

    invoke-static {v4, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_1c

    :cond_c4
    const/4 v8, 0x2

    .line 2628
    sget v0, Lorg/telegram/messenger/R$string;->NotificationMessageGroupVideo:I

    new-array v1, v8, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v11, 0x1

    aput-object v2, v1, v11

    const-string v2, " "

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_1c

    :cond_c5
    const/4 v3, 0x0

    const/4 v8, 0x2

    const/4 v11, 0x1

    .line 2630
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v1

    if-eqz v1, :cond_c6

    .line 2631
    sget v0, Lorg/telegram/messenger/R$string;->NotificationMessageGroupAudio:I

    new-array v1, v8, [Ljava/lang/Object;

    aput-object v2, v1, v3

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v1, v11

    const-string v2, "NotificationMessageGroupAudio"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_1c

    .line 2632
    :cond_c6
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v1

    if-eqz v1, :cond_c7

    .line 2633
    sget v0, Lorg/telegram/messenger/R$string;->NotificationMessageGroupRound:I

    new-array v1, v8, [Ljava/lang/Object;

    aput-object v2, v1, v3

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v1, v11

    const-string v2, "NotificationMessageGroupRound"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_1c

    .line 2634
    :cond_c7
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v1

    if-eqz v1, :cond_c8

    .line 2635
    sget v0, Lorg/telegram/messenger/R$string;->NotificationMessageGroupMusic:I

    new-array v1, v8, [Ljava/lang/Object;

    aput-object v2, v1, v3

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v1, v11

    const-string v2, "NotificationMessageGroupMusic"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_1c

    .line 2636
    :cond_c8
    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;

    if-eqz v3, :cond_c9

    .line 2637
    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;

    .line 2638
    sget v0, Lorg/telegram/messenger/R$string;->NotificationMessageGroupContact2:I

    new-array v3, v10, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

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

    move-result-object v21

    goto/16 :goto_1c

    .line 2639
    :cond_c9
    instance-of v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;

    if-eqz v3, :cond_cb

    .line 2640
    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;

    .line 2641
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->poll:Lorg/telegram/tgnet/TLRPC$Poll;

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Poll;->quiz:Z

    if-eqz v1, :cond_ca

    .line 2642
    sget v1, Lorg/telegram/messenger/R$string;->NotificationMessageGroupQuiz2:I

    new-array v3, v10, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v2, v3, v6

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Poll;->question:Ljava/lang/String;

    const/4 v7, 0x2

    aput-object v0, v3, v7

    const-string v0, "NotificationMessageGroupQuiz2"

    invoke-static {v0, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a

    :cond_ca
    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x2

    .line 2644
    sget v1, Lorg/telegram/messenger/R$string;->NotificationMessageGroupPoll2:I

    new-array v3, v10, [Ljava/lang/Object;

    aput-object v2, v3, v4

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v3, v6

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Poll;->question:Ljava/lang/String;

    aput-object v0, v3, v7

    const-string v0, "NotificationMessageGroupPoll2"

    invoke-static {v0, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a

    .line 2646
    :cond_cb
    instance-of v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;

    if-eqz v3, :cond_cc

    .line 2647
    sget v0, Lorg/telegram/messenger/R$string;->NotificationMessageGroupGame:I

    new-array v3, v10, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v2, v3, v4

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->game:Lorg/telegram/tgnet/TLRPC$TL_game;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_game;->title:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v3, v2

    const-string v1, "NotificationMessageGroupGame"

    invoke-static {v1, v0, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_1c

    .line 2648
    :cond_cc
    instance-of v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;

    if-nez v3, :cond_d7

    instance-of v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    if-eqz v3, :cond_cd

    goto/16 :goto_1b

    .line 2650
    :cond_cd
    instance-of v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeoLive;

    if-eqz v3, :cond_ce

    .line 2651
    sget v0, Lorg/telegram/messenger/R$string;->NotificationMessageGroupLiveLocation:I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "NotificationMessageGroupLiveLocation"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_1c

    .line 2652
    :cond_ce
    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v1, :cond_d5

    .line 2653
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isSticker()Z

    move-result v1

    if-nez v1, :cond_d3

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isAnimatedSticker()Z

    move-result v1

    if-eqz v1, :cond_cf

    goto/16 :goto_1a

    .line 2660
    :cond_cf
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isGif()Z

    move-result v1

    if-eqz v1, :cond_d1

    if-nez p2, :cond_d0

    .line 2661
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v1, v3, :cond_d0

    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d0

    .line 2662
    sget v1, Lorg/telegram/messenger/R$string;->NotificationMessageGroupText:I

    new-array v3, v10, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v3, v7

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

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

    const/4 v6, 0x2

    aput-object v0, v3, v6

    invoke-static {v4, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_1c

    :cond_d0
    const/4 v6, 0x2

    .line 2664
    sget v0, Lorg/telegram/messenger/R$string;->NotificationMessageGroupGif:I

    new-array v1, v6, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "NotificationMessageGroupGif"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_1c

    :cond_d1
    if-nez p2, :cond_d2

    .line 2667
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v1, v3, :cond_d2

    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d2

    .line 2668
    sget v1, Lorg/telegram/messenger/R$string;->NotificationMessageGroupText:I

    new-array v3, v10, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v3, v6

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

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

    const/4 v6, 0x2

    aput-object v0, v3, v6

    invoke-static {v4, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_1c

    :cond_d2
    const/4 v6, 0x2

    .line 2670
    sget v0, Lorg/telegram/messenger/R$string;->NotificationMessageGroupDocument:I

    new-array v1, v6, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "NotificationMessageGroupDocument"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_1c

    :cond_d3
    :goto_1a
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 2654
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getStickerEmoji()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d4

    .line 2656
    sget v1, Lorg/telegram/messenger/R$string;->NotificationMessageGroupStickerEmoji:I

    new-array v6, v10, [Ljava/lang/Object;

    aput-object v2, v6, v3

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v6, v4

    const/4 v7, 0x2

    aput-object v0, v6, v7

    const-string v0, "NotificationMessageGroupStickerEmoji"

    invoke-static {v0, v1, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a

    :cond_d4
    const/4 v7, 0x2

    .line 2658
    sget v0, Lorg/telegram/messenger/R$string;->NotificationMessageGroupSticker:I

    new-array v1, v7, [Ljava/lang/Object;

    aput-object v2, v1, v3

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v1, v4

    const-string v2, "NotificationMessageGroupSticker"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a

    :cond_d5
    if-nez p2, :cond_d6

    .line 2674
    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d6

    .line 2675
    sget v1, Lorg/telegram/messenger/R$string;->NotificationMessageGroupText:I

    new-array v3, v10, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v3, v6

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v2, v3, v7

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    const/4 v8, 0x2

    aput-object v0, v3, v8

    invoke-static {v4, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    goto :goto_1c

    :cond_d6
    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x2

    .line 2677
    sget v0, Lorg/telegram/messenger/R$string;->NotificationMessageGroupNoText:I

    new-array v1, v8, [Ljava/lang/Object;

    aput-object v2, v1, v6

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v1, v7

    invoke-static {v9, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    goto :goto_1c

    :cond_d7
    :goto_1b
    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x2

    .line 2649
    sget v0, Lorg/telegram/messenger/R$string;->NotificationMessageGroupMap:I

    new-array v1, v8, [Ljava/lang/Object;

    aput-object v2, v1, v6

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v1, v7

    const-string v2, "NotificationMessageGroupMap"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    goto :goto_1c

    :cond_d8
    move-object/from16 v3, v18

    move-object/from16 v9, v22

    const/4 v6, 0x0

    if-eqz p4, :cond_d9

    .line 2683
    aput-boolean v6, p4, v6

    .line 2685
    :cond_d9
    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_da

    iget-boolean v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v0, :cond_da

    .line 2686
    sget v0, Lorg/telegram/messenger/R$string;->ChannelMessageNoText:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v6

    invoke-static {v3, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    goto :goto_1c

    :cond_da
    const/4 v1, 0x1

    .line 2688
    sget v0, Lorg/telegram/messenger/R$string;->NotificationMessageGroupNoText:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v6

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v2, v3, v1

    invoke-static {v9, v0, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    :cond_db
    :goto_1c
    return-object v21

    :cond_dc
    :goto_1d
    move-object v1, v2

    .line 2040
    sget v0, Lorg/telegram/messenger/R$string;->YouHaveNewMessage:I

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTotalAllUnreadCount()I
    .locals 10

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    const/4 v3, 0x5

    if-ge v1, v3, :cond_8

    .line 1378
    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/UserConfig;->isClientActivated()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1379
    invoke-static {v1}, Lorg/telegram/messenger/NotificationsController;->getInstance(I)Lorg/telegram/messenger/NotificationsController;

    move-result-object v3

    .line 1380
    iget-boolean v4, v3, Lorg/telegram/messenger/NotificationsController;->showBadgeNumber:Z

    if-eqz v4, :cond_7

    .line 1381
    iget-boolean v4, v3, Lorg/telegram/messenger/NotificationsController;->showBadgeMessages:Z

    if-eqz v4, :cond_3

    .line 1382
    iget-boolean v4, v3, Lorg/telegram/messenger/NotificationsController;->showBadgeMuted:Z

    if-eqz v4, :cond_2

    .line 1384
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/MessagesController;->allDialogs:Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1385
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v0

    :goto_1
    if-ge v5, v4, :cond_7

    .line 1386
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$Dialog;

    if-eqz v6, :cond_0

    .line 1387
    iget-wide v7, v6, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-static {v7, v8}, Lorg/telegram/messenger/DialogObject;->isChatDialog(J)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1388
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget-wide v8, v6, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    neg-long v8, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v7

    .line 1389
    invoke-static {v7}, Lorg/telegram/messenger/ChatObject;->isNotInChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_2

    :cond_0
    if-eqz v6, :cond_1

    .line 1394
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

    .line 1398
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_6

    .line 1401
    :cond_2
    iget v3, v3, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    goto :goto_5

    .line 1404
    :cond_3
    iget-boolean v4, v3, Lorg/telegram/messenger/NotificationsController;->showBadgeMuted:Z

    if-eqz v4, :cond_6

    .line 1406
    :try_start_1
    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v0

    :goto_3
    if-ge v4, v3, :cond_7

    .line 1407
    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/messenger/MessagesController;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$Dialog;

    .line 1408
    iget-wide v6, v5, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-static {v6, v7}, Lorg/telegram/messenger/DialogObject;->isChatDialog(J)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1409
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-wide v7, v5, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    neg-long v7, v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v6

    .line 1410
    invoke-static {v6}, Lorg/telegram/messenger/ChatObject;->isNotInChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_4

    .line 1414
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

    .line 1420
    invoke-static {v3, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;Z)V

    goto :goto_6

    .line 1423
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
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 2849
    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    move v1, v0

    .line 2852
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 2853
    aget-wide v2, p1, v1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

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
    .locals 5

    .line 2714
    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v0, :cond_1

    iget-wide v1, v0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    cmp-long v0, v0, v3

    if-nez v0, :cond_1

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

    .line 4019
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

    .line 343
    iput-wide v0, p0, Lorg/telegram/messenger/NotificationsController;->openedDialogId:J

    const/4 v0, 0x0

    .line 344
    iput v0, p0, Lorg/telegram/messenger/NotificationsController;->openedTopicId:I

    .line 345
    iput v0, p0, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    .line 346
    iput v0, p0, Lorg/telegram/messenger/NotificationsController;->personalCount:I

    .line 347
    iget-object v1, p0, Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 348
    iget-object v1, p0, Lorg/telegram/messenger/NotificationsController;->pushMessagesDict:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1}, Landroidx/collection/LongSparseArray;->clear()V

    .line 349
    iget-object v1, p0, Lorg/telegram/messenger/NotificationsController;->fcmRandomMessagesDict:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1}, Landroidx/collection/LongSparseArray;->clear()V

    .line 350
    iget-object v1, p0, Lorg/telegram/messenger/NotificationsController;->pushDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1}, Landroidx/collection/LongSparseArray;->clear()V

    .line 351
    iget-object v1, p0, Lorg/telegram/messenger/NotificationsController;->wearNotificationsIds:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1}, Landroidx/collection/LongSparseArray;->clear()V

    .line 352
    iget-object v1, p0, Lorg/telegram/messenger/NotificationsController;->lastWearNotifiedMessageId:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1}, Landroidx/collection/LongSparseArray;->clear()V

    .line 353
    iget-object v1, p0, Lorg/telegram/messenger/NotificationsController;->openedInBubbleDialogs:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 354
    iget-object v1, p0, Lorg/telegram/messenger/NotificationsController;->delayedPushMessages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 355
    iput-boolean v0, p0, Lorg/telegram/messenger/NotificationsController;->notifyCheck:Z

    .line 356
    iput v0, p0, Lorg/telegram/messenger/NotificationsController;->lastBadgeCount:I

    .line 358
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/NotificationsController;->notificationDelayWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 359
    iget-object v1, p0, Lorg/telegram/messenger/NotificationsController;->notificationDelayWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 362
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 364
    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/telegram/messenger/NotificationsController;->dismissNotification()V

    .line 365
    invoke-direct {p0}, Lorg/telegram/messenger/NotificationsController;->getTotalAllUnreadCount()I

    move-result v1

    invoke-direct {p0, v1}, Lorg/telegram/messenger/NotificationsController;->setBadge(I)V

    .line 366
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/AccountInstance;->getNotificationsSettings()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 367
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 368
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 369
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 371
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_2

    .line 373
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

    .line 374
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

    .line 375
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

    .line 376
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

    .line 378
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "channel"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 379
    sget-object v2, Lorg/telegram/messenger/NotificationsController;->systemNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v2}, Landroid/app/NotificationManager;->getNotificationChannels()Ljava/util/List;

    move-result-object v2

    .line 380
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    :goto_1
    if-ge v0, v3, :cond_2

    .line 382
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationChannel;

    .line 383
    invoke-virtual {v4}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v4

    .line 384
    invoke-virtual {v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_1

    .line 386
    :try_start_2
    sget-object v5, Lorg/telegram/messenger/NotificationsController;->systemNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v5, v4}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v5

    .line 388
    :try_start_3
    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 390
    :goto_2
    sget-boolean v5, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v5, :cond_1

    .line 391
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

    .line 396
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$deleteAllNotificationChannels$33()V
    .locals 6

    .line 3001
    :try_start_0
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getNotificationsSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3002
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    .line 3003
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3004
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

    .line 3005
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "org.telegram.key"

    .line 3006
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "_s"

    .line 3007
    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 3008
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3009
    sget-object v4, Lorg/telegram/messenger/NotificationsController;->systemNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v4, v2}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    .line 3010
    sget-boolean v4, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v4, :cond_1

    .line 3011
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delete all channel "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 3014
    :cond_1
    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 3017
    :cond_2
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 3019
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method private synthetic lambda$deleteNotificationChannel$31(JII)V
    .locals 0

    .line 2914
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/NotificationsController;->deleteNotificationChannelInternal(JII)V

    return-void
.end method

.method private synthetic lambda$deleteNotificationChannelGlobal$32(II)V
    .locals 0

    .line 2992
    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/NotificationsController;->deleteNotificationChannelGlobalInternal(II)V

    return-void
.end method

.method private static synthetic lambda$dismissNotification$27()V
    .locals 3

    .line 2761
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

    .line 466
    iput-object p1, p0, Lorg/telegram/messenger/NotificationsController;->popupReplyMessages:Ljava/util/ArrayList;

    .line 467
    new-instance p1, Landroid/content/Intent;

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v1, Lorg/telegram/ui/PopupNotificationActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "force"

    const/4 v1, 0x1

    .line 468
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 469
    iget v0, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    const-string v1, "currentAccount"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const v0, 0x10050004

    .line 470
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 471
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 472
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 473
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic lambda$forceShowPopupForReply$6()V
    .locals 8

    .line 454
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 455
    :goto_0
    iget-object v3, p0, Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 456
    iget-object v3, p0, Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    .line 457
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v4

    .line 458
    iget-object v6, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-boolean v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->mentioned:Z

    if-eqz v7, :cond_0

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v6, v6, Lorg/telegram/tgnet/TLRPC$TL_messageActionPinMessage;

    if-nez v6, :cond_2

    .line 459
    :cond_0
    invoke-static {v4, v5}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isSupergroup()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    .line 462
    :cond_1
    invoke-virtual {v0, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 464
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->needShowPasscode()Z

    move-result v1

    if-nez v1, :cond_4

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isWaitingForPasscodeEnter:Z

    if-nez v1, :cond_4

    .line 465
    new-instance v1, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda31;

    invoke-direct {v1, p0, v0}, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda31;-><init>(Lorg/telegram/messenger/NotificationsController;Ljava/util/ArrayList;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_4
    return-void
.end method

.method private synthetic lambda$hideNotifications$26()V
    .locals 3

    .line 2738
    sget-object v0, Lorg/telegram/messenger/NotificationsController;->notificationManager:Landroidx/core/app/NotificationManagerCompat;

    iget v1, p0, Lorg/telegram/messenger/NotificationsController;->notificationId:I

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationManagerCompat;->cancel(I)V

    .line 2739
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController;->lastWearNotifiedMessageId:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->clear()V

    const/4 v0, 0x0

    .line 2740
    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/NotificationsController;->wearNotificationsIds:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1}, Landroidx/collection/LongSparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2741
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

    .line 2743
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController;->wearNotificationsIds:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->clear()V

    return-void
.end method

.method private static synthetic lambda$loadRoundAvatar$35(Landroid/graphics/Canvas;)I
    .locals 9

    .line 4767
    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    .line 4768
    sget-object v0, Landroid/graphics/Path$FillType;->INVERSE_EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v8, v0}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 4769
    invoke-virtual {p0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    .line 4770
    invoke-virtual {p0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v3, v0

    int-to-float v4, v1

    .line 4771
    div-int/lit8 v0, v0, 0x2

    int-to-float v6, v0

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, v8

    move v5, v6

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    .line 4772
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, 0x1

    .line 4773
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v1, 0x0

    .line 4774
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4775
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 4776
    invoke-virtual {p0, v8, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    const/4 p0, -0x3

    return p0
.end method

.method private static synthetic lambda$loadRoundAvatar$36(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .locals 0

    .line 4766
    sget-object p1, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda1;->INSTANCE:Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda1;

    invoke-virtual {p0, p1}, Landroid/graphics/ImageDecoder;->setPostProcessor(Landroid/graphics/PostProcessor;)V

    return-void
.end method

.method private static synthetic lambda$loadTopicsNotificationsExceptions$41(Lj$/util/function/Consumer;Ljava/util/HashSet;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 5134
    invoke-interface {p0, p1}, Lj$/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$loadTopicsNotificationsExceptions$42(JLj$/util/function/Consumer;)V
    .locals 6

    .line 5116
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 5117
    iget v1, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getNotificationsSettings(I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 5118
    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    .line 5119
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

    .line 5120
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5121
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

    .line 5122
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 5124
    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_0

    .line 5126
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

    .line 5127
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5132
    :cond_1
    new-instance p1, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda5;

    invoke-direct {p1, p3, v0}, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda5;-><init>(Lj$/util/function/Consumer;Ljava/util/HashSet;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    .line 238
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    const-string v0, "delay reached"

    .line 239
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 241
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController;->delayedPushMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 242
    invoke-direct {p0, v0}, Lorg/telegram/messenger/NotificationsController;->showOrUpdateNotification(Z)V

    .line 243
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController;->delayedPushMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 246
    :cond_1
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController;->notificationDelayWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 247
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController;->notificationDelayWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 250
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

    .line 2795
    :try_start_0
    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2797
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private synthetic lambda$playInChatSound$29()V
    .locals 8

    .line 2786
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/messenger/NotificationsController;->lastSoundPlay:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    return-void

    .line 2790
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController;->soundPool:Landroid/media/SoundPool;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 2791
    new-instance v0, Landroid/media/SoundPool;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lorg/telegram/messenger/NotificationsController;->soundPool:Landroid/media/SoundPool;

    .line 2792
    sget-object v2, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda3;->INSTANCE:Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda3;

    invoke-virtual {v0, v2}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 2802
    :cond_1
    iget v0, p0, Lorg/telegram/messenger/NotificationsController;->soundIn:I

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/messenger/NotificationsController;->soundInLoaded:Z

    if-nez v0, :cond_2

    .line 2803
    iput-boolean v1, p0, Lorg/telegram/messenger/NotificationsController;->soundInLoaded:Z

    .line 2804
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController;->soundPool:Landroid/media/SoundPool;

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    sget v3, Lorg/telegram/messenger/R$raw;->sound_in:I

    invoke-virtual {v0, v2, v3, v1}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/NotificationsController;->soundIn:I

    .line 2806
    :cond_2
    iget v2, p0, Lorg/telegram/messenger/NotificationsController;->soundIn:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_3

    .line 2808
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

    .line 2810
    :try_start_2
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 2814
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

    .line 4809
    :try_start_0
    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4811
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private synthetic lambda$playOutChatSound$38()V
    .locals 8

    .line 4800
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/messenger/NotificationsController;->lastSoundOutPlay:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x64

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    return-void

    .line 4803
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/NotificationsController;->lastSoundOutPlay:J

    .line 4804
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController;->soundPool:Landroid/media/SoundPool;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 4805
    new-instance v0, Landroid/media/SoundPool;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lorg/telegram/messenger/NotificationsController;->soundPool:Landroid/media/SoundPool;

    .line 4806
    sget-object v2, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda2;->INSTANCE:Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda2;

    invoke-virtual {v0, v2}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 4816
    :cond_1
    iget v0, p0, Lorg/telegram/messenger/NotificationsController;->soundOut:I

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/messenger/NotificationsController;->soundOutLoaded:Z

    if-nez v0, :cond_2

    .line 4817
    iput-boolean v1, p0, Lorg/telegram/messenger/NotificationsController;->soundOutLoaded:Z

    .line 4818
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController;->soundPool:Landroid/media/SoundPool;

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    sget v3, Lorg/telegram/messenger/R$raw;->sound_out:I

    invoke-virtual {v0, v2, v3, v1}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/NotificationsController;->soundOut:I

    .line 4820
    :cond_2
    iget v2, p0, Lorg/telegram/messenger/NotificationsController;->soundOut:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_3

    .line 4822
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

    .line 4824
    :try_start_2
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 4828
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private synthetic lambda$processDialogsUpdateRead$19(Ljava/util/ArrayList;)V
    .locals 5

    .line 1158
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 1159
    iget-object v3, p0, Lorg/telegram/messenger/NotificationsController;->popupMessages:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1161
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

    .line 1173
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

    .line 1174
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

    .line 1062
    iget v3, v0, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    .line 1063
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/AccountInstance;->getNotificationsSettings()Landroid/content/SharedPreferences;

    move-result-object v4

    const/4 v5, 0x0

    move v6, v5

    .line 1064
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/support/LongSparseIntArray;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ge v6, v7, :cond_16

    .line 1065
    invoke-virtual {v1, v6}, Lorg/telegram/messenger/support/LongSparseIntArray;->keyAt(I)J

    move-result-wide v9

    .line 1066
    iget-object v7, v0, Lorg/telegram/messenger/NotificationsController;->pushDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v7, v9, v10}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 1067
    invoke-virtual {v1, v9, v10}, Lorg/telegram/messenger/support/LongSparseIntArray;->get(J)I

    move-result v11

    .line 1069
    invoke-static {v9, v10}, Lorg/telegram/messenger/DialogObject;->isChatDialog(J)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1070
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v12

    neg-long v13, v9

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v12

    if-eqz v12, :cond_0

    .line 1071
    iget-boolean v13, v12, Lorg/telegram/tgnet/TLRPC$Chat;->min:Z

    if-nez v13, :cond_0

    invoke-static {v12}, Lorg/telegram/messenger/ChatObject;->isNotInChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v13

    if-eqz v13, :cond_1

    :cond_0
    move v11, v5

    :cond_1
    if-eqz v12, :cond_2

    .line 1075
    iget-boolean v12, v12, Lorg/telegram/tgnet/TLRPC$Chat;->forum:Z

    goto :goto_1

    :cond_2
    move v12, v5

    :goto_1
    if-nez v12, :cond_5

    .line 1082
    invoke-direct {v0, v4, v9, v10, v5}, Lorg/telegram/messenger/NotificationsController;->getNotifyOverride(Landroid/content/SharedPreferences;JI)I

    move-result v12

    const/4 v13, -0x1

    if-ne v12, v13, :cond_3

    .line 1084
    invoke-virtual {v0, v9, v10}, Lorg/telegram/messenger/NotificationsController;->isGlobalNotificationsEnabled(J)Z

    move-result v12

    goto :goto_3

    :cond_3
    const/4 v13, 0x2

    if-eq v12, v13, :cond_4

    goto :goto_2

    :cond_4
    move v12, v5

    goto :goto_3

    :cond_5
    :goto_2
    move v12, v8

    .line 1092
    :goto_3
    iget-boolean v13, v0, Lorg/telegram/messenger/NotificationsController;->notifyCheck:Z

    if-eqz v13, :cond_6

    if-nez v12, :cond_6

    .line 1093
    iget-object v13, v0, Lorg/telegram/messenger/NotificationsController;->pushDialogsOverrideMention:Landroidx/collection/LongSparseArray;

    invoke-virtual {v13, v9, v10}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    if-eqz v13, :cond_6

    .line 1094
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-eqz v14, :cond_6

    .line 1096
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v11

    move v12, v8

    :cond_6
    if-nez v11, :cond_7

    .line 1101
    iget-object v13, v0, Lorg/telegram/messenger/NotificationsController;->smartNotificationsDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v13, v9, v10}, Landroidx/collection/LongSparseArray;->remove(J)V

    :cond_7
    if-gez v11, :cond_9

    if-nez v7, :cond_8

    goto/16 :goto_9

    .line 1108
    :cond_8
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v13

    add-int/2addr v11, v13

    :cond_9
    if-nez v12, :cond_a

    if-nez v11, :cond_d

    :cond_a
    if-eqz v7, :cond_d

    .line 1112
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v13

    invoke-virtual {v13, v9, v10}, Lorg/telegram/messenger/MessagesController;->isForum(J)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 1113
    iget v13, v0, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-lez v7, :cond_b

    move v7, v8

    goto :goto_4

    :cond_b
    move v7, v5

    :goto_4
    sub-int/2addr v13, v7

    iput v13, v0, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    goto :goto_5

    .line 1115
    :cond_c
    iget v13, v0, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sub-int/2addr v13, v7

    iput v13, v0, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    :cond_d
    :goto_5
    if-nez v11, :cond_12

    .line 1120
    iget-object v7, v0, Lorg/telegram/messenger/NotificationsController;->pushDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v7, v9, v10}, Landroidx/collection/LongSparseArray;->remove(J)V

    .line 1121
    iget-object v7, v0, Lorg/telegram/messenger/NotificationsController;->pushDialogsOverrideMention:Landroidx/collection/LongSparseArray;

    invoke-virtual {v7, v9, v10}, Landroidx/collection/LongSparseArray;->remove(J)V

    move v7, v5

    .line 1122
    :goto_6
    iget-object v11, v0, Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v7, v11, :cond_15

    .line 1123
    iget-object v11, v0, Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/messenger/MessageObject;

    .line 1124
    iget-object v12, v11, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-boolean v12, v12, Lorg/telegram/tgnet/TLRPC$Message;->from_scheduled:Z

    if-nez v12, :cond_11

    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v12

    cmp-long v12, v12, v9

    if-nez v12, :cond_11

    .line 1125
    invoke-direct {v0, v11}, Lorg/telegram/messenger/NotificationsController;->isPersonalMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 1126
    iget v12, v0, Lorg/telegram/messenger/NotificationsController;->personalCount:I

    sub-int/2addr v12, v8

    iput v12, v0, Lorg/telegram/messenger/NotificationsController;->personalCount:I

    .line 1128
    :cond_e
    iget-object v12, v0, Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v7, v7, -0x1

    .line 1130
    iget-object v12, v0, Lorg/telegram/messenger/NotificationsController;->delayedPushMessages:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1132
    iget-object v12, v11, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v12, v12, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v12, v12, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    const-wide/16 v14, 0x0

    cmp-long v16, v12, v14

    if-eqz v16, :cond_f

    neg-long v14, v12

    .line 1137
    :cond_f
    iget-object v12, v0, Lorg/telegram/messenger/NotificationsController;->pushMessagesDict:Landroidx/collection/LongSparseArray;

    invoke-virtual {v12, v14, v15}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/SparseArray;

    if-eqz v12, :cond_10

    .line 1139
    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/util/SparseArray;->remove(I)V

    .line 1140
    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v12

    if-nez v12, :cond_10

    .line 1141
    iget-object v12, v0, Lorg/telegram/messenger/NotificationsController;->pushMessagesDict:Landroidx/collection/LongSparseArray;

    invoke-virtual {v12, v14, v15}, Landroidx/collection/LongSparseArray;->remove(J)V

    .line 1144
    :cond_10
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    add-int/2addr v7, v8

    goto :goto_6

    :cond_12
    if-eqz v12, :cond_15

    .line 1148
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    invoke-virtual {v7, v9, v10}, Lorg/telegram/messenger/MessagesController;->isForum(J)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 1149
    iget v7, v0, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    if-lez v11, :cond_13

    goto :goto_7

    :cond_13
    move v8, v5

    :goto_7
    add-int/2addr v7, v8

    iput v7, v0, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    goto :goto_8

    .line 1151
    :cond_14
    iget v7, v0, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    add-int/2addr v7, v11

    iput v7, v0, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    .line 1153
    :goto_8
    iget-object v7, v0, Lorg/telegram/messenger/NotificationsController;->pushDialogs:Landroidx/collection/LongSparseArray;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v9, v10, v8}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_15
    :goto_9
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 1156
    :cond_16
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_17

    .line 1157
    new-instance v1, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda28;

    invoke-direct {v1, v0, v2}, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda28;-><init>(Lorg/telegram/messenger/NotificationsController;Ljava/util/ArrayList;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1164
    :cond_17
    iget v1, v0, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    if-eq v3, v1, :cond_1a

    .line 1165
    iget-boolean v1, v0, Lorg/telegram/messenger/NotificationsController;->notifyCheck:Z

    if-nez v1, :cond_18

    .line 1166
    iget-object v1, v0, Lorg/telegram/messenger/NotificationsController;->delayedPushMessages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1167
    iget-boolean v1, v0, Lorg/telegram/messenger/NotificationsController;->notifyCheck:Z

    invoke-direct {v0, v1}, Lorg/telegram/messenger/NotificationsController;->showOrUpdateNotification(Z)V

    goto :goto_b

    .line 1169
    :cond_18
    iget v1, v0, Lorg/telegram/messenger/NotificationsController;->lastOnlineFromOtherDevice:I

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v2

    if-le v1, v2, :cond_19

    goto :goto_a

    :cond_19
    move v8, v5

    :goto_a
    invoke-direct {v0, v8}, Lorg/telegram/messenger/NotificationsController;->scheduleNotificationDelay(Z)V

    .line 1171
    :goto_b
    iget-object v1, v0, Lorg/telegram/messenger/NotificationsController;->pushDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1}, Landroidx/collection/LongSparseArray;->size()I

    move-result v1

    .line 1172
    new-instance v2, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda18;

    invoke-direct {v2, v0, v1}, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/messenger/NotificationsController;I)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1177
    :cond_1a
    iput-boolean v5, v0, Lorg/telegram/messenger/NotificationsController;->notifyCheck:Z

    .line 1178
    iget-boolean v1, v0, Lorg/telegram/messenger/NotificationsController;->showBadgeNumber:Z

    if-eqz v1, :cond_1b

    .line 1179
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/NotificationsController;->getTotalAllUnreadCount()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/telegram/messenger/NotificationsController;->setBadge(I)V

    :cond_1b
    return-void
.end method

.method private synthetic lambda$processEditedMessages$15(Landroidx/collection/LongSparseArray;)V
    .locals 13

    .line 772
    invoke-virtual {p1}, Landroidx/collection/LongSparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_7

    .line 773
    invoke-virtual {p1, v2}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    .line 774
    invoke-virtual {p1, v2}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 775
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v1

    :goto_1
    if-ge v6, v5, :cond_6

    .line 776
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/messenger/MessageObject;

    .line 778
    iget-object v8, v7, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v8, v8, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    const-wide/16 v10, 0x0

    cmp-long v12, v8, v10

    if-eqz v12, :cond_0

    neg-long v10, v8

    .line 783
    :cond_0
    iget-object v8, p0, Lorg/telegram/messenger/NotificationsController;->pushMessagesDict:Landroidx/collection/LongSparseArray;

    invoke-virtual {v8, v10, v11}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/SparseArray;

    if-nez v8, :cond_1

    goto :goto_2

    .line 787
    :cond_1
    invoke-virtual {v7}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/messenger/MessageObject;

    if-eqz v9, :cond_2

    .line 788
    iget-boolean v10, v9, Lorg/telegram/messenger/MessageObject;->isReactionPush:Z

    if-eqz v10, :cond_2

    const/4 v9, 0x0

    :cond_2
    if-eqz v9, :cond_5

    .line 793
    invoke-virtual {v7}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-virtual {v8, v3, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 794
    iget-object v3, p0, Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_3

    .line 796
    iget-object v8, p0, Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;

    invoke-virtual {v8, v3, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 798
    :cond_3
    iget-object v3, p0, Lorg/telegram/messenger/NotificationsController;->delayedPushMessages:Ljava/util/ArrayList;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_4

    .line 800
    iget-object v8, p0, Lorg/telegram/messenger/NotificationsController;->delayedPushMessages:Ljava/util/ArrayList;

    invoke-virtual {v8, v3, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const/4 v3, 0x1

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    if-eqz v3, :cond_8

    .line 806
    invoke-direct {p0, v1}, Lorg/telegram/messenger/NotificationsController;->showOrUpdateNotification(Z)V

    :cond_8
    return-void
.end method

.method private synthetic lambda$processLoadedUnreadMessages$22(I)V
    .locals 6

    .line 1360
    iget v0, p0, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1361
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController;->popupMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1362
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->pushMessagesUpdated:I

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1364
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

    .line 1365
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
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 1190
    iget-object v4, v0, Lorg/telegram/messenger/NotificationsController;->pushDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v4}, Landroidx/collection/LongSparseArray;->clear()V

    .line 1191
    iget-object v4, v0, Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1192
    iget-object v4, v0, Lorg/telegram/messenger/NotificationsController;->pushMessagesDict:Landroidx/collection/LongSparseArray;

    invoke-virtual {v4}, Landroidx/collection/LongSparseArray;->clear()V

    const/4 v4, 0x0

    .line 1193
    iput v4, v0, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    .line 1194
    iput v4, v0, Lorg/telegram/messenger/NotificationsController;->personalCount:I

    .line 1195
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/AccountInstance;->getNotificationsSettings()Landroid/content/SharedPreferences;

    move-result-object v5

    .line 1196
    new-instance v6, Landroidx/collection/LongSparseArray;

    invoke-direct {v6}, Landroidx/collection/LongSparseArray;-><init>()V

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    if-eqz v1, :cond_f

    move v12, v4

    .line 1199
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v12, v13, :cond_f

    .line 1200
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/tgnet/TLRPC$Message;

    if-nez v13, :cond_1

    :cond_0
    :goto_1
    move/from16 v18, v12

    goto/16 :goto_8

    .line 1204
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

    .line 1210
    :cond_3
    iget-object v14, v13, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v14, v14, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    cmp-long v16, v14, v9

    if-eqz v16, :cond_4

    neg-long v14, v14

    goto :goto_2

    :cond_4
    move-wide v14, v9

    .line 1215
    :goto_2
    iget-object v9, v0, Lorg/telegram/messenger/NotificationsController;->pushMessagesDict:Landroidx/collection/LongSparseArray;

    invoke-virtual {v9, v14, v15}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/SparseArray;

    if-eqz v9, :cond_5

    .line 1216
    iget v10, v13, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v10

    if-ltz v10, :cond_5

    goto :goto_1

    .line 1219
    :cond_5
    new-instance v10, Lorg/telegram/messenger/MessageObject;

    iget v7, v0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-direct {v10, v7, v13, v4, v4}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    .line 1220
    invoke-direct {v0, v10}, Lorg/telegram/messenger/NotificationsController;->isPersonalMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1221
    iget v7, v0, Lorg/telegram/messenger/NotificationsController;->personalCount:I

    add-int/2addr v7, v11

    iput v7, v0, Lorg/telegram/messenger/NotificationsController;->personalCount:I

    :cond_6
    move/from16 v18, v12

    .line 1223
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v11

    .line 1225
    iget-object v7, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-virtual {v4, v10}, Lorg/telegram/messenger/MessagesController;->isForum(Lorg/telegram/messenger/MessageObject;)Z

    move-result v4

    invoke-static {v7, v4}, Lorg/telegram/messenger/MessageObject;->getTopicId(Lorg/telegram/tgnet/TLRPC$Message;Z)I

    move-result v4

    .line 1226
    iget-object v7, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-boolean v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->mentioned:Z

    if-eqz v7, :cond_7

    .line 1227
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->getFromChatId()J

    move-result-wide v20

    move-object v7, v9

    move-wide/from16 v8, v20

    goto :goto_3

    :cond_7
    move-object v7, v9

    move-wide v8, v11

    .line 1229
    :goto_3
    invoke-virtual {v6, v8, v9}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result v1

    if-ltz v1, :cond_8

    if-nez v4, :cond_8

    .line 1232
    invoke-virtual {v6, v1}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_5

    .line 1234
    :cond_8
    invoke-direct {v0, v5, v8, v9, v4}, Lorg/telegram/messenger/NotificationsController;->getNotifyOverride(Landroid/content/SharedPreferences;JI)I

    move-result v1

    const/4 v4, -0x1

    if-ne v1, v4, :cond_9

    .line 1236
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

    .line 1240
    :goto_4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v6, v8, v9, v4}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    :goto_5
    if-eqz v1, :cond_e

    .line 1242
    iget-wide v3, v0, Lorg/telegram/messenger/NotificationsController;->openedDialogId:J

    cmp-long v1, v8, v3

    if-nez v1, :cond_b

    sget-boolean v1, Lorg/telegram/messenger/ApplicationLoader;->isScreenOn:Z

    if-eqz v1, :cond_b

    goto :goto_8

    :cond_b
    if-nez v7, :cond_c

    .line 1246
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 1247
    iget-object v3, v0, Lorg/telegram/messenger/NotificationsController;->pushMessagesDict:Landroidx/collection/LongSparseArray;

    invoke-virtual {v3, v14, v15, v1}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_6

    :cond_c
    move-object v1, v7

    .line 1249
    :goto_6
    iget v3, v13, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    invoke-virtual {v1, v3, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1250
    invoke-direct {v0, v10}, Lorg/telegram/messenger/NotificationsController;->appendMessage(Lorg/telegram/messenger/MessageObject;)V

    cmp-long v1, v11, v8

    if-eqz v1, :cond_e

    .line 1252
    iget-object v1, v0, Lorg/telegram/messenger/NotificationsController;->pushDialogsOverrideMention:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1, v11, v12}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1253
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
    add-int/lit8 v12, v18, 0x1

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    const/4 v4, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_f
    const/4 v1, 0x0

    .line 1257
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroidx/collection/LongSparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_16

    .line 1258
    invoke-virtual {v2, v1}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v3

    .line 1259
    invoke-virtual {v6, v3, v4}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result v8

    if-ltz v8, :cond_10

    .line 1262
    invoke-virtual {v6, v8}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    move v9, v8

    const/4 v8, 0x0

    goto :goto_b

    :cond_10
    const/4 v8, 0x0

    .line 1264
    invoke-direct {v0, v5, v3, v4, v8}, Lorg/telegram/messenger/NotificationsController;->getNotifyOverride(Landroid/content/SharedPreferences;JI)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_11

    .line 1266
    invoke-virtual {v0, v3, v4}, Lorg/telegram/messenger/NotificationsController;->isGlobalNotificationsEnabled(J)Z

    move-result v9

    goto :goto_a

    :cond_11
    const/4 v10, 0x2

    if-eq v9, v10, :cond_12

    const/4 v9, 0x1

    goto :goto_a

    :cond_12
    move v9, v8

    .line 1271
    :goto_a
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v6, v3, v4, v10}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    :goto_b
    if-nez v9, :cond_13

    goto :goto_d

    .line 1276
    :cond_13
    invoke-virtual {v2, v1}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 1277
    iget-object v10, v0, Lorg/telegram/messenger/NotificationsController;->pushDialogs:Landroidx/collection/LongSparseArray;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v3, v4, v11}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1278
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v10

    invoke-virtual {v10, v3, v4}, Lorg/telegram/messenger/MessagesController;->isForum(J)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1279
    iget v3, v0, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    if-lez v9, :cond_14

    const/4 v4, 0x1

    goto :goto_c

    :cond_14
    move v4, v8

    :goto_c
    add-int/2addr v3, v4

    iput v3, v0, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    goto :goto_d

    .line 1281
    :cond_15
    iget v3, v0, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    add-int/2addr v3, v9

    iput v3, v0, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    :goto_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_16
    move-object/from16 v1, p3

    const/4 v8, 0x0

    if-eqz v1, :cond_2b

    move v2, v8

    .line 1286
    :goto_e
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2b

    .line 1287
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    .line 1288
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    .line 1289
    iget-object v9, v0, Lorg/telegram/messenger/NotificationsController;->pushMessagesDict:Landroidx/collection/LongSparseArray;

    int-to-long v10, v4

    invoke-virtual {v9, v10, v11}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result v9

    if-ltz v9, :cond_17

    const-wide/16 v11, 0x0

    const/4 v15, 0x2

    :goto_f
    const/16 v19, 0x1

    goto/16 :goto_1c

    .line 1292
    :cond_17
    invoke-direct {v0, v3}, Lorg/telegram/messenger/NotificationsController;->isPersonalMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v9

    if-eqz v9, :cond_18

    .line 1293
    iget v9, v0, Lorg/telegram/messenger/NotificationsController;->personalCount:I

    const/4 v7, 0x1

    add-int/2addr v9, v7

    iput v9, v0, Lorg/telegram/messenger/NotificationsController;->personalCount:I

    .line 1295
    :cond_18
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v9

    .line 1297
    iget-object v11, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v12

    invoke-virtual {v12, v3}, Lorg/telegram/messenger/MessagesController;->isForum(Lorg/telegram/messenger/MessageObject;)Z

    move-result v12

    invoke-static {v11, v12}, Lorg/telegram/messenger/MessageObject;->getTopicId(Lorg/telegram/tgnet/TLRPC$Message;Z)I

    move-result v11

    .line 1298
    iget-object v12, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v13, v12, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    .line 1299
    iget-boolean v12, v12, Lorg/telegram/tgnet/TLRPC$Message;->mentioned:Z

    if-eqz v12, :cond_19

    .line 1300
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getFromChatId()J

    move-result-wide v18

    move-wide/from16 v7, v18

    goto :goto_10

    :cond_19
    move-wide v7, v9

    .line 1302
    :goto_10
    invoke-virtual {v6, v7, v8}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result v12

    if-ltz v12, :cond_1a

    if-nez v11, :cond_1a

    .line 1305
    invoke-virtual {v6, v12}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    const/4 v15, 0x2

    goto :goto_12

    .line 1307
    :cond_1a
    invoke-direct {v0, v5, v7, v8, v11}, Lorg/telegram/messenger/NotificationsController;->getNotifyOverride(Landroid/content/SharedPreferences;JI)I

    move-result v11

    const/4 v12, -0x1

    if-ne v11, v12, :cond_1b

    .line 1309
    invoke-virtual {v0, v7, v8}, Lorg/telegram/messenger/NotificationsController;->isGlobalNotificationsEnabled(J)Z

    move-result v11

    const/4 v15, 0x2

    goto :goto_11

    :cond_1b
    const/4 v15, 0x2

    if-eq v11, v15, :cond_1c

    const/4 v11, 0x1

    goto :goto_11

    :cond_1c
    const/4 v11, 0x0

    .line 1313
    :goto_11
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v6, v7, v8, v12}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    :goto_12
    if-eqz v11, :cond_2a

    .line 1315
    iget-wide v11, v0, Lorg/telegram/messenger/NotificationsController;->openedDialogId:J

    cmp-long v11, v7, v11

    if-nez v11, :cond_1d

    sget-boolean v11, Lorg/telegram/messenger/ApplicationLoader;->isScreenOn:Z

    if-eqz v11, :cond_1d

    goto/16 :goto_1b

    :cond_1d
    if-eqz v4, :cond_20

    .line 1320
    iget-object v11, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v11, v11, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    const-wide/16 v13, 0x0

    cmp-long v17, v11, v13

    if-eqz v17, :cond_1e

    neg-long v13, v11

    goto :goto_13

    :cond_1e
    const-wide/16 v13, 0x0

    .line 1325
    :goto_13
    iget-object v11, v0, Lorg/telegram/messenger/NotificationsController;->pushMessagesDict:Landroidx/collection/LongSparseArray;

    invoke-virtual {v11, v13, v14}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/SparseArray;

    if-nez v11, :cond_1f

    .line 1327
    new-instance v11, Landroid/util/SparseArray;

    invoke-direct {v11}, Landroid/util/SparseArray;-><init>()V

    .line 1328
    iget-object v12, v0, Lorg/telegram/messenger/NotificationsController;->pushMessagesDict:Landroidx/collection/LongSparseArray;

    invoke-virtual {v12, v13, v14, v11}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1330
    :cond_1f
    invoke-virtual {v11, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-wide/16 v11, 0x0

    goto :goto_14

    :cond_20
    const-wide/16 v11, 0x0

    cmp-long v4, v13, v11

    if-eqz v4, :cond_21

    .line 1332
    iget-object v4, v0, Lorg/telegram/messenger/NotificationsController;->fcmRandomMessagesDict:Landroidx/collection/LongSparseArray;

    invoke-virtual {v4, v13, v14, v3}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1334
    :cond_21
    :goto_14
    invoke-direct {v0, v3}, Lorg/telegram/messenger/NotificationsController;->appendMessage(Lorg/telegram/messenger/MessageObject;)V

    cmp-long v3, v9, v7

    if-eqz v3, :cond_23

    .line 1336
    iget-object v3, v0, Lorg/telegram/messenger/NotificationsController;->pushDialogsOverrideMention:Landroidx/collection/LongSparseArray;

    invoke-virtual {v3, v9, v10}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1337
    iget-object v4, v0, Lorg/telegram/messenger/NotificationsController;->pushDialogsOverrideMention:Landroidx/collection/LongSparseArray;

    if-nez v3, :cond_22

    const/4 v3, 0x1

    const/16 v19, 0x1

    goto :goto_15

    :cond_22
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v19, 0x1

    add-int/lit8 v3, v3, 0x1

    :goto_15
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v9, v10, v3}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_16

    :cond_23
    const/16 v19, 0x1

    .line 1340
    :goto_16
    iget-object v3, v0, Lorg/telegram/messenger/NotificationsController;->pushDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v3, v7, v8}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_24

    .line 1341
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    :cond_24
    move/from16 v4, v19

    .line 1343
    :goto_17
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    invoke-virtual {v9, v7, v8}, Lorg/telegram/messenger/MessagesController;->isForum(J)Z

    move-result v9

    if-eqz v9, :cond_28

    if-eqz v3, :cond_26

    .line 1345
    iget v9, v0, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_25

    move/from16 v3, v19

    goto :goto_18

    :cond_25
    const/4 v3, 0x0

    :goto_18
    sub-int/2addr v9, v3

    iput v9, v0, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    .line 1347
    :cond_26
    iget v3, v0, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    if-lez v4, :cond_27

    move/from16 v9, v19

    goto :goto_19

    :cond_27
    const/4 v9, 0x0

    :goto_19
    add-int/2addr v3, v9

    iput v3, v0, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    goto :goto_1a

    :cond_28
    if-eqz v3, :cond_29

    .line 1350
    iget v9, v0, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int/2addr v9, v3

    iput v9, v0, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    .line 1352
    :cond_29
    iget v3, v0, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    add-int/2addr v3, v4

    iput v3, v0, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    .line 1354
    :goto_1a
    iget-object v3, v0, Lorg/telegram/messenger/NotificationsController;->pushDialogs:Landroidx/collection/LongSparseArray;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v7, v8, v4}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_1c

    :cond_2a
    :goto_1b
    const-wide/16 v11, 0x0

    goto/16 :goto_f

    :goto_1c
    add-int/lit8 v2, v2, 0x1

    const/4 v8, 0x0

    goto/16 :goto_e

    :cond_2b
    const/16 v19, 0x1

    .line 1358
    iget-object v1, v0, Lorg/telegram/messenger/NotificationsController;->pushDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1}, Landroidx/collection/LongSparseArray;->size()I

    move-result v1

    .line 1359
    new-instance v2, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda17;

    invoke-direct {v2, v0, v1}, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/messenger/NotificationsController;I)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1367
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    const-wide/16 v3, 0x3c

    cmp-long v1, v1, v3

    if-gez v1, :cond_2c

    move/from16 v4, v19

    goto :goto_1d

    :cond_2c
    const/4 v4, 0x0

    :goto_1d
    invoke-direct {v0, v4}, Lorg/telegram/messenger/NotificationsController;->showOrUpdateNotification(Z)V

    .line 1369
    iget-boolean v1, v0, Lorg/telegram/messenger/NotificationsController;->showBadgeNumber:Z

    if-eqz v1, :cond_2d

    .line 1370
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/NotificationsController;->getTotalAllUnreadCount()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/telegram/messenger/NotificationsController;->setBadge(I)V

    :cond_2d
    return-void
.end method

.method private synthetic lambda$processNewMessages$16(Ljava/util/ArrayList;I)V
    .locals 2

    .line 964
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController;->popupMessages:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 965
    sget-boolean p1, Lorg/telegram/messenger/ApplicationLoader;->mainInterfacePaused:Z

    if-nez p1, :cond_0

    sget-boolean p1, Lorg/telegram/messenger/ApplicationLoader;->isScreenOn:Z

    if-nez p1, :cond_3

    :cond_0
    const/4 p1, 0x3

    if-eq p2, p1, :cond_2

    const/4 p1, 0x1

    if-ne p2, p1, :cond_1

    .line 966
    sget-boolean p1, Lorg/telegram/messenger/ApplicationLoader;->isScreenOn:Z

    if-nez p1, :cond_2

    :cond_1
    const/4 p1, 0x2

    if-ne p2, p1, :cond_3

    sget-boolean p1, Lorg/telegram/messenger/ApplicationLoader;->isScreenOn:Z

    if-nez p1, :cond_3

    .line 967
    :cond_2
    new-instance p1, Landroid/content/Intent;

    sget-object p2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v0, Lorg/telegram/ui/PopupNotificationActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const p2, 0x10050004

    .line 968
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 970
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

    .line 1030
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

    .line 1031
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

    .line 824
    new-instance v9, Landroidx/collection/LongSparseArray;

    invoke-direct {v9}, Landroidx/collection/LongSparseArray;-><init>()V

    .line 825
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getNotificationsSettings()Landroid/content/SharedPreferences;

    move-result-object v10

    const-string v0, "PinnedMessages"

    const/4 v11, 0x1

    .line 826
    invoke-interface {v10, v0, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    const/4 v0, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 830
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v14, v1, :cond_24

    .line 831
    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lorg/telegram/messenger/MessageObject;

    .line 832
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

    .line 835
    :cond_1
    :goto_2
    invoke-static {v6}, Lorg/telegram/messenger/MessageObject;->isTopicActionMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 838
    :cond_2
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    .line 839
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

    .line 840
    :goto_3
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v3

    .line 842
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isFcmMessage()Z

    move-result v22

    if-eqz v22, :cond_4

    .line 843
    iget-boolean v1, v6, Lorg/telegram/messenger/MessageObject;->localChannel:Z

    move v11, v1

    move/from16 v23, v12

    goto :goto_5

    .line 844
    :cond_4
    invoke-static {v3, v4}, Lorg/telegram/messenger/DialogObject;->isChatDialog(J)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 845
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    move/from16 v23, v12

    neg-long v11, v3

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v1, v11}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    .line 846
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

    .line 851
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

    .line 856
    :goto_6
    iget-object v1, v7, Lorg/telegram/messenger/NotificationsController;->pushMessagesDict:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1, v3, v4}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/util/SparseArray;

    if-eqz v2, :cond_8

    .line 857
    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    goto :goto_7

    :cond_8
    const/4 v1, 0x0

    :goto_7
    if-nez v1, :cond_a

    .line 858
    iget-object v12, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move/from16 v26, v0

    move-object/from16 v18, v1

    iget-wide v0, v12, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    cmp-long v12, v0, v19

    if-eqz v12, :cond_b

    .line 859
    iget-object v12, v7, Lorg/telegram/messenger/NotificationsController;->fcmRandomMessagesDict:Landroidx/collection/LongSparseArray;

    invoke-virtual {v12, v0, v1}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    if-eqz v1, :cond_9

    .line 861
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

    .line 865
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isFcmMessage()Z

    move-result v0

    if-eqz v0, :cond_14

    if-nez v2, :cond_c

    .line 867
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 868
    iget-object v0, v7, Lorg/telegram/messenger/NotificationsController;->pushMessagesDict:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, v3, v4, v2}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 870
    :cond_c
    invoke-virtual {v2, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 871
    iget-object v0, v7, Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_d

    .line 873
    iget-object v1, v7, Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v2, v6

    move-wide/from16 v3, v24

    move v5, v11

    move-object v12, v6

    move-object v6, v10

    .line 874
    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/NotificationsController;->addToPopupMessages(Ljava/util/ArrayList;Lorg/telegram/messenger/MessageObject;JZLandroid/content/SharedPreferences;)I

    move-result v0

    goto :goto_9

    :cond_d
    move-object v12, v6

    move/from16 v0, v26

    :goto_9
    if-eqz p3, :cond_f

    .line 876
    iget-boolean v1, v12, Lorg/telegram/messenger/MessageObject;->localEdit:Z

    if-eqz v1, :cond_e

    .line 877
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

    .line 886
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0, v12}, Lorg/telegram/messenger/MessagesStorage;->putPushMessage(Lorg/telegram/messenger/MessageObject;)V

    .line 890
    :cond_12
    iget-object v0, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1, v12}, Lorg/telegram/messenger/MessagesController;->isForum(Lorg/telegram/messenger/MessageObject;)Z

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/MessageObject;->getTopicId(Lorg/telegram/tgnet/TLRPC$Message;Z)I

    move-result v13

    .line 891
    iget-wide v0, v7, Lorg/telegram/messenger/NotificationsController;->openedDialogId:J

    cmp-long v0, v24, v0

    if-nez v0, :cond_13

    sget-boolean v0, Lorg/telegram/messenger/ApplicationLoader;->isScreenOn:Z

    if-eqz v0, :cond_13

    if-nez p3, :cond_14

    .line 893
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/NotificationsController;->playInChatSound()V

    goto :goto_a

    .line 897
    :cond_13
    iget-object v0, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->mentioned:Z

    if-eqz v1, :cond_16

    if-nez v23, :cond_15

    .line 898
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionPinMessage;

    if-eqz v0, :cond_15

    :cond_14
    :goto_a
    move-object/from16 v22, v9

    move/from16 v0, v26

    goto/16 :goto_13

    .line 901
    :cond_15
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->getFromChatId()J

    move-result-wide v0

    move-wide v14, v0

    goto :goto_b

    :cond_16
    move-wide/from16 v14, v24

    .line 903
    :goto_b
    invoke-direct {v7, v12}, Lorg/telegram/messenger/NotificationsController;->isPersonalMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 904
    iget v0, v7, Lorg/telegram/messenger/NotificationsController;->personalCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, v7, Lorg/telegram/messenger/NotificationsController;->personalCount:I

    .line 908
    :cond_17
    invoke-static {v14, v15}, Lorg/telegram/messenger/DialogObject;->isChatDialog(J)Z

    .line 909
    invoke-virtual {v9, v14, v15}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result v0

    if-ltz v0, :cond_18

    if-nez v13, :cond_18

    .line 912
    invoke-virtual {v9, v0}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_d

    .line 914
    :cond_18
    invoke-direct {v7, v10, v14, v15, v13}, Lorg/telegram/messenger/NotificationsController;->getNotifyOverride(Landroid/content/SharedPreferences;JI)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_19

    .line 916
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

    .line 924
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

    .line 929
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

    .line 932
    iget-object v1, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->from_scheduled:Z

    move/from16 v17, v1

    .line 934
    :cond_1c
    iget-object v1, v7, Lorg/telegram/messenger/NotificationsController;->delayedPushMessages:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 935
    invoke-direct {v7, v12}, Lorg/telegram/messenger/NotificationsController;->appendMessage(Lorg/telegram/messenger/MessageObject;)V

    if-eqz v11, :cond_1e

    if-nez v18, :cond_1d

    .line 938
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 939
    iget-object v1, v7, Lorg/telegram/messenger/NotificationsController;->pushMessagesDict:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1, v8, v9, v2}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_f

    :cond_1d
    move-object/from16 v2, v18

    .line 941
    :goto_f
    invoke-virtual {v2, v11, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_10

    :cond_1e
    cmp-long v1, v27, v19

    if-eqz v1, :cond_1f

    .line 943
    iget-object v1, v7, Lorg/telegram/messenger/NotificationsController;->fcmRandomMessagesDict:Landroidx/collection/LongSparseArray;

    move-wide/from16 v2, v27

    invoke-virtual {v1, v2, v3, v12}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_1f
    :goto_10
    cmp-long v1, v24, v14

    if-eqz v1, :cond_22

    .line 946
    iget-object v1, v7, Lorg/telegram/messenger/NotificationsController;->pushDialogsOverrideMention:Landroidx/collection/LongSparseArray;

    move-wide/from16 v2, v24

    invoke-virtual {v1, v2, v3}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 947
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

    .line 950
    :cond_22
    :goto_12
    iget-boolean v1, v12, Lorg/telegram/messenger/MessageObject;->isReactionPush:Z

    if-eqz v1, :cond_23

    .line 951
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    const/4 v2, 0x1

    .line 952
    invoke-virtual {v1, v11, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 953
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

    .line 958
    iput-boolean v0, v7, Lorg/telegram/messenger/NotificationsController;->notifyCheck:Z

    .line 961
    :cond_25
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_26

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->needShowPasscode()Z

    move-result v0

    if-nez v0, :cond_26

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->isWaitingForPasscodeEnter:Z

    if-nez v0, :cond_26

    .line 963
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

    .line 980
    iget-object v0, v7, Lorg/telegram/messenger/NotificationsController;->delayedPushMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 981
    iget-boolean v0, v7, Lorg/telegram/messenger/NotificationsController;->notifyCheck:Z

    invoke-direct {v7, v0}, Lorg/telegram/messenger/NotificationsController;->showOrUpdateNotification(Z)V

    goto/16 :goto_1a

    :cond_28
    if-eqz v15, :cond_34

    move-object/from16 v0, p1

    const/4 v2, 0x0

    .line 983
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    .line 984
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v2

    .line 985
    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Lorg/telegram/messenger/MessagesController;->isForum(J)Z

    move-result v5

    invoke-static {v4, v5}, Lorg/telegram/messenger/MessageObject;->getTopicId(Lorg/telegram/tgnet/TLRPC$Message;Z)I

    move-result v4

    .line 987
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isFcmMessage()Z

    move-result v5

    if-eqz v5, :cond_29

    .line 988
    iget-boolean v0, v0, Lorg/telegram/messenger/MessageObject;->localChannel:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_14

    :cond_29
    const/4 v0, 0x0

    .line 992
    :goto_14
    iget v5, v7, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    .line 994
    invoke-direct {v7, v10, v2, v3, v4}, Lorg/telegram/messenger/NotificationsController;->getNotifyOverride(Landroid/content/SharedPreferences;JI)I

    move-result v4

    const/4 v1, -0x1

    if-ne v4, v1, :cond_2a

    .line 997
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

    .line 1002
    :goto_15
    iget-object v0, v7, Lorg/telegram/messenger/NotificationsController;->pushDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, v2, v3}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_2c

    .line 1003
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v6, 0x1

    add-int/2addr v4, v6

    goto :goto_16

    :cond_2c
    const/4 v6, 0x1

    move v4, v6

    .line 1005
    :goto_16
    iget-boolean v8, v7, Lorg/telegram/messenger/NotificationsController;->notifyCheck:Z

    if-eqz v8, :cond_2d

    if-nez v1, :cond_2d

    .line 1006
    iget-object v8, v7, Lorg/telegram/messenger/NotificationsController;->pushDialogsOverrideMention:Landroidx/collection/LongSparseArray;

    invoke-virtual {v8, v2, v3}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    if-eqz v8, :cond_2d

    .line 1007
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eqz v9, :cond_2d

    .line 1009
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move v1, v6

    :cond_2d
    if-eqz v1, :cond_32

    .line 1014
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->isForum(J)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 1015
    iget v1, v7, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_2e

    move v0, v6

    goto :goto_17

    :cond_2e
    const/4 v0, 0x0

    :goto_17
    sub-int/2addr v1, v0

    iput v1, v7, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    if-lez v4, :cond_2f

    move v11, v6

    goto :goto_18

    :cond_2f
    const/4 v11, 0x0

    :goto_18
    add-int/2addr v1, v11

    .line 1016
    iput v1, v7, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    goto :goto_19

    :cond_30
    if-eqz v0, :cond_31

    .line 1019
    iget v1, v7, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr v1, v0

    iput v1, v7, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    .line 1021
    :cond_31
    iget v0, v7, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    add-int/2addr v0, v4

    iput v0, v7, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    .line 1023
    :goto_19
    iget-object v0, v7, Lorg/telegram/messenger/NotificationsController;->pushDialogs:Landroidx/collection/LongSparseArray;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1025
    :cond_32
    iget v0, v7, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    if-eq v5, v0, :cond_33

    .line 1026
    iget-object v0, v7, Lorg/telegram/messenger/NotificationsController;->delayedPushMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1027
    iget-boolean v0, v7, Lorg/telegram/messenger/NotificationsController;->notifyCheck:Z

    invoke-direct {v7, v0}, Lorg/telegram/messenger/NotificationsController;->showOrUpdateNotification(Z)V

    .line 1028
    iget-object v0, v7, Lorg/telegram/messenger/NotificationsController;->pushDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->size()I

    move-result v0

    .line 1029
    new-instance v1, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda21;

    invoke-direct {v1, v7, v0}, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/messenger/NotificationsController;I)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_33
    const/4 v0, 0x0

    .line 1034
    iput-boolean v0, v7, Lorg/telegram/messenger/NotificationsController;->notifyCheck:Z

    .line 1035
    iget-boolean v0, v7, Lorg/telegram/messenger/NotificationsController;->showBadgeNumber:Z

    if-eqz v0, :cond_34

    .line 1036
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/NotificationsController;->getTotalAllUnreadCount()I

    move-result v0

    invoke-direct {v7, v0}, Lorg/telegram/messenger/NotificationsController;->setBadge(I)V

    :cond_34
    :goto_1a
    if-eqz p5, :cond_35

    .line 1041
    invoke-virtual/range {p5 .. p5}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_35
    return-void
.end method

.method private synthetic lambda$processReadMessages$13(Ljava/util/ArrayList;)V
    .locals 5

    .line 729
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 730
    iget-object v3, p0, Lorg/telegram/messenger/NotificationsController;->popupMessages:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 732
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

    .line 652
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/support/LongSparseIntArray;->size()I

    move-result v10

    if-ge v9, v10, :cond_5

    .line 653
    invoke-virtual {v1, v9}, Lorg/telegram/messenger/support/LongSparseIntArray;->keyAt(I)J

    move-result-wide v10

    .line 654
    invoke-virtual {v1, v10, v11}, Lorg/telegram/messenger/support/LongSparseIntArray;->get(J)I

    move-result v12

    const/4 v13, 0x0

    .line 655
    :goto_1
    iget-object v14, v0, Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v13, v14, :cond_4

    .line 656
    iget-object v14, v0, Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/messenger/MessageObject;

    .line 657
    iget-object v15, v14, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-boolean v15, v15, Lorg/telegram/tgnet/TLRPC$Message;->from_scheduled:Z

    if-nez v15, :cond_3

    invoke-virtual {v14}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v15

    cmp-long v15, v15, v10

    if-nez v15, :cond_3

    invoke-virtual {v14}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v15

    if-gt v15, v12, :cond_3

    .line 658
    invoke-direct {v0, v14}, Lorg/telegram/messenger/NotificationsController;->isPersonalMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 659
    iget v15, v0, Lorg/telegram/messenger/NotificationsController;->personalCount:I

    sub-int/2addr v15, v8

    iput v15, v0, Lorg/telegram/messenger/NotificationsController;->personalCount:I

    .line 661
    :cond_0
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 663
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

    .line 668
    :goto_2
    iget-object v15, v0, Lorg/telegram/messenger/NotificationsController;->pushMessagesDict:Landroidx/collection/LongSparseArray;

    invoke-virtual {v15, v8, v9}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/SparseArray;

    if-eqz v15, :cond_2

    .line 670
    invoke-virtual {v14}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    invoke-virtual {v15, v5}, Landroid/util/SparseArray;->remove(I)V

    .line 671
    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-nez v5, :cond_2

    .line 672
    iget-object v5, v0, Lorg/telegram/messenger/NotificationsController;->pushMessagesDict:Landroidx/collection/LongSparseArray;

    invoke-virtual {v5, v8, v9}, Landroidx/collection/LongSparseArray;->remove(J)V

    .line 675
    :cond_2
    iget-object v5, v0, Lorg/telegram/messenger/NotificationsController;->delayedPushMessages:Ljava/util/ArrayList;

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 676
    iget-object v5, v0, Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v13, v13, -0x1

    goto :goto_3

    :cond_3
    move/from16 v17, v9

    :goto_3
    const/4 v5, 0x1

    add-int/2addr v13, v5

    move v8, v5

    move/from16 v9, v17

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

    .line 683
    :goto_4
    iget-object v5, v0, Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_f

    .line 684
    iget-object v5, v0, Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/MessageObject;

    .line 685
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v8

    cmp-long v8, v8, p3

    if-nez v8, :cond_e

    if-eqz v4, :cond_8

    .line 688
    iget-object v8, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    if-gt v8, v4, :cond_a

    :cond_7
    :goto_5
    const/4 v8, 0x1

    goto :goto_6

    :cond_8
    if-nez p7, :cond_9

    .line 693
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v8

    if-le v8, v3, :cond_7

    if-gez v3, :cond_a

    goto :goto_5

    .line 697
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

    .line 703
    invoke-direct {v0, v5}, Lorg/telegram/messenger/NotificationsController;->isPersonalMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 704
    iget v8, v0, Lorg/telegram/messenger/NotificationsController;->personalCount:I

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    iput v8, v0, Lorg/telegram/messenger/NotificationsController;->personalCount:I

    .line 707
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

    .line 712
    :goto_7
    iget-object v10, v0, Lorg/telegram/messenger/NotificationsController;->pushMessagesDict:Landroidx/collection/LongSparseArray;

    invoke-virtual {v10, v8, v9}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/SparseArray;

    if-eqz v10, :cond_d

    .line 714
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->remove(I)V

    .line 715
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v10

    if-nez v10, :cond_d

    .line 716
    iget-object v10, v0, Lorg/telegram/messenger/NotificationsController;->pushMessagesDict:Landroidx/collection/LongSparseArray;

    invoke-virtual {v10, v8, v9}, Landroidx/collection/LongSparseArray;->remove(J)V

    .line 719
    :cond_d
    iget-object v8, v0, Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 720
    iget-object v8, v0, Lorg/telegram/messenger/NotificationsController;->delayedPushMessages:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 721
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    :cond_e
    const/4 v5, 0x1

    add-int/2addr v1, v5

    goto :goto_4

    .line 727
    :cond_f
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_10

    .line 728
    new-instance v1, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda32;

    invoke-direct {v1, v0, v2}, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda32;-><init>(Lorg/telegram/messenger/NotificationsController;Ljava/util/ArrayList;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_10
    return-void
.end method

.method private synthetic lambda$removeDeletedHisoryFromNotifications$10(Ljava/util/ArrayList;)V
    .locals 5

    .line 622
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 623
    iget-object v3, p0, Lorg/telegram/messenger/NotificationsController;->popupMessages:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 625
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

    .line 637
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

    .line 638
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
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 567
    iget v3, v0, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    .line 568
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/AccountInstance;->getNotificationsSettings()Landroid/content/SharedPreferences;

    const/4 v4, 0x0

    .line 576
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move v6, v4

    .line 570
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/support/LongSparseIntArray;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ge v6, v7, :cond_c

    .line 571
    invoke-virtual {v1, v6}, Lorg/telegram/messenger/support/LongSparseIntArray;->keyAt(I)J

    move-result-wide v9

    neg-long v11, v9

    .line 573
    invoke-virtual {v1, v9, v10}, Lorg/telegram/messenger/support/LongSparseIntArray;->get(J)I

    move-result v7

    int-to-long v9, v7

    .line 574
    iget-object v7, v0, Lorg/telegram/messenger/NotificationsController;->pushDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v7, v11, v12}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    if-nez v7, :cond_0

    move-object v7, v5

    :cond_0
    move v13, v4

    move-object v14, v7

    .line 580
    :goto_1
    iget-object v15, v0, Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v13, v15, :cond_5

    .line 581
    iget-object v15, v0, Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;

    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/telegram/messenger/MessageObject;

    .line 582
    invoke-virtual {v15}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v16

    cmp-long v16, v16, v11

    if-nez v16, :cond_3

    invoke-virtual {v15}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    move-object/from16 v17, v5

    int-to-long v4, v4

    cmp-long v4, v4, v9

    if-gtz v4, :cond_4

    .line 583
    iget-object v4, v0, Lorg/telegram/messenger/NotificationsController;->pushMessagesDict:Landroidx/collection/LongSparseArray;

    invoke-virtual {v4, v11, v12}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    if-eqz v4, :cond_1

    .line 585
    invoke-virtual {v15}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->remove(I)V

    .line 586
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 587
    iget-object v4, v0, Lorg/telegram/messenger/NotificationsController;->pushMessagesDict:Landroidx/collection/LongSparseArray;

    invoke-virtual {v4, v11, v12}, Landroidx/collection/LongSparseArray;->remove(J)V

    .line 590
    :cond_1
    iget-object v4, v0, Lorg/telegram/messenger/NotificationsController;->delayedPushMessages:Ljava/util/ArrayList;

    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 591
    iget-object v4, v0, Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;

    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, -0x1

    .line 593
    invoke-direct {v0, v15}, Lorg/telegram/messenger/NotificationsController;->isPersonalMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 594
    iget v4, v0, Lorg/telegram/messenger/NotificationsController;->personalCount:I

    sub-int/2addr v4, v8

    iput v4, v0, Lorg/telegram/messenger/NotificationsController;->personalCount:I

    .line 596
    :cond_2
    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 597
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

    .line 601
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-gtz v4, :cond_6

    .line 603
    iget-object v4, v0, Lorg/telegram/messenger/NotificationsController;->smartNotificationsDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v4, v11, v12}, Landroidx/collection/LongSparseArray;->remove(J)V

    move-object/from16 v14, v17

    .line 605
    :cond_6
    invoke-virtual {v14, v7}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 606
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-virtual {v4, v11, v12}, Lorg/telegram/messenger/MessagesController;->isForum(J)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 607
    iget v4, v0, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lez v5, :cond_7

    move v5, v8

    goto :goto_3

    :cond_7
    const/4 v5, 0x0

    :goto_3
    sub-int/2addr v4, v5

    iput v4, v0, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    .line 608
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

    .line 610
    :cond_9
    iget v4, v0, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v0, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    .line 611
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v0, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    .line 613
    :goto_5
    iget-object v4, v0, Lorg/telegram/messenger/NotificationsController;->pushDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v4, v11, v12, v14}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 615
    :cond_a
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_b

    .line 616
    iget-object v4, v0, Lorg/telegram/messenger/NotificationsController;->pushDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v4, v11, v12}, Landroidx/collection/LongSparseArray;->remove(J)V

    .line 617
    iget-object v4, v0, Lorg/telegram/messenger/NotificationsController;->pushDialogsOverrideMention:Landroidx/collection/LongSparseArray;

    invoke-virtual {v4, v11, v12}, Landroidx/collection/LongSparseArray;->remove(J)V

    :cond_b
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v5, v17

    const/4 v4, 0x0

    goto/16 :goto_0

    .line 620
    :cond_c
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 621
    new-instance v1, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda30;

    invoke-direct {v1, v0, v2}, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda30;-><init>(Lorg/telegram/messenger/NotificationsController;Ljava/util/ArrayList;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 628
    :cond_d
    iget v1, v0, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    if-eq v3, v1, :cond_10

    .line 629
    iget-boolean v1, v0, Lorg/telegram/messenger/NotificationsController;->notifyCheck:Z

    if-nez v1, :cond_e

    .line 630
    iget-object v1, v0, Lorg/telegram/messenger/NotificationsController;->delayedPushMessages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 631
    iget-boolean v1, v0, Lorg/telegram/messenger/NotificationsController;->notifyCheck:Z

    invoke-direct {v0, v1}, Lorg/telegram/messenger/NotificationsController;->showOrUpdateNotification(Z)V

    goto :goto_7

    .line 633
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

    .line 635
    :goto_7
    iget-object v1, v0, Lorg/telegram/messenger/NotificationsController;->pushDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1}, Landroidx/collection/LongSparseArray;->size()I

    move-result v1

    .line 636
    new-instance v2, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda20;

    invoke-direct {v2, v0, v1}, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/messenger/NotificationsController;I)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_10
    const/4 v1, 0x0

    .line 641
    iput-boolean v1, v0, Lorg/telegram/messenger/NotificationsController;->notifyCheck:Z

    .line 642
    iget-boolean v1, v0, Lorg/telegram/messenger/NotificationsController;->showBadgeNumber:Z

    if-eqz v1, :cond_11

    .line 643
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/NotificationsController;->getTotalAllUnreadCount()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/telegram/messenger/NotificationsController;->setBadge(I)V

    :cond_11
    return-void
.end method

.method private synthetic lambda$removeDeletedMessagesFromNotifications$7(Ljava/util/ArrayList;)V
    .locals 5

    .line 538
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 539
    iget-object v3, p0, Lorg/telegram/messenger/NotificationsController;->popupMessages:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 541
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

    .line 553
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

    .line 554
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

    .line 482
    iget v3, v0, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    .line 483
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/AccountInstance;->getNotificationsSettings()Landroid/content/SharedPreferences;

    const/4 v4, 0x0

    .line 501
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move v6, v4

    .line 484
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroidx/collection/LongSparseArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_d

    .line 485
    invoke-virtual {v1, v6}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v9

    .line 486
    iget-object v7, v0, Lorg/telegram/messenger/NotificationsController;->pushMessagesDict:Landroidx/collection/LongSparseArray;

    invoke-virtual {v7, v9, v10}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/SparseArray;

    if-nez v7, :cond_0

    goto/16 :goto_9

    .line 490
    :cond_0
    invoke-virtual {v1, v9, v10}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    .line 491
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    move v13, v4

    :goto_1
    if-ge v13, v12, :cond_b

    .line 492
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 493
    invoke-virtual {v7, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/telegram/messenger/MessageObject;

    if-eqz v15, :cond_a

    if-eqz p2, :cond_1

    .line 495
    iget-boolean v4, v15, Lorg/telegram/messenger/MessageObject;->isReactionPush:Z

    if-nez v4, :cond_1

    goto/16 :goto_7

    :cond_1
    move-wide/from16 v16, v9

    .line 498
    invoke-virtual {v15}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v8

    .line 499
    iget-object v10, v0, Lorg/telegram/messenger/NotificationsController;->pushDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v10, v8, v9}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    if-nez v10, :cond_2

    move-object v10, v5

    .line 503
    :cond_2
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v18

    const/4 v4, 0x1

    add-int/lit8 v18, v18, -0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    .line 504
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v19

    if-gtz v19, :cond_3

    .line 506
    iget-object v4, v0, Lorg/telegram/messenger/NotificationsController;->smartNotificationsDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v4, v8, v9}, Landroidx/collection/LongSparseArray;->remove(J)V

    move-object v4, v5

    goto :goto_2

    :cond_3
    move-object/from16 v4, v18

    .line 508
    :goto_2
    invoke-virtual {v4, v10}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_7

    .line 509
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Lorg/telegram/messenger/MessagesController;->isForum(J)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 510
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

    .line 511
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

    .line 513
    :cond_6
    iget v1, v0, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    sub-int/2addr v1, v10

    iput v1, v0, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    .line 514
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v10

    add-int/2addr v1, v10

    iput v1, v0, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    .line 516
    :goto_5
    iget-object v1, v0, Lorg/telegram/messenger/NotificationsController;->pushDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1, v8, v9, v4}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 518
    :cond_7
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_8

    .line 519
    iget-object v1, v0, Lorg/telegram/messenger/NotificationsController;->pushDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1, v8, v9}, Landroidx/collection/LongSparseArray;->remove(J)V

    .line 520
    iget-object v1, v0, Lorg/telegram/messenger/NotificationsController;->pushDialogsOverrideMention:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1, v8, v9}, Landroidx/collection/LongSparseArray;->remove(J)V

    .line 523
    :cond_8
    invoke-virtual {v7, v14}, Landroid/util/SparseArray;->remove(I)V

    .line 524
    iget-object v1, v0, Lorg/telegram/messenger/NotificationsController;->delayedPushMessages:Ljava/util/ArrayList;

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 525
    iget-object v1, v0, Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 526
    invoke-direct {v0, v15}, Lorg/telegram/messenger/NotificationsController;->isPersonalMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 527
    iget v1, v0, Lorg/telegram/messenger/NotificationsController;->personalCount:I

    const/4 v4, 0x1

    sub-int/2addr v1, v4

    iput v1, v0, Lorg/telegram/messenger/NotificationsController;->personalCount:I

    goto :goto_6

    :cond_9
    const/4 v4, 0x1

    .line 529
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

    .line 532
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_c

    .line 533
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

    .line 536
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_e

    .line 537
    new-instance v1, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda29;

    invoke-direct {v1, v0, v2}, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda29;-><init>(Lorg/telegram/messenger/NotificationsController;Ljava/util/ArrayList;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 544
    :cond_e
    iget v1, v0, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    if-eq v3, v1, :cond_11

    .line 545
    iget-boolean v1, v0, Lorg/telegram/messenger/NotificationsController;->notifyCheck:Z

    if-nez v1, :cond_f

    .line 546
    iget-object v1, v0, Lorg/telegram/messenger/NotificationsController;->delayedPushMessages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 547
    iget-boolean v1, v0, Lorg/telegram/messenger/NotificationsController;->notifyCheck:Z

    invoke-direct {v0, v1}, Lorg/telegram/messenger/NotificationsController;->showOrUpdateNotification(Z)V

    goto :goto_b

    .line 549
    :cond_f
    iget v1, v0, Lorg/telegram/messenger/NotificationsController;->lastOnlineFromOtherDevice:I

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v2

    if-le v1, v2, :cond_10

    move v8, v4

    goto :goto_a

    :cond_10
    const/4 v8, 0x0

    :goto_a
    invoke-direct {v0, v8}, Lorg/telegram/messenger/NotificationsController;->scheduleNotificationDelay(Z)V

    .line 551
    :goto_b
    iget-object v1, v0, Lorg/telegram/messenger/NotificationsController;->pushDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1}, Landroidx/collection/LongSparseArray;->size()I

    move-result v1

    .line 552
    new-instance v2, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda16;

    invoke-direct {v2, v0, v1}, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/messenger/NotificationsController;I)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_11
    const/4 v1, 0x0

    .line 557
    iput-boolean v1, v0, Lorg/telegram/messenger/NotificationsController;->notifyCheck:Z

    .line 558
    iget-boolean v1, v0, Lorg/telegram/messenger/NotificationsController;->showBadgeNumber:Z

    if-eqz v1, :cond_12

    .line 559
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/NotificationsController;->getTotalAllUnreadCount()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/telegram/messenger/NotificationsController;->setBadge(I)V

    :cond_12
    return-void
.end method

.method private synthetic lambda$repeatNotificationMaybe$30()V
    .locals 2

    .line 2838
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-lt v0, v1, :cond_0

    const/16 v1, 0x16

    if-gt v0, v1, :cond_0

    .line 2840
    sget-object v0, Lorg/telegram/messenger/NotificationsController;->notificationManager:Landroidx/core/app/NotificationManagerCompat;

    iget v1, p0, Lorg/telegram/messenger/NotificationsController;->notificationId:I

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationManagerCompat;->cancel(I)V

    const/4 v0, 0x1

    .line 2841
    invoke-direct {p0, v0}, Lorg/telegram/messenger/NotificationsController;->showOrUpdateNotification(Z)V

    goto :goto_0

    .line 2843
    :cond_0
    invoke-direct {p0}, Lorg/telegram/messenger/NotificationsController;->scheduleNotificationRepeat()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$setLastOnlineFromOtherDevice$4(I)V
    .locals 2

    .line 425
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    .line 426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set last online from other device = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 428
    :cond_0
    iput p1, p0, Lorg/telegram/messenger/NotificationsController;->lastOnlineFromOtherDevice:I

    return-void
.end method

.method private synthetic lambda$setOpenedDialogId$2(JI)V
    .locals 0

    .line 408
    iput-wide p1, p0, Lorg/telegram/messenger/NotificationsController;->openedDialogId:J

    .line 409
    iput p3, p0, Lorg/telegram/messenger/NotificationsController;->openedTopicId:I

    return-void
.end method

.method private synthetic lambda$setOpenedInBubble$3(ZJ)V
    .locals 0

    if-eqz p1, :cond_0

    .line 416
    iget-object p1, p0, Lorg/telegram/messenger/NotificationsController;->openedInBubbleDialogs:Ljava/util/HashSet;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 418
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

    .line 4534
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    if-eqz p1, :cond_0

    .line 4536
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method private synthetic lambda$showNotifications$25()V
    .locals 1

    const/4 v0, 0x0

    .line 2733
    invoke-direct {p0, v0}, Lorg/telegram/messenger/NotificationsController;->showOrUpdateNotification(Z)V

    return-void
.end method

.method private synthetic lambda$updateBadge$24()V
    .locals 1

    .line 1433
    invoke-direct {p0}, Lorg/telegram/messenger/NotificationsController;->getTotalAllUnreadCount()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/telegram/messenger/NotificationsController;->setBadge(I)V

    return-void
.end method

.method private static synthetic lambda$updateServerNotificationsSettings$39(Ljava/lang/Runnable;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    if-nez p3, :cond_0

    if-eqz p0, :cond_1

    .line 4966
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 4970
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    :goto_0
    return-void
.end method

.method private static synthetic lambda$updateServerNotificationsSettings$40(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    return-void
.end method

.method public static loadRoundAvatar(Ljava/io/File;Landroidx/core/app/Person$Builder;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 4766
    :try_start_0
    invoke-static {p0}, Landroid/graphics/ImageDecoder;->createSource(Ljava/io/File;)Landroid/graphics/ImageDecoder$Source;

    move-result-object p0

    sget-object v0, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda0;->INSTANCE:Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda0;

    invoke-static {p0, v0}, Landroid/graphics/ImageDecoder;->decodeBitmap(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 4779
    invoke-static {p0}, Landroidx/core/graphics/drawable/IconCompat;->createWithBitmap(Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p0

    .line 4780
    invoke-virtual {p1, p0}, Landroidx/core/app/Person$Builder;->setIcon(Landroidx/core/graphics/drawable/IconCompat;)Landroidx/core/app/Person$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method private playInChatSound()V
    .locals 4

    .line 2768
    iget-boolean v0, p0, Lorg/telegram/messenger/NotificationsController;->inChatSoundEnabled:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->isRecordingAudio()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2772
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

    .line 2776
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2780
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getNotificationsSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2781
    iget-wide v1, p0, Lorg/telegram/messenger/NotificationsController;->openedDialogId:J

    iget v3, p0, Lorg/telegram/messenger/NotificationsController;->openedTopicId:I

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/telegram/messenger/NotificationsController;->getNotifyOverride(Landroid/content/SharedPreferences;JI)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    return-void

    .line 2785
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

    .line 2818
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private replaceSpoilers(Lorg/telegram/messenger/MessageObject;)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 2019
    iget-object v1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-nez v1, :cond_0

    goto :goto_2

    .line 2022
    :cond_0
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 2023
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    goto :goto_2

    .line 2026
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    move v2, v1

    .line 2027
    :goto_0
    iget-object v3, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 2028
    iget-object v3, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageEntitySpoiler;

    if-eqz v3, :cond_2

    .line 2029
    iget-object v3, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_messageEntitySpoiler;

    move v4, v1

    .line 2030
    :goto_1
    iget v5, v3, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    if-ge v4, v5, :cond_2

    .line 2031
    iget v5, v3, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    add-int/2addr v5, v4

    iget-object v6, p0, Lorg/telegram/messenger/NotificationsController;->spoilerChars:[C

    array-length v7, v6

    rem-int v7, v4, v7

    aget-char v6, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2035
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_2
    return-object v0
.end method

.method private resetNotificationSound(Landroidx/core/app/NotificationCompat$Builder;JILjava/lang/String;[JILandroid/net/Uri;IZZZI)V
    .locals 14

    move-object v13, p0

    move/from16 v12, p13

    .line 4032
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    if-eqz v0, :cond_5

    if-eqz p8, :cond_5

    .line 4033
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p8 .. p8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 4034
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/AccountInstance;->getNotificationsSettings()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 4035
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 4037
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4038
    sget v2, Lorg/telegram/messenger/R$string;->DefaultRingtone:I

    const-string v3, "DefaultRingtone"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    if-eqz p10, :cond_4

    const/4 v4, 0x2

    if-ne v12, v4, :cond_0

    const-string v5, "ChannelSound"

    .line 4041
    invoke-interface {v1, v5, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_0
    if-nez v12, :cond_1

    const-string v5, "GroupSound"

    .line 4043
    invoke-interface {v1, v5, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_1
    const-string v5, "GlobalSound"

    .line 4045
    invoke-interface {v1, v5, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_0
    if-ne v12, v4, :cond_2

    const-string v2, "ChannelSoundPath"

    .line 4048
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    :cond_2
    if-nez v12, :cond_3

    const-string v2, "GroupSoundPath"

    .line 4050
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    :cond_3
    const-string v2, "GlobalSoundPath"

    .line 4052
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4054
    :goto_1
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationsController()Lorg/telegram/messenger/NotificationsController;

    move-result-object v0

    invoke-virtual {v0, v12, v3}, Lorg/telegram/messenger/NotificationsController;->deleteNotificationChannelGlobalInternal(II)V

    move-wide/from16 v4, p2

    move/from16 v6, p4

    goto :goto_2

    .line 4056
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

    .line 4057
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

    .line 4058
    invoke-direct {p0, v4, v5, v6, v3}, Lorg/telegram/messenger/NotificationsController;->deleteNotificationChannelInternal(JII)V

    .line 4060
    :goto_2
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4061
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

    .line 4062
    invoke-direct/range {v0 .. v12}, Lorg/telegram/messenger/NotificationsController;->validateChannelId(JILjava/lang/String;[JILandroid/net/Uri;IZZZI)Ljava/lang/String;

    move-result-object v0

    move-object v1, p1

    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setChannelId(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    .line 4063
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

    .line 2824
    :try_start_0
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    .line 2825
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delay notification start, onlineReason = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 2827
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController;->notificationDelayWakelock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 2828
    sget-object v0, Lorg/telegram/messenger/NotificationsController;->notificationsQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v1, p0, Lorg/telegram/messenger/NotificationsController;->notificationDelayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    .line 2829
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

    .line 2831
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2832
    iget-boolean p1, p0, Lorg/telegram/messenger/NotificationsController;->notifyCheck:Z

    invoke-direct {p0, p1}, Lorg/telegram/messenger/NotificationsController;->showOrUpdateNotification(Z)V

    :goto_1
    return-void
.end method

.method private scheduleNotificationRepeat()V
    .locals 9

    .line 2698
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v2, Lorg/telegram/messenger/NotificationRepeat;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "currentAccount"

    .line 2699
    iget v2, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2700
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x2000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 2701
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/AccountInstance;->getNotificationsSettings()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "repeat_messages"

    const/16 v3, 0x3c

    .line 2702
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    .line 2703
    iget v2, p0, Lorg/telegram/messenger/NotificationsController;->personalCount:I

    if-lez v2, :cond_0

    .line 2704
    iget-object v2, p0, Lorg/telegram/messenger/NotificationsController;->alarmManager:Landroid/app/AlarmManager;

    const/4 v4, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    mul-int/2addr v1, v3

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v7, v1

    add-long/2addr v5, v7

    invoke-virtual {v2, v4, v5, v6, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 2706
    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/NotificationsController;->alarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2709
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private setBadge(I)V
    .locals 1

    .line 1437
    iget v0, p0, Lorg/telegram/messenger/NotificationsController;->lastBadgeCount:I

    if-ne v0, p1, :cond_0

    return-void

    .line 1440
    :cond_0
    iput p1, p0, Lorg/telegram/messenger/NotificationsController;->lastBadgeCount:I

    .line 1441
    invoke-static {p1}, Lorg/telegram/messenger/NotificationBadge;->applyCount(I)Z

    return-void
.end method

.method private setNotificationChannel(Landroid/app/Notification;Landroidx/core/app/NotificationCompat$Builder;Z)V
    .locals 0

    if-eqz p3, :cond_0

    .line 4025
    sget-object p1, Lorg/telegram/messenger/NotificationsController;->OTHER_NOTIFICATIONS_CHANNEL:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroidx/core/app/NotificationCompat$Builder;->setChannelId(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_0

    .line 4027
    :cond_0
    invoke-virtual {p1}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/core/app/NotificationCompat$Builder;->setChannelId(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    :goto_0
    return-void
.end method

.method private showExtraNotifications(Landroidx/core/app/NotificationCompat$Builder;Ljava/lang/String;JILjava/lang/String;[JILandroid/net/Uri;IZZZI)V
    .locals 71

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    .line 4069
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

    .line 4070
    invoke-direct/range {v1 .. v13}, Lorg/telegram/messenger/NotificationsController;->validateChannelId(JILjava/lang/String;[JILandroid/net/Uri;IZZZI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Landroidx/core/app/NotificationCompat$Builder;->setChannelId(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    .line 4072
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v13

    const/16 v1, 0x12

    if-ge v0, v1, :cond_2

    .line 4074
    sget-object v0, Lorg/telegram/messenger/NotificationsController;->notificationManager:Landroidx/core/app/NotificationManagerCompat;

    iget v1, v15, Lorg/telegram/messenger/NotificationsController;->notificationId:I

    invoke-virtual {v0, v1, v13}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    .line 4075
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "show summary notification by SDK check"

    .line 4076
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_1
    return-void

    .line 4081
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getNotificationsSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 4083
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 4084
    new-instance v11, Landroidx/collection/LongSparseArray;

    invoke-direct {v11}, Landroidx/collection/LongSparseArray;-><init>()V

    const/4 v10, 0x0

    move v1, v10

    .line 4085
    :goto_0
    iget-object v2, v15, Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v9, 0x0

    if-ge v1, v2, :cond_5

    .line 4086
    iget-object v2, v15, Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    .line 4087
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v3

    .line 4088
    iget-object v5, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    invoke-virtual {v6, v2}, Lorg/telegram/messenger/MessagesController;->isForum(Lorg/telegram/messenger/MessageObject;)Z

    move-result v6

    invoke-static {v5, v6}, Lorg/telegram/messenger/MessageObject;->getTopicId(Lorg/telegram/tgnet/TLRPC$Message;Z)I

    move-result v5

    .line 4089
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dismissDate"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 4090
    iget-object v7, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    if-gt v7, v6, :cond_3

    goto :goto_1

    .line 4094
    :cond_3
    invoke-virtual {v11, v3, v4}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    if-nez v6, :cond_4

    .line 4096
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 4097
    invoke-virtual {v11, v3, v4, v6}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 4098
    new-instance v7, Lorg/telegram/messenger/NotificationsController$DialogKey;

    invoke-direct {v7, v3, v4, v5, v9}, Lorg/telegram/messenger/NotificationsController$DialogKey;-><init>(JILorg/telegram/messenger/NotificationsController$1;)V

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4100
    :cond_4
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4103
    :cond_5
    new-instance v8, Landroidx/collection/LongSparseArray;

    invoke-direct {v8}, Landroidx/collection/LongSparseArray;-><init>()V

    move v0, v10

    .line 4104
    :goto_2
    iget-object v1, v15, Lorg/telegram/messenger/NotificationsController;->wearNotificationsIds:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1}, Landroidx/collection/LongSparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 4105
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

    .line 4107
    :cond_6
    iget-object v0, v15, Lorg/telegram/messenger/NotificationsController;->wearNotificationsIds:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->clear()V

    .line 4141
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 4143
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1b

    const/4 v4, 0x1

    if-le v0, v6, :cond_8

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v4, :cond_7

    goto :goto_3

    :cond_7
    move v5, v10

    goto :goto_4

    :cond_8
    :goto_3
    move v5, v4

    :goto_4
    const/16 v2, 0x1a

    if-eqz v5, :cond_9

    if-lt v0, v2, :cond_9

    .line 4145
    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->checkOtherNotificationsChannel()V

    .line 4148
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v2

    .line 4149
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->needShowPasscode()Z

    move-result v0

    if-nez v0, :cond_b

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->isWaitingForPasscodeEnter:Z

    if-eqz v0, :cond_a

    goto :goto_5

    :cond_a
    move/from16 v22, v10

    goto :goto_6

    :cond_b
    :goto_5
    move/from16 v22, v4

    .line 4150
    :goto_6
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    const/4 v1, 0x7

    .line 4153
    new-instance v6, Landroidx/collection/LongSparseArray;

    invoke-direct {v6}, Landroidx/collection/LongSparseArray;-><init>()V

    .line 4154
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v4, v10

    :goto_7
    if-ge v4, v9, :cond_7a

    .line 4155
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v1, :cond_c

    goto/16 :goto_46

    .line 4158
    :cond_c
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/NotificationsController$DialogKey;

    move-object/from16 v20, v12

    move-object/from16 v19, v13

    .line 4159
    iget-wide v12, v0, Lorg/telegram/messenger/NotificationsController$DialogKey;->dialogId:J

    .line 4160
    iget v10, v0, Lorg/telegram/messenger/NotificationsController$DialogKey;->topicId:I

    .line 4161
    invoke-virtual {v11, v12, v13}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/ArrayList;

    move/from16 v25, v4

    const/4 v4, 0x0

    .line 4162
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    .line 4164
    invoke-virtual {v8, v12, v13}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    move-object/from16 v26, v7

    const/16 v7, 0x20

    if-nez v0, :cond_d

    long-to-int v0, v12

    shr-long v14, v12, v7

    long-to-int v14, v14

    add-int/2addr v0, v14

    .line 4166
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_8

    .line 4168
    :cond_d
    invoke-virtual {v8, v12, v13}, Landroidx/collection/LongSparseArray;->remove(J)V

    :goto_8
    move-object v15, v0

    const/4 v14, 0x0

    .line 4171
    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lorg/telegram/messenger/MessageObject;

    move-object/from16 v28, v8

    const/4 v0, 0x0

    const/4 v7, 0x0

    .line 4173
    :goto_9
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v0, v8, :cond_f

    .line 4174
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/messenger/MessageObject;

    iget-object v8, v8, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    if-ge v7, v8, :cond_e

    .line 4175
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/messenger/MessageObject;

    iget-object v7, v7, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 4188
    :cond_f
    invoke-static {v12, v13}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v0

    const-wide/32 v29, 0xbdb28

    const-wide/16 v31, 0x0

    if-nez v0, :cond_21

    cmp-long v0, v12, v29

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_a

    :cond_10
    const/4 v0, 0x0

    .line 4190
    :goto_a
    invoke-static {v12, v13}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v8

    if-eqz v8, :cond_17

    .line 4191
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    move/from16 v33, v9

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v8

    if-nez v8, :cond_12

    .line 4193
    invoke-virtual {v14}, Lorg/telegram/messenger/MessageObject;->isFcmMessage()Z

    move-result v9

    if-eqz v9, :cond_11

    .line 4194
    iget-object v9, v14, Lorg/telegram/messenger/MessageObject;->localName:Ljava/lang/String;

    move/from16 v35, v7

    move-object/from16 v36, v8

    goto :goto_b

    .line 4196
    :cond_11
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_19

    .line 4197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "not found user to show dialog notification "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->w(Ljava/lang/String;)V

    goto/16 :goto_e

    .line 4202
    :cond_12
    invoke-static {v8}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v34, v9

    .line 4203
    iget-object v9, v8, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v9, :cond_13

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v9, :cond_13

    move/from16 v35, v7

    move-object/from16 v36, v8

    iget-wide v7, v9, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    cmp-long v7, v7, v31

    if-eqz v7, :cond_14

    iget v7, v9, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    if-eqz v7, :cond_14

    move-object v7, v9

    move-object/from16 v9, v34

    goto :goto_c

    :cond_13
    move/from16 v35, v7

    move-object/from16 v36, v8

    :cond_14
    move-object/from16 v9, v34

    :goto_b
    const/4 v7, 0x0

    .line 4207
    :goto_c
    invoke-static {v12, v13}, Lorg/telegram/messenger/UserObject;->isReplyUser(J)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 4208
    sget v8, Lorg/telegram/messenger/R$string;->RepliesTitle:I

    const-string v9, "RepliesTitle"

    invoke-static {v9, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    goto :goto_d

    :cond_15
    cmp-long v8, v12, v2

    if-nez v8, :cond_16

    .line 4210
    sget v8, Lorg/telegram/messenger/R$string;->MessageScheduledReminderNotification:I

    const-string v9, "MessageScheduledReminderNotification"

    invoke-static {v9, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    :cond_16
    :goto_d
    move/from16 v39, v4

    move-object v4, v9

    move-object/from16 v38, v14

    move-object/from16 v37, v15

    move-object/from16 v8, v36

    const/4 v9, 0x0

    const/16 v34, 0x0

    const/16 v36, 0x0

    move v15, v5

    goto/16 :goto_14

    :cond_17
    move/from16 v35, v7

    move/from16 v33, v9

    .line 4213
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    neg-long v8, v12

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v7

    if-nez v7, :cond_1a

    .line 4216
    invoke-virtual {v14}, Lorg/telegram/messenger/MessageObject;->isFcmMessage()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 4217
    invoke-virtual {v14}, Lorg/telegram/messenger/MessageObject;->isSupergroup()Z

    move-result v0

    .line 4218
    iget-object v9, v14, Lorg/telegram/messenger/MessageObject;->localName:Ljava/lang/String;

    .line 4219
    iget-boolean v8, v14, Lorg/telegram/messenger/MessageObject;->localChannel:Z

    move/from16 v34, v0

    move/from16 v39, v4

    move/from16 v36, v8

    move-object v4, v9

    move-object/from16 v38, v14

    move-object/from16 v37, v15

    const/4 v0, 0x0

    const/4 v8, 0x0

    move v15, v5

    move-object v9, v7

    const/4 v7, 0x0

    goto/16 :goto_14

    .line 4221
    :cond_18
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_19

    .line 4222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "not found chat to show dialog notification "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->w(Ljava/lang/String;)V

    :cond_19
    :goto_e
    move-object/from16 v14, p0

    move-wide/from16 v23, v2

    move-object/from16 v64, v6

    move-object/from16 v68, v19

    move-object/from16 v34, v20

    move/from16 v29, v25

    move-object/from16 v15, v26

    move-object/from16 v35, v28

    move/from16 v26, v33

    const/16 v21, 0x7

    const/16 v27, 0x1a

    const/16 v28, 0x0

    const/16 v30, 0x1

    const/16 v31, 0x1b

    const/16 v32, 0x0

    move/from16 v25, v5

    goto/16 :goto_13

    .line 4227
    :cond_1a
    iget-boolean v8, v7, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    .line 4228
    invoke-static {v7}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v9

    if-eqz v9, :cond_1b

    iget-boolean v9, v7, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v9, :cond_1b

    move/from16 v34, v8

    const/4 v9, 0x1

    goto :goto_f

    :cond_1b
    move/from16 v34, v8

    const/4 v9, 0x0

    .line 4229
    :goto_f
    iget-object v8, v7, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move/from16 v36, v9

    .line 4230
    iget-object v9, v7, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    if-eqz v9, :cond_1c

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v9, :cond_1c

    move-object/from16 v38, v14

    move-object/from16 v37, v15

    iget-wide v14, v9, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    cmp-long v14, v14, v31

    if-eqz v14, :cond_1d

    iget v14, v9, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    if-eqz v14, :cond_1d

    goto :goto_10

    :cond_1c
    move-object/from16 v38, v14

    move-object/from16 v37, v15

    :cond_1d
    const/4 v9, 0x0

    :goto_10
    if-eqz v10, :cond_1e

    .line 4235
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v14

    invoke-virtual {v14}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object v14

    move/from16 v39, v4

    move v15, v5

    iget-wide v4, v7, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {v14, v4, v5, v10}, Lorg/telegram/messenger/TopicsController;->findTopic(JI)Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    move-result-object v4

    if-eqz v4, :cond_1f

    .line 4237
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->title:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " in "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_11

    :cond_1e
    move/from16 v39, v4

    move v15, v5

    :cond_1f
    move-object v4, v8

    :goto_11
    if-eqz v0, :cond_20

    .line 4241
    invoke-static {v7}, Lorg/telegram/messenger/ChatObject;->canSendPlain(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    :cond_20
    const/4 v8, 0x0

    move-object/from16 v70, v9

    move-object v9, v7

    move-object/from16 v7, v70

    goto/16 :goto_14

    :cond_21
    move/from16 v39, v4

    move/from16 v35, v7

    move/from16 v33, v9

    move-object/from16 v38, v14

    move-object/from16 v37, v15

    move v15, v5

    .line 4247
    sget-wide v4, Lorg/telegram/messenger/NotificationsController;->globalSecretChatId:J

    cmp-long v0, v12, v4

    if-eqz v0, :cond_24

    .line 4248
    invoke-static {v12, v13}, Lorg/telegram/messenger/DialogObject;->getEncryptedChatId(J)I

    move-result v0

    .line 4249
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v4

    if-nez v4, :cond_23

    .line 4251
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_22

    .line 4252
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not found secret chat to show dialog notification "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->w(Ljava/lang/String;)V

    :cond_22
    :goto_12
    move-object/from16 v14, p0

    move-wide/from16 v23, v2

    move-object/from16 v64, v6

    move-object/from16 v68, v19

    move-object/from16 v34, v20

    move/from16 v29, v25

    move-object/from16 v35, v28

    const/16 v21, 0x7

    const/16 v27, 0x1a

    const/16 v28, 0x0

    const/16 v30, 0x1

    const/16 v31, 0x1b

    const/16 v32, 0x0

    move/from16 v25, v15

    move-object/from16 v15, v26

    move/from16 v26, v33

    :goto_13
    move-object/from16 v33, v11

    goto/16 :goto_45

    .line 4256
    :cond_23
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v7, v4, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-nez v0, :cond_25

    .line 4258
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_22

    .line 4259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "not found secret chat user to show dialog notification "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->w(Ljava/lang/String;)V

    goto :goto_12

    :cond_24
    const/4 v0, 0x0

    .line 4264
    :cond_25
    sget v4, Lorg/telegram/messenger/R$string;->SecretChatName:I

    const-string v5, "SecretChatName"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    move-object v8, v0

    move-object v4, v9

    const/4 v0, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/16 v34, 0x0

    const/16 v36, 0x0

    :goto_14
    const-string v5, "NotificationHiddenChatName"

    const-string v14, "NotificationHiddenName"

    if-eqz v22, :cond_27

    .line 4269
    invoke-static {v12, v13}, Lorg/telegram/messenger/DialogObject;->isChatDialog(J)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 4270
    sget v0, Lorg/telegram/messenger/R$string;->NotificationHiddenChatName:I

    invoke-static {v5, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    .line 4272
    :cond_26
    sget v0, Lorg/telegram/messenger/R$string;->NotificationHiddenName:I

    invoke-static {v14, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :goto_15
    move-object v4, v0

    move-object/from16 v40, v11

    const/4 v0, 0x0

    const/4 v7, 0x0

    goto :goto_16

    :cond_27
    move-object/from16 v40, v11

    :goto_16
    if-eqz v7, :cond_2c

    .line 4279
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object v11

    move-object/from16 v41, v8

    const/4 v8, 0x1

    invoke-virtual {v11, v7, v8}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v11

    .line 4280
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    move/from16 v42, v15

    const/16 v15, 0x1c

    if-ge v8, v15, :cond_2a

    .line 4281
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v8

    const-string v15, "50_50"

    move-object/from16 v43, v14

    const/4 v14, 0x0

    invoke-virtual {v8, v7, v14, v15}, Lorg/telegram/messenger/ImageLoader;->getImageFromMemory(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v7

    if-eqz v7, :cond_28

    .line 4283
    invoke-virtual {v7}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    goto :goto_18

    .line 4286
    :cond_28
    :try_start_0
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2b

    const/high16 v7, 0x43200000    # 160.0f

    const/16 v8, 0x32

    .line 4287
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    .line 4288
    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/high16 v15, 0x3f800000    # 1.0f

    cmpg-float v15, v7, v15

    if-gez v15, :cond_29

    const/4 v7, 0x1

    goto :goto_17

    :cond_29
    float-to-int v7, v7

    .line 4289
    :goto_17
    iput v7, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 4290
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v8}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_18

    :cond_2a
    move-object/from16 v43, v14

    const/4 v14, 0x0

    :catchall_0
    :cond_2b
    move-object v7, v14

    goto :goto_18

    :cond_2c
    move-object/from16 v41, v8

    move-object/from16 v43, v14

    move/from16 v42, v15

    const/4 v14, 0x0

    move-object v7, v14

    move-object v11, v7

    :goto_18
    if-eqz v9, :cond_2e

    .line 4300
    new-instance v8, Landroidx/core/app/Person$Builder;

    invoke-direct {v8}, Landroidx/core/app/Person$Builder;-><init>()V

    invoke-virtual {v8, v4}, Landroidx/core/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Landroidx/core/app/Person$Builder;

    move-result-object v8

    if-eqz v11, :cond_2d

    .line 4301
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_2d

    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x1c

    if-lt v15, v14, :cond_2d

    .line 4302
    invoke-static {v11, v8}, Lorg/telegram/messenger/NotificationsController;->loadRoundAvatar(Ljava/io/File;Landroidx/core/app/Person$Builder;)V

    .line 4304
    :cond_2d
    iget-wide v14, v9, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v14, v14

    invoke-virtual {v8}, Landroidx/core/app/Person$Builder;->build()Landroidx/core/app/Person;

    move-result-object v8

    invoke-virtual {v6, v14, v15, v8}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_2e
    const-string v8, "max_id"

    const-string v14, "dialog_id"

    const-string v15, "currentAccount"

    if-eqz v36, :cond_2f

    if-eqz v34, :cond_31

    :cond_2f
    if-eqz v0, :cond_31

    .line 4309
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->isWaitingForPasscodeEnter:Z

    if-nez v0, :cond_31

    cmp-long v0, v2, v12

    if-eqz v0, :cond_31

    invoke-static {v12, v13}, Lorg/telegram/messenger/UserObject;->isReplyUser(J)Z

    move-result v0

    if-nez v0, :cond_31

    .line 4310
    new-instance v0, Landroid/content/Intent;

    move-object/from16 v34, v11

    sget-object v11, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    move-object/from16 v44, v9

    const-class v9, Lorg/telegram/messenger/WearReplyReceiver;

    invoke-direct {v0, v11, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4311
    invoke-virtual {v0, v14, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move/from16 v9, v39

    .line 4312
    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v11, "topic_id"

    .line 4313
    invoke-virtual {v0, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v11, p0

    move-object/from16 v39, v7

    .line 4314
    iget v7, v11, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-virtual {v0, v15, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4315
    sget-object v7, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    move-object/from16 v45, v8

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move/from16 v46, v9

    const/high16 v9, 0xa000000

    invoke-static {v7, v8, v0, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 4316
    new-instance v7, Landroidx/core/app/RemoteInput$Builder;

    const-string v8, "extra_voice_reply"

    invoke-direct {v7, v8}, Landroidx/core/app/RemoteInput$Builder;-><init>(Ljava/lang/String;)V

    sget v8, Lorg/telegram/messenger/R$string;->Reply:I

    const-string v9, "Reply"

    invoke-static {v9, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroidx/core/app/RemoteInput$Builder;->setLabel(Ljava/lang/CharSequence;)Landroidx/core/app/RemoteInput$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/core/app/RemoteInput$Builder;->build()Landroidx/core/app/RemoteInput;

    move-result-object v7

    .line 4318
    invoke-static {v12, v13}, Lorg/telegram/messenger/DialogObject;->isChatDialog(J)Z

    move-result v8

    if-eqz v8, :cond_30

    .line 4319
    sget v8, Lorg/telegram/messenger/R$string;->ReplyToGroup:I

    move-object/from16 v47, v14

    const/4 v9, 0x1

    new-array v14, v9, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v14, v9

    const-string v9, "ReplyToGroup"

    invoke-static {v9, v8, v14}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_19

    :cond_30
    move-object/from16 v47, v14

    .line 4321
    sget v8, Lorg/telegram/messenger/R$string;->ReplyToUser:I

    const/4 v9, 0x1

    new-array v14, v9, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v14, v9

    const-string v9, "ReplyToUser"

    invoke-static {v9, v8, v14}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 4323
    :goto_19
    new-instance v9, Landroidx/core/app/NotificationCompat$Action$Builder;

    sget v14, Lorg/telegram/messenger/R$drawable;->ic_reply_icon:I

    invoke-direct {v9, v14, v8, v0}, Landroidx/core/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const/4 v8, 0x1

    .line 4324
    invoke-virtual {v9, v8}, Landroidx/core/app/NotificationCompat$Action$Builder;->setAllowGeneratedReplies(Z)Landroidx/core/app/NotificationCompat$Action$Builder;

    move-result-object v0

    .line 4325
    invoke-virtual {v0, v8}, Landroidx/core/app/NotificationCompat$Action$Builder;->setSemanticAction(I)Landroidx/core/app/NotificationCompat$Action$Builder;

    move-result-object v0

    .line 4326
    invoke-virtual {v0, v7}, Landroidx/core/app/NotificationCompat$Action$Builder;->addRemoteInput(Landroidx/core/app/RemoteInput;)Landroidx/core/app/NotificationCompat$Action$Builder;

    move-result-object v0

    const/4 v7, 0x0

    .line 4327
    invoke-virtual {v0, v7}, Landroidx/core/app/NotificationCompat$Action$Builder;->setShowsUserInterface(Z)Landroidx/core/app/NotificationCompat$Action$Builder;

    move-result-object v0

    .line 4328
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Action$Builder;->build()Landroidx/core/app/NotificationCompat$Action;

    move-result-object v0

    move-object v7, v0

    goto :goto_1a

    :cond_31
    move-object/from16 v45, v8

    move-object/from16 v44, v9

    move-object/from16 v34, v11

    move-object/from16 v47, v14

    move/from16 v46, v39

    move-object/from16 v11, p0

    move-object/from16 v39, v7

    const/4 v7, 0x0

    .line 4331
    :goto_1a
    iget-object v0, v11, Lorg/telegram/messenger/NotificationsController;->pushDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, v12, v13}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_32

    const/4 v8, 0x0

    .line 4333
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 4335
    :cond_32
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-le v0, v9, :cond_34

    .line 4337
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x1c

    if-lt v14, v9, :cond_33

    goto :goto_1b

    :cond_33
    new-array v9, v8, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v4, v9, v14

    .line 4340
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v14, 0x1

    aput-object v0, v9, v14

    const-string v0, "%1$s (%2$d)"

    invoke-static {v0, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    goto :goto_1c

    :cond_34
    :goto_1b
    move-object v9, v4

    .line 4343
    :goto_1c
    invoke-virtual {v6, v2, v3}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroidx/core/app/Person;

    .line 4344
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1c

    if-lt v0, v8, :cond_38

    if-nez v14, :cond_38

    .line 4345
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0, v8}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-nez v0, :cond_35

    .line 4347
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    :cond_35
    if-eqz v0, :cond_36

    .line 4350
    :try_start_1
    iget-object v8, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v8, :cond_36

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-eqz v8, :cond_36

    move-object/from16 v49, v14

    move-object/from16 v48, v15

    :try_start_2
    iget-wide v14, v8, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    cmp-long v14, v14, v31

    if-eqz v14, :cond_37

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    if-eqz v8, :cond_37

    .line 4351
    new-instance v8, Landroidx/core/app/Person$Builder;

    invoke-direct {v8}, Landroidx/core/app/Person$Builder;-><init>()V

    const-string v14, "FromYou"

    sget v15, Lorg/telegram/messenger/R$string;->FromYou:I

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Landroidx/core/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Landroidx/core/app/Person$Builder;

    move-result-object v8

    .line 4352
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object v14

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    const/4 v15, 0x1

    invoke-virtual {v14, v0, v15}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v0

    .line 4353
    invoke-static {v0, v8}, Lorg/telegram/messenger/NotificationsController;->loadRoundAvatar(Ljava/io/File;Landroidx/core/app/Person$Builder;)V

    .line 4354
    invoke-virtual {v8}, Landroidx/core/app/Person$Builder;->build()Landroidx/core/app/Person;

    move-result-object v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 4355
    :try_start_3
    invoke-virtual {v6, v2, v3, v8}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v14, v8

    goto :goto_1e

    :catchall_1
    move-exception v0

    move-object v14, v8

    goto :goto_1d

    :catchall_2
    move-exception v0

    move-object/from16 v14, v49

    goto :goto_1d

    :catchall_3
    move-exception v0

    move-object/from16 v49, v14

    move-object/from16 v48, v15

    .line 4358
    :goto_1d
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1e

    :cond_36
    move-object/from16 v49, v14

    move-object/from16 v48, v15

    :cond_37
    move-object/from16 v14, v49

    :goto_1e
    move-object/from16 v8, v38

    goto :goto_1f

    :cond_38
    move-object/from16 v49, v14

    move-object/from16 v48, v15

    move-object/from16 v8, v38

    move-object/from16 v14, v49

    .line 4362
    :goto_1f
    iget-object v0, v8, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatJoinedByRequest;

    const/4 v8, 0x1

    xor-int/2addr v0, v8

    const-string v8, ""

    if-eqz v14, :cond_39

    if-eqz v0, :cond_39

    .line 4365
    new-instance v0, Landroidx/core/app/NotificationCompat$MessagingStyle;

    invoke-direct {v0, v14}, Landroidx/core/app/NotificationCompat$MessagingStyle;-><init>(Landroidx/core/app/Person;)V

    goto :goto_20

    .line 4367
    :cond_39
    new-instance v0, Landroidx/core/app/NotificationCompat$MessagingStyle;

    invoke-direct {v0, v8}, Landroidx/core/app/NotificationCompat$MessagingStyle;-><init>(Ljava/lang/CharSequence;)V

    :goto_20
    move-object v14, v0

    .line 4369
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x1c

    if-lt v0, v15, :cond_3b

    invoke-static {v12, v13}, Lorg/telegram/messenger/DialogObject;->isChatDialog(J)Z

    move-result v15

    if-eqz v15, :cond_3a

    if-eqz v36, :cond_3b

    :cond_3a
    invoke-static {v12, v13}, Lorg/telegram/messenger/UserObject;->isReplyUser(J)Z

    move-result v15

    if-eqz v15, :cond_3c

    .line 4370
    :cond_3b
    invoke-virtual {v14, v9}, Landroidx/core/app/NotificationCompat$MessagingStyle;->setConversationTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$MessagingStyle;

    :cond_3c
    const/16 v9, 0x1c

    if-lt v0, v9, :cond_3f

    if-nez v36, :cond_3d

    .line 4372
    invoke-static {v12, v13}, Lorg/telegram/messenger/DialogObject;->isChatDialog(J)Z

    move-result v0

    if-nez v0, :cond_3f

    :cond_3d
    invoke-static {v12, v13}, Lorg/telegram/messenger/UserObject;->isReplyUser(J)Z

    move-result v0

    if-eqz v0, :cond_3e

    goto :goto_21

    :cond_3e
    const/4 v0, 0x0

    goto :goto_22

    :cond_3f
    :goto_21
    const/4 v0, 0x1

    :goto_22
    invoke-virtual {v14, v0}, Landroidx/core/app/NotificationCompat$MessagingStyle;->setGroupConversation(Z)Landroidx/core/app/NotificationCompat$MessagingStyle;

    .line 4374
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v38, v7

    const/4 v15, 0x1

    new-array v7, v15, [Ljava/lang/String;

    move-object/from16 v49, v14

    new-array v14, v15, [Z

    .line 4379
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v15

    move v15, v0

    const/16 v50, 0x0

    const/16 v51, 0x0

    :goto_23
    const-wide/16 v52, 0x3e8

    if-ltz v15, :cond_64

    .line 4380
    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v54, v1

    move-object v1, v0

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    .line 4381
    iget-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move/from16 v55, v15

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v15

    invoke-virtual {v15, v1}, Lorg/telegram/messenger/MessagesController;->isForum(Lorg/telegram/messenger/MessageObject;)Z

    move-result v15

    invoke-static {v0, v15}, Lorg/telegram/messenger/MessageObject;->getTopicId(Lorg/telegram/tgnet/TLRPC$Message;Z)I

    move-result v0

    if-eq v10, v0, :cond_41

    move-wide/from16 v56, v2

    :cond_40
    :goto_24
    move-object/from16 v58, v4

    move-object/from16 v63, v6

    move-object/from16 v60, v7

    move-object/from16 v59, v9

    move-object/from16 v61, v43

    move-object/from16 v43, v5

    move-object v9, v8

    move-object/from16 v5, v49

    goto/16 :goto_3b

    .line 4385
    :cond_41
    invoke-direct {v11, v1, v7, v14}, Lorg/telegram/messenger/NotificationsController;->getShortStringForMessage(Lorg/telegram/messenger/MessageObject;[Ljava/lang/String;[Z)Ljava/lang/String;

    move-result-object v0

    cmp-long v15, v12, v2

    move-wide/from16 v56, v2

    const-string v2, "NotificationMessageScheduledName"

    if-nez v15, :cond_42

    const/4 v3, 0x0

    aput-object v4, v7, v3

    goto :goto_25

    :cond_42
    const/4 v3, 0x0

    .line 4388
    invoke-static {v12, v13}, Lorg/telegram/messenger/DialogObject;->isChatDialog(J)Z

    move-result v23

    if-eqz v23, :cond_43

    iget-object v3, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->from_scheduled:Z

    if-eqz v3, :cond_43

    .line 4389
    sget v3, Lorg/telegram/messenger/R$string;->NotificationMessageScheduledName:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/16 v23, 0x0

    aput-object v3, v7, v23

    :cond_43
    :goto_25
    if-nez v0, :cond_44

    .line 4392
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_40

    .line 4393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "message text is null for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " did = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->w(Ljava/lang/String;)V

    goto :goto_24

    .line 4397
    :cond_44
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_45

    const-string v3, "\n\n"

    .line 4398
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_45
    const-string v3, "%1$s: %2$s"

    if-eqz v15, :cond_46

    .line 4400
    iget-object v15, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-boolean v15, v15, Lorg/telegram/tgnet/TLRPC$Message;->from_scheduled:Z

    if-eqz v15, :cond_46

    invoke-static {v12, v13}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v15

    if-eqz v15, :cond_46

    move-object/from16 v58, v4

    const/4 v15, 0x2

    new-array v4, v15, [Ljava/lang/Object;

    .line 4401
    sget v15, Lorg/telegram/messenger/R$string;->NotificationMessageScheduledName:I

    invoke-static {v2, v15}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v15, 0x0

    aput-object v2, v4, v15

    const/4 v2, 0x1

    aput-object v0, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 4402
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_26

    :cond_46
    move-object/from16 v58, v4

    const/4 v15, 0x0

    .line 4404
    aget-object v2, v7, v15

    if-eqz v2, :cond_47

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/Object;

    .line 4405
    aget-object v2, v7, v15

    aput-object v2, v4, v15

    const/4 v2, 0x1

    aput-object v0, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_26

    .line 4407
    :cond_47
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_26
    move-object v2, v0

    .line 4412
    invoke-static {v12, v13}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v0

    if-eqz v0, :cond_48

    goto :goto_28

    :cond_48
    if-eqz v36, :cond_49

    neg-long v3, v12

    :goto_27
    move-object v15, v8

    move-object/from16 v59, v9

    goto :goto_29

    .line 4416
    :cond_49
    invoke-static {v12, v13}, Lorg/telegram/messenger/DialogObject;->isChatDialog(J)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 4417
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getSenderId()J

    move-result-wide v3

    goto :goto_27

    :cond_4a
    :goto_28
    move-object v15, v8

    move-object/from16 v59, v9

    move-wide v3, v12

    :goto_29
    int-to-long v8, v10

    const/16 v0, 0x10

    shl-long/2addr v8, v0

    add-long/2addr v8, v3

    .line 4421
    invoke-virtual {v6, v8, v9}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/app/Person;

    const/4 v8, 0x0

    .line 4423
    aget-object v9, v7, v8

    if-nez v9, :cond_4e

    if-eqz v22, :cond_4d

    .line 4425
    invoke-static {v12, v13}, Lorg/telegram/messenger/DialogObject;->isChatDialog(J)Z

    move-result v8

    if-eqz v8, :cond_4c

    if-eqz v36, :cond_4b

    .line 4427
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x1b

    if-le v8, v9, :cond_4d

    .line 4428
    sget v8, Lorg/telegram/messenger/R$string;->NotificationHiddenChatName:I

    invoke-static {v5, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    goto :goto_2a

    :cond_4b
    const/16 v9, 0x1b

    .line 4431
    sget v8, Lorg/telegram/messenger/R$string;->NotificationHiddenChatUserName:I

    const-string v9, "NotificationHiddenChatUserName"

    invoke-static {v9, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    :goto_2a
    move-object/from16 v9, v43

    goto :goto_2b

    .line 4433
    :cond_4c
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x1b

    if-le v8, v9, :cond_4d

    .line 4434
    sget v8, Lorg/telegram/messenger/R$string;->NotificationHiddenName:I

    move-object/from16 v9, v43

    invoke-static {v9, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    goto :goto_2b

    :cond_4d
    move-object/from16 v9, v43

    move-object v8, v15

    goto :goto_2b

    :cond_4e
    move-object/from16 v9, v43

    const/4 v8, 0x0

    .line 4438
    aget-object v43, v7, v8

    move-object/from16 v8, v43

    :goto_2b
    move-object/from16 v43, v5

    if-eqz v0, :cond_50

    .line 4441
    invoke-virtual {v0}, Landroidx/core/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4f

    goto :goto_2c

    :cond_4f
    move-object v3, v0

    move-object/from16 v60, v7

    move-object/from16 v61, v9

    goto/16 :goto_30

    .line 4442
    :cond_50
    :goto_2c
    new-instance v0, Landroidx/core/app/Person$Builder;

    invoke-direct {v0}, Landroidx/core/app/Person$Builder;-><init>()V

    invoke-virtual {v0, v8}, Landroidx/core/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Landroidx/core/app/Person$Builder;

    move-result-object v0

    const/4 v5, 0x0

    .line 4443
    aget-boolean v8, v14, v5

    if-eqz v8, :cond_55

    invoke-static {v12, v13}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v5

    if-nez v5, :cond_55

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1c

    if-lt v5, v8, :cond_55

    .line 4445
    invoke-static {v12, v13}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v5

    if-nez v5, :cond_54

    if-eqz v36, :cond_51

    goto :goto_2d

    :cond_51
    move-object v5, v7

    .line 4448
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getSenderId()J

    move-result-wide v7

    move-object/from16 v60, v5

    .line 4449
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    move-object/from16 v61, v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v5, v9}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    if-nez v5, :cond_52

    .line 4451
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    invoke-virtual {v5, v7, v8}, Lorg/telegram/messenger/MessagesStorage;->getUserSync(J)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    if-eqz v5, :cond_52

    .line 4453
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v5, v8}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    :cond_52
    if-eqz v5, :cond_53

    .line 4456
    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v7, :cond_53

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v7, :cond_53

    iget-wide v8, v7, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    cmp-long v8, v8, v31

    if-eqz v8, :cond_53

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    if-eqz v7, :cond_53

    .line 4457
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object v7

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    const/4 v8, 0x1

    invoke-virtual {v7, v5, v8}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v5

    goto :goto_2e

    :cond_53
    const/4 v5, 0x0

    goto :goto_2e

    :cond_54
    :goto_2d
    move-object/from16 v60, v7

    move-object/from16 v61, v9

    move-object/from16 v5, v34

    .line 4460
    :goto_2e
    invoke-static {v5, v0}, Lorg/telegram/messenger/NotificationsController;->loadRoundAvatar(Ljava/io/File;Landroidx/core/app/Person$Builder;)V

    goto :goto_2f

    :cond_55
    move-object/from16 v60, v7

    move-object/from16 v61, v9

    .line 4462
    :goto_2f
    invoke-virtual {v0}, Landroidx/core/app/Person$Builder;->build()Landroidx/core/app/Person;

    move-result-object v0

    .line 4463
    invoke-virtual {v6, v3, v4, v0}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    move-object v3, v0

    .line 4467
    :goto_30
    invoke-static {v12, v13}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v0

    if-nez v0, :cond_61

    const/4 v4, 0x0

    .line 4469
    aget-boolean v0, v14, v4

    if-eqz v0, :cond_5d

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    if-lt v0, v4, :cond_5d

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v0

    if-nez v0, :cond_5d

    if-nez v22, :cond_5d

    .line 4470
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isSecretMedia()Z

    move-result v0

    if-nez v0, :cond_5d

    iget v0, v1, Lorg/telegram/messenger/MessageObject;->type:I

    const/4 v5, 0x1

    if-eq v0, v5, :cond_56

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isSticker()Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 4471
    :cond_56
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v5, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v0, v5}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v5

    .line 4473
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->hasMediaSpoilers()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 4474
    new-instance v7, Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ".blur.jpg"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4475
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_57

    .line 4477
    :try_start_4
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 4479
    invoke-static {v0}, Lorg/telegram/messenger/Utilities;->stackBlurBitmapMax(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 4480
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 4482
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    const/4 v4, 0x1

    invoke-static {v8, v9, v0, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v4, 0x5

    .line 4483
    invoke-static {v0, v4}, Lorg/telegram/messenger/Utilities;->stackBlurBitmap(Landroid/graphics/Bitmap;I)V

    .line 4484
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 4486
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 4488
    iget-object v8, v11, Lorg/telegram/messenger/NotificationsController;->mediaSpoilerEffect:Lorg/telegram/ui/Components/spoilers/SpoilerEffect;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    const/4 v9, -0x1

    move-object/from16 v62, v5

    :try_start_5
    invoke-static {v9}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    int-to-float v5, v5

    const v63, 0x3ea66666    # 0.325f

    mul-float v5, v5, v63

    float-to-int v5, v5

    invoke-static {v9, v5}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v5

    invoke-virtual {v8, v5}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->setColor(I)V

    .line 4489
    iget-object v5, v11, Lorg/telegram/messenger/NotificationsController;->mediaSpoilerEffect:Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-object/from16 v63, v6

    const/4 v6, 0x0

    :try_start_6
    invoke-virtual {v5, v6, v6, v8, v9}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->setBounds(IIII)V

    .line 4490
    iget-object v5, v11, Lorg/telegram/messenger/NotificationsController;->mediaSpoilerEffect:Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    invoke-virtual {v5, v4}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->draw(Landroid/graphics/Canvas;)V

    .line 4492
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 4493
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v0, v5, v6, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 4494
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 4496
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    move-object v5, v7

    goto :goto_34

    :catch_0
    move-exception v0

    goto :goto_32

    :catch_1
    move-exception v0

    goto :goto_31

    :catch_2
    move-exception v0

    move-object/from16 v62, v5

    :goto_31
    move-object/from16 v63, v6

    .line 4500
    :goto_32
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_33

    :cond_57
    move-object/from16 v62, v5

    move-object/from16 v63, v6

    :goto_33
    move-object/from16 v5, v62

    goto :goto_34

    :cond_58
    move-object/from16 v62, v5

    move-object/from16 v63, v6

    move-object/from16 v5, v62

    const/4 v7, 0x0

    .line 4506
    :goto_34
    new-instance v4, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;

    iget-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    int-to-long v8, v0

    mul-long v8, v8, v52

    invoke-direct {v4, v2, v8, v9, v3}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;-><init>(Ljava/lang/CharSequence;JLandroidx/core/app/Person;)V

    .line 4507
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isSticker()Z

    move-result v0

    if-eqz v0, :cond_59

    const-string v0, "image/webp"

    goto :goto_35

    :cond_59
    const-string v0, "image/jpeg"

    :goto_35
    move-object v6, v0

    .line 4509
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 4511
    :try_start_7
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getApplicationId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ".provider"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8, v5}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    move-object v9, v15

    goto :goto_37

    :catch_3
    move-exception v0

    .line 4513
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_36

    .line 4516
    :cond_5a
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lorg/telegram/messenger/FileLoader;->isLoadingFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 4517
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v8, "content"

    .line 4518
    invoke-virtual {v0, v8}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 4519
    invoke-static {}, Lorg/telegram/messenger/NotificationImageProvider;->getAuthority()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v8, "msg_media_raw"

    .line 4520
    invoke-virtual {v0, v8}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, v11, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object v9, v15

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 4521
    invoke-virtual {v0, v8}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 4522
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 4523
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v8, "final_path"

    invoke-virtual {v0, v8, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 4524
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    goto :goto_37

    :cond_5b
    :goto_36
    move-object v9, v15

    const/4 v0, 0x0

    :goto_37
    if-eqz v0, :cond_5e

    .line 4529
    invoke-virtual {v4, v6, v0}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->setData(Ljava/lang/String;Landroid/net/Uri;)Landroidx/core/app/NotificationCompat$MessagingStyle$Message;

    move-object/from16 v5, v49

    .line 4530
    invoke-virtual {v5, v4}, Landroidx/core/app/NotificationCompat$MessagingStyle;->addMessage(Landroidx/core/app/NotificationCompat$MessagingStyle$Message;)Landroidx/core/app/NotificationCompat$MessagingStyle;

    .line 4532
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v6, "com.android.systemui"

    const/4 v8, 0x1

    invoke-virtual {v4, v6, v0, v8}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 4533
    new-instance v4, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda4;

    invoke-direct {v4, v0, v7}, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda4;-><init>(Landroid/net/Uri;Ljava/io/File;)V

    const-wide/16 v6, 0x4e20

    invoke-static {v4, v6, v7}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 4540
    iget-object v0, v1, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5c

    .line 4541
    iget-object v0, v1, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    iget-object v4, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    int-to-long v6, v4

    mul-long v6, v6, v52

    invoke-virtual {v5, v0, v6, v7, v3}, Landroidx/core/app/NotificationCompat$MessagingStyle;->addMessage(Ljava/lang/CharSequence;JLandroidx/core/app/Person;)Landroidx/core/app/NotificationCompat$MessagingStyle;

    :cond_5c
    const/4 v0, 0x1

    goto :goto_38

    :cond_5d
    move-object/from16 v63, v6

    move-object v9, v15

    :cond_5e
    move-object/from16 v5, v49

    const/4 v0, 0x0

    :goto_38
    if-nez v0, :cond_5f

    .line 4548
    iget-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    int-to-long v6, v0

    mul-long v6, v6, v52

    invoke-virtual {v5, v2, v6, v7, v3}, Landroidx/core/app/NotificationCompat$MessagingStyle;->addMessage(Ljava/lang/CharSequence;JLandroidx/core/app/Person;)Landroidx/core/app/NotificationCompat$MessagingStyle;

    :cond_5f
    const/4 v2, 0x0

    .line 4550
    aget-boolean v0, v14, v2

    if-eqz v0, :cond_62

    if-nez v22, :cond_62

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 4551
    invoke-virtual {v5}, Landroidx/core/app/NotificationCompat$MessagingStyle;->getMessages()Ljava/util/List;

    move-result-object v0

    .line 4552
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_62

    .line 4553
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v2

    .line 4555
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_60

    .line 4557
    :try_start_8
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getApplicationId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".provider"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_39

    :catch_4
    const/4 v2, 0x0

    goto :goto_39

    .line 4562
    :cond_60
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    :goto_39
    if-eqz v2, :cond_62

    .line 4565
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;

    const-string v3, "audio/ogg"

    .line 4566
    invoke-virtual {v0, v3, v2}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->setData(Ljava/lang/String;Landroid/net/Uri;)Landroidx/core/app/NotificationCompat$MessagingStyle$Message;

    goto :goto_3a

    :cond_61
    move-object/from16 v63, v6

    move-object v9, v15

    move-object/from16 v5, v49

    .line 4571
    iget-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    int-to-long v6, v0

    mul-long v6, v6, v52

    invoke-virtual {v5, v2, v6, v7, v3}, Landroidx/core/app/NotificationCompat$MessagingStyle;->addMessage(Ljava/lang/CharSequence;JLandroidx/core/app/Person;)Landroidx/core/app/NotificationCompat$MessagingStyle;

    :cond_62
    :goto_3a
    cmp-long v0, v12, v29

    if-nez v0, :cond_63

    .line 4574
    iget-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    if-eqz v0, :cond_63

    .line 4575
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;->rows:Ljava/util/ArrayList;

    .line 4576
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    move-object/from16 v51, v0

    move/from16 v50, v1

    :cond_63
    :goto_3b
    add-int/lit8 v15, v55, -0x1

    move-object/from16 v49, v5

    move-object v8, v9

    move-object/from16 v5, v43

    move-object/from16 v1, v54

    move-wide/from16 v2, v56

    move-object/from16 v4, v58

    move-object/from16 v9, v59

    move-object/from16 v7, v60

    move-object/from16 v43, v61

    move-object/from16 v6, v63

    goto/16 :goto_23

    :cond_64
    move-object/from16 v54, v1

    move-wide/from16 v56, v2

    move-object/from16 v58, v4

    move-object/from16 v63, v6

    move-object/from16 v59, v9

    move-object/from16 v5, v49

    .line 4580
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v2, Lorg/telegram/ui/LaunchActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4581
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

    .line 4582
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "android.intent.category.LAUNCHER"

    .line 4583
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 4584
    invoke-static {v12, v13}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v1

    if-eqz v1, :cond_65

    .line 4585
    invoke-static {v12, v13}, Lorg/telegram/messenger/DialogObject;->getEncryptedChatId(J)I

    move-result v1

    const-string v2, "encId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_3c

    .line 4586
    :cond_65
    invoke-static {v12, v13}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v1

    if-eqz v1, :cond_66

    const-string/jumbo v1, "userId"

    .line 4587
    invoke-virtual {v0, v1, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_3c

    :cond_66
    neg-long v1, v12

    const-string v3, "chatId"

    .line 4589
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 4591
    :goto_3c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "show extra notifications chatId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " topicId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    if-eqz v10, :cond_67

    const-string/jumbo v1, "topicId"

    .line 4593
    invoke-virtual {v0, v1, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4595
    :cond_67
    iget v1, v11, Lorg/telegram/messenger/BaseController;->currentAccount:I

    move-object/from16 v2, v48

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4596
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const/high16 v3, 0x44000000    # 512.0f

    const/4 v4, 0x0

    invoke-static {v1, v4, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 4598
    new-instance v1, Landroidx/core/app/NotificationCompat$WearableExtender;

    invoke-direct {v1}, Landroidx/core/app/NotificationCompat$WearableExtender;-><init>()V

    move-object/from16 v3, v38

    if-eqz v38, :cond_68

    .line 4600
    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$WearableExtender;->addAction(Landroidx/core/app/NotificationCompat$Action;)Landroidx/core/app/NotificationCompat$WearableExtender;

    .line 4602
    :cond_68
    new-instance v4, Landroid/content/Intent;

    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v7, Lorg/telegram/messenger/AutoMessageHeardReceiver;

    invoke-direct {v4, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v6, 0x20

    .line 4603
    invoke-virtual {v4, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v6, "org.telegram.messenger.ACTION_MESSAGE_HEARD"

    .line 4604
    invoke-virtual {v4, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v6, v47

    .line 4605
    invoke-virtual {v4, v6, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-object/from16 v7, v45

    move/from16 v6, v46

    .line 4606
    invoke-virtual {v4, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4607
    iget v7, v11, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-virtual {v4, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4608
    sget-object v7, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/high16 v9, 0xa000000

    invoke-static {v7, v8, v4, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 4609
    new-instance v7, Landroidx/core/app/NotificationCompat$Action$Builder;

    sget v8, Lorg/telegram/messenger/R$drawable;->msg_markread:I

    sget v9, Lorg/telegram/messenger/R$string;->MarkAsRead:I

    const-string v14, "MarkAsRead"

    invoke-static {v14, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9, v4}, Landroidx/core/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const/4 v4, 0x2

    .line 4610
    invoke-virtual {v7, v4}, Landroidx/core/app/NotificationCompat$Action$Builder;->setSemanticAction(I)Landroidx/core/app/NotificationCompat$Action$Builder;

    move-result-object v4

    const/4 v7, 0x0

    .line 4611
    invoke-virtual {v4, v7}, Landroidx/core/app/NotificationCompat$Action$Builder;->setShowsUserInterface(Z)Landroidx/core/app/NotificationCompat$Action$Builder;

    move-result-object v4

    .line 4612
    invoke-virtual {v4}, Landroidx/core/app/NotificationCompat$Action$Builder;->build()Landroidx/core/app/NotificationCompat$Action;

    move-result-object v4

    .line 4615
    invoke-static {v12, v13}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v7

    const-string v8, "_"

    if-nez v7, :cond_6a

    .line 4616
    invoke-static {v12, v13}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v7

    if-eqz v7, :cond_69

    .line 4617
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "tguser"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_3d

    .line 4619
    :cond_69
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "tgchat"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    neg-long v14, v12

    invoke-virtual {v7, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_3d

    .line 4621
    :cond_6a
    sget-wide v14, Lorg/telegram/messenger/NotificationsController;->globalSecretChatId:J

    cmp-long v7, v12, v14

    if-eqz v7, :cond_6b

    .line 4622
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "tgenc"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12, v13}, Lorg/telegram/messenger/DialogObject;->getEncryptedChatId(J)I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_3d

    :cond_6b
    const/4 v6, 0x0

    :goto_3d
    if-eqz v6, :cond_6c

    .line 4628
    invoke-virtual {v1, v6}, Landroidx/core/app/NotificationCompat$WearableExtender;->setDismissalId(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$WearableExtender;

    .line 4629
    new-instance v7, Landroidx/core/app/NotificationCompat$WearableExtender;

    invoke-direct {v7}, Landroidx/core/app/NotificationCompat$WearableExtender;-><init>()V

    .line 4630
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "summary_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroidx/core/app/NotificationCompat$WearableExtender;->setDismissalId(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$WearableExtender;

    move-object/from16 v14, p1

    .line 4631
    invoke-virtual {v14, v7}, Landroidx/core/app/NotificationCompat$Builder;->extend(Landroidx/core/app/NotificationCompat$Extender;)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_3e

    :cond_6c
    move-object/from16 v14, p1

    .line 4633
    :goto_3e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "tgaccount"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v7, v56

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroidx/core/app/NotificationCompat$WearableExtender;->setBridgeTag(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$WearableExtender;

    move-object/from16 v6, v54

    const/4 v9, 0x0

    .line 4635
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/telegram/messenger/MessageObject;

    iget-object v9, v15, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v9, v9, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    int-to-long v7, v9

    mul-long v7, v7, v52

    .line 4637
    new-instance v9, Landroidx/core/app/NotificationCompat$Builder;

    sget-object v15, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-direct {v9, v15}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v15, v58

    .line 4638
    invoke-virtual {v9, v15}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v9

    sget v14, Lorg/telegram/messenger/R$drawable;->notification:I

    .line 4639
    invoke-virtual {v9, v14}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v9

    .line 4640
    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v9

    const/4 v14, 0x1

    .line 4641
    invoke-virtual {v9, v14}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v9

    .line 4642
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v9, v6}, Landroidx/core/app/NotificationCompat$Builder;->setNumber(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v6

    const v9, -0xee5306

    .line 4643
    invoke-virtual {v6, v9}, Landroidx/core/app/NotificationCompat$Builder;->setColor(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v6

    const/4 v9, 0x0

    .line 4644
    invoke-virtual {v6, v9}, Landroidx/core/app/NotificationCompat$Builder;->setGroupSummary(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v6

    .line 4645
    invoke-virtual {v6, v7, v8}, Landroidx/core/app/NotificationCompat$Builder;->setWhen(J)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v6

    .line 4646
    invoke-virtual {v6, v14}, Landroidx/core/app/NotificationCompat$Builder;->setShowWhen(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v6

    .line 4647
    invoke-virtual {v6, v5}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v5

    .line 4648
    invoke-virtual {v5, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 4649
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->extend(Landroidx/core/app/NotificationCompat$Extender;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    const-wide v5, 0x7fffffffffffffffL

    sub-long/2addr v5, v7

    .line 4650
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setSortKey(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    const-string v1, "msg"

    .line 4651
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v14

    .line 4652
    sget v0, Lorg/telegram/messenger/R$drawable;->fork_notification:I

    invoke-virtual {v14, v0}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    sget v5, Lorg/telegram/messenger/R$color;->fork_color:I

    invoke-static {v1, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setColor(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 4655
    :try_start_9
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v5, Lorg/telegram/messenger/NotificationDismissReceiver;

    invoke-direct {v0, v1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "messageDate"

    move/from16 v7, v35

    .line 4656
    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "dialogId"

    .line 4657
    invoke-virtual {v0, v1, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 4658
    iget v1, v11, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4659
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/high16 v6, 0xa000000

    invoke-static {v1, v5, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroidx/core/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_3f

    :catch_5
    move-exception v0

    .line 4661
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_3f
    if-eqz v42, :cond_6d

    .line 4665
    iget-object v0, v11, Lorg/telegram/messenger/NotificationsController;->notificationGroup:Ljava/lang/String;

    invoke-virtual {v14, v0}, Landroidx/core/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    const/4 v1, 0x1

    .line 4666
    invoke-virtual {v14, v1}, Landroidx/core/app/NotificationCompat$Builder;->setGroupAlertBehavior(I)Landroidx/core/app/NotificationCompat$Builder;

    :cond_6d
    if-eqz v3, :cond_6e

    .line 4670
    invoke-virtual {v14, v3}, Landroidx/core/app/NotificationCompat$Builder;->addAction(Landroidx/core/app/NotificationCompat$Action;)Landroidx/core/app/NotificationCompat$Builder;

    :cond_6e
    if-nez v22, :cond_6f

    .line 4673
    invoke-virtual {v14, v4}, Landroidx/core/app/NotificationCompat$Builder;->addAction(Landroidx/core/app/NotificationCompat$Action;)Landroidx/core/app/NotificationCompat$Builder;

    .line 4675
    :cond_6f
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_70

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_70

    move-object/from16 v9, p2

    .line 4676
    invoke-virtual {v14, v9}, Landroidx/core/app/NotificationCompat$Builder;->setSubText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_40

    :cond_70
    move-object/from16 v9, p2

    .line 4678
    :goto_40
    invoke-static {v12, v13}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 4679
    invoke-virtual {v14, v4}, Landroidx/core/app/NotificationCompat$Builder;->setLocalOnly(Z)Landroidx/core/app/NotificationCompat$Builder;

    :cond_71
    if-eqz v39, :cond_72

    move-object/from16 v7, v39

    .line 4682
    invoke-virtual {v14, v7}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    :cond_72
    const/4 v1, 0x0

    .line 4685
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->needShowPasscode(Z)Z

    move-result v0

    if-nez v0, :cond_76

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->isWaitingForPasscodeEnter:Z

    if-nez v0, :cond_76

    move-object/from16 v1, v51

    if-eqz v1, :cond_76

    .line 4687
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_41
    if-ge v3, v0, :cond_76

    .line 4688
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRow;

    .line 4689
    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRow;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_42
    if-ge v7, v6, :cond_75

    .line 4690
    iget-object v8, v5, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRow;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$KeyboardButton;

    .line 4691
    instance-of v4, v8, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonCallback;

    if-eqz v4, :cond_74

    .line 4692
    new-instance v4, Landroid/content/Intent;

    move/from16 v27, v0

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    move-object/from16 v29, v1

    const-class v1, Lorg/telegram/messenger/NotificationCallbackReceiver;

    invoke-direct {v4, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4693
    iget v0, v11, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-virtual {v4, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "did"

    .line 4694
    invoke-virtual {v4, v0, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 4695
    iget-object v0, v8, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->data:[B

    if-eqz v0, :cond_73

    const-string v1, "data"

    .line 4696
    invoke-virtual {v4, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    :cond_73
    const-string v0, "mid"

    move/from16 v1, v50

    .line 4698
    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4699
    iget-object v0, v8, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->text:Ljava/lang/String;

    sget-object v8, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    move/from16 v30, v1

    iget v1, v11, Lorg/telegram/messenger/NotificationsController;->lastButtonId:I

    move-object/from16 v48, v2

    add-int/lit8 v2, v1, 0x1

    iput v2, v11, Lorg/telegram/messenger/NotificationsController;->lastButtonId:I

    const/high16 v2, 0xa000000

    invoke-static {v8, v1, v4, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const/4 v8, 0x0

    invoke-virtual {v14, v8, v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_43

    :cond_74
    move/from16 v27, v0

    move-object/from16 v29, v1

    move-object/from16 v48, v2

    move/from16 v30, v50

    const/high16 v2, 0xa000000

    const/4 v8, 0x0

    :goto_43
    add-int/lit8 v7, v7, 0x1

    move/from16 v0, v27

    move-object/from16 v1, v29

    move/from16 v50, v30

    move-object/from16 v2, v48

    const/4 v4, 0x1

    goto :goto_42

    :cond_75
    move/from16 v27, v0

    move-object/from16 v29, v1

    move-object/from16 v48, v2

    move/from16 v30, v50

    const/high16 v2, 0xa000000

    const/4 v8, 0x0

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v2, v48

    const/4 v4, 0x1

    goto/16 :goto_41

    :cond_76
    const/4 v8, 0x0

    if-nez v44, :cond_77

    if-eqz v41, :cond_77

    move-object/from16 v7, v41

    .line 4706
    iget-object v0, v7, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    if-eqz v0, :cond_78

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_78

    .line 4707
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "tel:+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v7, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroidx/core/app/NotificationCompat$Builder;->addPerson(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_44

    :cond_77
    move-object/from16 v7, v41

    .line 4710
    :cond_78
    :goto_44
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    move-object/from16 v6, v19

    move/from16 v4, v42

    if-lt v0, v2, :cond_79

    .line 4711
    invoke-direct {v11, v6, v14, v4}, Lorg/telegram/messenger/NotificationsController;->setNotificationChannel(Landroid/app/Notification;Landroidx/core/app/NotificationCompat$Builder;Z)V

    .line 4713
    :cond_79
    new-instance v0, Lorg/telegram/messenger/NotificationsController$1NotificationHolder;

    const/16 v21, 0x7

    move-object v1, v0

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-wide/from16 v23, v56

    move/from16 v27, v2

    move-object/from16 v2, p0

    move/from16 v29, v25

    const/16 v30, 0x1

    move/from16 v25, v4

    move-wide v4, v12

    move-object/from16 v16, v6

    move-object/from16 v64, v63

    const/16 v31, 0x1b

    move v6, v10

    move-object/from16 v36, v7

    move-object/from16 v10, v26

    move-object v7, v15

    move/from16 v18, v8

    move-object/from16 v15, v28

    move-object/from16 v8, v36

    move/from16 v26, v33

    const/16 v28, 0x0

    move-object/from16 v9, v44

    move-object/from16 v65, v10

    move/from16 v32, v18

    move-object v10, v14

    move-object/from16 v33, v40

    move/from16 v11, p5

    move-wide v13, v12

    move-object/from16 v34, v20

    move-object/from16 v12, p6

    move-wide/from16 v66, v13

    move-object/from16 v14, v16

    move-object/from16 v13, p7

    move-object/from16 v68, v14

    move/from16 v14, p8

    move-object/from16 v35, v15

    move-object/from16 v69, v37

    move-object/from16 v15, p9

    move/from16 v16, p10

    move/from16 v17, p11

    move/from16 v18, p12

    move/from16 v19, p13

    move/from16 v20, p14

    invoke-direct/range {v1 .. v20}, Lorg/telegram/messenger/NotificationsController$1NotificationHolder;-><init>(Lorg/telegram/messenger/NotificationsController;IJILjava/lang/String;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;Landroidx/core/app/NotificationCompat$Builder;ILjava/lang/String;[JILandroid/net/Uri;IZZZI)V

    move-object/from16 v15, v65

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v14, p0

    .line 4714
    iget-object v0, v14, Lorg/telegram/messenger/NotificationsController;->wearNotificationsIds:Landroidx/collection/LongSparseArray;

    move-wide/from16 v1, v66

    move-object/from16 v3, v69

    invoke-virtual {v0, v1, v2, v3}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    :goto_45
    add-int/lit8 v4, v29, 0x1

    move-object v7, v15

    move/from16 v1, v21

    move-wide/from16 v2, v23

    move/from16 v5, v25

    move/from16 v9, v26

    move/from16 v10, v32

    move-object/from16 v11, v33

    move-object/from16 v12, v34

    move-object/from16 v8, v35

    move-object/from16 v6, v64

    move-object/from16 v13, v68

    move-object v15, v14

    move-object/from16 v14, p1

    goto/16 :goto_7

    :cond_7a
    :goto_46
    move/from16 v25, v5

    move-object/from16 v64, v6

    move-object/from16 v35, v8

    move/from16 v32, v10

    move-object/from16 v68, v13

    move-object v14, v15

    move-object v15, v7

    if-eqz v25, :cond_7c

    .line 4718
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_7b

    .line 4719
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "show summary with id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v14, Lorg/telegram/messenger/NotificationsController;->notificationId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 4722
    :cond_7b
    :try_start_a
    sget-object v0, Lorg/telegram/messenger/NotificationsController;->notificationManager:Landroidx/core/app/NotificationManagerCompat;

    iget v1, v14, Lorg/telegram/messenger/NotificationsController;->notificationId:I

    move-object/from16 v2, v68

    invoke-virtual {v0, v1, v2}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V
    :try_end_a
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_a} :catch_6

    move-object/from16 v26, v15

    move-object v15, v14

    goto :goto_47

    :catch_6
    move-exception v0

    .line 4724
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

    move-object/from16 v26, v15

    move-object v15, v14

    move/from16 v14, p14

    .line 4725
    invoke-direct/range {v1 .. v14}, Lorg/telegram/messenger/NotificationsController;->resetNotificationSound(Landroidx/core/app/NotificationCompat$Builder;JILjava/lang/String;[JILandroid/net/Uri;IZZZI)V

    goto :goto_47

    :cond_7c
    move-object/from16 v26, v15

    move-object v15, v14

    .line 4728
    iget-object v0, v15, Lorg/telegram/messenger/NotificationsController;->openedInBubbleDialogs:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 4729
    sget-object v0, Lorg/telegram/messenger/NotificationsController;->notificationManager:Landroidx/core/app/NotificationManagerCompat;

    iget v1, v15, Lorg/telegram/messenger/NotificationsController;->notificationId:I

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationManagerCompat;->cancel(I)V

    :cond_7d
    :goto_47
    move/from16 v10, v32

    .line 4733
    :goto_48
    invoke-virtual/range {v35 .. v35}, Landroidx/collection/LongSparseArray;->size()I

    move-result v0

    if-ge v10, v0, :cond_80

    move-object/from16 v1, v35

    .line 4734
    invoke-virtual {v1, v10}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    .line 4735
    iget-object v0, v15, Lorg/telegram/messenger/NotificationsController;->openedInBubbleDialogs:Ljava/util/HashSet;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7e

    goto :goto_49

    .line 4738
    :cond_7e
    invoke-virtual {v1, v10}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 4739
    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v2, :cond_7f

    .line 4740
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancel notification id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 4742
    :cond_7f
    sget-object v2, Lorg/telegram/messenger/NotificationsController;->notificationManager:Landroidx/core/app/NotificationManagerCompat;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Landroidx/core/app/NotificationManagerCompat;->cancel(I)V

    :goto_49
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v35, v1

    goto :goto_48

    .line 4745
    :cond_80
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4746
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v1

    move/from16 v10, v32

    :goto_4a
    if-ge v10, v1, :cond_84

    move-object/from16 v2, v26

    .line 4747
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/NotificationsController$1NotificationHolder;

    .line 4748
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4749
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1d

    if-lt v4, v5, :cond_81

    iget-wide v4, v3, Lorg/telegram/messenger/NotificationsController$1NotificationHolder;->dialogId:J

    invoke-static {v4, v5}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v4

    if-nez v4, :cond_81

    .line 4750
    iget-object v4, v3, Lorg/telegram/messenger/NotificationsController$1NotificationHolder;->notification:Landroidx/core/app/NotificationCompat$Builder;

    iget-wide v5, v3, Lorg/telegram/messenger/NotificationsController$1NotificationHolder;->dialogId:J

    iget-object v7, v3, Lorg/telegram/messenger/NotificationsController$1NotificationHolder;->name:Ljava/lang/String;

    iget-object v8, v3, Lorg/telegram/messenger/NotificationsController$1NotificationHolder;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v9, v3, Lorg/telegram/messenger/NotificationsController$1NotificationHolder;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    move-object/from16 v11, v64

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

    if-eqz v4, :cond_82

    .line 4752
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4b

    :cond_81
    move-object/from16 v11, v64

    .line 4755
    :cond_82
    :goto_4b
    invoke-virtual {v3}, Lorg/telegram/messenger/NotificationsController$1NotificationHolder;->call()V

    .line 4756
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/NotificationsController;->unsupportedNotificationShortcut()Z

    move-result v3

    if-nez v3, :cond_83

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_83

    .line 4757
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v3, v0}, Landroidx/core/content/pm/ShortcutManagerCompat;->removeDynamicShortcuts(Landroid/content/Context;Ljava/util/List;)V

    :cond_83
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v26, v2

    move-object/from16 v64, v11

    goto :goto_4a

    :cond_84
    return-void
.end method

.method private showOrUpdateNotification(Z)V
    .locals 49

    move-object/from16 v15, p0

    const-string v1, "currentAccount"

    .line 3469
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
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getForkCommonController()Lcom/iMe/fork/controller/ForkCommonController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/fork/controller/ForkCommonController;->isAccountMuted()Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_45

    .line 3474
    :cond_1
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/ConnectionsManager;->resumeNetworkMaybe()V

    .line 3476
    iget-object v2, v15, Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    .line 3477
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/AccountInstance;->getNotificationsSettings()Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "dismissDate"

    .line 3478
    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 3479
    iget-object v6, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    if-gt v6, v5, :cond_2

    .line 3480
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/NotificationsController;->dismissNotification()V

    return-void

    .line 3484
    :cond_2
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v13

    .line 3486
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getAlbumsController()Lcom/iMe/fork/controller/AlbumsController;

    move-result-object v6

    invoke-virtual {v6, v13, v14}, Lcom/iMe/fork/controller/AlbumsController;->isDialogAlbum(J)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3487
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/NotificationsController;->dismissNotification()V

    return-void

    .line 3490
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getHiddenChatsController()Lcom/iMe/fork/controller/HiddenChatsController;

    move-result-object v6

    invoke-virtual {v6, v13, v14}, Lcom/iMe/fork/controller/HiddenChatsController;->isChatHidden(J)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 3491
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/NotificationsController;->dismissNotification()V

    return-void

    .line 3495
    :cond_4
    iget-object v6, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    invoke-virtual {v7, v2}, Lorg/telegram/messenger/MessagesController;->isForum(Lorg/telegram/messenger/MessageObject;)Z

    move-result v7

    invoke-static {v6, v7}, Lorg/telegram/messenger/MessageObject;->getTopicId(Lorg/telegram/tgnet/TLRPC$Message;Z)I

    move-result v6

    .line 3499
    iget-object v7, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-boolean v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->mentioned:Z

    if-eqz v7, :cond_5

    .line 3500
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getFromChatId()J

    move-result-wide v7

    goto :goto_0

    :cond_5
    move-wide v7, v13

    .line 3502
    :goto_0
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    .line 3503
    iget-object v9, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v10, v9, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:J

    move-wide/from16 v16, v13

    const-wide/16 v12, 0x0

    cmp-long v14, v10, v12

    if-eqz v14, :cond_6

    goto :goto_1

    :cond_6
    iget-wide v10, v9, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    :goto_1
    move-object/from16 v18, v4

    .line 3504
    iget-wide v3, v9, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 3505
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isFromUser()Z

    move-result v9

    if-eqz v9, :cond_8

    cmp-long v9, v3, v12

    if-eqz v9, :cond_7

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v19

    cmp-long v9, v3, v19

    if-nez v9, :cond_8

    .line 3506
    :cond_7
    iget-object v3, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 3509
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v9, v14}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v9

    cmp-long v20, v10, v12

    if-eqz v20, :cond_b

    .line 3512
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v12

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v12

    if-nez v12, :cond_9

    .line 3513
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isFcmMessage()Z

    move-result v13

    if-eqz v13, :cond_9

    .line 3514
    iget-boolean v13, v2, Lorg/telegram/messenger/MessageObject;->localChannel:Z

    goto :goto_2

    .line 3516
    :cond_9
    invoke-static {v12}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v13

    if-eqz v13, :cond_a

    iget-boolean v13, v12, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v13, :cond_a

    const/4 v13, 0x1

    goto :goto_2

    :cond_a
    const/4 v13, 0x0

    :goto_2
    move/from16 v48, v13

    move-object v13, v12

    move-object/from16 v12, v18

    move/from16 v18, v48

    goto :goto_3

    :cond_b
    move-object/from16 v12, v18

    const/4 v13, 0x0

    const/16 v18, 0x0

    .line 3528
    :goto_3
    invoke-direct {v15, v12, v7, v8, v6}, Lorg/telegram/messenger/NotificationsController;->getNotifyOverride(Landroid/content/SharedPreferences;JI)I

    move-result v14

    move-object/from16 v24, v1

    const/4 v1, -0x1

    move-wide/from16 v25, v3

    const/4 v3, 0x2

    if-ne v14, v1, :cond_c

    .line 3531
    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object/from16 v27, v2

    move-wide/from16 v1, v16

    invoke-virtual {v15, v1, v2, v4}, Lorg/telegram/messenger/NotificationsController;->isGlobalNotificationsEnabled(JLjava/lang/Boolean;)Z

    move-result v4

    goto :goto_5

    :cond_c
    move-object/from16 v27, v2

    move-wide/from16 v1, v16

    if-eq v14, v3, :cond_d

    const/4 v14, 0x1

    goto :goto_4

    :cond_d
    const/4 v14, 0x0

    :goto_4
    move v4, v14

    :goto_5
    if-eqz v20, :cond_e

    if-eqz v13, :cond_f

    :cond_e
    if-nez v9, :cond_10

    .line 3539
    :cond_f
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/messenger/MessageObject;->isFcmMessage()Z

    move-result v14

    if-eqz v14, :cond_10

    move-object/from16 v14, v27

    .line 3540
    iget-object v3, v14, Lorg/telegram/messenger/MessageObject;->localName:Ljava/lang/String;

    goto :goto_6

    :cond_10
    move-object/from16 v14, v27

    if-eqz v13, :cond_11

    .line 3542
    iget-object v3, v13, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    goto :goto_6

    .line 3544
    :cond_11
    invoke-static {v9}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v3

    :goto_6
    move-object/from16 v17, v3

    .line 3546
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->needShowPasscode()Z

    move-result v3

    if-nez v3, :cond_13

    sget-boolean v3, Lorg/telegram/messenger/SharedConfig;->isWaitingForPasscodeEnter:Z

    if-eqz v3, :cond_12

    goto :goto_7

    :cond_12
    const/4 v3, 0x0

    goto :goto_8

    :cond_13
    :goto_7
    const/4 v3, 0x1

    .line 3547
    :goto_8
    invoke-static {v1, v2}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v27

    if-nez v27, :cond_15

    move-object/from16 v27, v9

    iget-object v9, v15, Lorg/telegram/messenger/NotificationsController;->pushDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v9}, Landroidx/collection/LongSparseArray;->size()I

    move-result v9

    move-wide/from16 v28, v10

    const/4 v10, 0x1

    if-gt v9, v10, :cond_16

    if-eqz v3, :cond_14

    goto :goto_9

    :cond_14
    move-object/from16 v3, v17

    const/4 v9, 0x1

    goto :goto_b

    :cond_15
    move-object/from16 v27, v9

    move-wide/from16 v28, v10

    :cond_16
    :goto_9
    if-eqz v3, :cond_18

    if-eqz v20, :cond_17

    const-string v3, "NotificationHiddenChatName"

    .line 3550
    sget v9, Lorg/telegram/messenger/R$string;->NotificationHiddenChatName:I

    invoke-static {v3, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_a

    :cond_17
    const-string v3, "NotificationHiddenName"

    .line 3552
    sget v9, Lorg/telegram/messenger/R$string;->NotificationHiddenName:I

    invoke-static {v3, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_a

    :cond_18
    const-string v3, "AppName"

    .line 3555
    sget v9, Lorg/telegram/messenger/R$string;->AppName:I

    invoke-static {v3, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    :goto_a
    const/4 v9, 0x0

    .line 3563
    :goto_b
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getActivatedAccountsCount()I

    move-result v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const-string v11, ""

    move-object/from16 v30, v14

    const/4 v14, 0x1

    if-le v10, v14, :cond_1a

    .line 3564
    :try_start_1
    iget-object v10, v15, Lorg/telegram/messenger/NotificationsController;->pushDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v10}, Landroidx/collection/LongSparseArray;->size()I

    move-result v10

    if-ne v10, v14, :cond_19

    .line 3565
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v10

    invoke-static {v10}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v10

    goto :goto_c

    .line 3567
    :cond_19
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

    :cond_1a
    move-object v10, v11

    .line 3572
    :goto_c
    iget-object v14, v15, Lorg/telegram/messenger/NotificationsController;->pushDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v14}, Landroidx/collection/LongSparseArray;->size()I

    move-result v14

    move/from16 v31, v6

    const/4 v6, 0x1

    if-ne v14, v6, :cond_1c

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x17

    if-ge v6, v14, :cond_1b

    goto :goto_d

    :cond_1b
    move-wide/from16 v33, v1

    move-wide/from16 v35, v7

    move-object v6, v10

    move-object/from16 v32, v12

    goto :goto_e

    .line 3573
    :cond_1c
    :goto_d
    iget-object v6, v15, Lorg/telegram/messenger/NotificationsController;->pushDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v6}, Landroidx/collection/LongSparseArray;->size()I

    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    const-string v14, "NewMessages"

    move-object/from16 v32, v12

    const/4 v12, 0x1

    if-ne v6, v12, :cond_1d

    .line 3574
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

    :cond_1d
    move-wide/from16 v33, v1

    const/4 v2, 0x0

    .line 3576
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

    .line 3580
    :goto_e
    new-instance v2, Landroidx/core/app/NotificationCompat$Builder;

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-direct {v2, v1}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 3585
    iget-object v1, v15, Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    const-string v8, ": "

    const-string v10, " "

    const-string v12, " @ "

    const/4 v7, 0x1

    if-ne v1, v7, :cond_22

    .line 3586
    :try_start_3
    iget-object v1, v15, Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    new-array v14, v7, [Z

    move/from16 v37, v4

    const/4 v7, 0x0

    .line 3588
    invoke-direct {v15, v1, v5, v14, v7}, Lorg/telegram/messenger/NotificationsController;->getStringForMessage(Lorg/telegram/messenger/MessageObject;Z[Z[Z)Ljava/lang/String;

    move-result-object v4

    .line 3589
    invoke-direct {v15, v1}, Lorg/telegram/messenger/NotificationsController;->isSilentMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v1

    if-nez v4, :cond_1e

    return-void

    :cond_1e
    if-eqz v9, :cond_21

    if-eqz v13, :cond_1f

    .line 3595
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    goto :goto_f

    :cond_1f
    const/4 v5, 0x0

    .line 3597
    aget-boolean v7, v14, v5

    if-eqz v7, :cond_20

    .line 3598
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    goto :goto_f

    .line 3600
    :cond_20
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    goto :goto_f

    :cond_21
    move-object v7, v4

    .line 3604
    :goto_f
    invoke-virtual {v2, v7}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 3605
    new-instance v5, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {v5}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    invoke-virtual {v5, v7}, Landroidx/core/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    move-object v14, v2

    move-object v2, v4

    move-object v5, v6

    goto/16 :goto_14

    :cond_22
    move/from16 v37, v4

    .line 3607
    invoke-virtual {v2, v6}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 3608
    new-instance v1, Landroidx/core/app/NotificationCompat$InboxStyle;

    invoke-direct {v1}, Landroidx/core/app/NotificationCompat$InboxStyle;-><init>()V

    .line 3609
    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$InboxStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$InboxStyle;

    .line 3610
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
    if-ge v7, v4, :cond_29

    move/from16 v41, v4

    .line 3613
    iget-object v4, v15, Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessageObject;

    move-object/from16 v43, v1

    move-object/from16 v42, v6

    move/from16 v38, v7

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 3614
    invoke-direct {v15, v4, v7, v14, v6}, Lorg/telegram/messenger/NotificationsController;->getStringForMessage(Lorg/telegram/messenger/MessageObject;Z[Z[Z)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_28

    .line 3615
    iget-object v7, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    if-gt v7, v5, :cond_23

    goto :goto_12

    :cond_23
    const/4 v7, 0x2

    if-ne v2, v7, :cond_24

    .line 3620
    invoke-direct {v15, v4}, Lorg/telegram/messenger/NotificationsController;->isSilentMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v2

    move-object/from16 v39, v1

    .line 3622
    :cond_24
    iget-object v4, v15, Lorg/telegram/messenger/NotificationsController;->pushDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v4}, Landroidx/collection/LongSparseArray;->size()I

    move-result v4

    const/4 v7, 0x1

    if-ne v4, v7, :cond_27

    if-eqz v9, :cond_27

    if-eqz v13, :cond_25

    .line 3625
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_11

    :cond_25
    const/4 v4, 0x0

    .line 3627
    aget-boolean v6, v14, v4

    if-eqz v6, :cond_26

    .line 3628
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_11

    .line 3630
    :cond_26
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    :cond_27
    :goto_11
    move-object/from16 v6, v43

    .line 3635
    invoke-virtual {v6, v1}, Landroidx/core/app/NotificationCompat$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$InboxStyle;

    goto :goto_13

    :cond_28
    :goto_12
    move-object/from16 v6, v43

    :goto_13
    add-int/lit8 v7, v38, 0x1

    move-object v1, v6

    move/from16 v4, v41

    move-object/from16 v6, v42

    goto/16 :goto_10

    :cond_29
    move-object v5, v6

    move-object v6, v1

    .line 3637
    invoke-virtual {v6, v5}, Landroidx/core/app/NotificationCompat$InboxStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$InboxStyle;

    move-object/from16 v14, v40

    .line 3638
    invoke-virtual {v14, v6}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    move v1, v2

    move-object/from16 v2, v39

    :goto_14
    if-eqz p1, :cond_2b

    if-eqz v37, :cond_2b

    .line 3641
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/MediaController;->isRecordingAudio()Z

    move-result v6

    if-nez v6, :cond_2b

    const/4 v6, 0x1

    if-ne v1, v6, :cond_2a

    goto :goto_15

    :cond_2a
    const/4 v6, 0x0

    goto :goto_16

    :cond_2b
    :goto_15
    const/4 v6, 0x1

    :goto_16
    const-wide/16 v37, 0x3e8

    if-nez v6, :cond_31

    cmp-long v7, v33, v35

    if-nez v7, :cond_31

    if-eqz v13, :cond_31

    .line 3648
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

    if-eqz v7, :cond_2c

    .line 3649
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

    .line 3650
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

    :cond_2c
    const/16 v12, 0xb4

    move v8, v12

    const/4 v7, 0x2

    :goto_17
    if-eqz v7, :cond_30

    .line 3656
    iget-object v12, v15, Lorg/telegram/messenger/NotificationsController;->smartNotificationsDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v12, v9, v10}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Point;

    if-nez v12, :cond_2d

    .line 3658
    new-instance v7, Landroid/graphics/Point;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v33

    move-object/from16 v35, v11

    div-long v11, v33, v37

    long-to-int v8, v11

    const/4 v11, 0x1

    invoke-direct {v7, v11, v8}, Landroid/graphics/Point;-><init>(II)V

    .line 3659
    iget-object v8, v15, Lorg/telegram/messenger/NotificationsController;->smartNotificationsDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v8, v9, v10, v7}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    move-object/from16 v42, v5

    move v8, v6

    goto :goto_18

    :cond_2d
    move-object/from16 v35, v11

    .line 3661
    iget v11, v12, Landroid/graphics/Point;->y:I

    add-int/2addr v11, v8

    move-object/from16 v42, v5

    move v8, v6

    int-to-long v5, v11

    .line 3662
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v33

    div-long v33, v33, v37

    cmp-long v5, v5, v33

    if-gez v5, :cond_2e

    .line 3663
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    div-long v5, v5, v37

    long-to-int v5, v5

    const/4 v6, 0x1

    invoke-virtual {v12, v6, v5}, Landroid/graphics/Point;->set(II)V

    goto :goto_18

    .line 3665
    :cond_2e
    iget v5, v12, Landroid/graphics/Point;->x:I

    if-ge v5, v7, :cond_2f

    const/4 v6, 0x1

    add-int/2addr v5, v6

    .line 3667
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    div-long v6, v6, v37

    long-to-int v6, v6

    invoke-virtual {v12, v5, v6}, Landroid/graphics/Point;->set(II)V

    goto :goto_18

    :cond_2f
    const/4 v8, 0x1

    goto :goto_18

    :cond_30
    move-object/from16 v42, v5

    move v8, v6

    move-object/from16 v35, v11

    goto :goto_18

    :cond_31
    move-object/from16 v42, v5

    move v8, v6

    move-object/from16 v35, v11

    move-object/from16 v4, v32

    move-wide/from16 v9, v33

    :goto_18
    if-nez v8, :cond_32

    .line 3676
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

    if-nez v5, :cond_33

    const/16 v31, 0x1

    goto :goto_19

    :cond_32
    move/from16 v6, v31

    :cond_33
    move/from16 v31, v8

    .line 3680
    :goto_19
    sget-object v5, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 3683
    sget-boolean v7, Lorg/telegram/messenger/ApplicationLoader;->mainInterfacePaused:Z

    if-nez v7, :cond_34

    const/16 v33, 0x1

    goto :goto_1a

    :cond_34
    const/16 v33, 0x0

    .line 3691
    :goto_1a
    invoke-static {v9, v10, v6}, Lorg/telegram/messenger/NotificationsController;->getSharedPrefKey(JI)Ljava/lang/String;

    .line 3692
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

    if-eqz v7, :cond_37

    .line 3693
    iget-object v7, v15, Lorg/telegram/messenger/NotificationsController;->dialogsNotificationsFacade:Lorg/telegram/messenger/NotificationsSettingsFacade;

    const-string/jumbo v8, "vibrate_"

    const/16 v22, 0x0

    move-wide/from16 v9, v28

    move v11, v6

    move/from16 v12, v22

    invoke-virtual/range {v7 .. v12}, Lorg/telegram/messenger/NotificationsSettingsFacade;->getProperty(Ljava/lang/String;JII)I

    move-result v22

    .line 3694
    iget-object v7, v15, Lorg/telegram/messenger/NotificationsController;->dialogsNotificationsFacade:Lorg/telegram/messenger/NotificationsSettingsFacade;

    const-string v8, "priority_"

    const/4 v12, 0x3

    move-wide/from16 v9, v28

    move v11, v6

    invoke-virtual/range {v7 .. v12}, Lorg/telegram/messenger/NotificationsSettingsFacade;->getProperty(Ljava/lang/String;JII)I

    move-result v23

    .line 3695
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

    if-eqz v9, :cond_35

    .line 3698
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

    .line 3700
    :cond_35
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

    .line 3703
    :goto_1b
    iget-object v7, v15, Lorg/telegram/messenger/NotificationsController;->dialogsNotificationsFacade:Lorg/telegram/messenger/NotificationsSettingsFacade;

    const-string v8, "color_"

    const/4 v12, 0x0

    move-wide/from16 v9, v39

    move v11, v6

    invoke-virtual/range {v7 .. v12}, Lorg/telegram/messenger/NotificationsSettingsFacade;->getProperty(Ljava/lang/String;JII)I

    move-result v7

    if-eqz v7, :cond_36

    .line 3705
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_1c

    :cond_36
    const/4 v7, 0x0

    :goto_1c
    move-object v9, v7

    move/from16 v8, v22

    move/from16 v12, v23

    move-object/from16 v7, v28

    goto :goto_1d

    :cond_37
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
    if-eqz v20, :cond_3b

    if-eqz v18, :cond_39

    const-string v11, "ChannelSoundDocId"

    .line 3719
    invoke-interface {v4, v11, v13, v14}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    cmp-long v22, v10, v13

    if-eqz v22, :cond_38

    .line 3722
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v13

    iget-object v13, v13, Lorg/telegram/messenger/MediaDataController;->ringtoneDataStore:Lorg/telegram/messenger/ringtone/RingtoneDataStore;

    invoke-virtual {v13, v10, v11}, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->getSoundPath(J)Ljava/lang/String;

    move-result-object v10

    move-object v14, v10

    const/4 v10, 0x1

    goto :goto_1e

    :cond_38
    const-string v10, "ChannelSoundPath"

    .line 3724
    invoke-interface {v4, v10, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v14, v10

    const/4 v10, 0x0

    :goto_1e
    const-string/jumbo v11, "vibrate_channel"

    const/4 v13, 0x0

    .line 3726
    invoke-interface {v4, v11, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    const-string v13, "priority_channel"

    move/from16 v22, v10

    const/4 v10, 0x1

    .line 3727
    invoke-interface {v4, v13, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v13

    const-string v10, "ChannelLed"

    move/from16 v23, v11

    const v11, -0xffff01

    .line 3728
    invoke-interface {v4, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    move-object v11, v14

    move/from16 v14, v23

    const/16 v18, 0x2

    goto/16 :goto_21

    :cond_39
    const-string v10, "GroupSoundDocId"

    const-wide/16 v13, 0x0

    .line 3731
    invoke-interface {v4, v10, v13, v14}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    cmp-long v22, v10, v13

    if-eqz v22, :cond_3a

    .line 3734
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v13

    iget-object v13, v13, Lorg/telegram/messenger/MediaDataController;->ringtoneDataStore:Lorg/telegram/messenger/ringtone/RingtoneDataStore;

    invoke-virtual {v13, v10, v11}, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->getSoundPath(J)Ljava/lang/String;

    move-result-object v10

    move-object v14, v10

    const/4 v10, 0x1

    goto :goto_1f

    :cond_3a
    const-string v10, "GroupSoundPath"

    .line 3736
    invoke-interface {v4, v10, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v14, v10

    const/4 v10, 0x0

    :goto_1f
    const-string/jumbo v11, "vibrate_group"

    const/4 v13, 0x0

    .line 3738
    invoke-interface {v4, v11, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    const-string v13, "priority_group"

    move/from16 v22, v10

    const/4 v10, 0x1

    .line 3739
    invoke-interface {v4, v13, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v13

    const-string v10, "GroupLed"

    move/from16 v23, v11

    const v11, -0xffff01

    .line 3740
    invoke-interface {v4, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    move-object v11, v14

    move/from16 v14, v23

    const/16 v18, 0x0

    goto :goto_21

    :cond_3b
    move-wide v10, v13

    cmp-long v13, v25, v10

    if-eqz v13, :cond_3d

    const-string v13, "GlobalSoundDocId"

    .line 3744
    invoke-interface {v4, v13, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v13

    cmp-long v22, v13, v10

    if-eqz v22, :cond_3c

    .line 3747
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v10

    iget-object v10, v10, Lorg/telegram/messenger/MediaDataController;->ringtoneDataStore:Lorg/telegram/messenger/ringtone/RingtoneDataStore;

    invoke-virtual {v10, v13, v14}, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->getSoundPath(J)Ljava/lang/String;

    move-result-object v10

    move-object v14, v10

    const/4 v10, 0x1

    goto :goto_20

    :cond_3c
    const-string v10, "GlobalSoundPath"

    .line 3749
    invoke-interface {v4, v10, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v14, v10

    const/4 v10, 0x0

    :goto_20
    const-string/jumbo v11, "vibrate_messages"

    const/4 v13, 0x0

    .line 3751
    invoke-interface {v4, v11, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    const-string v13, "priority_messages"

    move/from16 v22, v10

    const/4 v10, 0x1

    .line 3752
    invoke-interface {v4, v13, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v13

    const-string v10, "MessagesLed"

    move/from16 v23, v11

    const v11, -0xffff01

    .line 3753
    invoke-interface {v4, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    move-object v11, v14

    move/from16 v14, v23

    const/16 v18, 0x1

    :goto_21
    move/from16 v23, v6

    goto :goto_22

    :cond_3d
    const v11, -0xffff01

    move/from16 v23, v6

    move v10, v11

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v18, 0x1

    const/16 v22, 0x0

    :goto_22
    const/4 v6, 0x4

    if-ne v14, v6, :cond_3e

    const/4 v14, 0x0

    const/16 v28, 0x1

    goto :goto_23

    :cond_3e
    const/16 v28, 0x0

    .line 3760
    :goto_23
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v35

    if-nez v35, :cond_3f

    invoke-static {v11, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v35

    if-nez v35, :cond_3f

    const/4 v6, 0x3

    const/4 v11, 0x0

    goto :goto_24

    :cond_3f
    move-object v7, v11

    move/from16 v34, v22

    const/4 v6, 0x3

    const/4 v11, 0x1

    :goto_24
    if-eq v12, v6, :cond_40

    if-eq v13, v12, :cond_40

    const/4 v11, 0x0

    goto :goto_25

    :cond_40
    move v12, v13

    :goto_25
    if-eqz v9, :cond_41

    .line 3769
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-eq v13, v10, :cond_41

    .line 3770
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/4 v11, 0x0

    :cond_41
    if-eqz v8, :cond_42

    const/4 v9, 0x4

    if-eq v8, v9, :cond_42

    if-eq v8, v14, :cond_42

    move v14, v8

    const/4 v13, 0x0

    goto :goto_26

    :cond_42
    move v13, v11

    :goto_26
    if-eqz v33, :cond_46

    const-string v8, "EnableInAppSounds"

    const/4 v9, 0x1

    .line 3778
    invoke-interface {v4, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_43

    const/4 v7, 0x0

    :cond_43
    const-string v8, "EnableInAppVibrate"

    .line 3781
    invoke-interface {v4, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_44

    const/4 v14, 0x2

    :cond_44
    const-string v8, "EnableInAppPriority"

    const/4 v9, 0x0

    .line 3784
    invoke-interface {v4, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    if-nez v8, :cond_45

    const/4 v12, 0x0

    goto :goto_27

    :cond_45
    const/4 v8, 0x2

    if-ne v12, v8, :cond_46

    const/4 v12, 0x1

    :cond_46
    :goto_27
    move/from16 v48, v14

    move-object v14, v7

    move/from16 v7, v48

    if-eqz v28, :cond_47

    const/4 v8, 0x2

    if-eq v7, v8, :cond_47

    .line 3792
    :try_start_4
    sget-object v8, Lorg/telegram/messenger/NotificationsController;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v8}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v8
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    if-eqz v8, :cond_47

    const/4 v11, 0x1

    if-eq v8, v11, :cond_47

    const/4 v7, 0x2

    goto :goto_28

    :catch_0
    move-exception v0

    move-object v8, v0

    .line 3797
    :try_start_5
    invoke-static {v8}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_47
    :goto_28
    if-eqz v31, :cond_48

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    .line 3808
    :cond_48
    new-instance v8, Landroid/content/Intent;

    sget-object v11, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v9, Lorg/telegram/ui/LaunchActivity;

    invoke-direct {v8, v11, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3809
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "com.tmessages.openchat"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v11, v7

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const v6, 0x7fffffff

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v6, 0x4000000

    .line 3810
    invoke-virtual {v8, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3812
    invoke-static/range {v39 .. v40}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v6

    if-nez v6, :cond_52

    .line 3813
    iget-object v6, v15, Lorg/telegram/messenger/NotificationsController;->pushDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v6}, Landroidx/collection/LongSparseArray;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4a

    if-eqz v20, :cond_49

    const-string v6, "chatId"

    move/from16 v20, v10

    move-wide/from16 v9, v44

    .line 3815
    invoke-virtual {v8, v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_29

    :cond_49
    move/from16 v20, v10

    const-wide/16 v6, 0x0

    cmp-long v9, v25, v6

    if-eqz v9, :cond_4b

    const-string/jumbo v6, "userId"

    move-wide/from16 v9, v25

    .line 3817
    invoke-virtual {v8, v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_29

    :cond_4a
    move/from16 v20, v10

    .line 3820
    :cond_4b
    :goto_29
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->needShowPasscode()Z

    move-result v6

    if-nez v6, :cond_50

    sget-boolean v6, Lorg/telegram/messenger/SharedConfig;->isWaitingForPasscodeEnter:Z

    if-eqz v6, :cond_4c

    goto/16 :goto_2a

    .line 3823
    :cond_4c
    iget-object v6, v15, Lorg/telegram/messenger/NotificationsController;->pushDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v6}, Landroidx/collection/LongSparseArray;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4f

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1c

    if-ge v6, v7, :cond_4f

    if-eqz v2, :cond_4e

    .line 3825
    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    if-eqz v6, :cond_4d

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v6, :cond_4d

    iget-wide v9, v6, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    const-wide/16 v25, 0x0

    cmp-long v7, v9, v25

    if-eqz v7, :cond_4d

    iget v7, v6, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    if-eqz v7, :cond_4d

    move-object v9, v6

    move/from16 v25, v13

    move-object v7, v14

    move-wide/from16 v13, v39

    move-object/from16 v6, v46

    goto :goto_2d

    :cond_4d
    move/from16 v25, v13

    move-object v7, v14

    move-wide/from16 v13, v39

    move-object/from16 v6, v46

    goto :goto_2c

    :cond_4e
    move-object/from16 v6, v46

    if-eqz v6, :cond_51

    .line 3829
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v7, :cond_51

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v7, :cond_51

    iget-wide v9, v7, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    const-wide/16 v25, 0x0

    cmp-long v9, v9, v25

    if-eqz v9, :cond_51

    iget v9, v7, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    if-eqz v9, :cond_51

    move-object v9, v7

    move/from16 v25, v13

    move-object v7, v14

    move-wide/from16 v13, v39

    goto :goto_2d

    :cond_4f
    move-object/from16 v6, v46

    goto :goto_2b

    :cond_50
    :goto_2a
    move-object/from16 v6, v46

    :cond_51
    :goto_2b
    move/from16 v25, v13

    move-object v7, v14

    move-wide/from16 v13, v39

    goto :goto_2c

    :cond_52
    move/from16 v20, v10

    move-object/from16 v6, v46

    .line 3836
    iget-object v7, v15, Lorg/telegram/messenger/NotificationsController;->pushDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v7}, Landroidx/collection/LongSparseArray;->size()I

    move-result v7

    const/4 v9, 0x1

    if-ne v7, v9, :cond_51

    sget-wide v9, Lorg/telegram/messenger/NotificationsController;->globalSecretChatId:J

    move/from16 v25, v13

    move-object v7, v14

    move-wide/from16 v13, v39

    cmp-long v9, v13, v9

    if-eqz v9, :cond_53

    const-string v9, "encId"

    .line 3837
    invoke-static {v13, v14}, Lorg/telegram/messenger/DialogObject;->getEncryptedChatId(J)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_53
    :goto_2c
    const/4 v9, 0x0

    .line 3840
    :goto_2d
    iget v10, v15, Lorg/telegram/messenger/BaseController;->currentAccount:I

    move-wide/from16 v39, v13

    move-object/from16 v13, v24

    invoke-virtual {v8, v13, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3841
    sget-object v10, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const/high16 v14, 0x44000000    # 512.0f

    move/from16 v24, v11

    const/4 v11, 0x0

    invoke-static {v10, v11, v8, v14}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    move-object/from16 v11, v29

    .line 3843
    invoke-virtual {v11, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    sget v14, Lorg/telegram/messenger/R$drawable;->notification:I

    .line 3844
    invoke-virtual {v3, v14}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    const/4 v14, 0x1

    .line 3845
    invoke-virtual {v3, v14}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    iget v14, v15, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    .line 3846
    invoke-virtual {v3, v14}, Landroidx/core/app/NotificationCompat$Builder;->setNumber(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    .line 3847
    invoke-virtual {v3, v8}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    iget-object v8, v15, Lorg/telegram/messenger/NotificationsController;->notificationGroup:Ljava/lang/String;

    .line 3848
    invoke-virtual {v3, v8}, Landroidx/core/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    const/4 v8, 0x1

    .line 3849
    invoke-virtual {v3, v8}, Landroidx/core/app/NotificationCompat$Builder;->setGroupSummary(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    .line 3850
    invoke-virtual {v3, v8}, Landroidx/core/app/NotificationCompat$Builder;->setShowWhen(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    move-object/from16 v8, v30

    iget-object v14, v8, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v14, v14, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move-object/from16 v29, v11

    int-to-long v10, v14

    mul-long v10, v10, v37

    .line 3851
    invoke-virtual {v3, v10, v11}, Landroidx/core/app/NotificationCompat$Builder;->setWhen(J)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    const v10, -0xee5306

    .line 3852
    invoke-virtual {v3, v10}, Landroidx/core/app/NotificationCompat$Builder;->setColor(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 3853
    sget v3, Lorg/telegram/messenger/R$drawable;->fork_notification:I

    move-object/from16 v10, v29

    invoke-virtual {v10, v3}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    sget-object v11, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    sget v14, Lorg/telegram/messenger/R$color;->fork_color:I

    invoke-static {v11, v14}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v11

    invoke-virtual {v3, v11}, Landroidx/core/app/NotificationCompat$Builder;->setColor(I)Landroidx/core/app/NotificationCompat$Builder;

    const-string v3, "msg"

    .line 3858
    invoke-virtual {v10, v3}, Landroidx/core/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    if-nez v2, :cond_54

    if-eqz v6, :cond_54

    .line 3859
    iget-object v2, v6, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    if-eqz v2, :cond_54

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_54

    .line 3860
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tel:+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v6, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroidx/core/app/NotificationCompat$Builder;->addPerson(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :cond_54
    const/high16 v2, 0xa000000

    .line 3864
    :try_start_6
    new-instance v3, Landroid/content/Intent;

    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v11, Lorg/telegram/messenger/NotificationDismissReceiver;

    invoke-direct {v3, v6, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v6, "messageDate"

    .line 3865
    iget-object v11, v8, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v11, v11, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    invoke-virtual {v3, v6, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3866
    iget v6, v15, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-virtual {v3, v13, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3867
    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const/4 v11, 0x1

    invoke-static {v6, v11, v3, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v10, v3}, Landroidx/core/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2e

    :catchall_0
    move-exception v0

    move-object v3, v0

    .line 3869
    :try_start_7
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_2e
    if-eqz v9, :cond_57

    .line 3873
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v3

    const-string v6, "50_50"

    const/4 v11, 0x0

    invoke-virtual {v3, v9, v11, v6}, Lorg/telegram/messenger/ImageLoader;->getImageFromMemory(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v3

    if-eqz v3, :cond_55

    .line 3875
    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v10, v3}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_30

    .line 3878
    :cond_55
    :try_start_8
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    const/4 v6, 0x1

    invoke-virtual {v3, v9, v6}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v3

    .line 3879
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_58

    const/high16 v6, 0x43200000    # 160.0f

    const/16 v9, 0x32

    .line 3880
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v6, v9

    .line 3881
    new-instance v9, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v9}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/high16 v14, 0x3f800000    # 1.0f

    cmpg-float v14, v6, v14

    if-gez v14, :cond_56

    const/4 v6, 0x1

    goto :goto_2f

    :cond_56
    float-to-int v6, v6

    .line 3882
    :goto_2f
    iput v6, v9, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 3883
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v9}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_58

    .line 3885
    invoke-virtual {v10, v3}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_30

    :cond_57
    const/4 v11, 0x0

    :catchall_1
    :cond_58
    :goto_30
    const/4 v3, 0x5

    const/16 v6, 0x1a

    if-eqz p1, :cond_5e

    const/4 v9, 0x1

    if-ne v1, v9, :cond_59

    goto :goto_32

    :cond_59
    if-nez v12, :cond_5a

    const/4 v9, 0x0

    .line 3902
    :try_start_9
    invoke-virtual {v10, v9}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 3903
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v12, v6, :cond_5f

    const/4 v12, 0x3

    goto :goto_34

    :cond_5a
    const/4 v14, 0x1

    if-eq v12, v14, :cond_5d

    const/4 v14, 0x2

    if-ne v12, v14, :cond_5b

    const/4 v12, 0x1

    goto :goto_31

    :cond_5b
    const/4 v14, 0x4

    if-ne v12, v14, :cond_5c

    const/4 v12, -0x2

    .line 3912
    invoke-virtual {v10, v12}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 3913
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v12, v6, :cond_5f

    const/4 v12, 0x1

    goto :goto_34

    :cond_5c
    if-ne v12, v3, :cond_5f

    const/4 v12, -0x1

    .line 3917
    invoke-virtual {v10, v12}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 3918
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v12, v6, :cond_5f

    goto :goto_33

    :cond_5d
    move v12, v14

    .line 3907
    :goto_31
    invoke-virtual {v10, v12}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 3908
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v12, v6, :cond_5f

    const/4 v12, 0x4

    goto :goto_34

    :cond_5e
    :goto_32
    const/4 v12, -0x1

    .line 3896
    invoke-virtual {v10, v12}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 3897
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v12, v6, :cond_5f

    :goto_33
    const/4 v12, 0x2

    goto :goto_34

    :cond_5f
    const/4 v12, 0x0

    :goto_34
    const/4 v14, 0x1

    if-eq v1, v14, :cond_70

    if-nez v31, :cond_70

    if-eqz v33, :cond_60

    const-string v1, "EnableInAppPreview"

    .line 3925
    invoke-interface {v4, v1, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_62

    if-eqz v27, :cond_62

    .line 3926
    :cond_60
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v4, 0x64

    if-le v1, v4, :cond_61

    .line 3927
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v9, v27

    const/4 v14, 0x0

    invoke-virtual {v9, v14, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v9, 0x20

    const/16 v11, 0xa

    invoke-virtual {v4, v11, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "..."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_35

    :cond_61
    move-object/from16 v9, v27

    move-object v1, v9

    .line 3929
    :goto_35
    invoke-virtual {v10, v1}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    :cond_62
    if-eqz v7, :cond_69

    const-string v1, "NoSound"

    .line 3931
    invoke-virtual {v7, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_69

    .line 3932
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v6, :cond_66

    const-string v1, "Default"

    .line 3933
    invoke-virtual {v7, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_65

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_63

    goto :goto_36

    :cond_63
    if-eqz v34, :cond_64

    .line 3937
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

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v3, v4}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 3938
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v4, "com.android.systemui"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v1, v5}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    goto/16 :goto_38

    .line 3940
    :cond_64
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_38

    .line 3934
    :cond_65
    :goto_36
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    goto :goto_38

    .line 3944
    :cond_66
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_67

    .line 3945
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v10, v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;I)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_37

    :cond_67
    const/16 v4, 0x18

    if-lt v1, v4, :cond_68

    const-string v1, "file://"

    .line 3947
    invoke-virtual {v7, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_68

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->isInternalUri(Landroid/net/Uri;)Z

    move-result v1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    if-nez v1, :cond_68

    .line 3949
    :try_start_a
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getApplicationId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".provider"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/io/File;

    const-string v6, "file://"

    move-object/from16 v9, v47

    invoke-virtual {v7, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v4, v5}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 3950
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v5, "com.android.systemui"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v1, v6}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 3951
    invoke-virtual {v10, v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;I)Landroidx/core/app/NotificationCompat$Builder;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_37

    .line 3953
    :catch_1
    :try_start_b
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v10, v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;I)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_37

    .line 3956
    :cond_68
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v10, v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;I)Landroidx/core/app/NotificationCompat$Builder;

    :cond_69
    :goto_37
    const/4 v1, 0x0

    :goto_38
    if-eqz v20, :cond_6a

    const/16 v3, 0x3e8

    const/16 v4, 0x3e8

    move/from16 v9, v20

    .line 3962
    invoke-virtual {v10, v9, v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setLights(III)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_39

    :cond_6a
    move/from16 v9, v20

    :goto_39
    move/from16 v7, v24

    const/4 v3, 0x2

    if-ne v7, v3, :cond_6b

    new-array v4, v3, [J

    const/4 v3, 0x0

    const-wide/16 v5, 0x0

    aput-wide v5, v4, v3

    const/4 v7, 0x1

    aput-wide v5, v4, v7

    .line 3965
    invoke-virtual {v10, v4}, Landroidx/core/app/NotificationCompat$Builder;->setVibrate([J)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_3c

    :cond_6b
    const/4 v4, 0x1

    if-ne v7, v4, :cond_6c

    const/4 v5, 0x4

    new-array v5, v5, [J

    const/4 v3, 0x0

    const-wide/16 v6, 0x0

    aput-wide v6, v5, v3

    const-wide/16 v19, 0x64

    aput-wide v19, v5, v4

    const/4 v4, 0x2

    aput-wide v6, v5, v4

    const-wide/16 v6, 0x64

    const/4 v4, 0x3

    aput-wide v6, v5, v4

    .line 3967
    invoke-virtual {v10, v5}, Landroidx/core/app/NotificationCompat$Builder;->setVibrate([J)Landroidx/core/app/NotificationCompat$Builder;

    :goto_3a
    move-object v11, v1

    move-object/from16 v21, v5

    goto :goto_3d

    :cond_6c
    if-eqz v7, :cond_6f

    const/4 v4, 0x4

    if-ne v7, v4, :cond_6d

    goto :goto_3b

    :cond_6d
    const/4 v4, 0x3

    if-ne v7, v4, :cond_6e

    const/4 v4, 0x2

    new-array v5, v4, [J

    const-wide/16 v3, 0x0

    const/4 v6, 0x0

    aput-wide v3, v5, v6

    const/4 v4, 0x1

    aput-wide v37, v5, v4

    .line 3972
    invoke-virtual {v10, v5}, Landroidx/core/app/NotificationCompat$Builder;->setVibrate([J)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_3a

    :cond_6e
    move-object v11, v1

    const/4 v3, 0x1

    const/16 v21, 0x0

    goto :goto_3e

    :cond_6f
    :goto_3b
    const/4 v4, 0x2

    .line 3969
    invoke-virtual {v10, v4}, Landroidx/core/app/NotificationCompat$Builder;->setDefaults(I)Landroidx/core/app/NotificationCompat$Builder;

    const/4 v3, 0x0

    new-array v4, v3, [J

    :goto_3c
    move-object v11, v1

    move-object/from16 v21, v4

    :goto_3d
    const/4 v3, 0x1

    goto :goto_3e

    :cond_70
    move/from16 v9, v20

    const/4 v1, 0x2

    new-array v4, v1, [J

    const/4 v1, 0x0

    const-wide/16 v5, 0x0

    aput-wide v5, v4, v1

    const/4 v3, 0x1

    aput-wide v5, v4, v3

    .line 3975
    invoke-virtual {v10, v4}, Landroidx/core/app/NotificationCompat$Builder;->setVibrate([J)Landroidx/core/app/NotificationCompat$Builder;

    move-object/from16 v21, v4

    const/4 v11, 0x0

    .line 3979
    :goto_3e
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->needShowPasscode()Z

    move-result v4

    if-nez v4, :cond_75

    sget-boolean v4, Lorg/telegram/messenger/SharedConfig;->isWaitingForPasscodeEnter:Z

    if-nez v4, :cond_75

    invoke-virtual {v8}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v4

    const-wide/32 v6, 0xbdb28

    cmp-long v4, v4, v6

    if-nez v4, :cond_75

    .line 3980
    iget-object v4, v8, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    if-eqz v4, :cond_75

    .line 3981
    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;->rows:Ljava/util/ArrayList;

    .line 3982
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    const/16 v19, 0x0

    :goto_3f
    if-ge v6, v5, :cond_74

    .line 3983
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRow;

    .line 3984
    iget-object v14, v7, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRow;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/4 v1, 0x0

    :goto_40
    if-ge v1, v14, :cond_73

    .line 3985
    iget-object v3, v7, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRow;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$KeyboardButton;

    .line 3986
    instance-of v2, v3, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonCallback;

    if-eqz v2, :cond_72

    .line 3987
    new-instance v2, Landroid/content/Intent;

    move-object/from16 v22, v4

    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    move/from16 p1, v5

    const-class v5, Lorg/telegram/messenger/NotificationCallbackReceiver;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3988
    iget v4, v15, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-virtual {v2, v13, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "did"

    move-object/from16 v26, v11

    move/from16 v24, v12

    move-wide/from16 v11, v39

    .line 3989
    invoke-virtual {v2, v4, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3990
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->data:[B

    if-eqz v4, :cond_71

    const-string v5, "data"

    .line 3991
    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    :cond_71
    const-string v4, "mid"

    .line 3993
    invoke-virtual {v8}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3994
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->text:Ljava/lang/String;

    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    iget v5, v15, Lorg/telegram/messenger/NotificationsController;->lastButtonId:I

    move-object/from16 v27, v7

    add-int/lit8 v7, v5, 0x1

    iput v7, v15, Lorg/telegram/messenger/NotificationsController;->lastButtonId:I

    const/high16 v7, 0xa000000

    invoke-static {v4, v5, v2, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v10, v4, v3, v2}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    const/16 v19, 0x1

    goto :goto_41

    :cond_72
    move-object/from16 v22, v4

    move/from16 p1, v5

    move-object/from16 v27, v7

    move-object/from16 v26, v11

    move/from16 v24, v12

    move-wide/from16 v11, v39

    const/4 v4, 0x0

    :goto_41
    add-int/lit8 v1, v1, 0x1

    move/from16 v5, p1

    move-wide/from16 v39, v11

    move-object/from16 v4, v22

    move/from16 v12, v24

    move-object/from16 v11, v26

    move-object/from16 v7, v27

    const/high16 v2, 0xa000000

    const/4 v3, 0x1

    goto :goto_40

    :cond_73
    move-object/from16 v22, v4

    move/from16 p1, v5

    move-object/from16 v26, v11

    move/from16 v24, v12

    move-wide/from16 v11, v39

    const/4 v4, 0x0

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v4, v22

    move/from16 v12, v24

    move-object/from16 v11, v26

    const/high16 v2, 0xa000000

    const/4 v3, 0x1

    goto/16 :goto_3f

    :cond_74
    move-object/from16 v26, v11

    move/from16 v24, v12

    move-wide/from16 v11, v39

    move/from16 v3, v19

    goto :goto_42

    :cond_75
    move-object/from16 v26, v11

    move/from16 v24, v12

    move-wide/from16 v11, v39

    const/4 v4, 0x0

    move v3, v4

    :goto_42
    if-nez v3, :cond_77

    .line 4002
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

    .line 4003
    new-instance v2, Landroid/content/Intent;

    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v4, Lorg/telegram/messenger/PopupReplyReceiver;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4004
    iget v3, v15, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-virtual {v2, v13, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v3, 0x13

    if-gt v1, v3, :cond_76

    .line 4006
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

    invoke-virtual {v10, v1, v3, v2}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_43

    .line 4008
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

    invoke-virtual {v10, v1, v3, v2}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    :cond_77
    :goto_43
    move-object/from16 v1, p0

    move-object v2, v10

    move-object/from16 v3, v42

    move-wide v4, v11

    move/from16 v6, v23

    move-object/from16 v7, v17

    move-object/from16 v8, v21

    move-object/from16 v10, v26

    move/from16 v11, v24

    move/from16 v12, v25

    move/from16 v13, v33

    move/from16 v14, v31

    move/from16 v15, v18

    .line 4011
    invoke-direct/range {v1 .. v15}, Lorg/telegram/messenger/NotificationsController;->showExtraNotifications(Landroidx/core/app/NotificationCompat$Builder;Ljava/lang/String;JILjava/lang/String;[JILandroid/net/Uri;IZZZI)V

    .line 4012
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/NotificationsController;->scheduleNotificationRepeat()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    goto :goto_44

    :catch_2
    move-exception v0

    move-object v1, v0

    .line 4014
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_44
    return-void

    .line 3470
    :cond_78
    :goto_45
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/NotificationsController;->dismissNotification()V

    return-void
.end method

.method private unsupportedNotificationShortcut()Z
    .locals 2

    .line 3025
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

    .line 3210
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/NotificationsController;->ensureGroupsCreated()V

    .line 3212
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/AccountInstance;->getNotificationsSettings()Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "groups"

    const-string v8, "private"

    const-string v9, "channels"

    const/4 v11, 0x2

    if-eqz p11, :cond_0

    .line 3218
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

    .line 3222
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

    .line 3225
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v1, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "overwrite_group"

    goto :goto_0

    .line 3228
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

    .line 3233
    invoke-static/range {p1 .. p2}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v16

    if-eqz v16, :cond_3

    const/16 v16, 0x1

    goto :goto_1

    :cond_3
    move/from16 v16, v15

    :goto_1
    if-nez p10, :cond_4

    if-eqz v13, :cond_4

    .line 3234
    invoke-interface {v6, v13, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    if-eqz v13, :cond_4

    const/4 v13, 0x1

    goto :goto_2

    :cond_4
    move v13, v15

    :goto_2
    if-nez v4, :cond_5

    .line 3237
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "NoSound"

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_3

    :cond_5
    invoke-virtual/range {p7 .. p7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    :goto_3
    invoke-static {v10}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v14, 0x5

    if-eqz v10, :cond_6

    .line 3238
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-le v11, v14, :cond_6

    .line 3239
    invoke-virtual {v10, v15, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    :cond_6
    const-string v11, "_"

    if-eqz p11, :cond_7

    .line 3242
    sget v7, Lorg/telegram/messenger/R$string;->NotificationsSilent:I

    const-string v8, "NotificationsSilent"

    invoke-static {v8, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "silent"

    goto :goto_8

    :cond_7
    if-eqz p9, :cond_e

    if-eqz p10, :cond_8

    .line 3245
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

    .line 3255
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

    .line 3258
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

    .line 3260
    :goto_8
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    .line 3261
    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3262
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "_s"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v6, v14, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 3264
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 p3, v7

    const-string v7, "secret"

    move-object/from16 v18, v12

    if-eqz v10, :cond_37

    .line 3268
    sget-object v12, Lorg/telegram/messenger/NotificationsController;->systemNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v12, v10}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v12

    .line 3269
    sget-boolean v19, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    move-object/from16 v20, v11

    const-string v11, " = "

    if-eqz v19, :cond_11

    .line 3270
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

    .line 3274
    invoke-virtual {v12}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v4

    .line 3275
    invoke-virtual {v12}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v15

    .line 3276
    invoke-virtual {v12}, Landroid/app/NotificationChannel;->getVibrationPattern()[J

    move-result-object v21

    move/from16 v22, v13

    .line 3277
    invoke-virtual {v12}, Landroid/app/NotificationChannel;->shouldVibrate()Z

    move-result v13

    if-nez v13, :cond_12

    if-nez v21, :cond_12

    move-object/from16 v23, v8

    move/from16 v24, v13

    const/4 v8, 0x2

    new-array v13, v8, [J

    .line 3279
    fill-array-data v13, :array_0

    goto :goto_a

    :cond_12
    move-object/from16 v23, v8

    move/from16 v24, v13

    move-object/from16 v13, v21

    .line 3281
    :goto_a
    invoke-virtual {v12}, Landroid/app/NotificationChannel;->getLightColor()I

    move-result v8

    if-eqz v13, :cond_13

    const/4 v12, 0x0

    .line 3283
    :goto_b
    array-length v5, v13

    if-ge v12, v5, :cond_13

    .line 3284
    aget-wide v2, v13, v12

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v12, v12, 0x1

    move-wide/from16 v2, p1

    goto :goto_b

    .line 3287
    :cond_13
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz v15, :cond_14

    .line 3289
    invoke-virtual {v15}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3291
    :cond_14
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-nez p9, :cond_15

    if-eqz v16, :cond_15

    .line 3293
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3295
    :cond_15
    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v2, :cond_16

    .line 3296
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

    .line 3298
    :cond_16
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 3299
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3300
    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_33

    const-string v3, "notify2_"

    if-nez v4, :cond_19

    .line 3303
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    if-eqz p9, :cond_18

    if-nez p10, :cond_17

    .line 3306
    invoke-static/range {p12 .. p12}, Lorg/telegram/messenger/NotificationsController;->getGlobalNotificationsKey(I)Ljava/lang/String;

    move-result-object v3

    const v5, 0x7fffffff

    invoke-interface {v4, v3, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3307
    invoke-virtual {v1, v0}, Lorg/telegram/messenger/NotificationsController;->updateServerNotificationsSettings(I)V

    :cond_17
    move-wide/from16 v11, p1

    const/4 v5, 0x1

    goto :goto_c

    .line 3310
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

    .line 3311
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

    .line 3316
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

    .line 3328
    invoke-static/range {p12 .. p12}, Lorg/telegram/messenger/NotificationsController;->getGlobalNotificationsKey(I)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    invoke-interface {v5, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1e

    const-string v2, "priority_channel"

    .line 3330
    invoke-interface {v5, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_f

    :cond_1e
    if-nez v0, :cond_1f

    const-string v2, "priority_group"

    .line 3332
    invoke-interface {v5, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_f

    :cond_1f
    const-string v2, "priority_messages"

    .line 3334
    invoke-interface {v5, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_f

    .line 3337
    :cond_20
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v5, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3338
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyuntil_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3339
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

    .line 3344
    :goto_10
    invoke-direct {v1, v2}, Lorg/telegram/messenger/NotificationsController;->isEmptyVibration([J)Z

    move-result v3

    const/16 v17, 0x1

    xor-int/lit8 v3, v3, 0x1

    move/from16 v2, v24

    if-eq v3, v2, :cond_2c

    if-nez p10, :cond_2b

    if-nez v4, :cond_23

    .line 3348
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

    .line 3352
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

    .line 3354
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

    .line 3356
    invoke-interface {v4, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_15

    .line 3359
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

    .line 3368
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    :cond_2d
    if-eqz p9, :cond_30

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2e

    const-string v0, "ChannelLed"

    .line 3372
    invoke-interface {v4, v0, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_17

    :cond_2e
    if-nez v0, :cond_2f

    const-string v0, "GroupLed"

    .line 3374
    invoke-interface {v4, v0, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_17

    :cond_2f
    const-string v0, "MessagesLed"

    .line 3376
    invoke-interface {v4, v0, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_17

    .line 3379
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

    .line 3386
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

    .line 3397
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

    .line 3398
    sget-boolean v3, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v3, :cond_39

    .line 3399
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

    .line 3402
    :goto_1f
    array-length v3, v13

    if-ge v0, v3, :cond_3b

    move-object v3, v6

    .line 3403
    aget-wide v5, v13, v0

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    move-object v6, v3

    goto :goto_1f

    :cond_3b
    move-object v3, v6

    .line 3405
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v5, p7

    if-eqz v5, :cond_3c

    .line 3407
    invoke-virtual/range {p7 .. p7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3409
    :cond_3c
    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-nez p9, :cond_3d

    if-eqz v16, :cond_3d

    .line 3411
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3413
    :cond_3d
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez p11, :cond_40

    if-eqz v10, :cond_40

    if-nez v22, :cond_3e

    .line 3415
    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    .line 3417
    :cond_3e
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/NotificationsController;->systemNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v10}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_20

    :catch_0
    move-exception v0

    .line 3419
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 3421
    :goto_20
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_3f

    .line 3422
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

    .line 3429
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

    .line 3431
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

    .line 3433
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

    .line 3434
    invoke-virtual {v6, v12}, Landroid/app/NotificationChannel;->setGroup(Ljava/lang/String;)V

    if-eqz v2, :cond_43

    const/4 v7, 0x1

    .line 3436
    invoke-virtual {v6, v7}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 3437
    invoke-virtual {v6, v2}, Landroid/app/NotificationChannel;->setLightColor(I)V

    const/4 v2, 0x0

    goto :goto_24

    :cond_43
    const/4 v2, 0x0

    const/4 v7, 0x1

    .line 3439
    invoke-virtual {v6, v2}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 3441
    :goto_24
    invoke-direct {v1, v13}, Lorg/telegram/messenger/NotificationsController;->isEmptyVibration([J)Z

    move-result v10

    if-nez v10, :cond_44

    .line 3442
    invoke-virtual {v6, v7}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 3443
    array-length v2, v13

    if-lez v2, :cond_45

    .line 3444
    invoke-virtual {v6, v13}, Landroid/app/NotificationChannel;->setVibrationPattern([J)V

    goto :goto_25

    .line 3447
    :cond_44
    invoke-virtual {v6, v2}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 3449
    :cond_45
    :goto_25
    new-instance v2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v7, 0x4

    .line 3450
    invoke-virtual {v2, v7}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    const/4 v7, 0x5

    .line 3451
    invoke-virtual {v2, v7}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    if-eqz v5, :cond_46

    .line 3453
    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    invoke-virtual {v6, v5, v2}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    goto :goto_26

    .line 3456
    :cond_46
    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v6, v5, v2}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 3458
    :goto_26
    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v2, :cond_47

    .line 3459
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "create new channel "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 3461
    :cond_47
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iput-wide v10, v1, Lorg/telegram/messenger/NotificationsController;->lastNotificationChannelCreateTime:J

    .line 3462
    sget-object v2, Lorg/telegram/messenger/NotificationsController;->systemNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v2, v6}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 3463
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

    .line 339
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController;->popupMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 340
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController;->popupReplyMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 341
    iput-boolean v0, p0, Lorg/telegram/messenger/NotificationsController;->channelGroupsCreated:Z

    .line 342
    sget-object v0, Lorg/telegram/messenger/NotificationsController;->notificationsQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/messenger/NotificationsController;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public clearDialogNotificationsSettings(JI)V
    .locals 5

    .line 4841
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getNotificationsSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 4842
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4843
    invoke-static {p1, p2, p3}, Lorg/telegram/messenger/NotificationsController;->getSharedPrefKey(JI)Ljava/lang/String;

    move-result-object v1

    .line 4844
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

    .line 4845
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, p1, p2, v2, v3}, Lorg/telegram/messenger/MessagesStorage;->setDialogFlags(JJ)V

    .line 4846
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Dialog;

    if-eqz v1, :cond_0

    .line 4848
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings;-><init>()V

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$Dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    .line 4850
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4851
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationsController()Lorg/telegram/messenger/NotificationsController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, p3, v1}, Lorg/telegram/messenger/NotificationsController;->updateServerNotificationsSettings(JIZ)V

    return-void
.end method

.method public deleteAllNotificationChannels()V
    .locals 2

    .line 2996
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    return-void

    .line 2999
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

    .line 2861
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/telegram/messenger/NotificationsController;->deleteNotificationChannel(JII)V

    return-void
.end method

.method public deleteNotificationChannel(JII)V
    .locals 8

    .line 2911
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    return-void

    .line 2914
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

    .line 2918
    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/NotificationsController;->deleteNotificationChannelGlobal(II)V

    return-void
.end method

.method public deleteNotificationChannelGlobal(II)V
    .locals 2

    .line 2989
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    return-void

    .line 2992
    :cond_0
    sget-object v0, Lorg/telegram/messenger/NotificationsController;->notificationsQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda22;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/messenger/NotificationsController;II)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public deleteNotificationChannelGlobalInternal(II)V
    .locals 11

    .line 2922
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    return-void

    .line 2926
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getNotificationsSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2927
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

    .line 2937
    :goto_0
    invoke-interface {v0, v7, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 2939
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

    .line 2941
    :try_start_2
    sget-object v7, Lorg/telegram/messenger/NotificationsController;->systemNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v7, v8}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v7

    .line 2943
    :try_start_3
    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2945
    :goto_1
    sget-boolean v7, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v7, :cond_4

    .line 2946
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

    .line 2960
    :goto_2
    invoke-interface {v0, p2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 2962
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

    .line 2964
    :try_start_4
    sget-object p2, Lorg/telegram/messenger/NotificationsController;->systemNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p2, v0}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    :catch_1
    move-exception p2

    .line 2966
    :try_start_5
    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2968
    :goto_3
    sget-boolean p2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p2, :cond_8

    .line 2969
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

    .line 2981
    :goto_4
    invoke-interface {v1, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2982
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_5

    :catch_2
    move-exception p1

    .line 2984
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_5
    return-void
.end method

.method protected ensureGroupsCreated()V
    .locals 17

    move-object/from16 v1, p0

    .line 3097
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getNotificationsSettings()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 3098
    iget-object v0, v1, Lorg/telegram/messenger/NotificationsController;->groupsCreated:Ljava/lang/Boolean;

    const-string v3, "groupsCreated4"

    const/4 v4, 0x0

    if-nez v0, :cond_0

    .line 3099
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/messenger/NotificationsController;->groupsCreated:Ljava/lang/Boolean;

    .line 3101
    :cond_0
    iget-object v0, v1, Lorg/telegram/messenger/NotificationsController;->groupsCreated:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v0, :cond_d

    .line 3103
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, v1, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "channel"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3104
    sget-object v7, Lorg/telegram/messenger/NotificationsController;->systemNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v7}, Landroid/app/NotificationManager;->getNotificationChannels()Ljava/util/List;

    move-result-object v7

    .line 3105
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    move v9, v4

    move-object v10, v6

    :goto_0
    if-ge v9, v8, :cond_b

    .line 3108
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/NotificationChannel;

    .line 3109
    invoke-virtual {v11}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v12

    .line 3110
    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 3111
    invoke-virtual {v11}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v11

    const/4 v13, 0x4

    if-eq v11, v13, :cond_9

    const/4 v13, 0x5

    if-eq v11, v13, :cond_9

    const-string v11, "_ia_"

    .line 3113
    invoke-virtual {v12, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    goto/16 :goto_1

    :cond_1
    const-string v11, "_channels_"

    .line 3115
    invoke-virtual {v12, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    if-nez v10, :cond_2

    .line 3117
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/messenger/AccountInstance;->getNotificationsSettings()Landroid/content/SharedPreferences;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    :cond_2
    const-string v11, "priority_channel"

    .line 3119
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

    .line 3120
    invoke-virtual {v12, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v13, "priority_group"

    if-eqz v11, :cond_5

    if-nez v10, :cond_4

    .line 3122
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/messenger/AccountInstance;->getNotificationsSettings()Landroid/content/SharedPreferences;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    .line 3124
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

    .line 3125
    invoke-virtual {v12, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_7

    if-nez v10, :cond_6

    .line 3127
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/messenger/AccountInstance;->getNotificationsSettings()Landroid/content/SharedPreferences;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    :cond_6
    const-string v11, "priority_messages"

    .line 3129
    invoke-interface {v10, v11}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3130
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

    .line 3132
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

    .line 3135
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/messenger/AccountInstance;->getNotificationsSettings()Landroid/content/SharedPreferences;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    .line 3137
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

    .line 3141
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

    .line 3145
    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 3148
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 3150
    :cond_c
    :goto_2
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3151
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, v1, Lorg/telegram/messenger/NotificationsController;->groupsCreated:Ljava/lang/Boolean;

    .line 3153
    :cond_d
    iget-boolean v0, v1, Lorg/telegram/messenger/NotificationsController;->channelGroupsCreated:Z

    if-nez v0, :cond_1c

    .line 3154
    sget-object v0, Lorg/telegram/messenger/NotificationsController;->systemNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getNotificationChannelGroups()Ljava/util/List;

    move-result-object v0

    .line 3155
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "channels"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3156
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "groups"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3157
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "private"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3158
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "other"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v1, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3159
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    move-object v9, v7

    move-object v7, v4

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v8, :cond_13

    .line 3160
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/NotificationChannelGroup;

    invoke-virtual {v10}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v10

    if-eqz v2, :cond_e

    .line 3161
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    move-object v2, v6

    goto :goto_4

    :cond_e
    if-eqz v3, :cond_f

    .line 3163
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    move-object v3, v6

    goto :goto_4

    :cond_f
    if-eqz v7, :cond_10

    .line 3165
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    move-object v7, v6

    goto :goto_4

    :cond_10
    if-eqz v9, :cond_11

    .line 3167
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

    .line 3176
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

    .line 3178
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    :cond_15
    if-eqz v0, :cond_16

    .line 3182
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

    .line 3187
    :goto_6
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-eqz v2, :cond_17

    .line 3189
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

    .line 3192
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

    .line 3195
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

    .line 3198
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

    .line 3201
    :cond_1a
    sget-object v0, Lorg/telegram/messenger/NotificationsController;->systemNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v4}, Landroid/app/NotificationManager;->createNotificationChannelGroups(Ljava/util/List;)V

    .line 3204
    :cond_1b
    iput-boolean v5, v1, Lorg/telegram/messenger/NotificationsController;->channelGroupsCreated:Z

    :cond_1c
    return-void
.end method

.method protected forceShowPopupForReply()V
    .locals 2

    .line 453
    sget-object v0, Lorg/telegram/messenger/NotificationsController;->notificationsQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/messenger/NotificationsController;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getNotificationsSettingsFacade()Lorg/telegram/messenger/NotificationsSettingsFacade;
    .locals 1

    .line 5111
    iget-object v0, p0, Lorg/telegram/messenger/NotificationsController;->dialogsNotificationsFacade:Lorg/telegram/messenger/NotificationsSettingsFacade;

    return-object v0
.end method

.method public getTotalUnreadCount()I
    .locals 1

    .line 1056
    iget v0, p0, Lorg/telegram/messenger/NotificationsController;->total_unread_count:I

    return v0
.end method

.method public hasMessagesToReply()Z
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    .line 440
    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 441
    iget-object v2, p0, Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    .line 442
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v3

    .line 443
    iget-object v5, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-boolean v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->mentioned:Z

    if-eqz v6, :cond_0

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$TL_messageActionPinMessage;

    if-nez v5, :cond_2

    .line 444
    :cond_0
    invoke-static {v3, v4}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

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

    .line 2737
    sget-object v0, Lorg/telegram/messenger/NotificationsController;->notificationsQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/messenger/NotificationsController;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public isGlobalNotificationsEnabled(I)Z
    .locals 2

    .line 5065
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

    .line 5038
    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/messenger/NotificationsController;->isGlobalNotificationsEnabled(JLjava/lang/Boolean;)Z

    move-result p1

    return p1
.end method

.method public isGlobalNotificationsEnabled(JLjava/lang/Boolean;)Z
    .locals 3

    .line 5043
    invoke-static {p1, p2}, Lorg/telegram/messenger/DialogObject;->isChatDialog(J)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    if-eqz p3, :cond_1

    .line 5045
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_0

    .line 5051
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    neg-long p1, p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p3, p1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    .line 5052
    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    .line 5061
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

    .line 5115
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

    .line 5087
    iget p4, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {p4}, Lorg/telegram/messenger/NotificationsController;->getInstance(I)Lorg/telegram/messenger/NotificationsController;

    move-result-object p4

    const v0, 0x7fffffff

    invoke-virtual {p4, p1, p2, p3, v0}, Lorg/telegram/messenger/NotificationsController;->muteUntil(JII)V

    goto/16 :goto_2

    .line 5089
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
    move v1, v0

    .line 5091
    :goto_0
    iget v2, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getNotificationsSettings(I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 5092
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "notify2_"

    if-eqz p4, :cond_2

    if-nez v1, :cond_2

    .line 5094
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

    .line 5096
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

    .line 5099
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p4

    const-wide/16 v0, 0x0

    invoke-virtual {p4, p1, p2, v0, v1}, Lorg/telegram/messenger/MessagesStorage;->setDialogFlags(JJ)V

    .line 5100
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p4

    iget-object p4, p4, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Landroidx/collection/LongSparseArray;

    invoke-virtual {p4, p1, p2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/telegram/tgnet/TLRPC$Dialog;

    if-eqz p4, :cond_3

    .line 5102
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings;-><init>()V

    iput-object v0, p4, Lorg/telegram/tgnet/TLRPC$Dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    .line 5105
    :cond_3
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 5106
    invoke-virtual {p0, p1, p2, p3}, Lorg/telegram/messenger/NotificationsController;->updateServerNotificationsSettings(JI)V

    :goto_2
    return-void
.end method

.method public muteUntil(JII)V
    .locals 10

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_5

    .line 302
    iget v2, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getNotificationsSettings(I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 303
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    if-eqz p3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 306
    :goto_0
    iget v4, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/NotificationsController;->getInstance(I)Lorg/telegram/messenger/NotificationsController;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Lorg/telegram/messenger/NotificationsController;->isGlobalNotificationsEnabled(J)Z

    move-result v4

    .line 308
    invoke-static {p1, p2, p3}, Lorg/telegram/messenger/NotificationsController;->getSharedPrefKey(JI)Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x1

    const v8, 0x7fffffff

    const-string v9, "notify2_"

    if-ne p4, v8, :cond_2

    if-nez v4, :cond_1

    if-nez v3, :cond_1

    .line 311
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 314
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

    .line 318
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 319
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

    .line 322
    :goto_1
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-nez p3, :cond_4

    .line 324
    iget v2, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/NotificationsController;->getInstance(I)Lorg/telegram/messenger/NotificationsController;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lorg/telegram/messenger/NotificationsController;->removeNotificationsForDialog(J)V

    .line 325
    iget v2, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    invoke-virtual {v2, p1, p2, v0, v1}, Lorg/telegram/messenger/MessagesStorage;->setDialogFlags(JJ)V

    .line 326
    iget v0, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Dialog;

    if-eqz v0, :cond_4

    .line 328
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    if-ne p4, v8, :cond_3

    if-eqz v4, :cond_4

    .line 330
    :cond_3
    iput p4, v1, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    .line 334
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

    .line 4788
    iget-boolean v0, p0, Lorg/telegram/messenger/NotificationsController;->inChatSoundEnabled:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->isRecordingAudio()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4792
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

    .line 4796
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 4798
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

    .line 1060
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1061
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

    .line 766
    invoke-virtual {p1}, Landroidx/collection/LongSparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 769
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 770
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

    .line 1185
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p4, v1}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 1186
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p4

    invoke-virtual {p4, p5, v1}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 1187
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p4

    invoke-virtual {p4, p6, v1}, Lorg/telegram/messenger/MessagesController;->putEncryptedChats(Ljava/util/ArrayList;Z)V

    .line 1189
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

    .line 812
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p4, :cond_0

    .line 814
    invoke-virtual {p4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_0
    return-void

    .line 819
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 820
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

    .line 649
    new-instance v3, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 650
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

    .line 565
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 566
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

    .line 480
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 481
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

    .line 433
    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/NotificationsController;->processReadMessages(Lorg/telegram/messenger/support/LongSparseIntArray;JIIZ)V

    .line 434
    new-instance v0, Lorg/telegram/messenger/support/LongSparseIntArray;

    invoke-direct {v0}, Lorg/telegram/messenger/support/LongSparseIntArray;-><init>()V

    const/4 v1, 0x0

    .line 435
    invoke-virtual {v0, p1, p2, v1}, Lorg/telegram/messenger/support/LongSparseIntArray;->put(JI)V

    .line 436
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/NotificationsController;->processDialogsUpdateRead(Lorg/telegram/messenger/support/LongSparseIntArray;)V

    return-void
.end method

.method protected repeatNotificationMaybe()V
    .locals 2

    .line 2837
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

    .line 93
    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/NotificationsController;->setDialogNotificationsSettings(JIILjava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public setDialogNotificationsSettings(JIILjava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 8

    .line 4855
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getNotificationsSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 4856
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4857
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

    .line 4859
    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/NotificationsController;->isGlobalNotificationsEnabled(J)Z

    move-result p4

    if-eqz p4, :cond_0

    .line 4861
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

    .line 4863
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

    .line 4866
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p4

    const-wide/16 v2, 0x0

    invoke-virtual {p4, p1, p2, v2, v3}, Lorg/telegram/messenger/MessagesStorage;->setDialogFlags(JJ)V

    if-eqz v1, :cond_7

    .line 4868
    new-instance p4, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings;

    invoke-direct {p4}, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings;-><init>()V

    iput-object p4, v1, Lorg/telegram/tgnet/TLRPC$Dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    goto/16 :goto_3

    .line 4871
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

    .line 4883
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

    .line 4886
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

    .line 4887
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

    .line 4890
    :goto_2
    sget p4, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p4}, Lorg/telegram/messenger/NotificationsController;->getInstance(I)Lorg/telegram/messenger/NotificationsController;

    move-result-object p4

    invoke-virtual {p4, p1, p2}, Lorg/telegram/messenger/NotificationsController;->removeNotificationsForDialog(J)V

    .line 4891
    sget p4, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p4}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object p4

    invoke-virtual {p4, p1, p2, v6, v7}, Lorg/telegram/messenger/MessagesStorage;->setDialogFlags(JJ)V

    if-eqz v1, :cond_7

    .line 4893
    new-instance p4, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings;

    invoke-direct {p4}, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings;-><init>()V

    iput-object p4, v1, Lorg/telegram/tgnet/TLRPC$Dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    .line 4894
    iput v3, p4, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    .line 4897
    :cond_7
    :goto_3
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move-object v4, p5

    move-object v5, p6

    .line 4898
    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/NotificationsController;->updateServerNotificationsSettings(JILjava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public setGlobalNotificationsEnabled(II)V
    .locals 2

    .line 5069
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

    .line 5070
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/NotificationsController;->updateServerNotificationsSettings(I)V

    .line 5071
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/MessagesStorage;->updateMutedDialogsFiltersCounters()V

    .line 5072
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/NotificationsController;->deleteNotificationChannelGlobal(I)V

    return-void
.end method

.method public setInChatSoundEnabled(Z)V
    .locals 0

    .line 403
    iput-boolean p1, p0, Lorg/telegram/messenger/NotificationsController;->inChatSoundEnabled:Z

    return-void
.end method

.method public setLastOnlineFromOtherDevice(I)V
    .locals 2

    .line 424
    sget-object v0, Lorg/telegram/messenger/NotificationsController;->notificationsQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/messenger/NotificationsController;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setOpenedDialogId(JI)V
    .locals 2

    .line 407
    sget-object v0, Lorg/telegram/messenger/NotificationsController;->notificationsQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda23;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/messenger/NotificationsController;JI)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setOpenedInBubble(JZ)V
    .locals 2

    .line 414
    sget-object v0, Lorg/telegram/messenger/NotificationsController;->notificationsQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda39;

    invoke-direct {v1, p0, p3, p1, p2}, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda39;-><init>(Lorg/telegram/messenger/NotificationsController;ZJ)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public showNotifications()V
    .locals 2

    .line 2733
    sget-object v0, Lorg/telegram/messenger/NotificationsController;->notificationsQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/messenger/NotificationsController;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateBadge()V
    .locals 2

    .line 1433
    sget-object v0, Lorg/telegram/messenger/NotificationsController;->notificationsQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/messenger/NotificationsController;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateServerNotificationsSettings(I)V
    .locals 8

    .line 4982
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getNotificationsSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 4983
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateNotifySettings;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_account_updateNotifySettings;-><init>()V

    .line 4984
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;-><init>()V

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateNotifySettings;->settings:Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;

    const/4 v3, 0x5

    .line 4985
    iput v3, v2, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->flags:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p1, :cond_0

    .line 4990
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_inputNotifyChats;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_inputNotifyChats;-><init>()V

    iput-object p1, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateNotifySettings;->peer:Lorg/telegram/tgnet/TLRPC$InputNotifyPeer;

    .line 4991
    iget-object p1, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateNotifySettings;->settings:Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;

    const-string v4, "EnableGroup2"

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p1, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->mute_until:I

    .line 4992
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

    .line 4997
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_inputNotifyUsers;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_inputNotifyUsers;-><init>()V

    iput-object p1, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateNotifySettings;->peer:Lorg/telegram/tgnet/TLRPC$InputNotifyPeer;

    .line 4998
    iget-object p1, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateNotifySettings;->settings:Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;

    const-string v4, "EnableAll2"

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p1, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->mute_until:I

    .line 4999
    iget-object p1, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateNotifySettings;->settings:Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;

    const-string v2, "EnablePreviewAll"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p1, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->show_previews:Z

    const-string p1, "GlobalSound"

    const-string v2, "GlobalSoundDocId"

    const-string v3, "GlobalSoundPath"

    goto :goto_0

    .line 5004
    :cond_1
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_inputNotifyBroadcasts;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_inputNotifyBroadcasts;-><init>()V

    iput-object p1, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateNotifySettings;->peer:Lorg/telegram/tgnet/TLRPC$InputNotifyPeer;

    .line 5005
    iget-object p1, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateNotifySettings;->settings:Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;

    const-string v4, "EnableChannel2"

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p1, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->mute_until:I

    .line 5006
    iget-object p1, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateNotifySettings;->settings:Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;

    const-string v2, "EnablePreviewChannel"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p1, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->show_previews:Z

    const-string p1, "ChannelSound"

    const-string v2, "ChannelSoundDocId"

    const-string v3, "ChannelSoundPath"

    .line 5012
    :goto_0
    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateNotifySettings;->settings:Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;

    iget v5, v4, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->flags:I

    or-int/lit8 v5, v5, 0x8

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->flags:I

    const-wide/16 v4, 0x0

    .line 5013
    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    const-string v2, "NoSound"

    .line 5014
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    cmp-long v4, v6, v4

    if-eqz v4, :cond_2

    .line 5017
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_notificationSoundRingtone;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_notificationSoundRingtone;-><init>()V

    .line 5018
    iput-wide v6, p1, Lorg/telegram/tgnet/TLRPC$TL_notificationSoundRingtone;->id:J

    .line 5019
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateNotifySettings;->settings:Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->sound:Lorg/telegram/tgnet/TLRPC$NotificationSound;

    goto :goto_1

    :cond_2
    if-eqz v3, :cond_4

    .line 5021
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5022
    iget-object p1, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateNotifySettings;->settings:Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_notificationSoundNone;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_notificationSoundNone;-><init>()V

    iput-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->sound:Lorg/telegram/tgnet/TLRPC$NotificationSound;

    goto :goto_1

    .line 5024
    :cond_3
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_notificationSoundLocal;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_notificationSoundLocal;-><init>()V

    const/4 v4, 0x0

    .line 5025
    invoke-interface {v0, p1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lorg/telegram/tgnet/TLRPC$TL_notificationSoundLocal;->title:Ljava/lang/String;

    .line 5026
    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_notificationSoundLocal;->data:Ljava/lang/String;

    .line 5027
    iget-object p1, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateNotifySettings;->settings:Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;

    iput-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->sound:Lorg/telegram/tgnet/TLRPC$NotificationSound;

    goto :goto_1

    .line 5030
    :cond_4
    iget-object p1, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateNotifySettings;->settings:Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_notificationSoundDefault;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_notificationSoundDefault;-><init>()V

    iput-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->sound:Lorg/telegram/tgnet/TLRPC$NotificationSound;

    .line 5032
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

    .line 98
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

    .line 4902
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

    .line 103
    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/NotificationsController;->updateServerNotificationsSettings(JIZLjava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateServerNotificationsSettings(JIZLjava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 9

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    .line 4907
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p4

    sget v1, Lorg/telegram/messenger/NotificationCenter;->notificationsSettingsUpdated:I

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {p4, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 4909
    :cond_0
    invoke-static {p1, p2}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result p4

    if-eqz p4, :cond_1

    return-void

    .line 4912
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object p4

    invoke-virtual {p4}, Lorg/telegram/messenger/AccountInstance;->getNotificationsSettings()Landroid/content/SharedPreferences;

    move-result-object p4

    .line 4913
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateNotifySettings;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_account_updateNotifySettings;-><init>()V

    .line 4914
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;-><init>()V

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateNotifySettings;->settings:Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;

    .line 4916
    iget v3, v2, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->flags:I

    const/4 v4, 0x1

    or-int/2addr v3, v4

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->flags:I

    .line 4917
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

    .line 4919
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateNotifySettings;->settings:Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;

    iget v3, v2, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->flags:I

    const/4 v4, 0x2

    or-int/2addr v3, v4

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->flags:I

    .line 4920
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

    .line 4922
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

    .line 4924
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateNotifySettings;->settings:Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;

    iget v5, v3, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->flags:I

    or-int/lit8 v5, v5, 0x4

    iput v5, v3, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->flags:I

    const/4 v5, 0x3

    if-ne v2, v5, :cond_2

    .line 4926
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

    .line 4928
    :goto_0
    iput v0, v3, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->mute_until:I

    .line 4932
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

    .line 4933
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

    .line 4934
    iget-object v7, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateNotifySettings;->settings:Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;

    iget v8, v7, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->flags:I

    or-int/lit8 v8, v8, 0x8

    iput v8, v7, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->flags:I

    cmp-long v2, v4, v2

    if-eqz v2, :cond_5

    .line 4936
    new-instance p4, Lorg/telegram/tgnet/TLRPC$TL_notificationSoundRingtone;

    invoke-direct {p4}, Lorg/telegram/tgnet/TLRPC$TL_notificationSoundRingtone;-><init>()V

    .line 4937
    iput-wide v4, p4, Lorg/telegram/tgnet/TLRPC$TL_notificationSoundRingtone;->id:J

    .line 4938
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateNotifySettings;->settings:Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;

    iput-object p4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->sound:Lorg/telegram/tgnet/TLRPC$NotificationSound;

    goto :goto_2

    :cond_5
    if-eqz v0, :cond_7

    const-string v2, "NoSound"

    .line 4940
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 4941
    iget-object p4, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateNotifySettings;->settings:Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_notificationSoundNone;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_notificationSoundNone;-><init>()V

    iput-object v0, p4, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->sound:Lorg/telegram/tgnet/TLRPC$NotificationSound;

    goto :goto_2

    .line 4943
    :cond_6
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_notificationSoundLocal;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_notificationSoundLocal;-><init>()V

    .line 4944
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

    .line 4945
    iput-object v0, v2, Lorg/telegram/tgnet/TLRPC$TL_notificationSoundLocal;->data:Ljava/lang/String;

    .line 4946
    iget-object p4, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateNotifySettings;->settings:Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;

    iput-object v2, p4, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->sound:Lorg/telegram/tgnet/TLRPC$NotificationSound;

    goto :goto_2

    .line 4949
    :cond_7
    new-instance p4, Lorg/telegram/tgnet/TLRPC$TL_notificationSoundDefault;

    invoke-direct {p4}, Lorg/telegram/tgnet/TLRPC$TL_notificationSoundDefault;-><init>()V

    iput-object p4, v7, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->sound:Lorg/telegram/tgnet/TLRPC$NotificationSound;

    :goto_2
    if-eqz p3, :cond_8

    .line 4952
    new-instance p4, Lorg/telegram/tgnet/TLRPC$TL_inputNotifyForumTopic;

    invoke-direct {p4}, Lorg/telegram/tgnet/TLRPC$TL_inputNotifyForumTopic;-><init>()V

    .line 4953
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p1

    iput-object p1, p4, Lorg/telegram/tgnet/TLRPC$TL_inputNotifyForumTopic;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 4954
    iput p3, p4, Lorg/telegram/tgnet/TLRPC$TL_inputNotifyForumTopic;->top_msg_id:I

    .line 4955
    iput-object p4, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateNotifySettings;->peer:Lorg/telegram/tgnet/TLRPC$InputNotifyPeer;

    goto :goto_3

    .line 4957
    :cond_8
    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_inputNotifyPeer;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_inputNotifyPeer;-><init>()V

    iput-object p3, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateNotifySettings;->peer:Lorg/telegram/tgnet/TLRPC$InputNotifyPeer;

    .line 4958
    check-cast p3, Lorg/telegram/tgnet/TLRPC$TL_inputNotifyPeer;

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p4

    invoke-virtual {p4, p1, p2}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p1

    iput-object p1, p3, Lorg/telegram/tgnet/TLRPC$TL_inputNotifyPeer;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 4961
    :goto_3
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance p2, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda41;

    invoke-direct {p2, p5, p6}, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticLambda41;-><init>(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-virtual {p1, v1, p2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method
