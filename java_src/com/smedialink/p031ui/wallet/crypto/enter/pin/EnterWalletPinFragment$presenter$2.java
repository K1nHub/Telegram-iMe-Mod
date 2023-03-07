package com.smedialink.p031ui.wallet.crypto.enter.pin;

import com.smedialink.model.wallet.crypto.pin.EnterPinCodeScreenType;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.parameter.ParametersHolderKt;
import org.koin.p047mp.KoinPlatformTools;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: EnterWalletPinFragment.kt */
/* renamed from: com.smedialink.ui.wallet.crypto.enter.pin.EnterWalletPinFragment$presenter$2 */
/* loaded from: classes3.dex */
public final class EnterWalletPinFragment$presenter$2 extends Lambda implements Function0<EnterWalletPinPresenter> {
    final /* synthetic */ EnterWalletPinFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EnterWalletPinFragment$presenter$2(EnterWalletPinFragment enterWalletPinFragment) {
        super(0);
        this.this$0 = enterWalletPinFragment;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: EnterWalletPinFragment.kt */
    /* renamed from: com.smedialink.ui.wallet.crypto.enter.pin.EnterWalletPinFragment$presenter$2$1 */
    /* loaded from: classes3.dex */
    public static final class C19581 extends Lambda implements Function0<ParametersHolder> {
        final /* synthetic */ EnterWalletPinFragment this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C19581(EnterWalletPinFragment enterWalletPinFragment) {
            super(0);
            this.this$0 = enterWalletPinFragment;
        }

        @Override // kotlin.jvm.functions.Function0
        public final ParametersHolder invoke() {
            EnterPinCodeScreenType enterPinCodeScreenType;
            enterPinCodeScreenType = this.this$0.screenType;
            return ParametersHolderKt.parametersOf(enterPinCodeScreenType);
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final EnterWalletPinPresenter invoke() {
        Lazy lazy;
        EnterWalletPinFragment enterWalletPinFragment = this.this$0;
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new C1955x2e9da3aa(enterWalletPinFragment, null, new C19581(enterWalletPinFragment)));
        return (EnterWalletPinPresenter) lazy.getValue();
    }
}
