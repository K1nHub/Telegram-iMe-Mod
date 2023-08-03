package p033j$.util.stream;

import java.util.Arrays;
import java.util.Comparator;
import java.util.Objects;
import java.util.Spliterator;
import p033j$.lang.InterfaceC2727e;
import p033j$.util.AbstractC2780a;
import p033j$.util.InterfaceC2853s;
import p033j$.util.InterfaceC3160t;
import p033j$.wrappers.C3221h;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.Z3 */
/* loaded from: classes2.dex */
public abstract class AbstractC3002Z3 extends AbstractC3028e implements Iterable, InterfaceC2727e {

    /* renamed from: e */
    Object f953e;

    /* renamed from: f */
    Object[] f954f;

    /* renamed from: j$.util.stream.Z3$a */
    /* loaded from: classes2.dex */
    abstract class AbstractC3003a implements InterfaceC3160t {

        /* renamed from: a */
        int f955a;

        /* renamed from: b */
        final int f956b;

        /* renamed from: c */
        int f957c;

        /* renamed from: d */
        final int f958d;

        /* renamed from: e */
        Object f959e;

        /* JADX INFO: Access modifiers changed from: package-private */
        public AbstractC3003a(int i, int i2, int i3, int i4) {
            this.f955a = i;
            this.f956b = i2;
            this.f957c = i3;
            this.f958d = i4;
            Object[] objArr = AbstractC3002Z3.this.f954f;
            this.f959e = objArr == null ? AbstractC3002Z3.this.f953e : objArr[i];
        }

        /* renamed from: a */
        abstract void mo473a(Object obj, int i, Object obj2);

        @Override // p033j$.util.InterfaceC2853s
        public int characteristics() {
            return 16464;
        }

        @Override // p033j$.util.InterfaceC2853s
        public long estimateSize() {
            int i = this.f955a;
            int i2 = this.f956b;
            if (i == i2) {
                return this.f958d - this.f957c;
            }
            long[] jArr = AbstractC3002Z3.this.f1019d;
            return ((jArr[i2] + this.f958d) - jArr[i]) - this.f957c;
        }

        /* renamed from: f */
        abstract InterfaceC3160t mo469f(Object obj, int i, int i2);

        @Override // p033j$.util.InterfaceC3160t
        /* renamed from: forEachRemaining */
        public void m470e(Object obj) {
            int i;
            Objects.requireNonNull(obj);
            int i2 = this.f955a;
            int i3 = this.f956b;
            if (i2 < i3 || (i2 == i3 && this.f957c < this.f958d)) {
                int i4 = this.f957c;
                while (true) {
                    i = this.f956b;
                    if (i2 >= i) {
                        break;
                    }
                    AbstractC3002Z3 abstractC3002Z3 = AbstractC3002Z3.this;
                    Object obj2 = abstractC3002Z3.f954f[i2];
                    abstractC3002Z3.mo480t(obj2, i4, abstractC3002Z3.mo479u(obj2), obj);
                    i4 = 0;
                    i2++;
                }
                AbstractC3002Z3.this.mo480t(this.f955a == i ? this.f959e : AbstractC3002Z3.this.f954f[i], i4, this.f958d, obj);
                this.f955a = this.f956b;
                this.f957c = this.f958d;
            }
        }

        @Override // p033j$.util.InterfaceC2853s
        public Comparator getComparator() {
            throw new IllegalStateException();
        }

        @Override // p033j$.util.InterfaceC2853s
        public /* synthetic */ long getExactSizeIfKnown() {
            return AbstractC2780a.m624e(this);
        }

        /* renamed from: h */
        abstract InterfaceC3160t mo467h(int i, int i2, int i3, int i4);

        @Override // p033j$.util.InterfaceC2853s
        public /* synthetic */ boolean hasCharacteristics(int i) {
            return AbstractC2780a.m623f(this, i);
        }

        @Override // p033j$.util.InterfaceC3160t
        /* renamed from: tryAdvance */
        public boolean m465k(Object obj) {
            Objects.requireNonNull(obj);
            int i = this.f955a;
            int i2 = this.f956b;
            if (i < i2 || (i == i2 && this.f957c < this.f958d)) {
                Object obj2 = this.f959e;
                int i3 = this.f957c;
                this.f957c = i3 + 1;
                mo473a(obj2, i3, obj);
                if (this.f957c == AbstractC3002Z3.this.mo479u(this.f959e)) {
                    this.f957c = 0;
                    int i4 = this.f955a + 1;
                    this.f955a = i4;
                    Object[] objArr = AbstractC3002Z3.this.f954f;
                    if (objArr != null && i4 <= this.f956b) {
                        this.f959e = objArr[i4];
                    }
                }
                return true;
            }
            return false;
        }

        @Override // p033j$.util.InterfaceC3160t, p033j$.util.InterfaceC2853s
        public /* bridge */ /* synthetic */ InterfaceC2853s.InterfaceC2854a trySplit() {
            return (InterfaceC2853s.InterfaceC2854a) trySplit();
        }

        @Override // p033j$.util.InterfaceC3160t, p033j$.util.InterfaceC2853s
        public /* bridge */ /* synthetic */ InterfaceC2853s.InterfaceC2855b trySplit() {
            return (InterfaceC2853s.InterfaceC2855b) trySplit();
        }

        @Override // p033j$.util.InterfaceC3160t, p033j$.util.InterfaceC2853s
        public /* bridge */ /* synthetic */ InterfaceC2853s.InterfaceC2856c trySplit() {
            return (InterfaceC2853s.InterfaceC2856c) trySplit();
        }

