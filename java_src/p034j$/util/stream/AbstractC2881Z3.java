package p034j$.util.stream;

import java.util.Arrays;
import java.util.Comparator;
import java.util.Objects;
import java.util.Spliterator;
import p034j$.lang.InterfaceC2606e;
import p034j$.util.AbstractC2659a;
import p034j$.util.InterfaceC2732s;
import p034j$.util.InterfaceC3039t;
import p034j$.wrappers.C3100h;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.Z3 */
/* loaded from: classes2.dex */
public abstract class AbstractC2881Z3 extends AbstractC2907e implements Iterable, InterfaceC2606e {

    /* renamed from: e */
    Object f868e;

    /* renamed from: f */
    Object[] f869f;

    /* renamed from: j$.util.stream.Z3$a */
    /* loaded from: classes2.dex */
    abstract class AbstractC2882a implements InterfaceC3039t {

        /* renamed from: a */
        int f870a;

        /* renamed from: b */
        final int f871b;

        /* renamed from: c */
        int f872c;

        /* renamed from: d */
        final int f873d;

        /* renamed from: e */
        Object f874e;

        /* JADX INFO: Access modifiers changed from: package-private */
        public AbstractC2882a(int i, int i2, int i3, int i4) {
            this.f870a = i;
            this.f871b = i2;
            this.f872c = i3;
            this.f873d = i4;
            Object[] objArr = AbstractC2881Z3.this.f869f;
            this.f874e = objArr == null ? AbstractC2881Z3.this.f868e : objArr[i];
        }

        /* renamed from: a */
        abstract void mo455a(Object obj, int i, Object obj2);

        @Override // p034j$.util.InterfaceC2732s
        public int characteristics() {
            return 16464;
        }

        @Override // p034j$.util.InterfaceC2732s
        public long estimateSize() {
            int i = this.f870a;
            int i2 = this.f871b;
            if (i == i2) {
                return this.f873d - this.f872c;
            }
            long[] jArr = AbstractC2881Z3.this.f934d;
            return ((jArr[i2] + this.f873d) - jArr[i]) - this.f872c;
        }

        /* renamed from: f */
        abstract InterfaceC3039t mo451f(Object obj, int i, int i2);

        @Override // p034j$.util.InterfaceC3039t
        /* renamed from: forEachRemaining */
        public void m452e(Object obj) {
            int i;
            Objects.requireNonNull(obj);
            int i2 = this.f870a;
            int i3 = this.f871b;
            if (i2 < i3 || (i2 == i3 && this.f872c < this.f873d)) {
                int i4 = this.f872c;
                while (true) {
                    i = this.f871b;
                    if (i2 >= i) {
                        break;
                    }
                    AbstractC2881Z3 abstractC2881Z3 = AbstractC2881Z3.this;
                    Object obj2 = abstractC2881Z3.f869f[i2];
                    abstractC2881Z3.mo462t(obj2, i4, abstractC2881Z3.mo461u(obj2), obj);
                    i4 = 0;
                    i2++;
                }
                AbstractC2881Z3.this.mo462t(this.f870a == i ? this.f874e : AbstractC2881Z3.this.f869f[i], i4, this.f873d, obj);
                this.f870a = this.f871b;
                this.f872c = this.f873d;
            }
        }

        @Override // p034j$.util.InterfaceC2732s
        public Comparator getComparator() {
            throw new IllegalStateException();
        }

        @Override // p034j$.util.InterfaceC2732s
        public /* synthetic */ long getExactSizeIfKnown() {
            return AbstractC2659a.m606e(this);
        }

        /* renamed from: h */
        abstract InterfaceC3039t mo449h(int i, int i2, int i3, int i4);

        @Override // p034j$.util.InterfaceC2732s
        public /* synthetic */ boolean hasCharacteristics(int i) {
            return AbstractC2659a.m605f(this, i);
        }

        @Override // p034j$.util.InterfaceC3039t
        /* renamed from: tryAdvance */
        public boolean m447k(Object obj) {
            Objects.requireNonNull(obj);
            int i = this.f870a;
            int i2 = this.f871b;
            if (i < i2 || (i == i2 && this.f872c < this.f873d)) {
                Object obj2 = this.f874e;
                int i3 = this.f872c;
                this.f872c = i3 + 1;
                mo455a(obj2, i3, obj);
                if (this.f872c == AbstractC2881Z3.this.mo461u(this.f874e)) {
                    this.f872c = 0;
                    int i4 = this.f870a + 1;
                    this.f870a = i4;
                    Object[] objArr = AbstractC2881Z3.this.f869f;
                    if (objArr != null && i4 <= this.f871b) {
                        this.f874e = objArr[i4];
                    }
                }
                return true;
            }
            return false;
        }

        @Override // p034j$.util.InterfaceC3039t, p034j$.util.InterfaceC2732s
        public /* bridge */ /* synthetic */ InterfaceC2732s.InterfaceC2733a trySplit() {
            return (InterfaceC2732s.InterfaceC2733a) trySplit();
        }

        @Override // p034j$.util.InterfaceC3039t, p034j$.util.InterfaceC2732s
        public /* bridge */ /* synthetic */ InterfaceC2732s.InterfaceC2734b trySplit() {
            return (InterfaceC2732s.InterfaceC2734b) trySplit();
        }

        @Override // p034j$.util.InterfaceC3039t, p034j$.util.InterfaceC2732s
        public /* bridge */ /* synthetic */ InterfaceC2732s.InterfaceC2735c trySplit() {
            return (InterfaceC2732s.InterfaceC2735c) trySplit();
        }

