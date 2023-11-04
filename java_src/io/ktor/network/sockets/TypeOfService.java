package io.ktor.network.sockets;

import kotlin.jvm.internal.DefaultConstructorMarker;
/* compiled from: TypeOfService.kt */
/* loaded from: classes4.dex */
public final class TypeOfService {
    public static final Companion Companion = new Companion(null);
    private static final byte UNDEFINED = m1905constructorimpl((byte) 0);

    /* renamed from: constructor-impl  reason: not valid java name */
    public static byte m1905constructorimpl(byte b) {
        return b;
    }

    /* renamed from: equals-impl0  reason: not valid java name */
    public static final boolean m1906equalsimpl0(byte b, byte b2) {
        return b == b2;
    }

    /* compiled from: TypeOfService.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* renamed from: getUNDEFINED-zieKYfw  reason: not valid java name */
        public final byte m1907getUNDEFINEDzieKYfw() {
            return TypeOfService.UNDEFINED;
        }
    }

    static {
        m1905constructorimpl((byte) 2);
        m1905constructorimpl((byte) 4);
        m1905constructorimpl((byte) 8);
        m1905constructorimpl((byte) 16);
    }
}
