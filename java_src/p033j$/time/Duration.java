package p033j$.time;

import com.google.android.exoplayer2.C0483C;
import java.io.Serializable;
import java.math.BigInteger;
import java.util.regex.Pattern;
import p033j$.lang.AbstractC2668d;
/* renamed from: j$.time.Duration */
/* loaded from: classes2.dex */
public final class Duration implements Comparable<Duration>, Serializable {

    /* renamed from: c */
    public static final Duration f481c = new Duration(0, 0);

    /* renamed from: a */
    private final long f482a;

    /* renamed from: b */
    private final int f483b;

    static {
        BigInteger.valueOf(C0483C.NANOS_PER_SECOND);
        Pattern.compile("([-+]?)P(?:([-+]?[0-9]+)D)?(T(?:([-+]?[0-9]+)H)?(?:([-+]?[0-9]+)M)?(?:([-+]?[0-9]+)(?:[.,]([0-9]{0,9}))?S)?)?", 2);
    }

    private Duration(long j, int i) {
        this.f482a = j;
        this.f483b = i;
    }

    /* renamed from: a */
    private static Duration m987a(long j, int i) {
        return (((long) i) | j) == 0 ? f481c : new Duration(j, i);
    }

    /* renamed from: c */
    public static Duration m985c(long j) {
        long j2 = j / C0483C.NANOS_PER_SECOND;
        int i = (int) (j % C0483C.NANOS_PER_SECOND);
        if (i < 0) {
            i = (int) (i + C0483C.NANOS_PER_SECOND);
            j2--;
        }
        return m987a(j2, i);
    }

    /* renamed from: d */
    public static Duration m984d(long j) {
        return m987a(j, 0);
    }

    /* renamed from: e */
    public static Duration m983e(long j, long j2) {
        return m987a(AbstractC2668d.m993c(j, AbstractC2668d.m991e(j2, C0483C.NANOS_PER_SECOND)), (int) AbstractC2668d.m992d(j2, C0483C.NANOS_PER_SECOND));
    }

    /* renamed from: b */
    public long m986b() {
        return this.f482a;
    }

    @Override // java.lang.Comparable
    public int compareTo(Duration duration) {
        Duration duration2 = duration;
        int compare = Long.compare(this.f482a, duration2.f482a);
        return compare != 0 ? compare : this.f483b - duration2.f483b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Duration) {
            Duration duration = (Duration) obj;
            return this.f482a == duration.f482a && this.f483b == duration.f483b;
        }
        return false;
    }

    public int hashCode() {
        long j = this.f482a;
        return (this.f483b * 51) + ((int) (j ^ (j >>> 32)));
    }

    public long toMillis() {
        return AbstractC2668d.m993c(AbstractC2668d.m990f(this.f482a, 1000L), this.f483b / 1000000);
    }

    public String toString() {
        if (this == f481c) {
            return "PT0S";
        }
        long j = this.f482a;
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
        if (i2 == 0 && this.f483b == 0 && sb.length() > 2) {
            return sb.toString();
        }
        if (i2 >= 0 || this.f483b <= 0) {
            sb.append(i2);
        } else if (i2 == -1) {
            sb.append("-0");
        } else {
            sb.append(i2 + 1);
        }
        if (this.f483b > 0) {
            int length = sb.length();
            if (i2 < 0) {
                sb.append(2000000000 - this.f483b);
            } else {
                sb.append(this.f483b + C0483C.NANOS_PER_SECOND);
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
