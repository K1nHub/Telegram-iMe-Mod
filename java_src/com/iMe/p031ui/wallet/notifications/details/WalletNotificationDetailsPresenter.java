package com.iMe.p031ui.wallet.notifications.details;

import com.iMe.manager.wallet.WalletLinkClickableManager;
import com.iMe.manager.wallet.WalletLinkClickableView;
import com.iMe.model.wallet.notification.NotificationItem;
import com.iMe.p031ui.base.mvp.base.BasePresenter;
import com.iMe.storage.domain.gateway.TelegramGateway;
import com.iMe.storage.domain.manager.crypto.CryptoAccessManager;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.common.StringExtKt;
import com.iMe.utils.formatter.DateFormatter;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
/* compiled from: WalletNotificationDetailsPresenter.kt */
@InjectViewState
/* renamed from: com.iMe.ui.wallet.notifications.details.WalletNotificationDetailsPresenter */
/* loaded from: classes4.dex */
public final class WalletNotificationDetailsPresenter extends BasePresenter<WalletNotificationDetailsView> {
    private final /* synthetic */ WalletLinkClickableManager $$delegate_0;
    private final CryptoAccessManager accessManager;
    private final NotificationItem item;
    private final ResourceManager resourceManager;
    private final TelegramGateway telegramGateway;

    public void attachViewState(WalletLinkClickableView view) {
        Intrinsics.checkNotNullParameter(view, "view");
        this.$$delegate_0.attachViewState(view);
    }

    public void onDetachViewState() {
        this.$$delegate_0.onDetachViewState();
    }

    public WalletNotificationDetailsPresenter(NotificationItem item, TelegramGateway telegramGateway, CryptoAccessManager accessManager, ResourceManager resourceManager) {
        Intrinsics.checkNotNullParameter(item, "item");
        Intrinsics.checkNotNullParameter(telegramGateway, "telegramGateway");
        Intrinsics.checkNotNullParameter(accessManager, "accessManager");
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        this.item = item;
        this.telegramGateway = telegramGateway;
        this.accessManager = accessManager;
        this.resourceManager = resourceManager;
        this.$$delegate_0 = new WalletLinkClickableManager(item, resourceManager, accessManager, telegramGateway);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // moxy.MvpPresenter
    public void onFirstViewAttach() {
        ((WalletNotificationDetailsView) getViewState()).setupScreenWithData(StringExtKt.formatISODate(this.item.getNotification().getDate(), DateFormatter.DateType.DATE_AND_TIME), this.item.getCategory());
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        attachViewState((WalletLinkClickableView) viewState);
    }

    @Override // com.iMe.p031ui.base.mvp.base.BasePresenter, moxy.MvpPresenter
    public void onDestroy() {
        super.onDestroy();
        onDetachViewState();
    }
}
