package p033j$.time.temporal;

import java.io.Serializable;
import p033j$.time.C2867a;
/* renamed from: j$.time.temporal.m */
/* loaded from: classes2.dex */
public final class C2906m implements Serializable {

    /* renamed from: a */
    private final long f629a;

    /* renamed from: b */
    private final long f630b;

    /* renamed from: c */
    private final long f631c;

    /* renamed from: d */
    private final long f632d;

    private C2906m(long j, long j2, long j3, long j4) {
        this.f629a = j;
        this.f630b = j2;
        this.f631c = j3;
        this.f632d = j4;
    }

    /* renamed from: c */
    public static C2906m m655c(long j, long j2) {
        if (j <= j2) {
            return new C2906m(j, j, j2, j2);
        }
        throw new IllegalArgumentException("Minimum value must be less than maximum value");
    }

    /* renamed from: d */
    public static C2906m m654d(long j, long j2, long j3) {
        if (j <= j) {
            if (j2 <= j3) {
                if (j <= j3) {
                    return new C2906m(j, j, j2, j3);
                }
                throw new IllegalArgumentException("Minimum value must be less than maximum value");
            }
            throw new IllegalArgumentException("Smallest maximum value must be less than largest maximum value");
        }
        throw new IllegalArgumentException("Smallest minimum value must be less than largest minimum value");
    }

    /* renamed from: a */
    public long m657a(long j, InterfaceC2903j interfaceC2903j) {
        if (j >= this.f629a && j <= this.f632d) {
            return j;
        }
        throw new C2867a("Invalid value for " + interfaceC2903j + " (valid values " + this + "): " + j);
    }

    /* renamed from: b */
    public boolean m656b() {
        return this.f629a == this.f630b && this.f631c == this.f632d;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C2906m) {
            C2906m c2906m = (C2906m) obj;
            return this.f629a == c2906m.f629a && this.f630b == c2906m.f630b && this.f631c == c2906m.f631c && this.f632d == c2906m.f632d;
        }
        return false;
    }

    public int hashCode() {
        long j = this.f629a;
        long j2 = this.f630b;
        long j3 = j + (j2 << 16) + (j2 >> 48);
        long j4 = this.f631c;
        long j5 = j3 + (j4 << 32) + (j4 >> 32);
        long j6 = this.f632d;
        long j7 = j5 + (j6 << 48) + (j6 >> 16);
        return (int) (j7 ^ (j7 >>> 32));
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f629a);
        if (this.f629a != this.f630b) {
            sb.append('/');
            sb.append(this.f630b);
        }
        sb.append(" - ");
        sb.append(this.f631c);
        if (this.f631c != this.f632d) {
            sb.append('/');
            sb.append(this.f632d);
        }
        return sb.toString();
    }
}
