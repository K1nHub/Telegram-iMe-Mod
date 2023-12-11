package kotlin;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: UByte.kt */
/* loaded from: classes4.dex */
public final class UByte implements Comparable<UByte> {
    public static final Companion Companion = new Companion(null);
    private final byte data;

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ UByte m1951boximpl(byte b) {
        return new UByte(b);
    }

    /* renamed from: constructor-impl  reason: not valid java name */
    public static byte m1952constructorimpl(byte b) {
        return b;
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m1953equalsimpl(byte b, Object obj) {
        return (obj instanceof UByte) && b == ((UByte) obj).m1956unboximpl();
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m1954hashCodeimpl(byte b) {
        return b;
    }

    public boolean equals(Object obj) {
        return m1953equalsimpl(this.data, obj);
    }

    public int hashCode() {
        return m1954hashCodeimpl(this.data);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ byte m1956unboximpl() {
        return this.data;
    }

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(UByte uByte) {
        return Intrinsics.compare(m1956unboximpl() & 255, uByte.m1956unboximpl() & 255);
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
    public static String m1955toStringimpl(byte b) {
        return String.valueOf(b & 255);
    }

    public String toString() {
        return m1955toStringimpl(this.data);
    }
}
