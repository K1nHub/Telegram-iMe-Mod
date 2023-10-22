package com.iMe.model.wallet.home;

import com.iMe.model.wallet.crypto.create.WalletCreationType;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: NetworkChoosePurpose.kt */
/* loaded from: classes3.dex */
public abstract class NetworkChoosePurpose {
    public /* synthetic */ NetworkChoosePurpose(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    /* compiled from: NetworkChoosePurpose.kt */
    /* loaded from: classes3.dex */
    public static final class Common extends NetworkChoosePurpose {
        public static final Common INSTANCE = new Common();

        private Common() {
            super(null);
        }
    }

    private NetworkChoosePurpose() {
    }

    /* compiled from: NetworkChoosePurpose.kt */
    /* loaded from: classes3.dex */
    public static final class Receive extends NetworkChoosePurpose {
        public static final Receive INSTANCE = new Receive();

        private Receive() {
            super(null);
        }
    }

    /* compiled from: NetworkChoosePurpose.kt */
    /* loaded from: classes3.dex */
    public static final class NewWallet extends NetworkChoosePurpose {
        private final WalletCreationType walletCreationType;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public NewWallet(WalletCreationType walletCreationType) {
            super(null);
            Intrinsics.checkNotNullParameter(walletCreationType, "walletCreationType");
            this.walletCreationType = walletCreationType;
        }

        public final WalletCreationType getWalletCreationType() {
            return this.walletCreationType;
        }
    }
}
