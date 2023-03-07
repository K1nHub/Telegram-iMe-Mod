package com.smedialink.p031ui.wallet.notifications.details;

import com.smedialink.manager.wallet.WalletLinkClickableView;
import moxy.MvpView;
import moxy.viewstate.strategy.alias.AddToEndSingle;
/* compiled from: WalletNotificationDetailsView.kt */
@AddToEndSingle
/* renamed from: com.smedialink.ui.wallet.notifications.details.WalletNotificationDetailsView */
/* loaded from: classes3.dex */
public interface WalletNotificationDetailsView extends MvpView, WalletLinkClickableView {
    void setupScreenWithData(String str, String str2);
}
