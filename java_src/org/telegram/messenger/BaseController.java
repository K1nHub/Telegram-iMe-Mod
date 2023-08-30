package org.telegram.messenger;

import com.iMe.fork.controller.AlbumsController;
import com.iMe.fork.controller.BackupController;
import com.iMe.fork.controller.ChatProfileController;
import com.iMe.fork.controller.DialogTranslationController;
import com.iMe.fork.controller.FiltersController;
import com.iMe.fork.controller.ForkCommonController;
import com.iMe.fork.controller.ForkTopicsController;
import com.iMe.fork.controller.FormattingTextController;
import com.iMe.fork.controller.HiddenChatsController;
import com.iMe.fork.controller.LockedSectionsController;
import com.iMe.fork.controller.MultiPanelController;
import com.iMe.fork.controller.MusicController;
import com.iMe.fork.controller.NeuroBotsController;
import com.iMe.fork.controller.RecentChatsController;
import com.iMe.fork.controller.TemplatesController;
import com.iMe.fork.controller.ToolsController;
import com.iMe.fork.controller.WalletFingerprintController;
import org.telegram.p043ui.Components.Paint.PersistColorPalette;
import org.telegram.tgnet.ConnectionsManager;
/* loaded from: classes4.dex */
public class BaseController {
    protected final int currentAccount;
    private AccountInstance parentAccountInstance;

    /* JADX INFO: Access modifiers changed from: protected */
    public final AlbumsController getAlbumsController() {
        return this.parentAccountInstance.getAlbumsController();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final BackupController getBackupController() {
        return this.parentAccountInstance.getBackupController();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final DialogTranslationController getDialogTranslationSettingsController() {
        return this.parentAccountInstance.getDialogTranslationSettingsController();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final FiltersController getFiltersController() {
        return this.parentAccountInstance.getFiltersController();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final ForkCommonController getForkCommonController() {
        return this.parentAccountInstance.getForkCommonController();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final LockedSectionsController getLockedSectionsController() {
        return this.parentAccountInstance.getLockedSectionsController();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final MultiPanelController getMultiPanelController() {
        return this.parentAccountInstance.getMultiPanelController();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final MusicController getMusicController() {
        return this.parentAccountInstance.getMusicController();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final NeuroBotsController getNeuroBotsController() {
        return this.parentAccountInstance.getNeuroBotsController();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final TemplatesController getTemplatesController() {
        return this.parentAccountInstance.getTemplatesController();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final ToolsController getToolsController() {
        return this.parentAccountInstance.getToolsController();
    }

    public RecentChatsController getRecentChatsController() {
        return this.parentAccountInstance.getRecentChatsController();
    }

    public HiddenChatsController getHiddenChatsController() {
        return this.parentAccountInstance.getHiddenChatsController();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final ForkTopicsController getForkTopicsController() {
        return this.parentAccountInstance.getTopicsController();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final WalletFingerprintController getWalletFingerprintController() {
        return this.parentAccountInstance.getWalletFingerprintController();
    }

    public ChatProfileController getChatProfileController() {
        return this.parentAccountInstance.getChatProfileController();
    }

    public FormattingTextController getFormattingTextController() {
        return this.parentAccountInstance.getFormattingTextController();
    }

    public BaseController(int i) {
        this.parentAccountInstance = AccountInstance.getInstance(i);
        this.currentAccount = i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final AccountInstance getAccountInstance() {
        return this.parentAccountInstance;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final MessagesController getMessagesController() {
        return this.parentAccountInstance.getMessagesController();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final ContactsController getContactsController() {
        return this.parentAccountInstance.getContactsController();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final PersistColorPalette getColorPalette() {
        return this.parentAccountInstance.getColorPalette();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final MediaDataController getMediaDataController() {
        return this.parentAccountInstance.getMediaDataController();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final ConnectionsManager getConnectionsManager() {
        return this.parentAccountInstance.getConnectionsManager();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final LocationController getLocationController() {
        return this.parentAccountInstance.getLocationController();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final NotificationsController getNotificationsController() {
        return this.parentAccountInstance.getNotificationsController();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final NotificationCenter getNotificationCenter() {
        return this.parentAccountInstance.getNotificationCenter();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final UserConfig getUserConfig() {
        return this.parentAccountInstance.getUserConfig();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final MessagesStorage getMessagesStorage() {
        return this.parentAccountInstance.getMessagesStorage();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final DownloadController getDownloadController() {
        return this.parentAccountInstance.getDownloadController();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final SendMessagesHelper getSendMessagesHelper() {
        return this.parentAccountInstance.getSendMessagesHelper();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final SecretChatHelper getSecretChatHelper() {
        return this.parentAccountInstance.getSecretChatHelper();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final StatsController getStatsController() {
        return this.parentAccountInstance.getStatsController();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final FileLoader getFileLoader() {
        return this.parentAccountInstance.getFileLoader();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final FileRefController getFileRefController() {
        return this.parentAccountInstance.getFileRefController();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final MemberRequestsController getMemberRequestsController() {
        return this.parentAccountInstance.getMemberRequestsController();
    }
}
