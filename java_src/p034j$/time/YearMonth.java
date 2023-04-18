package p034j$.time;

import java.io.Serializable;
import java.util.Objects;
import p034j$.time.chrono.C2568c;
import p034j$.time.format.C2584p;
import p034j$.time.format.EnumC2588t;
import p034j$.time.temporal.EnumC2590a;
/* renamed from: j$.time.YearMonth */
/* loaded from: classes2.dex */
public final class YearMonth implements Comparable<YearMonth>, Serializable {

    /* renamed from: a */
    private final int f481a;

    /* renamed from: b */
    private final int f482b;

    static {
        C2584p m647l = new C2584p().m647l(EnumC2590a.YEAR, 4, 10, EnumC2588t.EXCEEDS_PAD);
        m647l.m654e('-');
        m647l.m648k(EnumC2590a.MONTH_OF_YEAR, 2);
        m647l.m640s();
    }

    private YearMonth(int i, int i2) {
        this.f481a = i;
        this.f482b = i2;
    }

    /* renamed from: of */
    public static YearMonth m666of(int i, int i2) {
        EnumC2590a.YEAR.m636b(i);
        EnumC2590a.MONTH_OF_YEAR.m636b(i2);
        return new YearMonth(i, i2);
    }

    @Override // java.lang.Comparable
    public int compareTo(YearMonth yearMonth) {
        YearMonth yearMonth2 = yearMonth;
        int i = this.f481a - yearMonth2.f481a;
        return i == 0 ? this.f482b - yearMonth2.f482b : i;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof YearMonth) {
            YearMonth yearMonth = (YearMonth) obj;
            return this.f481a == yearMonth.f481a && this.f482b == yearMonth.f482b;
        }
        return false;
    }

    public int hashCode() {
        return this.f481a ^ (this.f482b << 27);
    }

    public int lengthOfMonth() {
        EnumC2565c m665a = EnumC2565c.m665a(this.f482b);
        C2568c c2568c = C2568c.f486a;
        long j = this.f481a;
        boolean z = (3 & j) == 0 && (j % 100 != 0 || j % 400 == 0);
        Objects.requireNonNull(m665a);
        int i = AbstractC2564b.f483a[m665a.ordinal()];
        return i != 1 ? (i == 2 || i == 3 || i == 4 || i == 5) ? 30 : 31 : z ? 29 : 28;
    }

    public String toString() {
        int i;
        int abs = Math.abs(this.f481a);
        StringBuilder sb = new StringBuilder(9);
        if (abs < 1000) {
            int i2 = this.f481a;
            if (i2 < 0) {
                sb.append(i2 - 10000);
                i = 1;
            } else {
                sb.append(i2 + 10000);
                i = 0;
            }
            sb.deleteCharAt(i);
        } else {
            sb.append(this.f481a);
        }
        sb.append(this.f482b < 10 ? "-0" : "-");
        sb.append(this.f482b);
        return sb.toString();
    }
}
