package p034j$.util.stream;

import java.util.Arrays;
import java.util.Comparator;
import java.util.Objects;
import java.util.Spliterator;
import p034j$.lang.InterfaceC2361e;
import p034j$.util.AbstractC2414a;
import p034j$.util.InterfaceC2487s;
import p034j$.util.InterfaceC2794t;
import p034j$.wrappers.C2855h;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.Z3 */
/* loaded from: classes2.dex */
public abstract class AbstractC2636Z3 extends AbstractC2662e implements Iterable, InterfaceC2361e {

    /* renamed from: e */
    Object f859e;

    /* renamed from: f */
    Object[] f860f;

    /* renamed from: j$.util.stream.Z3$a */
    /* loaded from: classes2.dex */
    abstract class AbstractC2637a implements InterfaceC2794t {

        /* renamed from: a */
        int f861a;

        /* renamed from: b */
        final int f862b;

        /* renamed from: c */
        int f863c;

        /* renamed from: d */
        final int f864d;

        /* renamed from: e */
        Object f865e;

        /* JADX INFO: Access modifiers changed from: package-private */
        public AbstractC2637a(int i, int i2, int i3, int i4) {
            this.f861a = i;
            this.f862b = i2;
            this.f863c = i3;
            this.f864d = i4;
            Object[] objArr = AbstractC2636Z3.this.f860f;
            this.f865e = objArr == null ? AbstractC2636Z3.this.f859e : objArr[i];
        }

        /* renamed from: a */
        abstract void mo470a(Object obj, int i, Object obj2);

        @Override // p034j$.util.InterfaceC2487s
        public int characteristics() {
            return 16464;
        }

        @Override // p034j$.util.InterfaceC2487s
        public long estimateSize() {
            int i = this.f861a;
            int i2 = this.f862b;
            if (i == i2) {
                return this.f864d - this.f863c;
            }
            long[] jArr = AbstractC2636Z3.this.f925d;
            return ((jArr[i2] + this.f864d) - jArr[i]) - this.f863c;
        }

        /* renamed from: f */
        abstract InterfaceC2794t mo466f(Object obj, int i, int i2);

        @Override // p034j$.util.InterfaceC2794t
        /* renamed from: forEachRemaining */
        public void m467e(Object obj) {
            int i;
            Objects.requireNonNull(obj);
            int i2 = this.f861a;
            int i3 = this.f862b;
            if (i2 < i3 || (i2 == i3 && this.f863c < this.f864d)) {
                int i4 = this.f863c;
                while (true) {
                    i = this.f862b;
                    if (i2 >= i) {
                        break;
                    }
                    AbstractC2636Z3 abstractC2636Z3 = AbstractC2636Z3.this;
                    Object obj2 = abstractC2636Z3.f860f[i2];
                    abstractC2636Z3.mo477t(obj2, i4, abstractC2636Z3.mo476u(obj2), obj);
                    i4 = 0;
                    i2++;
                }
                AbstractC2636Z3.this.mo477t(this.f861a == i ? this.f865e : AbstractC2636Z3.this.f860f[i], i4, this.f864d, obj);
                this.f861a = this.f862b;
                this.f863c = this.f864d;
            }
        }

        @Override // p034j$.util.InterfaceC2487s
        public Comparator getComparator() {
            throw new IllegalStateException();
        }

        @Override // p034j$.util.InterfaceC2487s
        public /* synthetic */ long getExactSizeIfKnown() {
            return AbstractC2414a.m622e(this);
        }

        /* renamed from: h */
        abstract InterfaceC2794t mo464h(int i, int i2, int i3, int i4);

        @Override // p034j$.util.InterfaceC2487s
        public /* synthetic */ boolean hasCharacteristics(int i) {
            return AbstractC2414a.m621f(this, i);
        }

        @Override // p034j$.util.InterfaceC2794t
        /* renamed from: tryAdvance */
        public boolean m462k(Object obj) {
            Objects.requireNonNull(obj);
            int i = this.f861a;
            int i2 = this.f862b;
            if (i < i2 || (i == i2 && this.f863c < this.f864d)) {
                Object obj2 = this.f865e;
                int i3 = this.f863c;
                this.f863c = i3 + 1;
                mo470a(obj2, i3, obj);
                if (this.f863c == AbstractC2636Z3.this.mo476u(this.f865e)) {
                    this.f863c = 0;
                    int i4 = this.f861a + 1;
                    this.f861a = i4;
                    Object[] objArr = AbstractC2636Z3.this.f860f;
                    if (objArr != null && i4 <= this.f862b) {
                        this.f865e = objArr[i4];
                    }
                }
                return true;
            }
            return false;
        }

        @Override // p034j$.util.InterfaceC2794t, p034j$.util.InterfaceC2487s
        public /* bridge */ /* synthetic */ InterfaceC2487s.InterfaceC2488a trySplit() {
            return (InterfaceC2487s.InterfaceC2488a) trySplit();
        }

        @Override // p034j$.util.InterfaceC2794t, p034j$.util.InterfaceC2487s
        public /* bridge */ /* synthetic */ InterfaceC2487s.InterfaceC2489b trySplit() {
            return (InterfaceC2487s.InterfaceC2489b) trySplit();
        }

        @Override // p034j$.util.InterfaceC2794t, p034j$.util.InterfaceC2487s
        public /* bridge */ /* synthetic */ InterfaceC2487s.InterfaceC2490c trySplit() {
            return (InterfaceC2487s.InterfaceC2490c) trySplit();
        }

