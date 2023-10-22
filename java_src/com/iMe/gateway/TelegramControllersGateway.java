package com.iMe.gateway;

import com.iMe.fork.controller.WalletFingerprintController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.NotificationsController;
import org.telegram.messenger.SendMessagesHelper;
import org.telegram.tgnet.ConnectionsManager;
/* compiled from: TelegramControllersGateway.kt */
/* loaded from: classes3.dex */
public interface TelegramControllersGateway {
    public static final Companion Companion = null;

    static {
        Companion companion = Companion.$$INSTANCE;
    }

    ConnectionsManager getConnectionsManager(int i);

    MessagesController getMessagesController(int i);

    NotificationCenter getNotificationCenterInstance(int i);

    NotificationsController getNotificationsController(int i);

    SendMessagesHelper getSendMessagesHelper(int i);

    WalletFingerprintController getWalletFingerprintController(int i);

    /* compiled from: TelegramControllersGateway.kt */
    /* renamed from: com.iMe.gateway.TelegramControllersGateway$-CC */
    /* loaded from: classes3.dex */
    public final /* synthetic */ class CC {
        static {
            Companion companion = TelegramControllersGateway.Companion;
        }

        public static /* synthetic */ MessagesController getMessagesController$default(TelegramControllersGateway telegramControllersGateway, int i, int i2, Object obj) {
            if (obj == null) {
                if ((i2 & 1) != 0) {
                    i = -1;
                }
                return telegramControllersGateway.getMessagesController(i);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getMessagesController");
        }

        public static /* synthetic */ SendMessagesHelper getSendMessagesHelper$default(TelegramControllersGateway telegramControllersGateway, int i, int i2, Object obj) {
            if (obj == null) {
                if ((i2 & 1) != 0) {
                    i = -1;
                }
                return telegramControllersGateway.getSendMessagesHelper(i);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getSendMessagesHelper");
        }

        public static /* synthetic */ WalletFingerprintController getWalletFingerprintController$default(TelegramControllersGateway telegramControllersGateway, int i, int i2, Object obj) {
            if (obj == null) {
                if ((i2 & 1) != 0) {
                    i = -1;
                }
                return telegramControllersGateway.getWalletFingerprintController(i);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getWalletFingerprintController");
        }

        public static /* synthetic */ NotificationCenter getNotificationCenterInstance$default(TelegramControllersGateway telegramControllersGateway, int i, int i2, Object obj) {
            if (obj == null) {
                if ((i2 & 1) != 0) {
                    i = -1;
                }
                return telegramControllersGateway.getNotificationCenterInstance(i);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getNotificationCenterInstance");
        }

        public static /* synthetic */ ConnectionsManager getConnectionsManager$default(TelegramControllersGateway telegramControllersGateway, int i, int i2, Object obj) {
            if (obj == null) {
                if ((i2 & 1) != 0) {
                    i = -1;
                }
                return telegramControllersGateway.getConnectionsManager(i);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getConnectionsManager");
        }
    }

    /* compiled from: TelegramControllersGateway.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private Companion() {
        }
    }
}
