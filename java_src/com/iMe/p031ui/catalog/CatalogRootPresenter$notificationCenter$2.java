package com.iMe.p031ui.catalog;

import com.iMe.gateway.TelegramControllersGateway;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.NotificationCenter;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CatalogRootPresenter.kt */
/* renamed from: com.iMe.ui.catalog.CatalogRootPresenter$notificationCenter$2 */
/* loaded from: classes3.dex */
public final class CatalogRootPresenter$notificationCenter$2 extends Lambda implements Function0<NotificationCenter> {
    final /* synthetic */ CatalogRootPresenter this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CatalogRootPresenter$notificationCenter$2(CatalogRootPresenter catalogRootPresenter) {
        super(0);
        this.this$0 = catalogRootPresenter;
    }

    @Override // kotlin.jvm.functions.Function0
    public final NotificationCenter invoke() {
        TelegramControllersGateway telegramControllersGateway;
        telegramControllersGateway = this.this$0.telegramControllersGateway;
        return TelegramControllersGateway.CC.getNotificationCenterInstance$default(telegramControllersGateway, 0, 1, null);
    }
}