        @Override // p033j$.util.InterfaceC2853s
        public InterfaceC3160t trySplit() {
            int i = this.f955a;
            int i2 = this.f956b;
            if (i < i2) {
                int i3 = this.f957c;
                AbstractC3002Z3 abstractC3002Z3 = AbstractC3002Z3.this;
                InterfaceC3160t mo467h = mo467h(i, i2 - 1, i3, abstractC3002Z3.mo479u(abstractC3002Z3.f954f[i2 - 1]));
                int i4 = this.f956b;
                this.f955a = i4;
                this.f957c = 0;
                this.f959e = AbstractC3002Z3.this.f954f[i4];
                return mo467h;
            } else if (i == i2) {
                int i5 = this.f958d;
                int i6 = this.f957c;
                int i7 = (i5 - i6) / 2;
                if (i7 == 0) {
                    return null;
                }
                InterfaceC3160t mo469f = mo469f(this.f959e, i6, i7);
                this.f957c += i7;
                return mo469f;
            } else {
                return null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3002Z3() {
        this.f953e = mo481c(16);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3002Z3(int i) {
        super(i);
        this.f953e = mo481c(1 << this.f1016a);
    }

    /* renamed from: y */
    private void m475y() {
        if (this.f954f == null) {
            Object[] mo474z = mo474z(8);
            this.f954f = mo474z;
            this.f1019d = new long[8];
            mo474z[0] = this.f953e;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: A */
    public void m482A() {
        if (this.f1017b == mo479u(this.f953e)) {
            m475y();
            int i = this.f1018c;
            int i2 = i + 1;
            Object[] objArr = this.f954f;
            if (i2 >= objArr.length || objArr[i + 1] == null) {
                m476x(m478v() + 1);
            }
            this.f1017b = 0;
            int i3 = this.f1018c + 1;
            this.f1018c = i3;
            this.f953e = this.f954f[i3];
        }
    }

    /* renamed from: c */
    public abstract Object mo481c(int i);

    @Override // p033j$.util.stream.AbstractC3028e
    public void clear() {
        Object[] objArr = this.f954f;
        if (objArr != null) {
            this.f953e = objArr[0];
            this.f954f = null;
            this.f1019d = null;
        }
        this.f1017b = 0;
        this.f1018c = 0;
    }

    /* renamed from: d */
    public void mo296d(Object obj, int i) {
        long j = i;
        long count = count() + j;
        if (count > mo479u(obj) || count < j) {
            throw new IndexOutOfBoundsException("does not fit");
        }
        if (this.f1018c == 0) {
            System.arraycopy(this.f953e, 0, obj, i, this.f1017b);
            return;
        }
        for (int i2 = 0; i2 < this.f1018c; i2++) {
            Object[] objArr = this.f954f;
            System.arraycopy(objArr[i2], 0, obj, i, mo479u(objArr[i2]));
            i += mo479u(this.f954f[i2]);
        }
        int i3 = this.f1017b;
        if (i3 > 0) {
            System.arraycopy(this.f953e, 0, obj, i, i3);
        }
    }

    /* renamed from: e */
    public Object mo295e() {
        long count = count();
        if (count < 2147483639) {
            Object mo481c = mo481c((int) count);
            mo296d(mo481c, 0);
            return mo481c;
        }
        throw new IllegalArgumentException("Stream size exceeds max array size");
    }

    /* renamed from: g */
    public void mo294g(Object obj) {
        for (int i = 0; i < this.f1018c; i++) {
            Object[] objArr = this.f954f;
            mo480t(objArr[i], 0, mo479u(objArr[i]), obj);
        }
        mo480t(this.f953e, 0, this.f1017b, obj);
    }

    public abstract InterfaceC2853s spliterator();

    @Override // java.lang.Iterable
    public /* synthetic */ Spliterator spliterator() {
        return C3221h.m153a(spliterator());
    }

    /* renamed from: t */
    protected abstract void mo480t(Object obj, int i, int i2, Object obj2);

    /* renamed from: u */
    protected abstract int mo479u(Object obj);

    /* renamed from: v */
    protected long m478v() {
        int i = this.f1018c;
        if (i == 0) {
            return mo479u(this.f953e);
        }
        return mo479u(this.f954f[i]) + this.f1019d[i];
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: w */
    public int m477w(long j) {
        if (this.f1018c == 0) {
            if (j < this.f1017b) {
                return 0;
            }
            throw new IndexOutOfBoundsException(Long.toString(j));
        } else if (j < count()) {
            for (int i = 0; i <= this.f1018c; i++) {
                if (j < this.f1019d[i] + mo479u(this.f954f[i])) {
                    return i;
                }
            }
            throw new IndexOutOfBoundsException(Long.toString(j));
        } else {
            throw new IndexOutOfBoundsException(Long.toString(j));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: x */
    public final void m476x(long j) {
        int i;
        long m478v = m478v();
        if (j <= m478v) {
            return;
        }
        m475y();
        int i2 = this.f1018c;
        while (true) {
            i2++;
            if (j <= m478v) {
                return;
            }
            Object[] objArr = this.f954f;
            if (i2 >= objArr.length) {
                int length = objArr.length * 2;
                this.f954f = Arrays.copyOf(objArr, length);
                this.f1019d = Arrays.copyOf(this.f1019d, length);
            }
            int m434s = m434s(i2);
            this.f954f[i2] = mo481c(m434s);
            long[] jArr = this.f1019d;
            jArr[i2] = jArr[i2 - 1] + mo479u(this.f954f[i]);
            m478v += m434s;
        }
    }

    /* renamed from: z */
    protected abstract Object[] mo474z(int i);
}
