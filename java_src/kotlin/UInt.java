package kotlin;

import kotlin.jvm.internal.DefaultConstructorMarker;
/* compiled from: UInt.kt */
/* loaded from: classes4.dex */
public final class UInt implements Comparable<UInt> {
    public static final Companion Companion = new Companion(null);
    private final int data;

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ UInt m1973boximpl(int i) {
        return new UInt(i);
    }

    /* renamed from: constructor-impl  reason: not valid java name */
    public static int m1974constructorimpl(int i) {
        return i;
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m1975equalsimpl(int i, Object obj) {
        return (obj instanceof UInt) && i == ((UInt) obj).m1978unboximpl();
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m1976hashCodeimpl(int i) {
        return i;
    }

    public boolean equals(Object obj) {
        return m1975equalsimpl(this.data, obj);
    }

    public int hashCode() {
        return m1976hashCodeimpl(this.data);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ int m1978unboximpl() {
        return this.data;
    }

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(UInt uInt) {
        return UnsignedKt.uintCompare(m1978unboximpl(), uInt.m1978unboximpl());
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
    public static String m1977toStringimpl(int i) {
        return String.valueOf(i & 4294967295L);
    }

    public String toString() {
        return m1977toStringimpl(this.data);
    }
}
