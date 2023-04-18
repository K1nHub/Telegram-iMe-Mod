package com.iMe.gateway.impl;

import com.iMe.fork.controller.WalletFingerprintController;
import com.iMe.gateway.TelegramControllersGateway;
import com.iMe.storage.domain.gateway.TelegramGateway;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.NotificationsController;
import org.telegram.messenger.SendMessagesHelper;
/* compiled from: TelegramControllersGatewayImpl.kt */
/* loaded from: classes3.dex */
public final class TelegramControllersGatewayImpl implements TelegramControllersGateway {
    private final HashMap<String, Object> instancesCache;
    private final TelegramGateway telegramGateway;

    public TelegramControllersGatewayImpl(TelegramGateway telegramGateway) {
        Intrinsics.checkNotNullParameter(telegramGateway, "telegramGateway");
        this.telegramGateway = telegramGateway;
        this.instancesCache = new HashMap<>();
    }

    @Override // com.iMe.gateway.TelegramControllersGateway
    public MessagesController getMessagesController(int i) {
        Object telegramControllersGatewayImpl = getInstance(MessagesController.getInstance(getSelectedAccount(i)));
        Intrinsics.checkNotNullExpressionValue(telegramControllersGatewayImpl, "getInstance(MessagesCont…ccount(selectedAccount)))");
        return (MessagesController) telegramControllersGatewayImpl;
    }

    @Override // com.iMe.gateway.TelegramControllersGateway
    public SendMessagesHelper getSendMessagesHelper(int i) {
        Object telegramControllersGatewayImpl = getInstance(SendMessagesHelper.getInstance(getSelectedAccount(i)));
        Intrinsics.checkNotNullExpressionValue(telegramControllersGatewayImpl, "getInstance(SendMessages…ccount(selectedAccount)))");
        return (SendMessagesHelper) telegramControllersGatewayImpl;
    }

    @Override // com.iMe.gateway.TelegramControllersGateway
    public WalletFingerprintController getWalletFingerprintController(int i) {
        return (WalletFingerprintController) getInstance(WalletFingerprintController.Companion.getInstance(getSelectedAccount(i)));
    }

    @Override // com.iMe.gateway.TelegramControllersGateway
    public NotificationCenter getNotificationCenterInstance(int i) {
        Object telegramControllersGatewayImpl = getInstance(NotificationCenter.getInstance(getSelectedAccount(i)));
        Intrinsics.checkNotNullExpressionValue(telegramControllersGatewayImpl, "getInstance(Notification…ccount(selectedAccount)))");
        return (NotificationCenter) telegramControllersGatewayImpl;
    }

    @Override // com.iMe.gateway.TelegramControllersGateway
    public NotificationsController getNotificationsController(int i) {
        Object telegramControllersGatewayImpl = getInstance(NotificationsController.getInstance(getSelectedAccount(i)));
        Intrinsics.checkNotNullExpressionValue(telegramControllersGatewayImpl, "getInstance(Notification…ccount(selectedAccount)))");
        return (NotificationsController) telegramControllersGatewayImpl;
    }

    private final <T> T getInstance(T t) {
        HashMap<String, Object> hashMap = this.instancesCache;
        Intrinsics.checkNotNull(t);
        String name = t.getClass().getName();
        Intrinsics.checkNotNullExpressionValue(name, "defaultValue!!::class.java.name");
        String generateInstanceKey = generateInstanceKey(name);
        T t2 = (T) hashMap.get(generateInstanceKey);
        if (t2 == null) {
            hashMap.put(generateInstanceKey, t);
            return t;
        }
        return t2;
    }

    private final String generateInstanceKey(String str) {
        return str + '_' + this.telegramGateway.getSelectedAccountIndex();
    }

    private final int getSelectedAccount(int i) {
        return i == -1 ? this.telegramGateway.getSelectedAccountIndex() : i;
    }
}
