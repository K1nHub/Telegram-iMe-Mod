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
    Object f950e;

    /* renamed from: f */
    Object[] f951f;

    /* renamed from: j$.util.stream.Z3$a */
    /* loaded from: classes2.dex */
    abstract class AbstractC3003a implements InterfaceC3160t {

        /* renamed from: a */
        int f952a;

        /* renamed from: b */
        final int f953b;

        /* renamed from: c */
        int f954c;

        /* renamed from: d */
        final int f955d;

        /* renamed from: e */
        Object f956e;

        /* JADX INFO: Access modifiers changed from: package-private */
        public AbstractC3003a(int i, int i2, int i3, int i4) {
            this.f952a = i;
            this.f953b = i2;
            this.f954c = i3;
            this.f955d = i4;
            Object[] objArr = AbstractC3002Z3.this.f951f;
            this.f956e = objArr == null ? AbstractC3002Z3.this.f950e : objArr[i];
        }

        /* renamed from: a */
        abstract void mo455a(Object obj, int i, Object obj2);

        @Override // p033j$.util.InterfaceC2853s
        public int characteristics() {
            return 16464;
        }

        @Override // p033j$.util.InterfaceC2853s
        public long estimateSize() {
            int i = this.f952a;
            int i2 = this.f953b;
            if (i == i2) {
                return this.f955d - this.f954c;
            }
            long[] jArr = AbstractC3002Z3.this.f1016d;
            return ((jArr[i2] + this.f955d) - jArr[i]) - this.f954c;
        }

        /* renamed from: f */
        abstract InterfaceC3160t mo451f(Object obj, int i, int i2);

        @Override // p033j$.util.InterfaceC3160t
        /* renamed from: forEachRemaining */
        public void m452e(Object obj) {
            int i;
            Objects.requireNonNull(obj);
            int i2 = this.f952a;
            int i3 = this.f953b;
            if (i2 < i3 || (i2 == i3 && this.f954c < this.f955d)) {
                int i4 = this.f954c;
                while (true) {
                    i = this.f953b;
                    if (i2 >= i) {
                        break;
                    }
                    AbstractC3002Z3 abstractC3002Z3 = AbstractC3002Z3.this;
                    Object obj2 = abstractC3002Z3.f951f[i2];
                    abstractC3002Z3.mo462t(obj2, i4, abstractC3002Z3.mo461u(obj2), obj);
                    i4 = 0;
                    i2++;
                }
                AbstractC3002Z3.this.mo462t(this.f952a == i ? this.f956e : AbstractC3002Z3.this.f951f[i], i4, this.f955d, obj);
                this.f952a = this.f953b;
                this.f954c = this.f955d;
            }
        }

        @Override // p033j$.util.InterfaceC2853s
        public Comparator getComparator() {
            throw new IllegalStateException();
        }

        @Override // p033j$.util.InterfaceC2853s
        public /* synthetic */ long getExactSizeIfKnown() {
            return AbstractC2780a.m606e(this);
        }

        /* renamed from: h */
        abstract InterfaceC3160t mo449h(int i, int i2, int i3, int i4);

        @Override // p033j$.util.InterfaceC2853s
        public /* synthetic */ boolean hasCharacteristics(int i) {
            return AbstractC2780a.m605f(this, i);
        }

        @Override // p033j$.util.InterfaceC3160t
        /* renamed from: tryAdvance */
        public boolean m447k(Object obj) {
            Objects.requireNonNull(obj);
            int i = this.f952a;
            int i2 = this.f953b;
            if (i < i2 || (i == i2 && this.f954c < this.f955d)) {
                Object obj2 = this.f956e;
                int i3 = this.f954c;
                this.f954c = i3 + 1;
                mo455a(obj2, i3, obj);
                if (this.f954c == AbstractC3002Z3.this.mo461u(this.f956e)) {
                    this.f954c = 0;
                    int i4 = this.f952a + 1;
                    this.f952a = i4;
                    Object[] objArr = AbstractC3002Z3.this.f951f;
                    if (objArr != null && i4 <= this.f953b) {
                        this.f956e = objArr[i4];
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
            int i = this.f952a;
            int i2 = this.f953b;
            if (i < i2) {
                int i3 = this.f954c;
                AbstractC3002Z3 abstractC3002Z3 = AbstractC3002Z3.this;
                InterfaceC3160t mo449h = mo449h(i, i2 - 1, i3, abstractC3002Z3.mo461u(abstractC3002Z3.f951f[i2 - 1]));
                int i4 = this.f953b;
                this.f952a = i4;
                this.f954c = 0;
                this.f956e = AbstractC3002Z3.this.f951f[i4];
                return mo449h;
            } else if (i == i2) {
                int i5 = this.f955d;
                int i6 = this.f954c;
                int i7 = (i5 - i6) / 2;
                if (i7 == 0) {
                    return null;
                }
                InterfaceC3160t mo451f = mo451f(this.f956e, i6, i7);
                this.f954c += i7;
                return mo451f;
            } else {
                return null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3002Z3() {
        this.f950e = mo463c(16);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3002Z3(int i) {
        super(i);
        this.f950e = mo463c(1 << this.f1013a);
    }

    /* renamed from: y */
    private void m457y() {
        if (this.f951f == null) {
            Object[] mo456z = mo456z(8);
            this.f951f = mo456z;
            this.f1016d = new long[8];
            mo456z[0] = this.f950e;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: A */
    public void m464A() {
        if (this.f1014b == mo461u(this.f950e)) {
            m457y();
            int i = this.f1015c;
            int i2 = i + 1;
            Object[] objArr = this.f951f;
            if (i2 >= objArr.length || objArr[i + 1] == null) {
                m458x(m460v() + 1);
            }
            this.f1014b = 0;
            int i3 = this.f1015c + 1;
            this.f1015c = i3;
            this.f950e = this.f951f[i3];
        }
    }

    /* renamed from: c */
    public abstract Object mo463c(int i);

    @Override // p033j$.util.stream.AbstractC3028e
    public void clear() {
        Object[] objArr = this.f951f;
        if (objArr != null) {
            this.f950e = objArr[0];
            this.f951f = null;
            this.f1016d = null;
        }
        this.f1014b = 0;
        this.f1015c = 0;
    }

    /* renamed from: d */
    public void mo278d(Object obj, int i) {
        long j = i;
        long count = count() + j;
        if (count > mo461u(obj) || count < j) {
            throw new IndexOutOfBoundsException("does not fit");
        }
        if (this.f1015c == 0) {
            System.arraycopy(this.f950e, 0, obj, i, this.f1014b);
            return;
        }
        for (int i2 = 0; i2 < this.f1015c; i2++) {
            Object[] objArr = this.f951f;
            System.arraycopy(objArr[i2], 0, obj, i, mo461u(objArr[i2]));
            i += mo461u(this.f951f[i2]);
        }
        int i3 = this.f1014b;
        if (i3 > 0) {
            System.arraycopy(this.f950e, 0, obj, i, i3);
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
        for (int i = 0; i < this.f1015c; i++) {
            Object[] objArr = this.f951f;
            mo462t(objArr[i], 0, mo461u(objArr[i]), obj);
        }
        mo462t(this.f950e, 0, this.f1014b, obj);
    }

    public abstract InterfaceC2853s spliterator();

    @Override // java.lang.Iterable
    public /* synthetic */ Spliterator spliterator() {
        return C3221h.m135a(spliterator());
    }

    /* renamed from: t */
    protected abstract void mo462t(Object obj, int i, int i2, Object obj2);

    /* renamed from: u */
    protected abstract int mo461u(Object obj);

    /* renamed from: v */
    protected long m460v() {
        int i = this.f1015c;
        if (i == 0) {
            return mo461u(this.f950e);
        }
        return mo461u(this.f951f[i]) + this.f1016d[i];
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: w */
    public int m459w(long j) {
        if (this.f1015c == 0) {
            if (j < this.f1014b) {
                return 0;
            }
            throw new IndexOutOfBoundsException(Long.toString(j));
        } else if (j < count()) {
            for (int i = 0; i <= this.f1015c; i++) {
                if (j < this.f1016d[i] + mo461u(this.f951f[i])) {
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
        int i2 = this.f1015c;
        while (true) {
            i2++;
            if (j <= m460v) {
                return;
            }
            Object[] objArr = this.f951f;
            if (i2 >= objArr.length) {
                int length = objArr.length * 2;
                this.f951f = Arrays.copyOf(objArr, length);
                this.f1016d = Arrays.copyOf(this.f1016d, length);
            }
            int m416s = m416s(i2);
            this.f951f[i2] = mo463c(m416s);
            long[] jArr = this.f1016d;
            jArr[i2] = jArr[i2 - 1] + mo461u(this.f951f[i]);
            m460v += m416s;
        }
    }

    /* renamed from: z */
    protected abstract Object[] mo456z(int i);
}
