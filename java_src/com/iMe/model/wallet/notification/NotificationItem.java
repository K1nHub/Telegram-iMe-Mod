package com.iMe.model.wallet.notification;

import com.iMe.model.wallet.transaction.ClickableItem;
import com.iMe.model.wallet.transaction.LinkedTextType;
import com.iMe.storage.domain.model.notification.Notification;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.model.wallet.NotificationExtKt;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: NotificationItem.kt */
/* loaded from: classes3.dex */
public final class NotificationItem implements ClickableItem {
    private String category;
    private String message;
    private final Notification notification;

    public static /* synthetic */ NotificationItem copy$default(NotificationItem notificationItem, Notification notification, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            notification = notificationItem.notification;
        }
        if ((i & 2) != 0) {
            str = notificationItem.message;
        }
        if ((i & 4) != 0) {
            str2 = notificationItem.category;
        }
        return notificationItem.copy(notification, str, str2);
    }

    public final Notification component1() {
        return this.notification;
    }

    public final String component2() {
        return this.message;
    }

    public final String component3() {
        return this.category;
    }

    public final NotificationItem copy(Notification notification, String message, String category) {
        Intrinsics.checkNotNullParameter(notification, "notification");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(category, "category");
        return new NotificationItem(notification, message, category);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof NotificationItem) {
            NotificationItem notificationItem = (NotificationItem) obj;
            return Intrinsics.areEqual(this.notification, notificationItem.notification) && Intrinsics.areEqual(this.message, notificationItem.message) && Intrinsics.areEqual(this.category, notificationItem.category);
        }
        return false;
    }

    public int hashCode() {
        return (((this.notification.hashCode() * 31) + this.message.hashCode()) * 31) + this.category.hashCode();
    }

    public String toString() {
        return "NotificationItem(notification=" + this.notification + ", message=" + this.message + ", category=" + this.category + ')';
    }

    public NotificationItem(Notification notification, String message, String category) {
        Intrinsics.checkNotNullParameter(notification, "notification");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(category, "category");
        this.notification = notification;
        this.message = message;
        this.category = category;
    }

    public final Notification getNotification() {
        return this.notification;
    }

    public final String getMessage() {
        return this.message;
    }

    public final void setMessage(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.message = str;
    }

    public final String getCategory() {
        return this.category;
    }

    public final void setCategory(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.category = str;
    }

    public final boolean isUnsupported() {
        return this.notification instanceof Notification.Unsupported;
    }

    @Override // com.iMe.model.wallet.transaction.ClickableItem
    public String getMessageText(ResourceManager resourceManager) {
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        return this.message;
    }

    @Override // com.iMe.model.wallet.transaction.ClickableItem
    public String getLinkedText() {
        Notification notification = this.notification;
        return notification instanceof Notification.CryptoTransfer.C1960In ? ((Notification.CryptoTransfer.C1960In) notification).getFromAddress() : notification instanceof Notification.CryptoTransfer.Out ? ((Notification.CryptoTransfer.Out) notification).getToAddress() : notification instanceof Notification.Donation.C1961In ? ((Notification.Donation.C1961In) notification).getFromAddress() : notification instanceof Notification.Donation.Out ? ((Notification.Donation.Out) notification).getToAddress() : "";
    }

    @Override // com.iMe.model.wallet.transaction.ClickableItem
    public String getRecipientAddress() {
        Notification notification = this.notification;
        return notification instanceof Notification.CryptoTransfer.C1960In ? ((Notification.CryptoTransfer.C1960In) notification).getFromAddress() : notification instanceof Notification.CryptoTransfer.Out ? ((Notification.CryptoTransfer.Out) notification).getToAddress() : notification instanceof Notification.Donation.C1961In ? ((Notification.Donation.C1961In) notification).getFromAddress() : notification instanceof Notification.Donation.Out ? ((Notification.Donation.Out) notification).getToAddress() : "";
    }

    @Override // com.iMe.model.wallet.transaction.ClickableItem
    public LinkedTextType getLinkedTextType() {
        return NotificationExtKt.isWithAddressType(this.notification) ? LinkedTextType.ADDRESS : LinkedTextType.NOTING;
    }

    @Override // com.iMe.model.wallet.transaction.ClickableItem
    public String getNetworkId() {
        return this.notification.getNetworkId();
    }
}
