.class public Lorg/telegram/messenger/NotificationsSettingsFacade;
.super Ljava/lang/Object;
.source "NotificationsSettingsFacade.java"


# static fields
.field public static final PROPERTY_CONTENT_PREVIEW:Ljava/lang/String; = "content_preview_"

.field public static final PROPERTY_CUSTOM:Ljava/lang/String; = "custom_"

.field public static final PROPERTY_NOTIFY:Ljava/lang/String; = "notify2_"

.field public static final PROPERTY_NOTIFY_UNTIL:Ljava/lang/String; = "notifyuntil_"

.field public static final PROPERTY_SILENT:Ljava/lang/String; = "silent_"


# instance fields
.field private final currentAccount:I


# direct methods
.method public static synthetic $r8$lambda$eyeQRAl4LpRS2PUwsewVxfMxooc(Lorg/telegram/messenger/NotificationsSettingsFacade;JILorg/telegram/tgnet/TLRPC$PeerNotifySettings;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/NotificationsSettingsFacade;->lambda$applyDialogNotificationsSettings$1(JILorg/telegram/tgnet/TLRPC$PeerNotifySettings;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mwA9JE8QvsfaKG6TP-03C7yIyYA(Lorg/telegram/messenger/NotificationsSettingsFacade;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/NotificationsSettingsFacade;->lambda$applyDialogNotificationsSettings$0()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lorg/telegram/messenger/NotificationsSettingsFacade;->currentAccount:I

    return-void
.end method

.method private getPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .line 86
    iget v0, p0, Lorg/telegram/messenger/NotificationsSettingsFacade;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getNotificationsSettings(I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$applyDialogNotificationsSettings$0()V
    .locals 3

    .line 172
    iget v0, p0, Lorg/telegram/messenger/NotificationsSettingsFacade;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->notificationsSettingsUpdated:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$applyDialogNotificationsSettings$1(JILorg/telegram/tgnet/TLRPC$PeerNotifySettings;)V
    .locals 17

    move-object/from16 v8, p0

    move-wide/from16 v3, p1

    move-object/from16 v0, p4

    .line 94
    invoke-static/range {p1 .. p3}, Lorg/telegram/messenger/NotificationsController;->getSharedPrefKey(JI)Ljava/lang/String;

    move-result-object v1

    .line 95
    iget v2, v8, Lorg/telegram/messenger/NotificationsSettingsFacade;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    .line 96
    iget v5, v8, Lorg/telegram/messenger/NotificationsSettingsFacade;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v5

    .line 97
    iget v6, v8, Lorg/telegram/messenger/NotificationsSettingsFacade;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v6

    .line 98
    iget v7, v8, Lorg/telegram/messenger/NotificationsSettingsFacade;->currentAccount:I

    invoke-static {v7}, Lorg/telegram/messenger/NotificationsController;->getInstance(I)Lorg/telegram/messenger/NotificationsController;

    move-result-object v7

    .line 100
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/NotificationsSettingsFacade;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "notify2_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v12, -0x1

    invoke-interface {v9, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 101
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/NotificationsSettingsFacade;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v10

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "notifyuntil_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x0

    invoke-interface {v10, v13, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 102
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/NotificationsSettingsFacade;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v13

    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    .line 104
    iget v12, v0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->flags:I

    const/4 v15, 0x2

    and-int/2addr v12, v15

    const-string v15, "silent_"

    if-eqz v12, :cond_0

    .line 105
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iget-boolean v15, v0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->silent:Z

    invoke-interface {v13, v12, v15}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 107
    :cond_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v13, v12}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_0
    const/4 v12, 0x0

    if-nez p3, :cond_1

    .line 112
    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2, v3, v4}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lorg/telegram/tgnet/TLRPC$Dialog;

    :cond_1
    if-eqz v12, :cond_2

    .line 115
    iput-object v0, v12, Lorg/telegram/tgnet/TLRPC$Dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    .line 118
    :cond_2
    iget v2, v0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->flags:I

    and-int/lit8 v2, v2, 0x4

    move-object v15, v7

    const/4 v7, 0x1

    if-eqz v2, :cond_c

    .line 119
    iget v2, v0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    invoke-virtual {v5}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v8

    if-le v2, v8, :cond_9

    .line 121
    iget v2, v0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    invoke-virtual {v5}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v5

    const v8, 0x1e13380

    add-int/2addr v5, v8

    if-le v2, v5, :cond_5

    const/4 v2, 0x2

    if-eq v9, v2, :cond_4

    .line 124
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v13, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    if-eqz v12, :cond_3

    .line 126
    iget-object v1, v12, Lorg/telegram/tgnet/TLRPC$Dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    const v2, 0x7fffffff

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    :cond_3
    const/4 v1, 0x0

    const/16 v16, 0x1

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    const/16 v16, 0x0

    goto :goto_3

    :cond_5
    const/4 v2, 0x3

    if-ne v9, v2, :cond_7

    .line 130
    iget v5, v0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    if-eq v10, v5, :cond_6

    goto :goto_1

    :cond_6
    const/16 v16, 0x0

    goto :goto_2

    .line 132
    :cond_7
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v13, v5, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 133
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    invoke-interface {v13, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    if-eqz v12, :cond_8

    .line 135
    iget-object v1, v12, Lorg/telegram/tgnet/TLRPC$Dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    const/4 v2, 0x0

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    :cond_8
    const/16 v16, 0x1

    .line 138
    :goto_2
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    :goto_3
    if-nez p3, :cond_10

    int-to-long v1, v1

    const/16 v5, 0x20

    shl-long/2addr v1, v5

    const-wide/16 v7, 0x1

    or-long/2addr v1, v7

    .line 141
    invoke-virtual {v6, v3, v4, v1, v2}, Lorg/telegram/messenger/MessagesStorage;->setDialogFlags(JJ)V

    move-object v1, v15

    .line 142
    invoke-virtual {v1, v3, v4}, Lorg/telegram/messenger/NotificationsController;->removeNotificationsForDialog(J)V

    goto :goto_8

    :cond_9
    if-eqz v9, :cond_b

    if-eq v9, v7, :cond_b

    if-eqz v12, :cond_a

    .line 148
    iget-object v2, v12, Lorg/telegram/tgnet/TLRPC$Dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    const/4 v5, 0x0

    iput v5, v2, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    goto :goto_4

    :cond_a
    const/4 v5, 0x0

    .line 150
    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v13, v1, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const/4 v15, 0x1

    goto :goto_5

    :cond_b
    const/4 v15, 0x0

    :goto_5
    if-nez p3, :cond_f

    const-wide/16 v1, 0x0

    .line 153
    invoke-virtual {v6, v3, v4, v1, v2}, Lorg/telegram/messenger/MessagesStorage;->setDialogFlags(JJ)V

    goto :goto_7

    :cond_c
    const/4 v2, -0x1

    if-eq v9, v2, :cond_e

    if-eqz v12, :cond_d

    .line 160
    iget-object v2, v12, Lorg/telegram/tgnet/TLRPC$Dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    const/4 v5, 0x0

    iput v5, v2, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    .line 162
    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v13, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/4 v15, 0x1

    goto :goto_6

    :cond_e
    const/4 v5, 0x0

    const/4 v15, 0x0

    :goto_6
    if-nez p3, :cond_f

    const-wide/16 v1, 0x0

    .line 165
    invoke-virtual {v6, v3, v4, v1, v2}, Lorg/telegram/messenger/MessagesStorage;->setDialogFlags(JJ)V

    :cond_f
    :goto_7
    move/from16 v16, v15

    .line 168
    :cond_10
    :goto_8
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->android_sound:Lorg/telegram/tgnet/TLRPC$NotificationSound;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object v2, v13

    move-wide/from16 v3, p1

    move/from16 v5, p3

    invoke-virtual/range {v0 .. v7}, Lorg/telegram/messenger/NotificationsSettingsFacade;->applySoundSettings(Lorg/telegram/tgnet/TLRPC$NotificationSound;Landroid/content/SharedPreferences$Editor;JIIZ)V

    .line 169
    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz v16, :cond_11

    .line 171
    new-instance v0, Lorg/telegram/messenger/NotificationsSettingsFacade$$ExternalSyntheticLambda0;

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/messenger/NotificationsSettingsFacade$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/NotificationsSettingsFacade;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_9

    :cond_11
    move-object/from16 v1, p0

    :goto_9
    return-void
.end method


# virtual methods
.method public applyDialogNotificationsSettings(JILorg/telegram/tgnet/TLRPC$PeerNotifySettings;)V
    .locals 8

    if-nez p4, :cond_0

    return-void

    .line 93
    :cond_0
    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v7, Lorg/telegram/messenger/NotificationsSettingsFacade$$ExternalSyntheticLambda1;

    move-object v1, v7

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/NotificationsSettingsFacade$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/messenger/NotificationsSettingsFacade;JILorg/telegram/tgnet/TLRPC$PeerNotifySettings;)V

    invoke-virtual {v0, v7}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public applySoundSettings(Lorg/telegram/tgnet/TLRPC$NotificationSound;Landroid/content/SharedPreferences$Editor;JIIZ)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    cmp-long v3, p3, v0

    if-eqz v3, :cond_1

    .line 186
    invoke-static {p3, p4, p5}, Lorg/telegram/messenger/NotificationsController;->getSharedPrefKey(JI)Ljava/lang/String;

    move-result-object p5

    .line 187
    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sound_"

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sound_path_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sound_document_id_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    goto :goto_0

    :cond_1
    if-nez p6, :cond_2

    const-string p6, "GroupSound"

    const-string p5, "GroupSoundDocId"

    const-string v0, "GroupSoundPath"

    goto :goto_0

    :cond_2
    if-ne p6, v2, :cond_3

    const-string p6, "GlobalSound"

    const-string p5, "GlobalSoundDocId"

    const-string v0, "GlobalSoundPath"

    goto :goto_0

    :cond_3
    const-string p6, "ChannelSound"

    const-string p5, "ChannelSoundDocId"

    const-string v0, "ChannelSoundPath"

    .line 206
    :goto_0
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_notificationSoundDefault;

    if-eqz v1, :cond_4

    const-string p1, "Default"

    .line 207
    invoke-interface {p2, p6, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 208
    invoke-interface {p2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 209
    invoke-interface {p2, p5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 210
    :cond_4
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_notificationSoundNone;

    if-eqz v1, :cond_5

    const-string p1, "NoSound"

    .line 211
    invoke-interface {p2, p6, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 212
    invoke-interface {p2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 213
    invoke-interface {p2, p5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 214
    :cond_5
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_notificationSoundLocal;

    if-eqz v1, :cond_6

    .line 215
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_notificationSoundLocal;

    .line 216
    iget-object p3, p1, Lorg/telegram/tgnet/TLRPC$TL_notificationSoundLocal;->title:Ljava/lang/String;

    invoke-interface {p2, p6, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 217
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_notificationSoundLocal;->data:Ljava/lang/String;

    invoke-interface {p2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 218
    invoke-interface {p2, p5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 219
    :cond_6
    instance-of p6, p1, Lorg/telegram/tgnet/TLRPC$TL_notificationSoundRingtone;

    if-eqz p6, :cond_8

    .line 220
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_notificationSoundRingtone;

    .line 221
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$TL_notificationSoundRingtone;->id:J

    invoke-interface {p2, p5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 222
    iget p5, p0, Lorg/telegram/messenger/NotificationsSettingsFacade;->currentAccount:I

    invoke-static {p5}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p5

    invoke-virtual {p5}, Lorg/telegram/messenger/MediaDataController;->checkRingtones()V

    if-eqz p7, :cond_7

    if-eqz v3, :cond_7

    .line 224
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "custom_"

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 226
    :cond_7
    iget p2, p0, Lorg/telegram/messenger/NotificationsSettingsFacade;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/messenger/MediaDataController;->ringtoneDataStore:Lorg/telegram/messenger/ringtone/RingtoneDataStore;

    iget-wide p3, p1, Lorg/telegram/tgnet/TLRPC$TL_notificationSoundRingtone;->id:J

    invoke-virtual {p2, p3, p4}, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->getDocument(J)Lorg/telegram/tgnet/TLRPC$Document;

    :cond_8
    :goto_1
    return-void
.end method

.method public clearPreference(JI)V
    .locals 1

    .line 31
    invoke-static {p1, p2, p3}, Lorg/telegram/messenger/NotificationsController;->getSharedPrefKey(JI)Ljava/lang/String;

    move-result-object p1

    .line 32
    invoke-direct {p0}, Lorg/telegram/messenger/NotificationsSettingsFacade;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "notify2_"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 33
    invoke-interface {p2, p3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "custom_"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 34
    invoke-interface {p2, p3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "notifyuntil_"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 35
    invoke-interface {p2, p3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "content_preview_"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 36
    invoke-interface {p2, p3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "silent_"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 37
    invoke-interface {p2, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 38
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public getProperty(Ljava/lang/String;JII)I
    .locals 2

    .line 44
    invoke-static {p2, p3, p4}, Lorg/telegram/messenger/NotificationsController;->getSharedPrefKey(JI)Ljava/lang/String;

    move-result-object p4

    .line 45
    invoke-direct {p0}, Lorg/telegram/messenger/NotificationsSettingsFacade;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    invoke-direct {p0}, Lorg/telegram/messenger/NotificationsSettingsFacade;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1, p5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1

    :cond_0
    const/4 p4, 0x0

    .line 48
    invoke-static {p2, p3, p4}, Lorg/telegram/messenger/NotificationsController;->getSharedPrefKey(JI)Ljava/lang/String;

    move-result-object p2

    .line 49
    invoke-direct {p0}, Lorg/telegram/messenger/NotificationsSettingsFacade;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1, p5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getProperty(Ljava/lang/String;JIJ)J
    .locals 2

    .line 53
    invoke-static {p2, p3, p4}, Lorg/telegram/messenger/NotificationsController;->getSharedPrefKey(JI)Ljava/lang/String;

    move-result-object p4

    .line 54
    invoke-direct {p0}, Lorg/telegram/messenger/NotificationsSettingsFacade;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    invoke-direct {p0}, Lorg/telegram/messenger/NotificationsSettingsFacade;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1, p5, p6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1

    :cond_0
    const/4 p4, 0x0

    .line 57
    invoke-static {p2, p3, p4}, Lorg/telegram/messenger/NotificationsController;->getSharedPrefKey(JI)Ljava/lang/String;

    move-result-object p2

    .line 58
    invoke-direct {p0}, Lorg/telegram/messenger/NotificationsSettingsFacade;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1, p5, p6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public getProperty(Ljava/lang/String;JIZ)Z
    .locals 2

    .line 62
    invoke-static {p2, p3, p4}, Lorg/telegram/messenger/NotificationsController;->getSharedPrefKey(JI)Ljava/lang/String;

    move-result-object p4

    .line 63
    invoke-direct {p0}, Lorg/telegram/messenger/NotificationsSettingsFacade;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    invoke-direct {p0}, Lorg/telegram/messenger/NotificationsSettingsFacade;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1, p5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1

    :cond_0
    const/4 p4, 0x0

    .line 66
    invoke-static {p2, p3, p4}, Lorg/telegram/messenger/NotificationsController;->getSharedPrefKey(JI)Ljava/lang/String;

    move-result-object p2

    .line 67
    invoke-direct {p0}, Lorg/telegram/messenger/NotificationsSettingsFacade;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1, p5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public getPropertyString(Ljava/lang/String;JILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 71
    invoke-static {p2, p3, p4}, Lorg/telegram/messenger/NotificationsController;->getSharedPrefKey(JI)Ljava/lang/String;

    move-result-object p4

    .line 72
    invoke-direct {p0}, Lorg/telegram/messenger/NotificationsSettingsFacade;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-direct {p0}, Lorg/telegram/messenger/NotificationsSettingsFacade;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1, p5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p4, 0x0

    .line 75
    invoke-static {p2, p3, p4}, Lorg/telegram/messenger/NotificationsController;->getSharedPrefKey(JI)Ljava/lang/String;

    move-result-object p2

    .line 76
    invoke-direct {p0}, Lorg/telegram/messenger/NotificationsSettingsFacade;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1, p5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isDefault(JI)Z
    .locals 0

    .line 26
    invoke-static {p1, p2, p3}, Lorg/telegram/messenger/NotificationsController;->getSharedPrefKey(JI)Ljava/lang/String;

    const/4 p1, 0x0

    return p1
.end method

.method public removeProperty(Ljava/lang/String;JI)V
    .locals 0

    .line 81
    invoke-static {p2, p3, p4}, Lorg/telegram/messenger/NotificationsController;->getSharedPrefKey(JI)Ljava/lang/String;

    move-result-object p2

    .line 82
    invoke-direct {p0}, Lorg/telegram/messenger/NotificationsSettingsFacade;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object p3

    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setSettingsForDialog(Lorg/telegram/tgnet/TLRPC$Dialog;Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;)V
    .locals 7

    .line 231
    invoke-direct {p0}, Lorg/telegram/messenger/NotificationsSettingsFacade;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    .line 232
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$Dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v0

    .line 234
    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$Dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->flags:I

    const/4 v3, 0x2

    and-int/2addr v2, v3

    const-string v4, "silent_"

    if-eqz v2, :cond_0

    .line 235
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$Dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->silent:Z

    invoke-interface {p2, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 237
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 239
    :goto_0
    iget v2, p0, Lorg/telegram/messenger/NotificationsSettingsFacade;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    .line 240
    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$Dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    iget v5, v4, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->flags:I

    and-int/lit8 v5, v5, 0x4

    const-string v6, "notify2_"

    if-eqz v5, :cond_3

    .line 241
    iget v4, v4, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    invoke-virtual {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v5

    if-le v4, v5, :cond_2

    .line 242
    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$Dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    invoke-virtual {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v2

    const v5, 0x1e13380

    add-int/2addr v2, v5

    if-le v4, v2, :cond_1

    .line 243
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 244
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    const v0, 0x7fffffff

    iput v0, p1, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    goto :goto_1

    .line 246
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-interface {p2, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 247
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyuntil_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    invoke-interface {p2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 250
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 253
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 256
    :goto_1
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
