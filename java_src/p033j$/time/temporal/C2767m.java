package p033j$.time.temporal;

import java.io.Serializable;
import p033j$.time.C2728a;
/* renamed from: j$.time.temporal.m */
/* loaded from: classes2.dex */
public final class C2767m implements Serializable {

    /* renamed from: a */
    private final long f616a;

    /* renamed from: b */
    private final long f617b;

    /* renamed from: c */
    private final long f618c;

    /* renamed from: d */
    private final long f619d;

    private C2767m(long j, long j2, long j3, long j4) {
        this.f616a = j;
        this.f617b = j2;
        this.f618c = j3;
        this.f619d = j4;
    }

    /* renamed from: c */
    public static C2767m m637c(long j, long j2) {
        if (j <= j2) {
            return new C2767m(j, j, j2, j2);
        }
        throw new IllegalArgumentException("Minimum value must be less than maximum value");
    }

    /* renamed from: d */
    public static C2767m m636d(long j, long j2, long j3) {
        if (j <= j) {
            if (j2 <= j3) {
                if (j <= j3) {
                    return new C2767m(j, j, j2, j3);
                }
                throw new IllegalArgumentException("Minimum value must be less than maximum value");
            }
            throw new IllegalArgumentException("Smallest maximum value must be less than largest maximum value");
        }
        throw new IllegalArgumentException("Smallest minimum value must be less than largest minimum value");
    }

    /* renamed from: a */
    public long m639a(long j, InterfaceC2764j interfaceC2764j) {
        if (j >= this.f616a && j <= this.f619d) {
            return j;
        }
        throw new C2728a("Invalid value for " + interfaceC2764j + " (valid values " + this + "): " + j);
    }

    /* renamed from: b */
    public boolean m638b() {
        return this.f616a == this.f617b && this.f618c == this.f619d;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C2767m) {
            C2767m c2767m = (C2767m) obj;
            return this.f616a == c2767m.f616a && this.f617b == c2767m.f617b && this.f618c == c2767m.f618c && this.f619d == c2767m.f619d;
        }
        return false;
    }

    public int hashCode() {
        long j = this.f616a;
        long j2 = this.f617b;
        long j3 = j + (j2 << 16) + (j2 >> 48);
        long j4 = this.f618c;
        long j5 = j3 + (j4 << 32) + (j4 >> 32);
        long j6 = this.f619d;
        long j7 = j5 + (j6 << 48) + (j6 >> 16);
        return (int) (j7 ^ (j7 >>> 32));
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f616a);
        if (this.f616a != this.f617b) {
            sb.append('/');
            sb.append(this.f617b);
        }
        sb.append(" - ");
        sb.append(this.f618c);
        if (this.f618c != this.f619d) {
            sb.append('/');
            sb.append(this.f619d);
        }
        return sb.toString();
    }
}
