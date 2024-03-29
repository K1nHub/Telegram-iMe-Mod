package kotlin;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: UByte.kt */
/* loaded from: classes4.dex */
public final class UByte implements Comparable<UByte> {
    public static final Companion Companion = new Companion(null);
    private final byte data;

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ UByte m1952boximpl(byte b) {
        return new UByte(b);
    }

    /* renamed from: constructor-impl  reason: not valid java name */
    public static byte m1953constructorimpl(byte b) {
        return b;
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m1954equalsimpl(byte b, Object obj) {
        return (obj instanceof UByte) && b == ((UByte) obj).m1957unboximpl();
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m1955hashCodeimpl(byte b) {
        return b;
    }

    public boolean equals(Object obj) {
        return m1954equalsimpl(this.data, obj);
    }

    public int hashCode() {
        return m1955hashCodeimpl(this.data);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ byte m1957unboximpl() {
        return this.data;
    }

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(UByte uByte) {
        return Intrinsics.compare(m1957unboximpl() & 255, uByte.m1957unboximpl() & 255);
    }

    private /* synthetic */ UByte(byte b) {
        this.data = b;
    }

    /* compiled from: UByte.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    /* renamed from: toString-impl  reason: not valid java name */
    public static String m1956toStringimpl(byte b) {
        return String.valueOf(b & 255);
    }

    public String toString() {
        return m1956toStringimpl(this.data);
    }
}
