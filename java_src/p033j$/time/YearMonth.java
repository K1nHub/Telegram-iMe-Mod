package p033j$.time;

import java.io.Serializable;
import java.util.Objects;
import p033j$.time.chrono.C2788c;
import p033j$.time.format.C2804p;
import p033j$.time.format.EnumC2808t;
import p033j$.time.temporal.EnumC2810a;
/* renamed from: j$.time.YearMonth */
/* loaded from: classes2.dex */
public final class YearMonth implements Comparable<YearMonth>, Serializable {

    /* renamed from: a */
    private final int f570a;

    /* renamed from: b */
    private final int f571b;

    static {
        C2804p m670l = new C2804p().m670l(EnumC2810a.YEAR, 4, 10, EnumC2808t.EXCEEDS_PAD);
        m670l.m677e('-');
        m670l.m671k(EnumC2810a.MONTH_OF_YEAR, 2);
        m670l.m663s();
    }

    private YearMonth(int i, int i2) {
        this.f570a = i;
        this.f571b = i2;
    }

    /* renamed from: of */
    public static YearMonth m689of(int i, int i2) {
        EnumC2810a.YEAR.m659b(i);
        EnumC2810a.MONTH_OF_YEAR.m659b(i2);
        return new YearMonth(i, i2);
    }

    @Override // java.lang.Comparable
    public int compareTo(YearMonth yearMonth) {
        YearMonth yearMonth2 = yearMonth;
        int i = this.f570a - yearMonth2.f570a;
        return i == 0 ? this.f571b - yearMonth2.f571b : i;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof YearMonth) {
            YearMonth yearMonth = (YearMonth) obj;
            return this.f570a == yearMonth.f570a && this.f571b == yearMonth.f571b;
        }
        return false;
    }

    public int hashCode() {
        return this.f570a ^ (this.f571b << 27);
    }

    public int lengthOfMonth() {
        EnumC2785c m688a = EnumC2785c.m688a(this.f571b);
        C2788c c2788c = C2788c.f575a;
        long j = this.f570a;
        boolean z = (3 & j) == 0 && (j % 100 != 0 || j % 400 == 0);
        Objects.requireNonNull(m688a);
        int i = AbstractC2784b.f572a[m688a.ordinal()];
        return i != 1 ? (i == 2 || i == 3 || i == 4 || i == 5) ? 30 : 31 : z ? 29 : 28;
    }

    public String toString() {
        int i;
        int abs = Math.abs(this.f570a);
        StringBuilder sb = new StringBuilder(9);
        if (abs < 1000) {
            int i2 = this.f570a;
            if (i2 < 0) {
                sb.append(i2 - 10000);
                i = 1;
            } else {
                sb.append(i2 + 10000);
                i = 0;
            }
            sb.deleteCharAt(i);
        } else {
            sb.append(this.f570a);
        }
        sb.append(this.f571b < 10 ? "-0" : "-");
        sb.append(this.f571b);
        return sb.toString();
    }
}
