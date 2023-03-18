package p034j$.time.temporal;

import java.io.Serializable;
import p034j$.time.C2486a;
/* renamed from: j$.time.temporal.m */
/* loaded from: classes2.dex */
public final class C2525m implements Serializable {

    /* renamed from: a */
    private final long f530a;

    /* renamed from: b */
    private final long f531b;

    /* renamed from: c */
    private final long f532c;

    /* renamed from: d */
    private final long f533d;

    private C2525m(long j, long j2, long j3, long j4) {
        this.f530a = j;
        this.f531b = j2;
        this.f532c = j3;
        this.f533d = j4;
    }

    /* renamed from: c */
    public static C2525m m652c(long j, long j2) {
        if (j <= j2) {
            return new C2525m(j, j, j2, j2);
        }
        throw new IllegalArgumentException("Minimum value must be less than maximum value");
    }

    /* renamed from: d */
    public static C2525m m651d(long j, long j2, long j3) {
        if (j <= j) {
            if (j2 <= j3) {
                if (j <= j3) {
                    return new C2525m(j, j, j2, j3);
                }
                throw new IllegalArgumentException("Minimum value must be less than maximum value");
            }
            throw new IllegalArgumentException("Smallest maximum value must be less than largest maximum value");
        }
        throw new IllegalArgumentException("Smallest minimum value must be less than largest minimum value");
    }

    /* renamed from: a */
    public long m654a(long j, InterfaceC2522j interfaceC2522j) {
        if (j >= this.f530a && j <= this.f533d) {
            return j;
        }
        throw new C2486a("Invalid value for " + interfaceC2522j + " (valid values " + this + "): " + j);
    }

    /* renamed from: b */
    public boolean m653b() {
        return this.f530a == this.f531b && this.f532c == this.f533d;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C2525m) {
            C2525m c2525m = (C2525m) obj;
            return this.f530a == c2525m.f530a && this.f531b == c2525m.f531b && this.f532c == c2525m.f532c && this.f533d == c2525m.f533d;
        }
        return false;
    }

    public int hashCode() {
        long j = this.f530a;
        long j2 = this.f531b;
        long j3 = j + (j2 << 16) + (j2 >> 48);
        long j4 = this.f532c;
        long j5 = j3 + (j4 << 32) + (j4 >> 32);
        long j6 = this.f533d;
        long j7 = j5 + (j6 << 48) + (j6 >> 16);
        return (int) (j7 ^ (j7 >>> 32));
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f530a);
        if (this.f530a != this.f531b) {
            sb.append('/');
            sb.append(this.f531b);
        }
        sb.append(" - ");
        sb.append(this.f532c);
        if (this.f532c != this.f533d) {
            sb.append('/');
            sb.append(this.f533d);
        }
        return sb.toString();
    }
}
