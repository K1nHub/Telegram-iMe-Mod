package p034j$.time;

import java.io.Serializable;
import java.util.Objects;
import p034j$.time.chrono.C2367c;
import p034j$.time.format.C2383p;
import p034j$.time.format.EnumC2387t;
import p034j$.time.temporal.EnumC2389a;
/* renamed from: j$.time.YearMonth */
/* loaded from: classes2.dex */
public final class YearMonth implements Comparable<YearMonth>, Serializable {

    /* renamed from: a */
    private final int f475a;

    /* renamed from: b */
    private final int f476b;

    static {
        C2383p m667l = new C2383p().m667l(EnumC2389a.YEAR, 4, 10, EnumC2387t.EXCEEDS_PAD);
        m667l.m674e('-');
        m667l.m668k(EnumC2389a.MONTH_OF_YEAR, 2);
        m667l.m660s();
    }

    private YearMonth(int i, int i2) {
        this.f475a = i;
        this.f476b = i2;
    }

    /* renamed from: of */
    public static YearMonth m686of(int i, int i2) {
        EnumC2389a.YEAR.m656b(i);
        EnumC2389a.MONTH_OF_YEAR.m656b(i2);
        return new YearMonth(i, i2);
    }

    @Override // java.lang.Comparable
    public int compareTo(YearMonth yearMonth) {
        YearMonth yearMonth2 = yearMonth;
        int i = this.f475a - yearMonth2.f475a;
        return i == 0 ? this.f476b - yearMonth2.f476b : i;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof YearMonth) {
            YearMonth yearMonth = (YearMonth) obj;
            return this.f475a == yearMonth.f475a && this.f476b == yearMonth.f476b;
        }
        return false;
    }

    public int hashCode() {
        return this.f475a ^ (this.f476b << 27);
    }

    public int lengthOfMonth() {
        EnumC2364c m685a = EnumC2364c.m685a(this.f476b);
        C2367c c2367c = C2367c.f480a;
        long j = this.f475a;
        boolean z = (3 & j) == 0 && (j % 100 != 0 || j % 400 == 0);
        Objects.requireNonNull(m685a);
        int i = AbstractC2363b.f477a[m685a.ordinal()];
        return i != 1 ? (i == 2 || i == 3 || i == 4 || i == 5) ? 30 : 31 : z ? 29 : 28;
    }

    public String toString() {
        int i;
        int abs = Math.abs(this.f475a);
        StringBuilder sb = new StringBuilder(9);
        if (abs < 1000) {
            int i2 = this.f475a;
            if (i2 < 0) {
                sb.append(i2 - 10000);
                i = 1;
            } else {
                sb.append(i2 + 10000);
                i = 0;
            }
            sb.deleteCharAt(i);
        } else {
            sb.append(this.f475a);
        }
        sb.append(this.f476b < 10 ? "-0" : "-");
        sb.append(this.f476b);
        return sb.toString();
    }
}
