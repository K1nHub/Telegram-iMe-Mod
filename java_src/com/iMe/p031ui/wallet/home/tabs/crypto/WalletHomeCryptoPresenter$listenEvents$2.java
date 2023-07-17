package com.iMe.p031ui.wallet.home.tabs.crypto;

import com.iMe.storage.domain.utils.p030rx.event.RxEvent;
import io.reactivex.Observable;
import io.reactivex.observables.GroupedObservable;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: WalletHomeCryptoPresenter.kt */
/* renamed from: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoPresenter$listenEvents$2 */
/* loaded from: classes4.dex */
final class WalletHomeCryptoPresenter$listenEvents$2 extends Lambda implements Function1<GroupedObservable<Boolean, RxEvent>, Observable<RxEvent>> {
    public static final WalletHomeCryptoPresenter$listenEvents$2 INSTANCE = new WalletHomeCryptoPresenter$listenEvents$2();

    WalletHomeCryptoPresenter$listenEvents$2() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Observable<RxEvent> invoke(GroupedObservable<Boolean, RxEvent> it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Intrinsics.areEqual(it.getKey(), Boolean.TRUE) ? it.debounce(500L, TimeUnit.MILLISECONDS) : it;
    }
}