        @Override // p034j$.util.InterfaceC2794t, p034j$.util.InterfaceC2487s
        public InterfaceC2794t trySplit() {
            int i = this.f861a;
            int i2 = this.f862b;
            if (i < i2) {
                int i3 = this.f863c;
                AbstractC2636Z3 abstractC2636Z3 = AbstractC2636Z3.this;
                InterfaceC2794t mo464h = mo464h(i, i2 - 1, i3, abstractC2636Z3.mo476u(abstractC2636Z3.f860f[i2 - 1]));
                int i4 = this.f862b;
                this.f861a = i4;
                this.f863c = 0;
                this.f865e = AbstractC2636Z3.this.f860f[i4];
                return mo464h;
            } else if (i == i2) {
                int i5 = this.f864d;
                int i6 = this.f863c;
                int i7 = (i5 - i6) / 2;
                if (i7 == 0) {
                    return null;
                }
                InterfaceC2794t mo466f = mo466f(this.f865e, i6, i7);
                this.f863c += i7;
                return mo466f;
            } else {
                return null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2636Z3() {
        this.f859e = mo478c(16);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2636Z3(int i) {
        super(i);
        this.f859e = mo478c(1 << this.f922a);
    }

    /* renamed from: y */
    private void m472y() {
        if (this.f860f == null) {
            Object[] mo471z = mo471z(8);
            this.f860f = mo471z;
            this.f925d = new long[8];
            mo471z[0] = this.f859e;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: A */
    public void m479A() {
        if (this.f923b == mo476u(this.f859e)) {
            m472y();
            int i = this.f924c;
            int i2 = i + 1;
            Object[] objArr = this.f860f;
            if (i2 >= objArr.length || objArr[i + 1] == null) {
                m473x(m475v() + 1);
            }
            this.f923b = 0;
            int i3 = this.f924c + 1;
            this.f924c = i3;
            this.f859e = this.f860f[i3];
        }
    }

    /* renamed from: c */
    public abstract Object mo478c(int i);

    @Override // p034j$.util.stream.AbstractC2662e
    public void clear() {
        Object[] objArr = this.f860f;
        if (objArr != null) {
            this.f859e = objArr[0];
            this.f860f = null;
            this.f925d = null;
        }
        this.f923b = 0;
        this.f924c = 0;
    }

    /* renamed from: d */
    public void mo293d(Object obj, int i) {
        long j = i;
        long count = count() + j;
        if (count > mo476u(obj) || count < j) {
            throw new IndexOutOfBoundsException("does not fit");
        }
        if (this.f924c == 0) {
            System.arraycopy(this.f859e, 0, obj, i, this.f923b);
            return;
        }
        for (int i2 = 0; i2 < this.f924c; i2++) {
            Object[] objArr = this.f860f;
            System.arraycopy(objArr[i2], 0, obj, i, mo476u(objArr[i2]));
            i += mo476u(this.f860f[i2]);
        }
        int i3 = this.f923b;
        if (i3 > 0) {
            System.arraycopy(this.f859e, 0, obj, i, i3);
        }
    }

    /* renamed from: e */
    public Object mo292e() {
        long count = count();
        if (count < 2147483639) {
            Object mo478c = mo478c((int) count);
            mo293d(mo478c, 0);
            return mo478c;
        }
        throw new IllegalArgumentException("Stream size exceeds max array size");
    }

    /* renamed from: g */
    public void mo291g(Object obj) {
        for (int i = 0; i < this.f924c; i++) {
            Object[] objArr = this.f860f;
            mo477t(objArr[i], 0, mo476u(objArr[i]), obj);
        }
        mo477t(this.f859e, 0, this.f923b, obj);
    }

    public abstract InterfaceC2487s spliterator();

    @Override // java.lang.Iterable, p034j$.lang.InterfaceC2361e
    public /* synthetic */ Spliterator spliterator() {
        return C2855h.m150a(spliterator());
    }

    /* renamed from: t */
    protected abstract void mo477t(Object obj, int i, int i2, Object obj2);

    /* renamed from: u */
    protected abstract int mo476u(Object obj);

    /* renamed from: v */
    protected long m475v() {
        int i = this.f924c;
        if (i == 0) {
            return mo476u(this.f859e);
        }
        return mo476u(this.f860f[i]) + this.f925d[i];
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: w */
    public int m474w(long j) {
        if (this.f924c == 0) {
            if (j < this.f923b) {
                return 0;
            }
            throw new IndexOutOfBoundsException(Long.toString(j));
        } else if (j < count()) {
            for (int i = 0; i <= this.f924c; i++) {
                if (j < this.f925d[i] + mo476u(this.f860f[i])) {
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
    public final void m473x(long j) {
        int i;
        long m475v = m475v();
        if (j <= m475v) {
            return;
        }
        m472y();
        int i2 = this.f924c;
        while (true) {
            i2++;
            if (j <= m475v) {
                return;
            }
            Object[] objArr = this.f860f;
            if (i2 >= objArr.length) {
                int length = objArr.length * 2;
                this.f860f = Arrays.copyOf(objArr, length);
                this.f925d = Arrays.copyOf(this.f925d, length);
            }
            int m431s = m431s(i2);
            this.f860f[i2] = mo478c(m431s);
            long[] jArr = this.f925d;
            jArr[i2] = jArr[i2 - 1] + mo476u(this.f860f[i]);
            m475v += m431s;
        }
    }

    /* renamed from: z */
    protected abstract Object[] mo471z(int i);
}
