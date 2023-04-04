package p035j$.util.stream;

import java.util.Arrays;
import java.util.Comparator;
import java.util.Objects;
import java.util.Spliterator;
import p035j$.lang.InterfaceC2575e;
import p035j$.util.AbstractC2628a;
import p035j$.util.InterfaceC2701s;
import p035j$.util.InterfaceC3008t;
import p035j$.wrappers.C3069h;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.Z3 */
/* loaded from: classes2.dex */
public abstract class AbstractC2850Z3 extends AbstractC2876e implements Iterable, InterfaceC2575e {

    /* renamed from: e */
    Object f870e;

    /* renamed from: f */
    Object[] f871f;

    /* renamed from: j$.util.stream.Z3$a */
    /* loaded from: classes2.dex */
    abstract class AbstractC2851a implements InterfaceC3008t {

        /* renamed from: a */
        int f872a;

        /* renamed from: b */
        final int f873b;

        /* renamed from: c */
        int f874c;

        /* renamed from: d */
        final int f875d;

        /* renamed from: e */
        Object f876e;

        /* JADX INFO: Access modifiers changed from: package-private */
        public AbstractC2851a(int i, int i2, int i3, int i4) {
            this.f872a = i;
            this.f873b = i2;
            this.f874c = i3;
            this.f875d = i4;
            Object[] objArr = AbstractC2850Z3.this.f871f;
            this.f876e = objArr == null ? AbstractC2850Z3.this.f870e : objArr[i];
        }

        /* renamed from: a */
        abstract void mo464a(Object obj, int i, Object obj2);

        @Override // p035j$.util.InterfaceC2701s
        public int characteristics() {
            return 16464;
        }

        @Override // p035j$.util.InterfaceC2701s
        public long estimateSize() {
            int i = this.f872a;
            int i2 = this.f873b;
            if (i == i2) {
                return this.f875d - this.f874c;
            }
            long[] jArr = AbstractC2850Z3.this.f936d;
            return ((jArr[i2] + this.f875d) - jArr[i]) - this.f874c;
        }

        /* renamed from: f */
        abstract InterfaceC3008t mo460f(Object obj, int i, int i2);

        @Override // p035j$.util.InterfaceC3008t
        /* renamed from: forEachRemaining */
        public void m461e(Object obj) {
            int i;
            Objects.requireNonNull(obj);
            int i2 = this.f872a;
            int i3 = this.f873b;
            if (i2 < i3 || (i2 == i3 && this.f874c < this.f875d)) {
                int i4 = this.f874c;
                while (true) {
                    i = this.f873b;
                    if (i2 >= i) {
                        break;
                    }
                    AbstractC2850Z3 abstractC2850Z3 = AbstractC2850Z3.this;
                    Object obj2 = abstractC2850Z3.f871f[i2];
                    abstractC2850Z3.mo471t(obj2, i4, abstractC2850Z3.mo470u(obj2), obj);
                    i4 = 0;
                    i2++;
                }
                AbstractC2850Z3.this.mo471t(this.f872a == i ? this.f876e : AbstractC2850Z3.this.f871f[i], i4, this.f875d, obj);
                this.f872a = this.f873b;
                this.f874c = this.f875d;
            }
        }

        @Override // p035j$.util.InterfaceC2701s
        public Comparator getComparator() {
            throw new IllegalStateException();
        }

        @Override // p035j$.util.InterfaceC2701s
        public /* synthetic */ long getExactSizeIfKnown() {
            return AbstractC2628a.m616e(this);
        }

        /* renamed from: h */
        abstract InterfaceC3008t mo458h(int i, int i2, int i3, int i4);

        @Override // p035j$.util.InterfaceC2701s
        public /* synthetic */ boolean hasCharacteristics(int i) {
            return AbstractC2628a.m615f(this, i);
        }

        @Override // p035j$.util.InterfaceC3008t
        /* renamed from: tryAdvance */
        public boolean m456k(Object obj) {
            Objects.requireNonNull(obj);
            int i = this.f872a;
            int i2 = this.f873b;
            if (i < i2 || (i == i2 && this.f874c < this.f875d)) {
                Object obj2 = this.f876e;
                int i3 = this.f874c;
                this.f874c = i3 + 1;
                mo464a(obj2, i3, obj);
                if (this.f874c == AbstractC2850Z3.this.mo470u(this.f876e)) {
                    this.f874c = 0;
                    int i4 = this.f872a + 1;
                    this.f872a = i4;
                    Object[] objArr = AbstractC2850Z3.this.f871f;
                    if (objArr != null && i4 <= this.f873b) {
                        this.f876e = objArr[i4];
                    }
                }
                return true;
            }
            return false;
        }

        @Override // p035j$.util.InterfaceC3008t, p035j$.util.InterfaceC2701s
        public /* bridge */ /* synthetic */ InterfaceC2701s.InterfaceC2702a trySplit() {
            return (InterfaceC2701s.InterfaceC2702a) trySplit();
        }

        @Override // p035j$.util.InterfaceC3008t, p035j$.util.InterfaceC2701s
        public /* bridge */ /* synthetic */ InterfaceC2701s.InterfaceC2703b trySplit() {
            return (InterfaceC2701s.InterfaceC2703b) trySplit();
        }

        @Override // p035j$.util.InterfaceC3008t, p035j$.util.InterfaceC2701s
        public /* bridge */ /* synthetic */ InterfaceC2701s.InterfaceC2704c trySplit() {
            return (InterfaceC2701s.InterfaceC2704c) trySplit();
        }

