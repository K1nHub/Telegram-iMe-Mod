package com.iMe.model.wallet.pin;

import com.iMe.model.wallet.crypto.create.WalletCreationType;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CreatePinCodeScreenType.kt */
/* loaded from: classes3.dex */
public abstract class CreatePinCodeScreenType {
    public /* synthetic */ CreatePinCodeScreenType(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private CreatePinCodeScreenType() {
    }

    /* compiled from: CreatePinCodeScreenType.kt */
    /* loaded from: classes3.dex */
    public static final class Creation extends CreatePinCodeScreenType {
        private final WalletCreationType.Initial creationType;

        public static /* synthetic */ Creation copy$default(Creation creation, WalletCreationType.Initial initial, int i, Object obj) {
            if ((i & 1) != 0) {
                initial = creation.creationType;
            }
            return creation.copy(initial);
        }

        public final WalletCreationType.Initial component1() {
            return this.creationType;
        }

        public final Creation copy(WalletCreationType.Initial creationType) {
            Intrinsics.checkNotNullParameter(creationType, "creationType");
            return new Creation(creationType);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Creation) && Intrinsics.areEqual(this.creationType, ((Creation) obj).creationType);
        }

        public int hashCode() {
            return this.creationType.hashCode();
        }

        public String toString() {
            return "Creation(creationType=" + this.creationType + ')';
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Creation(WalletCreationType.Initial creationType) {
            super(null);
            Intrinsics.checkNotNullParameter(creationType, "creationType");
            this.creationType = creationType;
        }

        public final WalletCreationType.Initial getCreationType() {
            return this.creationType;
        }
    }

    /* compiled from: CreatePinCodeScreenType.kt */
    /* loaded from: classes3.dex */
    public static final class Change extends CreatePinCodeScreenType {
        public static final Change INSTANCE = new Change();

        private Change() {
            super(null);
        }
    }
}
