.class public Lorg/telegram/messenger/BaseController;
.super Ljava/lang/Object;
.source "BaseController.java"


# instance fields
.field protected final currentAccount:I

.field private parentAccountInstance:Lorg/telegram/messenger/AccountInstance;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    invoke-static {p1}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/BaseController;->parentAccountInstance:Lorg/telegram/messenger/AccountInstance;

    .line 103
    iput p1, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    return-void
.end method


# virtual methods
.method protected final getAccountInstance()Lorg/telegram/messenger/AccountInstance;
    .locals 1

    .line 107
    iget-object v0, p0, Lorg/telegram/messenger/BaseController;->parentAccountInstance:Lorg/telegram/messenger/AccountInstance;

    return-object v0
.end method

.method protected final getAlbumsController()Lcom/iMe/fork/controller/AlbumsController;
    .locals 1

    .line 31
    iget-object v0, p0, Lorg/telegram/messenger/BaseController;->parentAccountInstance:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getAlbumsController()Lcom/iMe/fork/controller/AlbumsController;

    move-result-object v0

    return-object v0
.end method

.method protected final getBackupController()Lcom/iMe/fork/controller/BackupController;
    .locals 1

    .line 35
    iget-object v0, p0, Lorg/telegram/messenger/BaseController;->parentAccountInstance:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getBackupController()Lcom/iMe/fork/controller/BackupController;

    move-result-object v0

    return-object v0
.end method

.method public getChatProfileController()Lcom/iMe/fork/controller/ChatProfileController;
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/telegram/messenger/BaseController;->parentAccountInstance:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getChatProfileController()Lcom/iMe/fork/controller/ChatProfileController;

    move-result-object v0

    return-object v0
.end method

.method protected final getColorPalette()Lorg/telegram/ui/Components/Paint/PersistColorPalette;
    .locals 1

    .line 119
    iget-object v0, p0, Lorg/telegram/messenger/BaseController;->parentAccountInstance:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getColorPalette()Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object v0

    return-object v0
.end method

.method protected final getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;
    .locals 1

    .line 127
    iget-object v0, p0, Lorg/telegram/messenger/BaseController;->parentAccountInstance:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    return-object v0
.end method

.method protected final getContactsController()Lorg/telegram/messenger/ContactsController;
    .locals 1

    .line 115
    iget-object v0, p0, Lorg/telegram/messenger/BaseController;->parentAccountInstance:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    return-object v0
.end method

.method protected final getDialogTranslationSettingsController()Lcom/iMe/fork/controller/DialogTranslationController;
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/telegram/messenger/BaseController;->parentAccountInstance:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getDialogTranslationSettingsController()Lcom/iMe/fork/controller/DialogTranslationController;

    move-result-object v0

    return-object v0
.end method

.method protected final getDownloadController()Lorg/telegram/messenger/DownloadController;
    .locals 1

    .line 151
    iget-object v0, p0, Lorg/telegram/messenger/BaseController;->parentAccountInstance:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getDownloadController()Lorg/telegram/messenger/DownloadController;

    move-result-object v0

    return-object v0
.end method

.method protected final getFileLoader()Lorg/telegram/messenger/FileLoader;
    .locals 1

    .line 167
    iget-object v0, p0, Lorg/telegram/messenger/BaseController;->parentAccountInstance:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    return-object v0
.end method

.method protected final getFileRefController()Lorg/telegram/messenger/FileRefController;
    .locals 1

    .line 171
    iget-object v0, p0, Lorg/telegram/messenger/BaseController;->parentAccountInstance:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getFileRefController()Lorg/telegram/messenger/FileRefController;

    move-result-object v0

    return-object v0
.end method

.method protected final getFiltersController()Lcom/iMe/fork/controller/FiltersController;
    .locals 1

    .line 43
    iget-object v0, p0, Lorg/telegram/messenger/BaseController;->parentAccountInstance:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getFiltersController()Lcom/iMe/fork/controller/FiltersController;

    move-result-object v0

    return-object v0
.end method

.method protected final getForkCommonController()Lcom/iMe/fork/controller/ForkCommonController;
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/telegram/messenger/BaseController;->parentAccountInstance:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getForkCommonController()Lcom/iMe/fork/controller/ForkCommonController;

    move-result-object v0

    return-object v0
.end method

.method protected final getForkTopicsController()Lcom/iMe/fork/controller/ForkTopicsController;
    .locals 1

    .line 79
    iget-object v0, p0, Lorg/telegram/messenger/BaseController;->parentAccountInstance:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getTopicsController()Lcom/iMe/fork/controller/ForkTopicsController;

    move-result-object v0

    return-object v0
.end method

.method public getFormattingTextController()Lcom/iMe/fork/controller/FormattingTextController;
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/telegram/messenger/BaseController;->parentAccountInstance:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getFormattingTextController()Lcom/iMe/fork/controller/FormattingTextController;

    move-result-object v0

    return-object v0
.end method

.method public getHiddenChatsController()Lcom/iMe/fork/controller/HiddenChatsController;
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/telegram/messenger/BaseController;->parentAccountInstance:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getHiddenChatsController()Lcom/iMe/fork/controller/HiddenChatsController;

    move-result-object v0

    return-object v0
