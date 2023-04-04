package com.iMe.model.wallet.crypto.send;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: AddressAccessState.kt */
/* loaded from: classes3.dex */
public abstract class AddressAccessState {
    public /* synthetic */ AddressAccessState(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    /* compiled from: AddressAccessState.kt */
    /* loaded from: classes3.dex */
    public static final class Granted extends AddressAccessState {
        private final String address;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Granted(String address) {
            super(null);
            Intrinsics.checkNotNullParameter(address, "address");
            this.address = address;
        }

        public final String getAddress() {
            return this.address;
        }
    }

    private AddressAccessState() {
    }

    /* compiled from: AddressAccessState.kt */
    /* loaded from: classes3.dex */
    public static final class Denied extends AddressAccessState {
        public static final Denied INSTANCE = new Denied();

        private Denied() {
            super(null);
        }
    }

    /* compiled from: AddressAccessState.kt */
    /* loaded from: classes3.dex */
    public static final class NotAvailable extends AddressAccessState {
        public static final NotAvailable INSTANCE = new NotAvailable();

        private NotAvailable() {
            super(null);
        }
    }
}
