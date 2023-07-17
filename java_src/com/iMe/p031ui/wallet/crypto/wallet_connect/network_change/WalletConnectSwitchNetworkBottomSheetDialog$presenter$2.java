package com.iMe.p031ui.wallet.crypto.wallet_connect.network_change;

import com.iMe.model.wallet.crypto.wallet_connect.WalletConnectSessionItem;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.parameter.ParametersHolderKt;
import org.koin.p042mp.KoinPlatformTools;
/* compiled from: WalletConnectSwitchNetworkBottomSheetDialog.kt */
/* renamed from: com.iMe.ui.wallet.crypto.wallet_connect.network_change.WalletConnectSwitchNetworkBottomSheetDialog$presenter$2 */
/* loaded from: classes4.dex */
final class WalletConnectSwitchNetworkBottomSheetDialog$presenter$2 extends Lambda implements Function0<WalletConnectSwitchNetworkPresenter> {
    final /* synthetic */ String $networkId;
    final /* synthetic */ long $requestId;
    final /* synthetic */ WalletConnectSessionItem $sessionItem;
    final /* synthetic */ WalletConnectSwitchNetworkBottomSheetDialog this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletConnectSwitchNetworkBottomSheetDialog$presenter$2(WalletConnectSwitchNetworkBottomSheetDialog walletConnectSwitchNetworkBottomSheetDialog, long j, WalletConnectSessionItem walletConnectSessionItem, String str) {
        super(0);
        this.this$0 = walletConnectSwitchNetworkBottomSheetDialog;
        this.$requestId = j;
        this.$sessionItem = walletConnectSessionItem;
        this.$networkId = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: WalletConnectSwitchNetworkBottomSheetDialog.kt */
    /* renamed from: com.iMe.ui.wallet.crypto.wallet_connect.network_change.WalletConnectSwitchNetworkBottomSheetDialog$presenter$2$1 */
    /* loaded from: classes4.dex */
    public static final class C22321 extends Lambda implements Function0<ParametersHolder> {
        final /* synthetic */ String $networkId;
        final /* synthetic */ long $requestId;
        final /* synthetic */ WalletConnectSessionItem $sessionItem;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C22321(long j, WalletConnectSessionItem walletConnectSessionItem, String str) {
            super(0);
            this.$requestId = j;
            this.$sessionItem = walletConnectSessionItem;
            this.$networkId = str;
        }

        @Override // kotlin.jvm.functions.Function0
        public final ParametersHolder invoke() {
            return ParametersHolderKt.parametersOf(Long.valueOf(this.$requestId), this.$sessionItem, this.$networkId);
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final WalletConnectSwitchNetworkPresenter invoke() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new C2230x9d76e16b(this.this$0, null, new C22321(this.$requestId, this.$sessionItem, this.$networkId)));
        return (WalletConnectSwitchNetworkPresenter) lazy.getValue();
    }
}
