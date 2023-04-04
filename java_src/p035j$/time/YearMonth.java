package p035j$.time;

import java.io.Serializable;
import java.util.Objects;
import p035j$.time.chrono.C2581c;
import p035j$.time.format.C2597p;
import p035j$.time.format.EnumC2601t;
import p035j$.time.temporal.EnumC2603a;
/* renamed from: j$.time.YearMonth */
/* loaded from: classes2.dex */
public final class YearMonth implements Comparable<YearMonth>, Serializable {

    /* renamed from: a */
    private final int f486a;

    /* renamed from: b */
    private final int f487b;

    static {
        C2597p m661l = new C2597p().m661l(EnumC2603a.YEAR, 4, 10, EnumC2601t.EXCEEDS_PAD);
        m661l.m668e('-');
        m661l.m662k(EnumC2603a.MONTH_OF_YEAR, 2);
        m661l.m654s();
    }

    private YearMonth(int i, int i2) {
        this.f486a = i;
        this.f487b = i2;
    }

    /* renamed from: of */
    public static YearMonth m680of(int i, int i2) {
        EnumC2603a.YEAR.m650b(i);
        EnumC2603a.MONTH_OF_YEAR.m650b(i2);
        return new YearMonth(i, i2);
    }

    @Override // java.lang.Comparable
    public int compareTo(YearMonth yearMonth) {
        YearMonth yearMonth2 = yearMonth;
        int i = this.f486a - yearMonth2.f486a;
        return i == 0 ? this.f487b - yearMonth2.f487b : i;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof YearMonth) {
            YearMonth yearMonth = (YearMonth) obj;
            return this.f486a == yearMonth.f486a && this.f487b == yearMonth.f487b;
        }
        return false;
    }

    public int hashCode() {
        return this.f486a ^ (this.f487b << 27);
    }

    public int lengthOfMonth() {
        EnumC2578c m679a = EnumC2578c.m679a(this.f487b);
        C2581c c2581c = C2581c.f491a;
        long j = this.f486a;
        boolean z = (3 & j) == 0 && (j % 100 != 0 || j % 400 == 0);
        Objects.requireNonNull(m679a);
        int i = AbstractC2577b.f488a[m679a.ordinal()];
        return i != 1 ? (i == 2 || i == 3 || i == 4 || i == 5) ? 30 : 31 : z ? 29 : 28;
    }

    public String toString() {
        int i;
        int abs = Math.abs(this.f486a);
        StringBuilder sb = new StringBuilder(9);
        if (abs < 1000) {
            int i2 = this.f486a;
            if (i2 < 0) {
                sb.append(i2 - 10000);
                i = 1;
            } else {
                sb.append(i2 + 10000);
                i = 0;
            }
            sb.deleteCharAt(i);
        } else {
            sb.append(this.f486a);
        }
        sb.append(this.f487b < 10 ? "-0" : "-");
        sb.append(this.f487b);
        return sb.toString();
    }
}
