package kotlin;

import kotlin.jvm.internal.DefaultConstructorMarker;
/* compiled from: UInt.kt */
/* loaded from: classes4.dex */
public final class UInt implements Comparable<UInt> {
    public static final Companion Companion = new Companion(null);
    private final int data;

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ UInt m1966boximpl(int i) {
        return new UInt(i);
    }

    /* renamed from: constructor-impl  reason: not valid java name */
    public static int m1967constructorimpl(int i) {
        return i;
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m1968equalsimpl(int i, Object obj) {
        return (obj instanceof UInt) && i == ((UInt) obj).m1971unboximpl();
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m1969hashCodeimpl(int i) {
        return i;
    }

    public boolean equals(Object obj) {
        return m1968equalsimpl(this.data, obj);
    }

    public int hashCode() {
        return m1969hashCodeimpl(this.data);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ int m1971unboximpl() {
        return this.data;
    }

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(UInt uInt) {
        return UnsignedKt.uintCompare(m1971unboximpl(), uInt.m1971unboximpl());
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
    public static String m1970toStringimpl(int i) {
        return String.valueOf(i & 4294967295L);
    }

    public String toString() {
        return m1970toStringimpl(this.data);
    }
}
