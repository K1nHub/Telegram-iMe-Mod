package p033j$.time;

import java.io.Serializable;
import java.util.Objects;
import p033j$.time.chrono.C2872c;
import p033j$.time.format.C2888p;
import p033j$.time.format.EnumC2892t;
import p033j$.time.temporal.EnumC2894a;
/* renamed from: j$.time.YearMonth */
/* loaded from: classes2.dex */
public final class YearMonth implements Comparable<YearMonth>, Serializable {

    /* renamed from: a */
    private final int f579a;

    /* renamed from: b */
    private final int f580b;

    static {
        C2888p m670l = new C2888p().m670l(EnumC2894a.YEAR, 4, 10, EnumC2892t.EXCEEDS_PAD);
        m670l.m677e('-');
        m670l.m671k(EnumC2894a.MONTH_OF_YEAR, 2);
        m670l.m663s();
    }

    private YearMonth(int i, int i2) {
        this.f579a = i;
        this.f580b = i2;
    }

    /* renamed from: of */
    public static YearMonth m689of(int i, int i2) {
        EnumC2894a.YEAR.m659b(i);
        EnumC2894a.MONTH_OF_YEAR.m659b(i2);
        return new YearMonth(i, i2);
    }

    @Override // java.lang.Comparable
    public int compareTo(YearMonth yearMonth) {
        YearMonth yearMonth2 = yearMonth;
        int i = this.f579a - yearMonth2.f579a;
        return i == 0 ? this.f580b - yearMonth2.f580b : i;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof YearMonth) {
            YearMonth yearMonth = (YearMonth) obj;
            return this.f579a == yearMonth.f579a && this.f580b == yearMonth.f580b;
        }
        return false;
    }

    public int hashCode() {
        return this.f579a ^ (this.f580b << 27);
    }

    public int lengthOfMonth() {
        EnumC2869c m688a = EnumC2869c.m688a(this.f580b);
        C2872c c2872c = C2872c.f584a;
        long j = this.f579a;
        boolean z = (3 & j) == 0 && (j % 100 != 0 || j % 400 == 0);
        Objects.requireNonNull(m688a);
        int i = AbstractC2868b.f581a[m688a.ordinal()];
        return i != 1 ? (i == 2 || i == 3 || i == 4 || i == 5) ? 30 : 31 : z ? 29 : 28;
    }

    public String toString() {
        int i;
        int abs = Math.abs(this.f579a);
        StringBuilder sb = new StringBuilder(9);
        if (abs < 1000) {
            int i2 = this.f579a;
            if (i2 < 0) {
                sb.append(i2 - 10000);
                i = 1;
            } else {
                sb.append(i2 + 10000);
                i = 0;
            }
            sb.deleteCharAt(i);
        } else {
            sb.append(this.f579a);
        }
        sb.append(this.f580b < 10 ? "-0" : "-");
        sb.append(this.f580b);
        return sb.toString();
    }
}
