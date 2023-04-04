package p035j$.time.temporal;

import java.io.Serializable;
import p035j$.time.C2576a;
/* renamed from: j$.time.temporal.m */
/* loaded from: classes2.dex */
public final class C2615m implements Serializable {

    /* renamed from: a */
    private final long f536a;

    /* renamed from: b */
    private final long f537b;

    /* renamed from: c */
    private final long f538c;

    /* renamed from: d */
    private final long f539d;

    private C2615m(long j, long j2, long j3, long j4) {
        this.f536a = j;
        this.f537b = j2;
        this.f538c = j3;
        this.f539d = j4;
    }

    /* renamed from: c */
    public static C2615m m646c(long j, long j2) {
        if (j <= j2) {
            return new C2615m(j, j, j2, j2);
        }
        throw new IllegalArgumentException("Minimum value must be less than maximum value");
    }

    /* renamed from: d */
    public static C2615m m645d(long j, long j2, long j3) {
        if (j <= j) {
            if (j2 <= j3) {
                if (j <= j3) {
                    return new C2615m(j, j, j2, j3);
                }
                throw new IllegalArgumentException("Minimum value must be less than maximum value");
            }
            throw new IllegalArgumentException("Smallest maximum value must be less than largest maximum value");
        }
        throw new IllegalArgumentException("Smallest minimum value must be less than largest minimum value");
    }

    /* renamed from: a */
    public long m648a(long j, InterfaceC2612j interfaceC2612j) {
        if (j >= this.f536a && j <= this.f539d) {
            return j;
        }
        throw new C2576a("Invalid value for " + interfaceC2612j + " (valid values " + this + "): " + j);
    }

    /* renamed from: b */
    public boolean m647b() {
        return this.f536a == this.f537b && this.f538c == this.f539d;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C2615m) {
            C2615m c2615m = (C2615m) obj;
            return this.f536a == c2615m.f536a && this.f537b == c2615m.f537b && this.f538c == c2615m.f538c && this.f539d == c2615m.f539d;
        }
        return false;
    }

    public int hashCode() {
        long j = this.f536a;
        long j2 = this.f537b;
        long j3 = j + (j2 << 16) + (j2 >> 48);
        long j4 = this.f538c;
        long j5 = j3 + (j4 << 32) + (j4 >> 32);
        long j6 = this.f539d;
        long j7 = j5 + (j6 << 48) + (j6 >> 16);
        return (int) (j7 ^ (j7 >>> 32));
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f536a);
        if (this.f536a != this.f537b) {
            sb.append('/');
            sb.append(this.f537b);
        }
        sb.append(" - ");
        sb.append(this.f538c);
        if (this.f538c != this.f539d) {
            sb.append('/');
            sb.append(this.f539d);
        }
        return sb.toString();
    }
}
