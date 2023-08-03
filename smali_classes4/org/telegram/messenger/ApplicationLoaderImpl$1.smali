.class Lorg/telegram/messenger/ApplicationLoaderImpl$1;
.super Ljava/lang/Object;
.source "ApplicationLoaderImpl.java"

# interfaces
.implements Lcom/microsoft/appcenter/distribute/DistributeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/ApplicationLoaderImpl;->startAppCenterInternal(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/ApplicationLoaderImpl;


# direct methods
.method public static synthetic $r8$lambda$7mmox5FILGqn3h6Mw4Ab8S8T4w8(Lorg/telegram/messenger/ApplicationLoaderImpl$1;Lcom/iMe/fork/models/Changelog;Lcom/iMe/fork/utils/Callbacks$Callback1;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/ApplicationLoaderImpl$1;->lambda$loadSticker$1(Lcom/iMe/fork/models/Changelog;Lcom/iMe/fork/utils/Callbacks$Callback1;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$fQrw-DRfvLMYUlrPuDxco1a-d7I(Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;Landroid/app/Activity;Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/ApplicationLoaderImpl$1;->lambda$onReleaseAvailable$0(Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;Landroid/app/Activity;Lorg/telegram/tgnet/TLRPC$Document;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/messenger/ApplicationLoaderImpl;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lorg/telegram/messenger/ApplicationLoaderImpl$1;->this$0:Lorg/telegram/messenger/ApplicationLoaderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$loadSticker$1(Lcom/iMe/fork/models/Changelog;Lcom/iMe/fork/utils/Callbacks$Callback1;Z)V
    .locals 0

    if-eqz p3, :cond_0

    .line 204
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/ApplicationLoaderImpl$1;->loadSticker(Lcom/iMe/fork/models/Changelog;Lcom/iMe/fork/utils/Callbacks$Callback1;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 206
    invoke-interface {p2, p1}, Lcom/iMe/fork/utils/Callbacks$Callback1;->invoke(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private static synthetic lambda$onReleaseAvailable$0(Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;Landroid/app/Activity;Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 3

    .line 134
    sget-boolean v0, Lorg/telegram/messenger/ApplicationLoader;->isCheckForUpdateCanceled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 135
    sput-boolean v1, Lorg/telegram/messenger/ApplicationLoader;->isCheckForUpdateCanceled:Z

    return-void

    :cond_0
    const/4 v0, 0x6

    .line 138
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->flags:I

    if-eqz p2, :cond_1

    or-int/lit8 v0, v0, 0x8

    .line 140
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->flags:I

    .line 142
    :cond_1
    iput-object p2, p0, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->sticker:Lorg/telegram/tgnet/TLRPC$Document;

    .line 143
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->isAppUpdateAvailable()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 144
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->pendingAppUpdate:Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->version:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->version:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 145
    :goto_0
    sget-boolean v2, Lorg/telegram/messenger/ApplicationLoader;->isCheckForUpdateInProgress:Z

    .line 146
    sput-boolean v1, Lorg/telegram/messenger/ApplicationLoader;->isCheckForUpdateCanceled:Z

    sput-boolean v1, Lorg/telegram/messenger/ApplicationLoader;->isCheckForUpdateInProgress:Z

    .line 147
    invoke-static {p0}, Lorg/telegram/messenger/SharedConfig;->setNewAppVersionAvailable(Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;)Z

    move-result p0

    if-eqz p0, :cond_4

    if-eqz p2, :cond_3

    if-nez v0, :cond_3

    if-eqz v2, :cond_4

    .line 150
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object p0

    sget-object p1, Lorg/telegram/messenger/SharedConfig;->pendingAppUpdate:Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->url:Ljava/lang/String;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, v1}, Lorg/telegram/messenger/ImageLoader;->loadHttpFile(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    .line 153
    :cond_3
    check-cast p1, Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/LaunchActivity;->showAppUpdateDialog()V

    .line 156
    :cond_4
    :goto_1
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p0

    sget p1, Lorg/telegram/messenger/NotificationCenter;->appUpdateAvailable:I

    new-array p2, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private loadSticker(Lcom/iMe/fork/models/Changelog;Lcom/iMe/fork/utils/Callbacks$Callback1;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/fork/models/Changelog;",
            "Lcom/iMe/fork/utils/Callbacks$Callback1<",
            "Lorg/telegram/tgnet/TLRPC$Document;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 187
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getActivatedAccountsCount()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 191
    :cond_0
    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    iget-object v2, p1, Lcom/iMe/fork/models/Changelog;->stickerPackName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MediaDataController;->getStickerSetByName(Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v1

    if-nez v1, :cond_1

    .line 193
    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    iget-object v2, p1, Lcom/iMe/fork/models/Changelog;->stickerPackName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MediaDataController;->getStickerSetByEmojiOrName(Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_2

    .line 196
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p1, Lcom/iMe/fork/models/Changelog;->stickerIndex:I

    if-le v2, v3, :cond_2

    .line 197
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Document;

    :cond_2
    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 200
    invoke-interface {p2, v0}, Lcom/iMe/fork/utils/Callbacks$Callback1;->invoke(Ljava/lang/Object;)V

    goto :goto_1

    .line 202
    :cond_3
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    iget-object v2, p1, Lcom/iMe/fork/models/Changelog;->stickerPackName:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v1, :cond_4

    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    move v1, v3

    :goto_0
    new-instance v4, Lorg/telegram/messenger/ApplicationLoaderImpl$1$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, p1, p2}, Lorg/telegram/messenger/ApplicationLoaderImpl$1$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/messenger/ApplicationLoaderImpl$1;Lcom/iMe/fork/models/Changelog;Lcom/iMe/fork/utils/Callbacks$Callback1;)V

    invoke-virtual {v0, v2, v3, v1, v4}, Lorg/telegram/messenger/MediaDataController;->loadStickersByEmojiOrName(Ljava/lang/String;ZZLorg/telegram/messenger/MessagesStorage$BooleanCallback;)V

    :goto_1
    return-void

    .line 188
    :cond_5
    :goto_2
    invoke-interface {p2, v0}, Lcom/iMe/fork/utils/Callbacks$Callback1;->invoke(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onNoReleaseAvailable(Landroid/app/Activity;)V
    .locals 6

    .line 163
    sget-boolean v0, Lorg/telegram/messenger/ApplicationLoader;->isCheckForUpdateCanceled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 164
    sput-boolean v1, Lorg/telegram/messenger/ApplicationLoader;->isCheckForUpdateCanceled:Z

    return-void

    .line 167
    :cond_0
    instance-of v0, p1, Lorg/telegram/ui/LaunchActivity;

    if-nez v0, :cond_1

    return-void

    .line 170
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lorg/telegram/messenger/SharedConfig;->lastUpdateCheckTime:J

    const/4 v0, 0x0

    .line 171
    sput-object v0, Lorg/telegram/messenger/SharedConfig;->pendingAppUpdate:Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;

    .line 172
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->saveConfig()V

    .line 173
    sput-boolean v1, Lorg/telegram/messenger/ApplicationLoader;->isCheckForUpdateCanceled:Z

    .line 174
    sget-boolean v0, Lorg/telegram/messenger/ApplicationLoader;->isCheckForUpdateInProgress:Z

    if-eqz v0, :cond_2

    .line 175
    sput-boolean v1, Lorg/telegram/messenger/ApplicationLoader;->isCheckForUpdateInProgress:Z

    .line 176
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->showBulletin:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v4, 0x1

    const v5, 0x7f111bce

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 177
    check-cast p1, Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/LaunchActivity;->dismissUpdateAppDialog()V

    .line 179
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->appUpdateAvailable:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method public onReleaseAvailable(Landroid/app/Activity;Lcom/microsoft/appcenter/distribute/ReleaseDetails;)Z
    .locals 7

    .line 98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lorg/telegram/messenger/SharedConfig;->lastUpdateCheckTime:J

    .line 99
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->saveConfig()V

    const/4 v0, -0x2

    .line 100
    invoke-static {v0}, Lcom/microsoft/appcenter/distribute/Distribute;->notifyUpdateAction(I)V

    .line 101
    sget-boolean v0, Lorg/telegram/messenger/ApplicationLoader;->isCheckForUpdateCanceled:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 102
    sput-boolean v2, Lorg/telegram/messenger/ApplicationLoader;->isCheckForUpdateCanceled:Z

    return v1

    .line 105
    :cond_0
    instance-of v0, p1, Lorg/telegram/ui/LaunchActivity;

    if-nez v0, :cond_1

    return v1

    .line 108
    :cond_1
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p2}, Lcom/microsoft/appcenter/distribute/ReleaseDetails;->getReleaseNotes()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/iMe/fork/models/Changelog;

    invoke-virtual {v0, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/fork/models/Changelog;

    .line 109
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;-><init>()V

    .line 110
    invoke-virtual {p2}, Lcom/microsoft/appcenter/distribute/ReleaseDetails;->getShortVersion()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->version:Ljava/lang/String;

    .line 111
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_document;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_document;-><init>()V

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->document:Lorg/telegram/tgnet/TLRPC$Document;

    new-array v5, v2, [B

    .line 112
    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->file_reference:[B

    const-string v5, "application/vnd.android.package-archive"

    .line 113
    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    .line 114
    invoke-virtual {p2}, Lcom/microsoft/appcenter/distribute/ReleaseDetails;->getSize()J

    move-result-wide v5

    iput-wide v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    .line 115
    invoke-virtual {p2}, Lcom/microsoft/appcenter/distribute/ReleaseDetails;->getDownloadUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v3, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->url:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 117
    iget-object p2, v3, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->document:Lorg/telegram/tgnet/TLRPC$Document;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v5, v0, Lcom/iMe/fork/models/Changelog;->currentDate:J

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v4

    long-to-int v4, v4

    iput v4, p2, Lorg/telegram/tgnet/TLRPC$Document;->date:I

    .line 119
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt p2, v4, :cond_2

    .line 120
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p2

    goto :goto_0

    .line 122
    :cond_2
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget-object p2, p2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    :goto_0
    if-eqz p2, :cond_4

    .line 124
    new-instance v2, Ljava/util/Locale;

    const-string/jumbo v4, "ru"

    invoke-direct {v2, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Ljava/util/Locale;

    const-string/jumbo v4, "uk"

    invoke-direct {v2, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Ljava/util/Locale;

    const-string v4, "be"

    invoke-direct {v2, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 125
    :cond_3
    iget-object p2, v0, Lcom/iMe/fork/models/Changelog;->ruChangelog:Ljava/lang/String;

    iput-object p2, v3, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->text:Ljava/lang/String;

    goto :goto_1

    .line 127
    :cond_4
    iget-object p2, v0, Lcom/iMe/fork/models/Changelog;->enChangelog:Ljava/lang/String;

    iput-object p2, v3, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->text:Ljava/lang/String;

    .line 130
    :cond_5
    :goto_1
    iget-object p2, v3, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->text:Ljava/lang/String;

    if-nez p2, :cond_6

    const-string p2, ""

    .line 131
    iput-object p2, v3, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->text:Ljava/lang/String;

    .line 133
    :cond_6
    new-instance p2, Lorg/telegram/messenger/ApplicationLoaderImpl$1$$ExternalSyntheticLambda0;

    invoke-direct {p2, v3, p1}, Lorg/telegram/messenger/ApplicationLoaderImpl$1$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;Landroid/app/Activity;)V

    invoke-direct {p0, v0, p2}, Lorg/telegram/messenger/ApplicationLoaderImpl$1;->loadSticker(Lcom/iMe/fork/models/Changelog;Lcom/iMe/fork/utils/Callbacks$Callback1;)V

    return v1
.end method
