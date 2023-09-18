package org.telegram.messenger;

import android.content.SharedPreferences;
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
/* loaded from: classes6.dex */
public class AccountInstance {
    private static volatile AccountInstance[] Instance = new AccountInstance[5];
    private int currentAccount;

    public AlbumsController getAlbumsController() {
        return AlbumsController.getInstance(this.currentAccount);
    }

    public BackupController getBackupController() {
        return BackupController.getInstance(this.currentAccount);
    }

    public DialogTranslationController getDialogTranslationSettingsController() {
        return DialogTranslationController.getInstance(this.currentAccount);
    }

    public FiltersController getFiltersController() {
        return FiltersController.getInstance(this.currentAccount);
    }

    public ForkCommonController getForkCommonController() {
        return ForkCommonController.getInstance(this.currentAccount);
    }

    public LockedSectionsController getLockedSectionsController() {
        return LockedSectionsController.getInstance(this.currentAccount);
    }

    public MultiPanelController getMultiPanelController() {
        return MultiPanelController.getInstance(this.currentAccount);
    }

    public MusicController getMusicController() {
        return MusicController.getInstance(this.currentAccount);
    }

    public NeuroBotsController getNeuroBotsController() {
        return NeuroBotsController.getInstance(this.currentAccount);
    }

    public TemplatesController getTemplatesController() {
        return TemplatesController.getInstance(this.currentAccount);
    }

    public ToolsController getToolsController() {
        return ToolsController.getInstance(this.currentAccount);
    }

    public RecentChatsController getRecentChatsController() {
        return RecentChatsController.getInstance(this.currentAccount);
    }

    public HiddenChatsController getHiddenChatsController() {
        return HiddenChatsController.getInstance(this.currentAccount);
    }

    public ForkTopicsController getTopicsController() {
        return ForkTopicsController.getInstance(this.currentAccount);
    }

    public WalletFingerprintController getWalletFingerprintController() {
        return WalletFingerprintController.getInstance(this.currentAccount);
    }

    public ChatProfileController getChatProfileController() {
        return ChatProfileController.getInstance(this.currentAccount);
    }

    public FormattingTextController getFormattingTextController() {
        return FormattingTextController.getInstance(this.currentAccount);
    }

    public static AccountInstance getInstance(int i) {
        AccountInstance accountInstance = Instance[i];
        if (accountInstance == null) {
            synchronized (AccountInstance.class) {
                accountInstance = Instance[i];
                if (accountInstance == null) {
                    AccountInstance[] accountInstanceArr = Instance;
                    AccountInstance accountInstance2 = new AccountInstance(i);
                    accountInstanceArr[i] = accountInstance2;
                    accountInstance = accountInstance2;
                }
            }
        }
        return accountInstance;
    }

    public AccountInstance(int i) {
        this.currentAccount = i;
    }

    public MessagesController getMessagesController() {
        return MessagesController.getInstance(this.currentAccount);
    }

    public MessagesStorage getMessagesStorage() {
        return MessagesStorage.getInstance(this.currentAccount);
    }

    public ContactsController getContactsController() {
        return ContactsController.getInstance(this.currentAccount);
    }

    public PersistColorPalette getColorPalette() {
        return PersistColorPalette.getInstance(this.currentAccount);
    }

    public MediaDataController getMediaDataController() {
        return MediaDataController.getInstance(this.currentAccount);
    }

    public ConnectionsManager getConnectionsManager() {
        return ConnectionsManager.getInstance(this.currentAccount);
    }

    public NotificationsController getNotificationsController() {
        return NotificationsController.getInstance(this.currentAccount);
    }

    public NotificationCenter getNotificationCenter() {
        return NotificationCenter.getInstance(this.currentAccount);
    }

    public LocationController getLocationController() {
        return LocationController.getInstance(this.currentAccount);
    }

    public UserConfig getUserConfig() {
        return UserConfig.getInstance(this.currentAccount);
    }

    public DownloadController getDownloadController() {
        return DownloadController.getInstance(this.currentAccount);
    }

    public SendMessagesHelper getSendMessagesHelper() {
        return SendMessagesHelper.getInstance(this.currentAccount);
    }

    public SecretChatHelper getSecretChatHelper() {
        return SecretChatHelper.getInstance(this.currentAccount);
    }

    public StatsController getStatsController() {
        return StatsController.getInstance(this.currentAccount);
    }

    public FileLoader getFileLoader() {
        return FileLoader.getInstance(this.currentAccount);
    }

    public FileRefController getFileRefController() {
        return FileRefController.getInstance(this.currentAccount);
    }

    public SharedPreferences getNotificationsSettings() {
        return MessagesController.getNotificationsSettings(this.currentAccount);
    }

    public MemberRequestsController getMemberRequestsController() {
        return MemberRequestsController.getInstance(this.currentAccount);
    }

    public int getCurrentAccount() {
        return this.currentAccount;
    }
}
