package com.iMe.p032ui.wallet.notifications.details;

import com.iMe.model.wallet.notification.NotificationItem;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.parameter.ParametersHolderKt;
import org.koin.p047mp.KoinPlatformTools;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletNotificationDetailsBottomSheetDialog.kt */
/* renamed from: com.iMe.ui.wallet.notifications.details.WalletNotificationDetailsBottomSheetDialog$presenter$2 */
/* loaded from: classes4.dex */
public final class WalletNotificationDetailsBottomSheetDialog$presenter$2 extends Lambda implements Function0<WalletNotificationDetailsPresenter> {
    final /* synthetic */ WalletNotificationDetailsBottomSheetDialog this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletNotificationDetailsBottomSheetDialog$presenter$2(WalletNotificationDetailsBottomSheetDialog walletNotificationDetailsBottomSheetDialog) {
        super(0);
        this.this$0 = walletNotificationDetailsBottomSheetDialog;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: WalletNotificationDetailsBottomSheetDialog.kt */
    /* renamed from: com.iMe.ui.wallet.notifications.details.WalletNotificationDetailsBottomSheetDialog$presenter$2$1 */
    /* loaded from: classes4.dex */
    public static final class C22971 extends Lambda implements Function0<ParametersHolder> {
        final /* synthetic */ WalletNotificationDetailsBottomSheetDialog this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C22971(WalletNotificationDetailsBottomSheetDialog walletNotificationDetailsBottomSheetDialog) {
            super(0);
            this.this$0 = walletNotificationDetailsBottomSheetDialog;
        }

        @Override // kotlin.jvm.functions.Function0
        public final ParametersHolder invoke() {
            NotificationItem notificationItem;
            notificationItem = this.this$0.item;
            return ParametersHolderKt.parametersOf(notificationItem);
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final WalletNotificationDetailsPresenter invoke() {
        Lazy lazy;
        WalletNotificationDetailsBottomSheetDialog walletNotificationDetailsBottomSheetDialog = this.this$0;
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new C2295xccf02360(walletNotificationDetailsBottomSheetDialog, null, new C22971(walletNotificationDetailsBottomSheetDialog)));
        return (WalletNotificationDetailsPresenter) lazy.getValue();
    }
}
