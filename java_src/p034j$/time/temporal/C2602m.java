package p034j$.time.temporal;

import java.io.Serializable;
import p034j$.time.C2563a;
/* renamed from: j$.time.temporal.m */
/* loaded from: classes2.dex */
public final class C2602m implements Serializable {

    /* renamed from: a */
    private final long f531a;

    /* renamed from: b */
    private final long f532b;

    /* renamed from: c */
    private final long f533c;

    /* renamed from: d */
    private final long f534d;

    private C2602m(long j, long j2, long j3, long j4) {
        this.f531a = j;
        this.f532b = j2;
        this.f533c = j3;
        this.f534d = j4;
    }

    /* renamed from: c */
    public static C2602m m632c(long j, long j2) {
        if (j <= j2) {
            return new C2602m(j, j, j2, j2);
        }
        throw new IllegalArgumentException("Minimum value must be less than maximum value");
    }

    /* renamed from: d */
    public static C2602m m631d(long j, long j2, long j3) {
        if (j <= j) {
            if (j2 <= j3) {
                if (j <= j3) {
                    return new C2602m(j, j, j2, j3);
                }
                throw new IllegalArgumentException("Minimum value must be less than maximum value");
            }
            throw new IllegalArgumentException("Smallest maximum value must be less than largest maximum value");
        }
        throw new IllegalArgumentException("Smallest minimum value must be less than largest minimum value");
    }

    /* renamed from: a */
    public long m634a(long j, InterfaceC2599j interfaceC2599j) {
        if (j >= this.f531a && j <= this.f534d) {
            return j;
        }
        throw new C2563a("Invalid value for " + interfaceC2599j + " (valid values " + this + "): " + j);
    }

    /* renamed from: b */
    public boolean m633b() {
        return this.f531a == this.f532b && this.f533c == this.f534d;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C2602m) {
            C2602m c2602m = (C2602m) obj;
            return this.f531a == c2602m.f531a && this.f532b == c2602m.f532b && this.f533c == c2602m.f533c && this.f534d == c2602m.f534d;
        }
        return false;
    }

    public int hashCode() {
        long j = this.f531a;
        long j2 = this.f532b;
        long j3 = j + (j2 << 16) + (j2 >> 48);
        long j4 = this.f533c;
        long j5 = j3 + (j4 << 32) + (j4 >> 32);
        long j6 = this.f534d;
        long j7 = j5 + (j6 << 48) + (j6 >> 16);
        return (int) (j7 ^ (j7 >>> 32));
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f531a);
        if (this.f531a != this.f532b) {
            sb.append('/');
            sb.append(this.f532b);
        }
        sb.append(" - ");
        sb.append(this.f533c);
        if (this.f533c != this.f534d) {
            sb.append('/');
            sb.append(this.f534d);
        }
        return sb.toString();
    }
}
