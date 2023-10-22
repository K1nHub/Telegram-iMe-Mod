package p033j$.time;

import java.io.Serializable;
/* renamed from: j$.time.Clock */
/* loaded from: classes2.dex */
public abstract class Clock {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.time.Clock$a */
    /* loaded from: classes2.dex */
    public static final class C2671a extends Clock implements Serializable {

        /* renamed from: a */
        private final AbstractC2724n f480a;

        C2671a(AbstractC2724n abstractC2724n) {
            this.f480a = abstractC2724n;
        }

        @Override // p033j$.time.Clock
        /* renamed from: a */
        public long mo984a() {
            return System.currentTimeMillis();
        }

        @Override // p033j$.time.Clock
        public boolean equals(Object obj) {
            if (obj instanceof C2671a) {
                return this.f480a.equals(((C2671a) obj).f480a);
            }
            return false;
        }

        @Override // p033j$.time.Clock
        public int hashCode() {
            return this.f480a.hashCode() + 1;
        }

        @Override // p033j$.time.Clock
        public Instant instant() {
            return Instant.m976l(System.currentTimeMillis());
        }

        public String toString() {
            StringBuilder m960a = AbstractC2675a.m960a("SystemClock[");
            m960a.append(this.f480a);
            m960a.append("]");
            return m960a.toString();
        }
    }

    protected Clock() {
    }

    public static Clock systemUTC() {
        return new C2671a(C2725o.f610e);
    }

    /* renamed from: a */
    public long mo984a() {
        return instant().m973o();
    }

    public boolean equals(Object obj) {
        return super.equals(obj);
    }

    public int hashCode() {
        return super.hashCode();
    }

    public abstract Instant instant();
}