        @Override // p034j$.util.InterfaceC2732s
        public InterfaceC3039t trySplit() {
            int i = this.f870a;
            int i2 = this.f871b;
            if (i < i2) {
                int i3 = this.f872c;
                AbstractC2881Z3 abstractC2881Z3 = AbstractC2881Z3.this;
                InterfaceC3039t mo449h = mo449h(i, i2 - 1, i3, abstractC2881Z3.mo461u(abstractC2881Z3.f869f[i2 - 1]));
                int i4 = this.f871b;
                this.f870a = i4;
                this.f872c = 0;
                this.f874e = AbstractC2881Z3.this.f869f[i4];
                return mo449h;
            } else if (i == i2) {
                int i5 = this.f873d;
                int i6 = this.f872c;
                int i7 = (i5 - i6) / 2;
                if (i7 == 0) {
                    return null;
                }
                InterfaceC3039t mo451f = mo451f(this.f874e, i6, i7);
                this.f872c += i7;
                return mo451f;
            } else {
                return null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2881Z3() {
        this.f868e = mo463c(16);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2881Z3(int i) {
        super(i);
        this.f868e = mo463c(1 << this.f931a);
    }

    /* renamed from: y */
    private void m457y() {
        if (this.f869f == null) {
            Object[] mo456z = mo456z(8);
            this.f869f = mo456z;
            this.f934d = new long[8];
            mo456z[0] = this.f868e;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: A */
    public void m464A() {
        if (this.f932b == mo461u(this.f868e)) {
            m457y();
            int i = this.f933c;
            int i2 = i + 1;
            Object[] objArr = this.f869f;
            if (i2 >= objArr.length || objArr[i + 1] == null) {
                m458x(m460v() + 1);
            }
            this.f932b = 0;
            int i3 = this.f933c + 1;
            this.f933c = i3;
            this.f868e = this.f869f[i3];
        }
    }

    /* renamed from: c */
    public abstract Object mo463c(int i);

    @Override // p034j$.util.stream.AbstractC2907e
    public void clear() {
        Object[] objArr = this.f869f;
        if (objArr != null) {
            this.f868e = objArr[0];
            this.f869f = null;
            this.f934d = null;
        }
        this.f932b = 0;
        this.f933c = 0;
    }

    /* renamed from: d */
    public void mo278d(Object obj, int i) {
        long j = i;
        long count = count() + j;
        if (count > mo461u(obj) || count < j) {
            throw new IndexOutOfBoundsException("does not fit");
        }
        if (this.f933c == 0) {
            System.arraycopy(this.f868e, 0, obj, i, this.f932b);
            return;
        }
        for (int i2 = 0; i2 < this.f933c; i2++) {
            Object[] objArr = this.f869f;
            System.arraycopy(objArr[i2], 0, obj, i, mo461u(objArr[i2]));
            i += mo461u(this.f869f[i2]);
        }
        int i3 = this.f932b;
        if (i3 > 0) {
            System.arraycopy(this.f868e, 0, obj, i, i3);
        }
    }

    /* renamed from: e */
    public Object mo277e() {
        long count = count();
        if (count < 2147483639) {
            Object mo463c = mo463c((int) count);
            mo278d(mo463c, 0);
            return mo463c;
        }
        throw new IllegalArgumentException("Stream size exceeds max array size");
    }

    /* renamed from: g */
    public void mo276g(Object obj) {
        for (int i = 0; i < this.f933c; i++) {
            Object[] objArr = this.f869f;
            mo462t(objArr[i], 0, mo461u(objArr[i]), obj);
        }
        mo462t(this.f868e, 0, this.f932b, obj);
    }

    public abstract InterfaceC2732s spliterator();

    @Override // java.lang.Iterable
    public /* synthetic */ Spliterator spliterator() {
        return C3100h.m135a(spliterator());
    }

    /* renamed from: t */
    protected abstract void mo462t(Object obj, int i, int i2, Object obj2);

    /* renamed from: u */
    protected abstract int mo461u(Object obj);

    /* renamed from: v */
    protected long m460v() {
        int i = this.f933c;
        if (i == 0) {
            return mo461u(this.f868e);
        }
        return mo461u(this.f869f[i]) + this.f934d[i];
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: w */
    public int m459w(long j) {
        if (this.f933c == 0) {
            if (j < this.f932b) {
                return 0;
            }
            throw new IndexOutOfBoundsException(Long.toString(j));
        } else if (j < count()) {
            for (int i = 0; i <= this.f933c; i++) {
                if (j < this.f934d[i] + mo461u(this.f869f[i])) {
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
    public final void m458x(long j) {
        int i;
        long m460v = m460v();
        if (j <= m460v) {
            return;
        }
        m457y();
        int i2 = this.f933c;
        while (true) {
            i2++;
            if (j <= m460v) {
                return;
            }
            Object[] objArr = this.f869f;
            if (i2 >= objArr.length) {
                int length = objArr.length * 2;
                this.f869f = Arrays.copyOf(objArr, length);
                this.f934d = Arrays.copyOf(this.f934d, length);
            }
            int m416s = m416s(i2);
            this.f869f[i2] = mo463c(m416s);
            long[] jArr = this.f934d;
            jArr[i2] = jArr[i2 - 1] + mo461u(this.f869f[i]);
            m460v += m416s;
        }
    }

    /* renamed from: z */
    protected abstract Object[] mo456z(int i);
}
