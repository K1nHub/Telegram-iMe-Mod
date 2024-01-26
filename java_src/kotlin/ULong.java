package kotlin;

import com.iMe.feature.profile.ProfileData$$ExternalSyntheticBackport0;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* compiled from: ULong.kt */
/* loaded from: classes4.dex */
public final class ULong implements Comparable<ULong> {
    public static final Companion Companion = new Companion(null);
    private final long data;

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ ULong m1996boximpl(long j) {
        return new ULong(j);
    }

    /* renamed from: constructor-impl  reason: not valid java name */
    public static long m1997constructorimpl(long j) {
        return j;
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m1998equalsimpl(long j, Object obj) {
        return (obj instanceof ULong) && j == ((ULong) obj).m2001unboximpl();
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m1999hashCodeimpl(long j) {
        return ProfileData$$ExternalSyntheticBackport0.m1020m(j);
    }

    public boolean equals(Object obj) {
        return m1998equalsimpl(this.data, obj);
    }

    public int hashCode() {
        return m1999hashCodeimpl(this.data);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ long m2001unboximpl() {
        return this.data;
    }

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(ULong uLong) {
        return UnsignedKt.ulongCompare(m2001unboximpl(), uLong.m2001unboximpl());
    }

    private /* synthetic */ ULong(long j) {
        this.data = j;
    }

    /* compiled from: ULong.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    /* renamed from: toString-impl  reason: not valid java name */
    public static String m2000toStringimpl(long j) {
        return UnsignedKt.ulongToString(j);
    }

    public String toString() {
        return m2000toStringimpl(this.data);
    }
}
