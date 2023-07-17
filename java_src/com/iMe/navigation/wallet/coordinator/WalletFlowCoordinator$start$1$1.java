package com.iMe.navigation.wallet.coordinator;

import com.iMe.fork.utils.Callbacks$Callback;
import io.reactivex.disposables.Disposable;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import org.telegram.p043ui.LaunchActivity;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletFlowCoordinator.kt */
/* loaded from: classes3.dex */
public final class WalletFlowCoordinator$start$1$1 extends Lambda implements Function1<Disposable, Unit> {
    final /* synthetic */ LaunchActivity $parentActivity;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletFlowCoordinator$start$1$1(LaunchActivity launchActivity) {
        super(1);
        this.$parentActivity = launchActivity;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Disposable disposable) {
        invoke2(disposable);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(final Disposable disposable) {
        LaunchActivity launchActivity = this.$parentActivity;
        if (launchActivity != null) {
            launchActivity.showLoadingDialog(true, new Callbacks$Callback() { // from class: com.iMe.navigation.wallet.coordinator.WalletFlowCoordinator$start$1$1$$ExternalSyntheticLambda0
                @Override // com.iMe.fork.utils.Callbacks$Callback
                public final void invoke() {
                    Disposable.this.dispose();
                }
            });
        }
    }
}
