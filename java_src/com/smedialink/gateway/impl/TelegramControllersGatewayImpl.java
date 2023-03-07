package com.smedialink.gateway.impl;

import com.smedialink.gateway.TelegramControllersGateway;
import com.smedialink.storage.domain.gateway.TelegramGateway;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;
import org.fork.controller.WalletFingerprintController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
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

    @Override // com.smedialink.gateway.TelegramControllersGateway
    public MessagesController getMessagesController(int i) {
        Object telegramControllersGatewayImpl = getInstance(MessagesController.getInstance(getSelectedAccount(i)));
        Intrinsics.checkNotNullExpressionValue(telegramControllersGatewayImpl, "getInstance(MessagesCont…ccount(selectedAccount)))");
        return (MessagesController) telegramControllersGatewayImpl;
    }

    @Override // com.smedialink.gateway.TelegramControllersGateway
    public SendMessagesHelper getSendMessagesHelper(int i) {
        Object telegramControllersGatewayImpl = getInstance(SendMessagesHelper.getInstance(getSelectedAccount(i)));
        Intrinsics.checkNotNullExpressionValue(telegramControllersGatewayImpl, "getInstance(SendMessages…ccount(selectedAccount)))");
        return (SendMessagesHelper) telegramControllersGatewayImpl;
    }

    @Override // com.smedialink.gateway.TelegramControllersGateway
    public WalletFingerprintController getWalletFingerprintController(int i) {
        return (WalletFingerprintController) getInstance(WalletFingerprintController.Companion.getInstance(getSelectedAccount(i)));
    }

    @Override // com.smedialink.gateway.TelegramControllersGateway
    public NotificationCenter getNotificationCenterInstance(int i) {
        Object telegramControllersGatewayImpl = getInstance(NotificationCenter.getInstance(getSelectedAccount(i)));
        Intrinsics.checkNotNullExpressionValue(telegramControllersGatewayImpl, "getInstance(Notification…ccount(selectedAccount)))");
        return (NotificationCenter) telegramControllersGatewayImpl;
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
