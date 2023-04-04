package com.iMe.p032ui.wallet.crypto.settings;

import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.p032ui.base.mvp.MvpFragment;
import com.iMe.storage.domain.utils.p031rx.event.DomainRxEvents;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.ui.wallet.crypto.settings.WalletAccountSettingsFragment$setupListeners$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C2149xdd3a1942 extends Lambda implements Function1<DomainRxEvents, Unit> {
    final /* synthetic */ WalletAccountSettingsFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2149xdd3a1942(WalletAccountSettingsFragment walletAccountSettingsFragment) {
        super(1);
        this.this$0 = walletAccountSettingsFragment;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(DomainRxEvents domainRxEvents) {
        m1418invoke(domainRxEvents);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1418invoke(DomainRxEvents it) {
        WalletAccountSettingsPresenter presenter;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        DomainRxEvents domainRxEvents = it;
        if (domainRxEvents instanceof DomainRxEvents.SuccessSaveBackup) {
            presenter = this.this$0.getPresenter();
            presenter.drawSettingsItems();
        } else if ((domainRxEvents instanceof DomainRxEvents.SuccessResetWallet) && ((DomainRxEvents.SuccessResetWallet) domainRxEvents).isLastWallet()) {
            final WalletAccountSettingsFragment walletAccountSettingsFragment = this.this$0;
            MvpFragment.postViewActionDelayed$default(walletAccountSettingsFragment, 0L, new Callbacks$Callback() { // from class: com.iMe.ui.wallet.crypto.settings.WalletAccountSettingsFragment$setupListeners$2$1
                @Override // com.iMe.fork.utils.Callbacks$Callback
                public final void invoke() {
                    WalletAccountSettingsFragment.this.finishFragment(true);
                }
            }, 1, null);
        }
    }
}
