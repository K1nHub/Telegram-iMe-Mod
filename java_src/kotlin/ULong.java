package kotlin;

import com.iMe.feature.profile.ProfileData$$ExternalSyntheticBackport0;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* compiled from: ULong.kt */
/* loaded from: classes4.dex */
public final class ULong implements Comparable<ULong> {
    public static final Companion Companion = new Companion(null);
    private final long data;

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ ULong m1988boximpl(long j) {
        return new ULong(j);
    }

    /* renamed from: constructor-impl  reason: not valid java name */
    public static long m1989constructorimpl(long j) {
        return j;
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m1990equalsimpl(long j, Object obj) {
        return (obj instanceof ULong) && j == ((ULong) obj).m1993unboximpl();
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m1991hashCodeimpl(long j) {
        return ProfileData$$ExternalSyntheticBackport0.m1017m(j);
    }

    public boolean equals(Object obj) {
        return m1990equalsimpl(this.data, obj);
    }

    public int hashCode() {
        return m1991hashCodeimpl(this.data);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ long m1993unboximpl() {
        return this.data;
    }

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(ULong uLong) {
        return UnsignedKt.ulongCompare(m1993unboximpl(), uLong.m1993unboximpl());
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
    public static String m1992toStringimpl(long j) {
        return UnsignedKt.ulongToString(j);
    }

    public String toString() {
        return m1992toStringimpl(this.data);
    }
}
