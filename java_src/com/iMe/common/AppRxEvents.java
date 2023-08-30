package com.iMe.common;

import android.content.Intent;
import com.iMe.model.wallet.crypto.pin.EnterPinCodeScreenType;
import com.iMe.storage.domain.utils.p030rx.event.DomainRxEvents;
import com.iMe.storage.domain.utils.p030rx.event.RxEvent;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: AppRxEvents.kt */
/* loaded from: classes3.dex */
public abstract class AppRxEvents implements RxEvent {
    public /* synthetic */ AppRxEvents(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private AppRxEvents() {
    }

    /* compiled from: AppRxEvents.kt */
    /* loaded from: classes3.dex */
    public static final class UpdateWalletScreen extends AppRxEvents {
        public static final UpdateWalletScreen INSTANCE = new UpdateWalletScreen();

        private UpdateWalletScreen() {
            super(null);
        }
    }

    /* compiled from: AppRxEvents.kt */
    /* loaded from: classes3.dex */
    public static final class SuccessEnterPinCode extends AppRxEvents implements DomainRxEvents.CryptoEvent {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SuccessEnterPinCode(EnterPinCodeScreenType screenType) {
            super(null);
            Intrinsics.checkNotNullParameter(screenType, "screenType");
        }
    }

    /* compiled from: AppRxEvents.kt */
    /* loaded from: classes3.dex */
    public static final class BinanceWalletScreenNeedUpdate extends AppRxEvents {
        public static final BinanceWalletScreenNeedUpdate INSTANCE = new BinanceWalletScreenNeedUpdate();

        private BinanceWalletScreenNeedUpdate() {
            super(null);
        }
    }

    /* compiled from: AppRxEvents.kt */
    /* loaded from: classes3.dex */
    public static final class BinanceOpenAuthScreen extends AppRxEvents {
        public static final BinanceOpenAuthScreen INSTANCE = new BinanceOpenAuthScreen();

        private BinanceOpenAuthScreen() {
            super(null);
        }
    }

    /* compiled from: AppRxEvents.kt */
    /* loaded from: classes3.dex */
    public static final class BinanceAuthHandled extends AppRxEvents {
        private final Intent intent;

        public BinanceAuthHandled(Intent intent) {
            super(null);
            this.intent = intent;
        }

        public final Intent getIntent() {
            return this.intent;
        }
    }
}