.end method

.method protected final getLocationController()Lorg/telegram/messenger/LocationController;
    .locals 1

    .line 131
    iget-object v0, p0, Lorg/telegram/messenger/BaseController;->parentAccountInstance:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getLocationController()Lorg/telegram/messenger/LocationController;

    move-result-object v0

    return-object v0
.end method

.method protected final getLockedSectionsController()Lcom/iMe/fork/controller/LockedSectionsController;
    .locals 1

    .line 51
    iget-object v0, p0, Lorg/telegram/messenger/BaseController;->parentAccountInstance:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getLockedSectionsController()Lcom/iMe/fork/controller/LockedSectionsController;

    move-result-object v0

    return-object v0
.end method

.method protected final getMediaDataController()Lorg/telegram/messenger/MediaDataController;
    .locals 1

    .line 123
    iget-object v0, p0, Lorg/telegram/messenger/BaseController;->parentAccountInstance:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    return-object v0
.end method

.method protected final getMemberRequestsController()Lorg/telegram/messenger/MemberRequestsController;
    .locals 1

    .line 175
    iget-object v0, p0, Lorg/telegram/messenger/BaseController;->parentAccountInstance:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getMemberRequestsController()Lorg/telegram/messenger/MemberRequestsController;

    move-result-object v0

    return-object v0
.end method

.method protected final getMessagesController()Lorg/telegram/messenger/MessagesController;
    .locals 1

    .line 111
    iget-object v0, p0, Lorg/telegram/messenger/BaseController;->parentAccountInstance:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    return-object v0
.end method

.method protected final getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;
    .locals 1

    .line 147
    iget-object v0, p0, Lorg/telegram/messenger/BaseController;->parentAccountInstance:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    return-object v0
.end method

.method protected final getMultiPanelController()Lcom/iMe/fork/controller/MultiPanelController;
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/telegram/messenger/BaseController;->parentAccountInstance:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getMultiPanelController()Lcom/iMe/fork/controller/MultiPanelController;

    move-result-object v0

    return-object v0
.end method

.method protected final getMusicController()Lcom/iMe/fork/controller/MusicController;
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/telegram/messenger/BaseController;->parentAccountInstance:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getMusicController()Lcom/iMe/fork/controller/MusicController;

    move-result-object v0

    return-object v0
.end method

.method protected final getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;
    .locals 1

    .line 139
    iget-object v0, p0, Lorg/telegram/messenger/BaseController;->parentAccountInstance:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    return-object v0
.end method

.method protected final getNotificationsController()Lorg/telegram/messenger/NotificationsController;
    .locals 1

    .line 135
    iget-object v0, p0, Lorg/telegram/messenger/BaseController;->parentAccountInstance:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getNotificationsController()Lorg/telegram/messenger/NotificationsController;

    move-result-object v0

    return-object v0
.end method

.method public getRecentChatsController()Lcom/iMe/fork/controller/RecentChatsController;
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/telegram/messenger/BaseController;->parentAccountInstance:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getRecentChatsController()Lcom/iMe/fork/controller/RecentChatsController;

    move-result-object v0

    return-object v0
.end method

.method protected final getSecretChatHelper()Lorg/telegram/messenger/SecretChatHelper;
    .locals 1

    .line 159
    iget-object v0, p0, Lorg/telegram/messenger/BaseController;->parentAccountInstance:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getSecretChatHelper()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v0

    return-object v0
.end method

.method protected final getSendMessagesHelper()Lorg/telegram/messenger/SendMessagesHelper;
    .locals 1

    .line 155
    iget-object v0, p0, Lorg/telegram/messenger/BaseController;->parentAccountInstance:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getSendMessagesHelper()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    return-object v0
.end method

.method protected final getStatsController()Lorg/telegram/messenger/StatsController;
    .locals 1

    .line 163
    iget-object v0, p0, Lorg/telegram/messenger/BaseController;->parentAccountInstance:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getStatsController()Lorg/telegram/messenger/StatsController;

    move-result-object v0

    return-object v0
.end method

.method protected final getTemplatesController()Lcom/iMe/fork/controller/TemplatesController;
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/telegram/messenger/BaseController;->parentAccountInstance:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getTemplatesController()Lcom/iMe/fork/controller/TemplatesController;

    move-result-object v0

    return-object v0
.end method

.method protected final getToolsController()Lcom/iMe/fork/controller/ToolsController;
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/telegram/messenger/BaseController;->parentAccountInstance:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getToolsController()Lcom/iMe/fork/controller/ToolsController;

    move-result-object v0

    return-object v0
.end method

.method protected final getUserConfig()Lorg/telegram/messenger/UserConfig;
    .locals 1

    .line 143
    iget-object v0, p0, Lorg/telegram/messenger/BaseController;->parentAccountInstance:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    return-object v0
.end method

.method protected final getWalletFingerprintController()Lcom/iMe/fork/controller/WalletFingerprintController;
    .locals 1

    .line 83
    iget-object v0, p0, Lorg/telegram/messenger/BaseController;->parentAccountInstance:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getWalletFingerprintController()Lcom/iMe/fork/controller/WalletFingerprintController;

    move-result-object v0

    return-object v0
.end method
