.class public Lorg/telegram/messenger/BaseController;
.super Ljava/lang/Object;
.source "BaseController.java"


# instance fields
.field protected final currentAccount:I

.field private parentAccountInstance:Lorg/telegram/messenger/AccountInstance;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    invoke-static {p1}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/BaseController;->parentAccountInstance:Lorg/telegram/messenger/AccountInstance;

    .line 98
    iput p1, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    return-void
.end method


# virtual methods
.method protected final getAccountInstance()Lorg/telegram/messenger/AccountInstance;
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/telegram/messenger/BaseController;->parentAccountInstance:Lorg/telegram/messenger/AccountInstance;

    return-object v0
.end method

.method protected final getAlbumsController()Lorg/fork/controller/AlbumsController;
    .locals 1

    .line 30
    iget-object v0, p0, Lorg/telegram/messenger/BaseController;->parentAccountInstance:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getAlbumsController()Lorg/fork/controller/AlbumsController;

    move-result-object v0

    return-object v0
.end method

.method protected final getBackupController()Lorg/fork/controller/BackupController;
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/telegram/messenger/BaseController;->parentAccountInstance:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getBackupController()Lorg/fork/controller/BackupController;

    move-result-object v0

    return-object v0
.end method

.method protected final getBookmarksController()Lorg/fork/controller/BookmarksController;
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/telegram/messenger/BaseController;->parentAccountInstance:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getBookmarksController()Lorg/fork/controller/BookmarksController;

    move-result-object v0

    return-object v0
.end method

.method protected final getColorPalette()Lorg/telegram/ui/Components/Paint/PersistColorPalette;
    .locals 1

    .line 114
    iget-object v0, p0, Lorg/telegram/messenger/BaseController;->parentAccountInstance:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getColorPalette()Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object v0

    return-object v0
.end method

.method protected final getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;
    .locals 1

    .line 122
    iget-object v0, p0, Lorg/telegram/messenger/BaseController;->parentAccountInstance:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    return-object v0
.end method

.method protected final getContactsController()Lorg/telegram/messenger/ContactsController;
    .locals 1

    .line 110
    iget-object v0, p0, Lorg/telegram/messenger/BaseController;->parentAccountInstance:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    return-object v0
.end method

.method protected final getDialogTranslationSettingsController()Lorg/fork/controller/DialogTranslationController;
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/telegram/messenger/BaseController;->parentAccountInstance:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getDialogTranslationSettingsController()Lorg/fork/controller/DialogTranslationController;

    move-result-object v0

    return-object v0
.end method

.method protected final getDownloadController()Lorg/telegram/messenger/DownloadController;
    .locals 1

    .line 146
    iget-object v0, p0, Lorg/telegram/messenger/BaseController;->parentAccountInstance:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getDownloadController()Lorg/telegram/messenger/DownloadController;

    move-result-object v0

    return-object v0
.end method

.method protected final getFileLoader()Lorg/telegram/messenger/FileLoader;
    .locals 1

    .line 162
    iget-object v0, p0, Lorg/telegram/messenger/BaseController;->parentAccountInstance:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    return-object v0
.end method

.method protected final getFileRefController()Lorg/telegram/messenger/FileRefController;
    .locals 1

    .line 166
    iget-object v0, p0, Lorg/telegram/messenger/BaseController;->parentAccountInstance:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getFileRefController()Lorg/telegram/messenger/FileRefController;

    move-result-object v0

    return-object v0
.end method

.method protected final getFiltersController()Lorg/fork/controller/FiltersController;
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/telegram/messenger/BaseController;->parentAccountInstance:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getFiltersController()Lorg/fork/controller/FiltersController;

    move-result-object v0

    return-object v0
.end method

.method protected final getForkCommonController()Lorg/fork/controller/ForkCommonController;
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/telegram/messenger/BaseController;->parentAccountInstance:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getForkCommonController()Lorg/fork/controller/ForkCommonController;

    move-result-object v0

    return-object v0
.end method

.method protected final getForkTopicsController()Lorg/fork/controller/ForkTopicsController;
    .locals 1

    .line 82
    iget-object v0, p0, Lorg/telegram/messenger/BaseController;->parentAccountInstance:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getTopicsController()Lorg/fork/controller/ForkTopicsController;

    move-result-object v0

    return-object v0
.end method

.method protected final getLocationController()Lorg/telegram/messenger/LocationController;
    .locals 1

    .line 126
    iget-object v0, p0, Lorg/telegram/messenger/BaseController;->parentAccountInstance:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getLocationController()Lorg/telegram/messenger/LocationController;

    move-result-object v0

    return-object v0
.end method

.method protected final getLockedSectionsController()Lorg/fork/controller/LockedSectionsController;
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/telegram/messenger/BaseController;->parentAccountInstance:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getLockedSectionsController()Lorg/fork/controller/LockedSectionsController;

    move-result-object v0

    return-object v0
