package com.iMe.p032ui.wallet.crypto.wallet_connect.new_session;

import com.trustwallet.walletconnect.WCSessionStoreItem;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.parameter.ParametersHolderKt;
import org.koin.p047mp.KoinPlatformTools;
/* compiled from: WalletConnectNewSessionBottomSheetDialog.kt */
/* renamed from: com.iMe.ui.wallet.crypto.wallet_connect.new_session.WalletConnectNewSessionBottomSheetDialog$presenter$2 */
/* loaded from: classes3.dex */
final class WalletConnectNewSessionBottomSheetDialog$presenter$2 extends Lambda implements Function0<WalletConnectNewSessionPresenter> {
    final /* synthetic */ WCSessionStoreItem $sessionItem;
    final /* synthetic */ WalletConnectNewSessionBottomSheetDialog this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletConnectNewSessionBottomSheetDialog$presenter$2(WalletConnectNewSessionBottomSheetDialog walletConnectNewSessionBottomSheetDialog, WCSessionStoreItem wCSessionStoreItem) {
        super(0);
        this.this$0 = walletConnectNewSessionBottomSheetDialog;
        this.$sessionItem = wCSessionStoreItem;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: WalletConnectNewSessionBottomSheetDialog.kt */
    /* renamed from: com.iMe.ui.wallet.crypto.wallet_connect.new_session.WalletConnectNewSessionBottomSheetDialog$presenter$2$1 */
    /* loaded from: classes3.dex */
    public static final class C21921 extends Lambda implements Function0<ParametersHolder> {
        final /* synthetic */ WCSessionStoreItem $sessionItem;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C21921(WCSessionStoreItem wCSessionStoreItem) {
            super(0);
            this.$sessionItem = wCSessionStoreItem;
        }

        @Override // kotlin.jvm.functions.Function0
        public final ParametersHolder invoke() {
            return ParametersHolderKt.parametersOf(this.$sessionItem);
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final WalletConnectNewSessionPresenter invoke() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new C2190x4b6b59e9(this.this$0, null, new C21921(this.$sessionItem)));
        return (WalletConnectNewSessionPresenter) lazy.getValue();
    }
}
