.class public Lorg/telegram/messenger/AccountInstance;
.super Ljava/lang/Object;
.source "AccountInstance.java"


# static fields
.field private static volatile Instance:[Lorg/telegram/messenger/AccountInstance;


# instance fields
.field private currentAccount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [Lorg/telegram/messenger/AccountInstance;

    .line 101
    sput-object v0, Lorg/telegram/messenger/AccountInstance;->Instance:[Lorg/telegram/messenger/AccountInstance;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput p1, p0, Lorg/telegram/messenger/AccountInstance;->currentAccount:I

    return-void
.end method

.method public static getInstance(I)Lorg/telegram/messenger/AccountInstance;
    .locals 3

    .line 103
    sget-object v0, Lorg/telegram/messenger/AccountInstance;->Instance:[Lorg/telegram/messenger/AccountInstance;

    aget-object v0, v0, p0

    if-nez v0, :cond_1

    .line 105
    const-class v1, Lorg/telegram/messenger/AccountInstance;

    monitor-enter v1

    .line 106
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/AccountInstance;->Instance:[Lorg/telegram/messenger/AccountInstance;

    aget-object v0, v0, p0

    if-nez v0, :cond_0

    .line 108
    sget-object v0, Lorg/telegram/messenger/AccountInstance;->Instance:[Lorg/telegram/messenger/AccountInstance;

    new-instance v2, Lorg/telegram/messenger/AccountInstance;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/AccountInstance;-><init>(I)V

    aput-object v2, v0, p0

    move-object v0, v2

    .line 110
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


# virtual methods
.method public getAlbumsController()Lcom/iMe/fork/controller/AlbumsController;
    .locals 1

    .line 33
    iget v0, p0, Lorg/telegram/messenger/AccountInstance;->currentAccount:I

    invoke-static {v0}, Lcom/iMe/fork/controller/AlbumsController;->getInstance(I)Lcom/iMe/fork/controller/AlbumsController;

    move-result-object v0

    return-object v0
.end method

.method public getBackupController()Lcom/iMe/fork/controller/BackupController;
    .locals 1

    .line 37
    iget v0, p0, Lorg/telegram/messenger/AccountInstance;->currentAccount:I

    invoke-static {v0}, Lcom/iMe/fork/controller/BackupController;->getInstance(I)Lcom/iMe/fork/controller/BackupController;

    move-result-object v0

    return-object v0
.end method

.method public getChatProfileController()Lcom/iMe/fork/controller/ChatProfileController;
    .locals 1

    .line 89
    iget v0, p0, Lorg/telegram/messenger/AccountInstance;->currentAccount:I

    invoke-static {v0}, Lcom/iMe/fork/controller/ChatProfileController;->getInstance(I)Lcom/iMe/fork/controller/ChatProfileController;

    move-result-object v0

    return-object v0
.end method

.method public getColorPalette()Lorg/telegram/ui/Components/Paint/PersistColorPalette;
    .locals 1

    .line 132
    iget v0, p0, Lorg/telegram/messenger/AccountInstance;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;
    .locals 1

    .line 140
    iget v0, p0, Lorg/telegram/messenger/AccountInstance;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    return-object v0
.end method

.method public getContactsController()Lorg/telegram/messenger/ContactsController;
    .locals 1

    .line 128
    iget v0, p0, Lorg/telegram/messenger/AccountInstance;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentAccount()I
    .locals 1

    .line 192
    iget v0, p0, Lorg/telegram/messenger/AccountInstance;->currentAccount:I

    return v0
.end method

.method public getDialogTranslationSettingsController()Lcom/iMe/fork/controller/DialogTranslationController;
    .locals 1

    .line 41
    iget v0, p0, Lorg/telegram/messenger/AccountInstance;->currentAccount:I

    invoke-static {v0}, Lcom/iMe/fork/controller/DialogTranslationController;->getInstance(I)Lcom/iMe/fork/controller/DialogTranslationController;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadController()Lorg/telegram/messenger/DownloadController;
    .locals 1

    .line 160
    iget v0, p0, Lorg/telegram/messenger/AccountInstance;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v0

    return-object v0
.end method

.method public getFileLoader()Lorg/telegram/messenger/FileLoader;
    .locals 1

    .line 176
    iget v0, p0, Lorg/telegram/messenger/AccountInstance;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    return-object v0
.end method

.method public getFileRefController()Lorg/telegram/messenger/FileRefController;
    .locals 1

    .line 180
    iget v0, p0, Lorg/telegram/messenger/AccountInstance;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileRefController;->getInstance(I)Lorg/telegram/messenger/FileRefController;

    move-result-object v0

    return-object v0
.end method

.method public getFiltersController()Lcom/iMe/fork/controller/FiltersController;
    .locals 1

    .line 45
    iget v0, p0, Lorg/telegram/messenger/AccountInstance;->currentAccount:I

    invoke-static {v0}, Lcom/iMe/fork/controller/FiltersController;->getInstance(I)Lcom/iMe/fork/controller/FiltersController;

    move-result-object v0

    return-object v0
.end method

.method public getForkCommonController()Lcom/iMe/fork/controller/ForkCommonController;
    .locals 1

    .line 49
    iget v0, p0, Lorg/telegram/messenger/AccountInstance;->currentAccount:I

    invoke-static {v0}, Lcom/iMe/fork/controller/ForkCommonController;->getInstance(I)Lcom/iMe/fork/controller/ForkCommonController;

    move-result-object v0

    return-object v0
.end method

.method public getFormattingTextController()Lcom/iMe/fork/controller/FormattingTextController;
    .locals 1

    .line 93
    iget v0, p0, Lorg/telegram/messenger/AccountInstance;->currentAccount:I

    invoke-static {v0}, Lcom/iMe/fork/controller/FormattingTextController;->getInstance(I)Lcom/iMe/fork/controller/FormattingTextController;

    move-result-object v0

    return-object v0
.end method

.method public getHiddenChatsController()Lcom/iMe/fork/controller/HiddenChatsController;
    .locals 1

    .line 77
    iget v0, p0, Lorg/telegram/messenger/AccountInstance;->currentAccount:I

    invoke-static {v0}, Lcom/iMe/fork/controller/HiddenChatsController;->getInstance(I)Lcom/iMe/fork/controller/HiddenChatsController;

    move-result-object v0

    return-object v0
.end method

.method public getLocationController()Lorg/telegram/messenger/LocationController;
    .locals 1

    .line 152
    iget v0, p0, Lorg/telegram/messenger/AccountInstance;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/LocationController;->getInstance(I)Lorg/telegram/messenger/LocationController;

    move-result-object v0

    return-object v0
.end method

.method public getLockedSectionsController()Lcom/iMe/fork/controller/LockedSectionsController;
    .locals 1

    .line 53
    iget v0, p0, Lorg/telegram/messenger/AccountInstance;->currentAccount:I

    invoke-static {v0}, Lcom/iMe/fork/controller/LockedSectionsController;->getInstance(I)Lcom/iMe/fork/controller/LockedSectionsController;

    move-result-object v0

    return-object v0
.end method

.method public getMediaDataController()Lorg/telegram/messenger/MediaDataController;
    .locals 1

    .line 136
    iget v0, p0, Lorg/telegram/messenger/AccountInstance;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    return-object v0
.end method

.method public getMemberRequestsController()Lorg/telegram/messenger/MemberRequestsController;
    .locals 1

    .line 188
    iget v0, p0, Lorg/telegram/messenger/AccountInstance;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MemberRequestsController;->getInstance(I)Lorg/telegram/messenger/MemberRequestsController;

    move-result-object v0

    return-object v0
.end method

.method public getMessagesController()Lorg/telegram/messenger/MessagesController;
    .locals 1

    .line 120
    iget v0, p0, Lorg/telegram/messenger/AccountInstance;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    return-object v0
.end method

.method public getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;
    .locals 1

    .line 124
    iget v0, p0, Lorg/telegram/messenger/AccountInstance;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    return-object v0
.end method

.method public getMultiPanelController()Lcom/iMe/fork/controller/MultiPanelController;
    .locals 1

    .line 57
    iget v0, p0, Lorg/telegram/messenger/AccountInstance;->currentAccount:I

    invoke-static {v0}, Lcom/iMe/fork/controller/MultiPanelController;->getInstance(I)Lcom/iMe/fork/controller/MultiPanelController;

    move-result-object v0

    return-object v0
.end method

.method public getMusicController()Lcom/iMe/fork/controller/MusicController;
    .locals 1

    .line 61
    iget v0, p0, Lorg/telegram/messenger/AccountInstance;->currentAccount:I

    invoke-static {v0}, Lcom/iMe/fork/controller/MusicController;->getInstance(I)Lcom/iMe/fork/controller/MusicController;

    move-result-object v0

    return-object v0
.end method

.method public getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;
    .locals 1

    .line 148
    iget v0, p0, Lorg/telegram/messenger/AccountInstance;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    return-object v0
.end method

.method public getNotificationsController()Lorg/telegram/messenger/NotificationsController;
    .locals 1

    .line 144
    iget v0, p0, Lorg/telegram/messenger/AccountInstance;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationsController;->getInstance(I)Lorg/telegram/messenger/NotificationsController;

    move-result-object v0

    return-object v0
.end method

.method public getNotificationsSettings()Landroid/content/SharedPreferences;
    .locals 1

    .line 184
    iget v0, p0, Lorg/telegram/messenger/AccountInstance;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getNotificationsSettings(I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public getRecentChatsController()Lcom/iMe/fork/controller/RecentChatsController;
    .locals 1

    .line 73
    iget v0, p0, Lorg/telegram/messenger/AccountInstance;->currentAccount:I

    invoke-static {v0}, Lcom/iMe/fork/controller/RecentChatsController;->getInstance(I)Lcom/iMe/fork/controller/RecentChatsController;

    move-result-object v0

    return-object v0
.end method

.method public getSecretChatHelper()Lorg/telegram/messenger/SecretChatHelper;
    .locals 1

    .line 168
    iget v0, p0, Lorg/telegram/messenger/AccountInstance;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/SecretChatHelper;->getInstance(I)Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v0

    return-object v0
.end method

.method public getSendMessagesHelper()Lorg/telegram/messenger/SendMessagesHelper;
    .locals 1

    .line 164
    iget v0, p0, Lorg/telegram/messenger/AccountInstance;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance(I)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    return-object v0
.end method

.method public getStatsController()Lorg/telegram/messenger/StatsController;
    .locals 1

    .line 172
    iget v0, p0, Lorg/telegram/messenger/AccountInstance;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/StatsController;->getInstance(I)Lorg/telegram/messenger/StatsController;

    move-result-object v0

    return-object v0
.end method

.method public getTemplatesController()Lcom/iMe/fork/controller/TemplatesController;
    .locals 1

    .line 65
    iget v0, p0, Lorg/telegram/messenger/AccountInstance;->currentAccount:I

    invoke-static {v0}, Lcom/iMe/fork/controller/TemplatesController;->getInstance(I)Lcom/iMe/fork/controller/TemplatesController;

    move-result-object v0

    return-object v0
.end method

.method public getToolsController()Lcom/iMe/fork/controller/ToolsController;
    .locals 1

    .line 69
    iget v0, p0, Lorg/telegram/messenger/AccountInstance;->currentAccount:I

    invoke-static {v0}, Lcom/iMe/fork/controller/ToolsController;->getInstance(I)Lcom/iMe/fork/controller/ToolsController;

    move-result-object v0

    return-object v0
.end method

.method public getTopicsController()Lcom/iMe/fork/controller/ForkTopicsController;
    .locals 1

    .line 81
    iget v0, p0, Lorg/telegram/messenger/AccountInstance;->currentAccount:I

    invoke-static {v0}, Lcom/iMe/fork/controller/ForkTopicsController;->getInstance(I)Lcom/iMe/fork/controller/ForkTopicsController;

    move-result-object v0

    return-object v0
.end method

.method public getUserConfig()Lorg/telegram/messenger/UserConfig;
    .locals 1

    .line 156
    iget v0, p0, Lorg/telegram/messenger/AccountInstance;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    return-object v0
.end method

.method public getWalletFingerprintController()Lcom/iMe/fork/controller/WalletFingerprintController;
    .locals 1

    .line 85
    iget v0, p0, Lorg/telegram/messenger/AccountInstance;->currentAccount:I

    invoke-static {v0}, Lcom/iMe/fork/controller/WalletFingerprintController;->getInstance(I)Lcom/iMe/fork/controller/WalletFingerprintController;

    move-result-object v0

    return-object v0
.end method
