package p034j$.time;

import java.io.Serializable;
import java.util.Objects;
import p034j$.time.chrono.C2491c;
import p034j$.time.format.C2507p;
import p034j$.time.format.EnumC2511t;
import p034j$.time.temporal.EnumC2513a;
/* renamed from: j$.time.YearMonth */
/* loaded from: classes2.dex */
public final class YearMonth implements Comparable<YearMonth>, Serializable {

    /* renamed from: a */
    private final int f480a;

    /* renamed from: b */
    private final int f481b;

    static {
        C2507p m667l = new C2507p().m667l(EnumC2513a.YEAR, 4, 10, EnumC2511t.EXCEEDS_PAD);
        m667l.m674e('-');
        m667l.m668k(EnumC2513a.MONTH_OF_YEAR, 2);
        m667l.m660s();
    }

    private YearMonth(int i, int i2) {
        this.f480a = i;
        this.f481b = i2;
    }

    /* renamed from: of */
    public static YearMonth m686of(int i, int i2) {
        EnumC2513a.YEAR.m656b(i);
        EnumC2513a.MONTH_OF_YEAR.m656b(i2);
        return new YearMonth(i, i2);
    }

    @Override // java.lang.Comparable
    public int compareTo(YearMonth yearMonth) {
        YearMonth yearMonth2 = yearMonth;
        int i = this.f480a - yearMonth2.f480a;
        return i == 0 ? this.f481b - yearMonth2.f481b : i;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof YearMonth) {
            YearMonth yearMonth = (YearMonth) obj;
            return this.f480a == yearMonth.f480a && this.f481b == yearMonth.f481b;
        }
        return false;
    }

    public int hashCode() {
        return this.f480a ^ (this.f481b << 27);
    }

    public int lengthOfMonth() {
        EnumC2488c m685a = EnumC2488c.m685a(this.f481b);
        C2491c c2491c = C2491c.f485a;
        long j = this.f480a;
        boolean z = (3 & j) == 0 && (j % 100 != 0 || j % 400 == 0);
        Objects.requireNonNull(m685a);
        int i = AbstractC2487b.f482a[m685a.ordinal()];
        return i != 1 ? (i == 2 || i == 3 || i == 4 || i == 5) ? 30 : 31 : z ? 29 : 28;
    }

    public String toString() {
        int i;
        int abs = Math.abs(this.f480a);
        StringBuilder sb = new StringBuilder(9);
        if (abs < 1000) {
            int i2 = this.f480a;
            if (i2 < 0) {
                sb.append(i2 - 10000);
                i = 1;
            } else {
                sb.append(i2 + 10000);
                i = 0;
            }
            sb.deleteCharAt(i);
        } else {
            sb.append(this.f480a);
        }
        sb.append(this.f481b < 10 ? "-0" : "-");
        sb.append(this.f481b);
        return sb.toString();
    }
}
