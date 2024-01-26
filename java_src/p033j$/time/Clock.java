package p033j$.time;

import java.io.Serializable;
/* renamed from: j$.time.Clock */
/* loaded from: classes2.dex */
public abstract class Clock {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.time.Clock$a */
    /* loaded from: classes2.dex */
    public static final class C2670a extends Clock implements Serializable {

        /* renamed from: a */
        private final AbstractC2723n f480a;

        C2670a(AbstractC2723n abstractC2723n) {
            this.f480a = abstractC2723n;
        }

        @Override // p033j$.time.Clock
        /* renamed from: a */
        public long mo988a() {
            return System.currentTimeMillis();
        }

        @Override // p033j$.time.Clock
        public boolean equals(Object obj) {
            if (obj instanceof C2670a) {
                return this.f480a.equals(((C2670a) obj).f480a);
            }
            return false;
        }

        @Override // p033j$.time.Clock
        public int hashCode() {
            return this.f480a.hashCode() + 1;
        }

        @Override // p033j$.time.Clock
        public Instant instant() {
            return Instant.m980l(System.currentTimeMillis());
        }

        public String toString() {
            StringBuilder m964a = AbstractC2674a.m964a("SystemClock[");
            m964a.append(this.f480a);
            m964a.append("]");
            return m964a.toString();
        }
    }

    protected Clock() {
    }

    public static Clock systemUTC() {
        return new C2670a(C2724o.f610e);
    }

    /* renamed from: a */
    public long mo988a() {
        return instant().m977o();
    }

    public boolean equals(Object obj) {
        return super.equals(obj);
    }

    public int hashCode() {
        return super.hashCode();
    }

    public abstract Instant instant();
}