.end method

.method protected final getMediaDataController()Lorg/telegram/messenger/MediaDataController;
    .locals 1

    .line 118
    iget-object v0, p0, Lorg/telegram/messenger/BaseController;->parentAccountInstance:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    return-object v0
.end method

.method protected final getMemberRequestsController()Lorg/telegram/messenger/MemberRequestsController;
    .locals 1

    .line 170
    iget-object v0, p0, Lorg/telegram/messenger/BaseController;->parentAccountInstance:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getMemberRequestsController()Lorg/telegram/messenger/MemberRequestsController;

    move-result-object v0

    return-object v0
.end method

.method protected final getMessagesController()Lorg/telegram/messenger/MessagesController;
    .locals 1

    .line 106
    iget-object v0, p0, Lorg/telegram/messenger/BaseController;->parentAccountInstance:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    return-object v0
.end method

.method protected final getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;
    .locals 1

    .line 142
    iget-object v0, p0, Lorg/telegram/messenger/BaseController;->parentAccountInstance:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    return-object v0
.end method

.method protected final getMultiPanelController()Lorg/fork/controller/MultiPanelController;
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/telegram/messenger/BaseController;->parentAccountInstance:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getMultiPanelController()Lorg/fork/controller/MultiPanelController;

    move-result-object v0

    return-object v0
.end method

.method protected final getMusicController()Lorg/fork/controller/MusicController;
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/telegram/messenger/BaseController;->parentAccountInstance:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getMusicController()Lorg/fork/controller/MusicController;

    move-result-object v0

    return-object v0
.end method

.method protected final getNeuroBotsController()Lorg/fork/controller/NeuroBotsController;
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/telegram/messenger/BaseController;->parentAccountInstance:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getNeuroBotsController()Lorg/fork/controller/NeuroBotsController;

    move-result-object v0

    return-object v0
.end method

.method protected final getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;
    .locals 1

    .line 134
    iget-object v0, p0, Lorg/telegram/messenger/BaseController;->parentAccountInstance:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    return-object v0
.end method

.method protected final getNotificationsController()Lorg/telegram/messenger/NotificationsController;
    .locals 1

    .line 130
    iget-object v0, p0, Lorg/telegram/messenger/BaseController;->parentAccountInstance:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getNotificationsController()Lorg/telegram/messenger/NotificationsController;

    move-result-object v0

    return-object v0
.end method

.method public getRecentChatsController()Lorg/fork/controller/RecentChatsController;
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/telegram/messenger/BaseController;->parentAccountInstance:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getRecentChatsController()Lorg/fork/controller/RecentChatsController;

    move-result-object v0

    return-object v0
.end method

.method protected final getSecretChatHelper()Lorg/telegram/messenger/SecretChatHelper;
    .locals 1

    .line 154
    iget-object v0, p0, Lorg/telegram/messenger/BaseController;->parentAccountInstance:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getSecretChatHelper()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v0

    return-object v0
.end method

.method protected final getSendMessagesHelper()Lorg/telegram/messenger/SendMessagesHelper;
    .locals 1

    .line 150
    iget-object v0, p0, Lorg/telegram/messenger/BaseController;->parentAccountInstance:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getSendMessagesHelper()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    return-object v0
.end method

.method protected final getStatsController()Lorg/telegram/messenger/StatsController;
    .locals 1

    .line 158
    iget-object v0, p0, Lorg/telegram/messenger/BaseController;->parentAccountInstance:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getStatsController()Lorg/telegram/messenger/StatsController;

    move-result-object v0

    return-object v0
.end method

.method protected final getTemplatesController()Lorg/fork/controller/TemplatesController;
    .locals 1

    .line 70
    iget-object v0, p0, Lorg/telegram/messenger/BaseController;->parentAccountInstance:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getTemplatesController()Lorg/fork/controller/TemplatesController;

    move-result-object v0

    return-object v0
.end method

.method protected final getToolsController()Lorg/fork/controller/ToolsController;
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/telegram/messenger/BaseController;->parentAccountInstance:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getToolsController()Lorg/fork/controller/ToolsController;

    move-result-object v0

    return-object v0
.end method

.method protected final getUserConfig()Lorg/telegram/messenger/UserConfig;
    .locals 1

    .line 138
    iget-object v0, p0, Lorg/telegram/messenger/BaseController;->parentAccountInstance:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    return-object v0
.end method

.method protected final getWalletFingerprintController()Lorg/fork/controller/WalletFingerprintController;
    .locals 1

    .line 86
    iget-object v0, p0, Lorg/telegram/messenger/BaseController;->parentAccountInstance:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getWalletFingerprintController()Lorg/fork/controller/WalletFingerprintController;

    move-result-object v0

    return-object v0
.end method
