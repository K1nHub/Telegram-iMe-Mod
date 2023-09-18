package p033j$.time.temporal;

import java.io.Serializable;
import p033j$.time.C2783a;
/* renamed from: j$.time.temporal.m */
/* loaded from: classes2.dex */
public final class C2822m implements Serializable {

    /* renamed from: a */
    private final long f620a;

    /* renamed from: b */
    private final long f621b;

    /* renamed from: c */
    private final long f622c;

    /* renamed from: d */
    private final long f623d;

    private C2822m(long j, long j2, long j3, long j4) {
        this.f620a = j;
        this.f621b = j2;
        this.f622c = j3;
        this.f623d = j4;
    }

    /* renamed from: c */
    public static C2822m m655c(long j, long j2) {
        if (j <= j2) {
            return new C2822m(j, j, j2, j2);
        }
        throw new IllegalArgumentException("Minimum value must be less than maximum value");
    }

    /* renamed from: d */
    public static C2822m m654d(long j, long j2, long j3) {
        if (j <= j) {
            if (j2 <= j3) {
                if (j <= j3) {
                    return new C2822m(j, j, j2, j3);
                }
                throw new IllegalArgumentException("Minimum value must be less than maximum value");
            }
            throw new IllegalArgumentException("Smallest maximum value must be less than largest maximum value");
        }
        throw new IllegalArgumentException("Smallest minimum value must be less than largest minimum value");
    }

    /* renamed from: a */
    public long m657a(long j, InterfaceC2819j interfaceC2819j) {
        if (j >= this.f620a && j <= this.f623d) {
            return j;
        }
        throw new C2783a("Invalid value for " + interfaceC2819j + " (valid values " + this + "): " + j);
    }

    /* renamed from: b */
    public boolean m656b() {
        return this.f620a == this.f621b && this.f622c == this.f623d;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C2822m) {
            C2822m c2822m = (C2822m) obj;
            return this.f620a == c2822m.f620a && this.f621b == c2822m.f621b && this.f622c == c2822m.f622c && this.f623d == c2822m.f623d;
        }
        return false;
    }

    public int hashCode() {
        long j = this.f620a;
        long j2 = this.f621b;
        long j3 = j + (j2 << 16) + (j2 >> 48);
        long j4 = this.f622c;
        long j5 = j3 + (j4 << 32) + (j4 >> 32);
        long j6 = this.f623d;
        long j7 = j5 + (j6 << 48) + (j6 >> 16);
        return (int) (j7 ^ (j7 >>> 32));
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f620a);
        if (this.f620a != this.f621b) {
            sb.append('/');
            sb.append(this.f621b);
        }
        sb.append(" - ");
        sb.append(this.f622c);
        if (this.f622c != this.f623d) {
            sb.append('/');
            sb.append(this.f623d);
        }
        return sb.toString();
    }
}
