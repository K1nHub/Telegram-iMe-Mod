package com.iMe.p031ui.wallet.home.tabs.crypto;

import com.iMe.storage.domain.utils.p030rx.event.DomainRxEvents;
import com.iMe.storage.domain.utils.p030rx.event.RxEvent;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: WalletHomeCryptoPresenter.kt */
/* renamed from: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoPresenter$listenEvents$1 */
/* loaded from: classes4.dex */
final class WalletHomeCryptoPresenter$listenEvents$1 extends Lambda implements Function1<RxEvent, Boolean> {
    public static final WalletHomeCryptoPresenter$listenEvents$1 INSTANCE = new WalletHomeCryptoPresenter$listenEvents$1();

    WalletHomeCryptoPresenter$listenEvents$1() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Boolean invoke(RxEvent it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Boolean.valueOf(it instanceof DomainRxEvents.TokensSettingsChanged);
    }
}
