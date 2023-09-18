package p033j$.time;

import com.google.android.exoplayer2.C0479C;
import java.io.Serializable;
import java.math.BigInteger;
import java.util.regex.Pattern;
import p033j$.lang.AbstractC2781d;
/* renamed from: j$.time.Duration */
/* loaded from: classes2.dex */
public final class Duration implements Comparable<Duration>, Serializable {

    /* renamed from: c */
    public static final Duration f567c = new Duration(0, 0);

    /* renamed from: a */
    private final long f568a;

    /* renamed from: b */
    private final int f569b;

    static {
        BigInteger.valueOf(C0479C.NANOS_PER_SECOND);
        Pattern.compile("([-+]?)P(?:([-+]?[0-9]+)D)?(T(?:([-+]?[0-9]+)H)?(?:([-+]?[0-9]+)M)?(?:([-+]?[0-9]+)(?:[.,]([0-9]{0,9}))?S)?)?", 2);
    }

    private Duration(long j, int i) {
        this.f568a = j;
        this.f569b = i;
    }

    /* renamed from: a */
    private static Duration m693a(long j, int i) {
        return (((long) i) | j) == 0 ? f567c : new Duration(j, i);
    }

    /* renamed from: b */
    public static Duration m692b(long j) {
        long j2 = j / C0479C.NANOS_PER_SECOND;
        int i = (int) (j % C0479C.NANOS_PER_SECOND);
        if (i < 0) {
            i = (int) (i + C0479C.NANOS_PER_SECOND);
            j2--;
        }
        return m693a(j2, i);
    }

    /* renamed from: c */
    public static Duration m691c(long j) {
        return m693a(j, 0);
    }

    /* renamed from: d */
    public static Duration m690d(long j, long j2) {
        long j3 = j2 / C0479C.NANOS_PER_SECOND;
        long j4 = 0;
        if (j2 - (C0479C.NANOS_PER_SECOND * j3) != 0 && (((j2 ^ C0479C.NANOS_PER_SECOND) >> 63) | 1) < 0) {
            j3--;
        }
        long m694c = AbstractC2781d.m694c(j, j3);
        long j5 = j2 % C0479C.NANOS_PER_SECOND;
        if (j5 != 0) {
            if ((((j2 ^ C0479C.NANOS_PER_SECOND) >> 63) | 1) <= 0) {
                j5 += C0479C.NANOS_PER_SECOND;
            }
            j4 = j5;
        }
        return m693a(m694c, (int) j4);
    }

    @Override // java.lang.Comparable
    public int compareTo(Duration duration) {
        Duration duration2 = duration;
        int compare = Long.compare(this.f568a, duration2.f568a);
        return compare != 0 ? compare : this.f569b - duration2.f569b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Duration) {
            Duration duration = (Duration) obj;
            return this.f568a == duration.f568a && this.f569b == duration.f569b;
        }
        return false;
    }

    public int hashCode() {
        long j = this.f568a;
        return (this.f569b * 51) + ((int) (j ^ (j >>> 32)));
    }

    public long toMillis() {
        long j;
        long j2 = this.f568a;
        int numberOfLeadingZeros = Long.numberOfLeadingZeros(-1001L) + Long.numberOfLeadingZeros(1000L) + Long.numberOfLeadingZeros(~j2) + Long.numberOfLeadingZeros(j2);
        if (numberOfLeadingZeros <= 65) {
            if (numberOfLeadingZeros >= 64) {
                int i = (j2 > 0L ? 1 : (j2 == 0L ? 0 : -1));
                if ((i >= 0) | true) {
                    long j3 = j2 * 1000;
                    if (i == 0 || j3 / j2 == 1000) {
                        j = j3;
                    }
                }
            }
            throw new ArithmeticException();
        }
        j = j2 * 1000;
        return AbstractC2781d.m694c(j, this.f569b / 1000000);
    }

    public String toString() {
        if (this == f567c) {
            return "PT0S";
        }
        long j = this.f568a;
        long j2 = j / 3600;
        int i = (int) ((j % 3600) / 60);
        int i2 = (int) (j % 60);
        StringBuilder sb = new StringBuilder(24);
        sb.append("PT");
        if (j2 != 0) {
            sb.append(j2);
            sb.append('H');
        }
        if (i != 0) {
            sb.append(i);
            sb.append('M');
        }
        if (i2 == 0 && this.f569b == 0 && sb.length() > 2) {
            return sb.toString();
        }
        if (i2 >= 0 || this.f569b <= 0) {
            sb.append(i2);
        } else if (i2 == -1) {
            sb.append("-0");
        } else {
            sb.append(i2 + 1);
        }
        if (this.f569b > 0) {
            int length = sb.length();
            if (i2 < 0) {
                sb.append(2000000000 - this.f569b);
            } else {
                sb.append(this.f569b + C0479C.NANOS_PER_SECOND);
            }
            while (sb.charAt(sb.length() - 1) == '0') {
                sb.setLength(sb.length() - 1);
            }
            sb.setCharAt(length, '.');
        }
        sb.append('S');
        return sb.toString();
    }
}