        @Override // p035j$.util.InterfaceC2701s
        public InterfaceC3008t trySplit() {
            int i = this.f872a;
            int i2 = this.f873b;
            if (i < i2) {
                int i3 = this.f874c;
                AbstractC2850Z3 abstractC2850Z3 = AbstractC2850Z3.this;
                InterfaceC3008t mo458h = mo458h(i, i2 - 1, i3, abstractC2850Z3.mo470u(abstractC2850Z3.f871f[i2 - 1]));
                int i4 = this.f873b;
                this.f872a = i4;
                this.f874c = 0;
                this.f876e = AbstractC2850Z3.this.f871f[i4];
                return mo458h;
            } else if (i == i2) {
                int i5 = this.f875d;
                int i6 = this.f874c;
                int i7 = (i5 - i6) / 2;
                if (i7 == 0) {
                    return null;
                }
                InterfaceC3008t mo460f = mo460f(this.f876e, i6, i7);
                this.f874c += i7;
                return mo460f;
            } else {
                return null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2850Z3() {
        this.f870e = mo472c(16);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2850Z3(int i) {
        super(i);
        this.f870e = mo472c(1 << this.f933a);
    }

    /* renamed from: y */
    private void m466y() {
        if (this.f871f == null) {
            Object[] mo465z = mo465z(8);
            this.f871f = mo465z;
            this.f936d = new long[8];
            mo465z[0] = this.f870e;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: A */
    public void m473A() {
        if (this.f934b == mo470u(this.f870e)) {
            m466y();
            int i = this.f935c;
            int i2 = i + 1;
            Object[] objArr = this.f871f;
            if (i2 >= objArr.length || objArr[i + 1] == null) {
                m467x(m469v() + 1);
            }
            this.f934b = 0;
            int i3 = this.f935c + 1;
            this.f935c = i3;
            this.f870e = this.f871f[i3];
        }
    }

    /* renamed from: c */
    public abstract Object mo472c(int i);

    @Override // p035j$.util.stream.AbstractC2876e
    public void clear() {
        Object[] objArr = this.f871f;
        if (objArr != null) {
            this.f870e = objArr[0];
            this.f871f = null;
            this.f936d = null;
        }
        this.f934b = 0;
        this.f935c = 0;
    }

    /* renamed from: d */
    public void mo287d(Object obj, int i) {
        long j = i;
        long count = count() + j;
        if (count > mo470u(obj) || count < j) {
            throw new IndexOutOfBoundsException("does not fit");
        }
        if (this.f935c == 0) {
            System.arraycopy(this.f870e, 0, obj, i, this.f934b);
            return;
        }
        for (int i2 = 0; i2 < this.f935c; i2++) {
            Object[] objArr = this.f871f;
            System.arraycopy(objArr[i2], 0, obj, i, mo470u(objArr[i2]));
            i += mo470u(this.f871f[i2]);
        }
        int i3 = this.f934b;
        if (i3 > 0) {
            System.arraycopy(this.f870e, 0, obj, i, i3);
        }
    }

    /* renamed from: e */
    public Object mo286e() {
        long count = count();
        if (count < 2147483639) {
            Object mo472c = mo472c((int) count);
            mo287d(mo472c, 0);
            return mo472c;
        }
        throw new IllegalArgumentException("Stream size exceeds max array size");
    }

    /* renamed from: g */
    public void mo285g(Object obj) {
        for (int i = 0; i < this.f935c; i++) {
            Object[] objArr = this.f871f;
            mo471t(objArr[i], 0, mo470u(objArr[i]), obj);
        }
        mo471t(this.f870e, 0, this.f934b, obj);
    }

    public abstract InterfaceC2701s spliterator();

    @Override // java.lang.Iterable
    public /* synthetic */ Spliterator spliterator() {
        return C3069h.m144a(spliterator());
    }

    /* renamed from: t */
    protected abstract void mo471t(Object obj, int i, int i2, Object obj2);

    /* renamed from: u */
    protected abstract int mo470u(Object obj);

    /* renamed from: v */
    protected long m469v() {
        int i = this.f935c;
        if (i == 0) {
            return mo470u(this.f870e);
        }
        return mo470u(this.f871f[i]) + this.f936d[i];
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: w */
    public int m468w(long j) {
        if (this.f935c == 0) {
            if (j < this.f934b) {
                return 0;
            }
            throw new IndexOutOfBoundsException(Long.toString(j));
        } else if (j < count()) {
            for (int i = 0; i <= this.f935c; i++) {
                if (j < this.f936d[i] + mo470u(this.f871f[i])) {
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
    public final void m467x(long j) {
        int i;
        long m469v = m469v();
        if (j <= m469v) {
            return;
        }
        m466y();
        int i2 = this.f935c;
        while (true) {
            i2++;
            if (j <= m469v) {
                return;
            }
            Object[] objArr = this.f871f;
            if (i2 >= objArr.length) {
                int length = objArr.length * 2;
                this.f871f = Arrays.copyOf(objArr, length);
                this.f936d = Arrays.copyOf(this.f936d, length);
            }
            int m425s = m425s(i2);
            this.f871f[i2] = mo472c(m425s);
            long[] jArr = this.f936d;
            jArr[i2] = jArr[i2 - 1] + mo470u(this.f871f[i]);
            m469v += m425s;
        }
    }

    /* renamed from: z */
    protected abstract Object[] mo465z(int i);
}
