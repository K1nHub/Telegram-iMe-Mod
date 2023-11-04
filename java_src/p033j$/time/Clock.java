package p033j$.time;

import java.io.Serializable;
/* renamed from: j$.time.Clock */
/* loaded from: classes2.dex */
public abstract class Clock {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.time.Clock$a */
    /* loaded from: classes2.dex */
    public static final class C2675a extends Clock implements Serializable {

        /* renamed from: a */
        private final AbstractC2728n f480a;

        C2675a(AbstractC2728n abstractC2728n) {
            this.f480a = abstractC2728n;
        }

        @Override // p033j$.time.Clock
        /* renamed from: a */
        public long mo985a() {
            return System.currentTimeMillis();
        }

        @Override // p033j$.time.Clock
        public boolean equals(Object obj) {
            if (obj instanceof C2675a) {
                return this.f480a.equals(((C2675a) obj).f480a);
            }
            return false;
        }

        @Override // p033j$.time.Clock
        public int hashCode() {
            return this.f480a.hashCode() + 1;
        }

        @Override // p033j$.time.Clock
        public Instant instant() {
            return Instant.m977l(System.currentTimeMillis());
        }

        public String toString() {
            StringBuilder m961a = AbstractC2679a.m961a("SystemClock[");
            m961a.append(this.f480a);
            m961a.append("]");
            return m961a.toString();
        }
    }

    protected Clock() {
    }

    public static Clock systemUTC() {
        return new C2675a(C2729o.f610e);
    }

    /* renamed from: a */
    public long mo985a() {
        return instant().m974o();
    }

    public boolean equals(Object obj) {
        return super.equals(obj);
    }

    public int hashCode() {
        return super.hashCode();
    }

    public abstract Instant instant();
}
