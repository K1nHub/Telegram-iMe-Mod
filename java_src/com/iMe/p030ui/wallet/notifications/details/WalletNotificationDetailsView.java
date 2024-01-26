package com.iMe.p030ui.wallet.notifications.details;

import com.iMe.manager.wallet.WalletLinkClickableView;
import moxy.MvpView;
import moxy.viewstate.strategy.alias.AddToEndSingle;
/* compiled from: WalletNotificationDetailsView.kt */
@AddToEndSingle
/* renamed from: com.iMe.ui.wallet.notifications.details.WalletNotificationDetailsView */
/* loaded from: classes4.dex */
public interface WalletNotificationDetailsView extends MvpView, WalletLinkClickableView {
    void setupScreenWithData(String str, String str2);
}
