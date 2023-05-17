package p034j$.time;

import java.io.Serializable;
import java.util.Objects;
import p034j$.time.chrono.C2607c;
import p034j$.time.format.C2623p;
import p034j$.time.format.EnumC2627t;
import p034j$.time.temporal.EnumC2629a;
/* renamed from: j$.time.YearMonth */
/* loaded from: classes2.dex */
public final class YearMonth implements Comparable<YearMonth>, Serializable {

    /* renamed from: a */
    private final int f484a;

    /* renamed from: b */
    private final int f485b;

    static {
        C2623p m652l = new C2623p().m652l(EnumC2629a.YEAR, 4, 10, EnumC2627t.EXCEEDS_PAD);
        m652l.m659e('-');
        m652l.m653k(EnumC2629a.MONTH_OF_YEAR, 2);
        m652l.m645s();
    }

    private YearMonth(int i, int i2) {
        this.f484a = i;
        this.f485b = i2;
    }

    /* renamed from: of */
    public static YearMonth m671of(int i, int i2) {
        EnumC2629a.YEAR.m641b(i);
        EnumC2629a.MONTH_OF_YEAR.m641b(i2);
        return new YearMonth(i, i2);
    }

    @Override // java.lang.Comparable
    public int compareTo(YearMonth yearMonth) {
        YearMonth yearMonth2 = yearMonth;
        int i = this.f484a - yearMonth2.f484a;
        return i == 0 ? this.f485b - yearMonth2.f485b : i;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof YearMonth) {
            YearMonth yearMonth = (YearMonth) obj;
            return this.f484a == yearMonth.f484a && this.f485b == yearMonth.f485b;
        }
        return false;
    }

    public int hashCode() {
        return this.f484a ^ (this.f485b << 27);
    }

    public int lengthOfMonth() {
        EnumC2604c m670a = EnumC2604c.m670a(this.f485b);
        C2607c c2607c = C2607c.f489a;
        long j = this.f484a;
        boolean z = (3 & j) == 0 && (j % 100 != 0 || j % 400 == 0);
        Objects.requireNonNull(m670a);
        int i = AbstractC2603b.f486a[m670a.ordinal()];
        return i != 1 ? (i == 2 || i == 3 || i == 4 || i == 5) ? 30 : 31 : z ? 29 : 28;
    }

    public String toString() {
        int i;
        int abs = Math.abs(this.f484a);
        StringBuilder sb = new StringBuilder(9);
        if (abs < 1000) {
            int i2 = this.f484a;
            if (i2 < 0) {
                sb.append(i2 - 10000);
                i = 1;
            } else {
                sb.append(i2 + 10000);
                i = 0;
            }
            sb.deleteCharAt(i);
        } else {
            sb.append(this.f484a);
        }
        sb.append(this.f485b < 10 ? "-0" : "-");
        sb.append(this.f485b);
        return sb.toString();
    }
}
