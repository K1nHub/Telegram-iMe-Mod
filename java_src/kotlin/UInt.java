package kotlin;

import kotlin.jvm.internal.DefaultConstructorMarker;
/* compiled from: UInt.kt */
/* loaded from: classes4.dex */
public final class UInt implements Comparable<UInt> {
    public static final Companion Companion = new Companion(null);
    private final int data;

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ UInt m1971boximpl(int i) {
        return new UInt(i);
    }

    /* renamed from: constructor-impl  reason: not valid java name */
    public static int m1972constructorimpl(int i) {
        return i;
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m1973equalsimpl(int i, Object obj) {
        return (obj instanceof UInt) && i == ((UInt) obj).m1976unboximpl();
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m1974hashCodeimpl(int i) {
        return i;
    }

    public boolean equals(Object obj) {
        return m1973equalsimpl(this.data, obj);
    }

    public int hashCode() {
        return m1974hashCodeimpl(this.data);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ int m1976unboximpl() {
        return this.data;
    }

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(UInt uInt) {
        return UnsignedKt.uintCompare(m1976unboximpl(), uInt.m1976unboximpl());
    }

    private /* synthetic */ UInt(int i) {
        this.data = i;
    }

    /* compiled from: UInt.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    /* renamed from: toString-impl  reason: not valid java name */
    public static String m1975toStringimpl(int i) {
        return String.valueOf(i & 4294967295L);
    }

    public String toString() {
        return m1975toStringimpl(this.data);
    }
}
