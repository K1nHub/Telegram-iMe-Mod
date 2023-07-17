package p033j$.time;

import java.io.Serializable;
import java.util.Objects;
import p033j$.time.chrono.C2733c;
import p033j$.time.format.C2749p;
import p033j$.time.format.EnumC2753t;
import p033j$.time.temporal.EnumC2755a;
/* renamed from: j$.time.YearMonth */
/* loaded from: classes2.dex */
public final class YearMonth implements Comparable<YearMonth>, Serializable {

    /* renamed from: a */
    private final int f566a;

    /* renamed from: b */
    private final int f567b;

    static {
        C2749p m652l = new C2749p().m652l(EnumC2755a.YEAR, 4, 10, EnumC2753t.EXCEEDS_PAD);
        m652l.m659e('-');
        m652l.m653k(EnumC2755a.MONTH_OF_YEAR, 2);
        m652l.m645s();
    }

    private YearMonth(int i, int i2) {
        this.f566a = i;
        this.f567b = i2;
    }

    /* renamed from: of */
    public static YearMonth m671of(int i, int i2) {
        EnumC2755a.YEAR.m641b(i);
        EnumC2755a.MONTH_OF_YEAR.m641b(i2);
        return new YearMonth(i, i2);
    }

    @Override // java.lang.Comparable
    public int compareTo(YearMonth yearMonth) {
        YearMonth yearMonth2 = yearMonth;
        int i = this.f566a - yearMonth2.f566a;
        return i == 0 ? this.f567b - yearMonth2.f567b : i;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof YearMonth) {
            YearMonth yearMonth = (YearMonth) obj;
            return this.f566a == yearMonth.f566a && this.f567b == yearMonth.f567b;
        }
        return false;
    }

    public int hashCode() {
        return this.f566a ^ (this.f567b << 27);
    }

    public int lengthOfMonth() {
        EnumC2730c m670a = EnumC2730c.m670a(this.f567b);
        C2733c c2733c = C2733c.f571a;
        long j = this.f566a;
        boolean z = (3 & j) == 0 && (j % 100 != 0 || j % 400 == 0);
        Objects.requireNonNull(m670a);
        int i = AbstractC2729b.f568a[m670a.ordinal()];
        return i != 1 ? (i == 2 || i == 3 || i == 4 || i == 5) ? 30 : 31 : z ? 29 : 28;
    }

    public String toString() {
        int i;
        int abs = Math.abs(this.f566a);
        StringBuilder sb = new StringBuilder(9);
        if (abs < 1000) {
            int i2 = this.f566a;
            if (i2 < 0) {
                sb.append(i2 - 10000);
                i = 1;
            } else {
                sb.append(i2 + 10000);
                i = 0;
            }
            sb.deleteCharAt(i);
        } else {
            sb.append(this.f566a);
        }
        sb.append(this.f567b < 10 ? "-0" : "-");
        sb.append(this.f567b);
        return sb.toString();
    }
}
