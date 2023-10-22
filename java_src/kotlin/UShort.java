package kotlin;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: UShort.kt */
/* loaded from: classes4.dex */
public final class UShort implements Comparable<UShort> {
    public static final Companion Companion = new Companion(null);
    private final short data;

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ UShort m2010boximpl(short s) {
        return new UShort(s);
    }

    /* renamed from: constructor-impl  reason: not valid java name */
    public static short m2011constructorimpl(short s) {
        return s;
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m2012equalsimpl(short s, Object obj) {
        return (obj instanceof UShort) && s == ((UShort) obj).m2015unboximpl();
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m2013hashCodeimpl(short s) {
        return s;
    }

    public boolean equals(Object obj) {
        return m2012equalsimpl(this.data, obj);
    }

    public int hashCode() {
        return m2013hashCodeimpl(this.data);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ short m2015unboximpl() {
        return this.data;
    }

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(UShort uShort) {
        return Intrinsics.compare(m2015unboximpl() & 65535, uShort.m2015unboximpl() & 65535);
    }

    private /* synthetic */ UShort(short s) {
        this.data = s;
    }

    /* compiled from: UShort.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    /* renamed from: toString-impl  reason: not valid java name */
    public static String m2014toStringimpl(short s) {
        return String.valueOf(s & 65535);
    }

    public String toString() {
        return m2014toStringimpl(this.data);
    }
}
