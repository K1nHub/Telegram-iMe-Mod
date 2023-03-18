package p034j$.util.stream;

import java.util.Arrays;
import java.util.Comparator;
import java.util.Objects;
import java.util.Spliterator;
import p034j$.lang.InterfaceC2485e;
import p034j$.util.AbstractC2538a;
import p034j$.util.InterfaceC2611s;
import p034j$.util.InterfaceC2918t;
import p034j$.wrappers.C2979h;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.Z3 */
/* loaded from: classes2.dex */
public abstract class AbstractC2760Z3 extends AbstractC2786e implements Iterable, InterfaceC2485e {

    /* renamed from: e */
    Object f864e;

    /* renamed from: f */
    Object[] f865f;

    /* renamed from: j$.util.stream.Z3$a */
    /* loaded from: classes2.dex */
    abstract class AbstractC2761a implements InterfaceC2918t {

        /* renamed from: a */
        int f866a;

        /* renamed from: b */
        final int f867b;

        /* renamed from: c */
        int f868c;

        /* renamed from: d */
        final int f869d;

        /* renamed from: e */
        Object f870e;

        /* JADX INFO: Access modifiers changed from: package-private */
        public AbstractC2761a(int i, int i2, int i3, int i4) {
            this.f866a = i;
            this.f867b = i2;
            this.f868c = i3;
            this.f869d = i4;
            Object[] objArr = AbstractC2760Z3.this.f865f;
            this.f870e = objArr == null ? AbstractC2760Z3.this.f864e : objArr[i];
        }

        /* renamed from: a */
        abstract void mo470a(Object obj, int i, Object obj2);

        @Override // p034j$.util.InterfaceC2611s
        public int characteristics() {
            return 16464;
        }

        @Override // p034j$.util.InterfaceC2611s
        public long estimateSize() {
            int i = this.f866a;
            int i2 = this.f867b;
            if (i == i2) {
                return this.f869d - this.f868c;
            }
            long[] jArr = AbstractC2760Z3.this.f930d;
            return ((jArr[i2] + this.f869d) - jArr[i]) - this.f868c;
        }

        /* renamed from: f */
        abstract InterfaceC2918t mo466f(Object obj, int i, int i2);

        @Override // p034j$.util.InterfaceC2918t
        /* renamed from: forEachRemaining */
        public void m467e(Object obj) {
            int i;
            Objects.requireNonNull(obj);
            int i2 = this.f866a;
            int i3 = this.f867b;
            if (i2 < i3 || (i2 == i3 && this.f868c < this.f869d)) {
                int i4 = this.f868c;
                while (true) {
                    i = this.f867b;
                    if (i2 >= i) {
                        break;
                    }
                    AbstractC2760Z3 abstractC2760Z3 = AbstractC2760Z3.this;
                    Object obj2 = abstractC2760Z3.f865f[i2];
                    abstractC2760Z3.mo477t(obj2, i4, abstractC2760Z3.mo476u(obj2), obj);
                    i4 = 0;
                    i2++;
                }
                AbstractC2760Z3.this.mo477t(this.f866a == i ? this.f870e : AbstractC2760Z3.this.f865f[i], i4, this.f869d, obj);
                this.f866a = this.f867b;
                this.f868c = this.f869d;
            }
        }

        @Override // p034j$.util.InterfaceC2611s
        public Comparator getComparator() {
            throw new IllegalStateException();
        }

        @Override // p034j$.util.InterfaceC2611s
        public /* synthetic */ long getExactSizeIfKnown() {
            return AbstractC2538a.m622e(this);
        }

        /* renamed from: h */
        abstract InterfaceC2918t mo464h(int i, int i2, int i3, int i4);

        @Override // p034j$.util.InterfaceC2611s
        public /* synthetic */ boolean hasCharacteristics(int i) {
            return AbstractC2538a.m621f(this, i);
        }

        @Override // p034j$.util.InterfaceC2918t
        /* renamed from: tryAdvance */
        public boolean m462k(Object obj) {
            Objects.requireNonNull(obj);
            int i = this.f866a;
            int i2 = this.f867b;
            if (i < i2 || (i == i2 && this.f868c < this.f869d)) {
                Object obj2 = this.f870e;
                int i3 = this.f868c;
                this.f868c = i3 + 1;
                mo470a(obj2, i3, obj);
                if (this.f868c == AbstractC2760Z3.this.mo476u(this.f870e)) {
                    this.f868c = 0;
                    int i4 = this.f866a + 1;
                    this.f866a = i4;
                    Object[] objArr = AbstractC2760Z3.this.f865f;
                    if (objArr != null && i4 <= this.f867b) {
                        this.f870e = objArr[i4];
                    }
                }
                return true;
            }
            return false;
        }

        @Override // p034j$.util.InterfaceC2918t, p034j$.util.InterfaceC2611s
        public /* bridge */ /* synthetic */ InterfaceC2611s.InterfaceC2612a trySplit() {
            return (InterfaceC2611s.InterfaceC2612a) trySplit();
        }

        @Override // p034j$.util.InterfaceC2918t, p034j$.util.InterfaceC2611s
        public /* bridge */ /* synthetic */ InterfaceC2611s.InterfaceC2613b trySplit() {
            return (InterfaceC2611s.InterfaceC2613b) trySplit();
        }

        @Override // p034j$.util.InterfaceC2918t, p034j$.util.InterfaceC2611s
        public /* bridge */ /* synthetic */ InterfaceC2611s.InterfaceC2614c trySplit() {
            return (InterfaceC2611s.InterfaceC2614c) trySplit();
        }

        @Override // p034j$.util.InterfaceC2611s
        public InterfaceC2918t trySplit() {
            int i = this.f866a;
            int i2 = this.f867b;
            if (i < i2) {
                int i3 = this.f868c;
                AbstractC2760Z3 abstractC2760Z3 = AbstractC2760Z3.this;
                InterfaceC2918t mo464h = mo464h(i, i2 - 1, i3, abstractC2760Z3.mo476u(abstractC2760Z3.f865f[i2 - 1]));
                int i4 = this.f867b;
                this.f866a = i4;
                this.f868c = 0;
                this.f870e = AbstractC2760Z3.this.f865f[i4];
                return mo464h;
            } else if (i == i2) {
                int i5 = this.f869d;
                int i6 = this.f868c;
                int i7 = (i5 - i6) / 2;
                if (i7 == 0) {
                    return null;
                }
                InterfaceC2918t mo466f = mo466f(this.f870e, i6, i7);
                this.f868c += i7;
                return mo466f;
            } else {
                return null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2760Z3() {
        this.f864e = mo478c(16);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2760Z3(int i) {
        super(i);
        this.f864e = mo478c(1 << this.f927a);
    }

    /* renamed from: y */
    private void m472y() {
        if (this.f865f == null) {
            Object[] mo471z = mo471z(8);
            this.f865f = mo471z;
            this.f930d = new long[8];
            mo471z[0] = this.f864e;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: A */
    public void m479A() {
        if (this.f928b == mo476u(this.f864e)) {
            m472y();
            int i = this.f929c;
            int i2 = i + 1;
            Object[] objArr = this.f865f;
            if (i2 >= objArr.length || objArr[i + 1] == null) {
                m473x(m475v() + 1);
            }
            this.f928b = 0;
            int i3 = this.f929c + 1;
            this.f929c = i3;
            this.f864e = this.f865f[i3];
        }
    }

    /* renamed from: c */
    public abstract Object mo478c(int i);

    @Override // p034j$.util.stream.AbstractC2786e
    public void clear() {
        Object[] objArr = this.f865f;
        if (objArr != null) {
            this.f864e = objArr[0];
            this.f865f = null;
            this.f930d = null;
        }
        this.f928b = 0;
        this.f929c = 0;
    }

    /* renamed from: d */
    public void mo293d(Object obj, int i) {
        long j = i;
        long count = count() + j;
        if (count > mo476u(obj) || count < j) {
            throw new IndexOutOfBoundsException("does not fit");
        }
        if (this.f929c == 0) {
            System.arraycopy(this.f864e, 0, obj, i, this.f928b);
            return;
        }
        for (int i2 = 0; i2 < this.f929c; i2++) {
            Object[] objArr = this.f865f;
            System.arraycopy(objArr[i2], 0, obj, i, mo476u(objArr[i2]));
            i += mo476u(this.f865f[i2]);
        }
        int i3 = this.f928b;
        if (i3 > 0) {
            System.arraycopy(this.f864e, 0, obj, i, i3);
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
        for (int i = 0; i < this.f929c; i++) {
            Object[] objArr = this.f865f;
            mo477t(objArr[i], 0, mo476u(objArr[i]), obj);
        }
        mo477t(this.f864e, 0, this.f928b, obj);
    }

    public abstract InterfaceC2611s spliterator();

    @Override // java.lang.Iterable
    public /* synthetic */ Spliterator spliterator() {
        return C2979h.m150a(spliterator());
    }

    /* renamed from: t */
    protected abstract void mo477t(Object obj, int i, int i2, Object obj2);

    /* renamed from: u */
    protected abstract int mo476u(Object obj);

    /* renamed from: v */
    protected long m475v() {
        int i = this.f929c;
        if (i == 0) {
            return mo476u(this.f864e);
        }
        return mo476u(this.f865f[i]) + this.f930d[i];
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: w */
    public int m474w(long j) {
        if (this.f929c == 0) {
            if (j < this.f928b) {
                return 0;
            }
            throw new IndexOutOfBoundsException(Long.toString(j));
        } else if (j < count()) {
            for (int i = 0; i <= this.f929c; i++) {
                if (j < this.f930d[i] + mo476u(this.f865f[i])) {
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
        int i2 = this.f929c;
        while (true) {
            i2++;
            if (j <= m475v) {
                return;
            }
            Object[] objArr = this.f865f;
            if (i2 >= objArr.length) {
                int length = objArr.length * 2;
                this.f865f = Arrays.copyOf(objArr, length);
                this.f930d = Arrays.copyOf(this.f930d, length);
            }
            int m431s = m431s(i2);
            this.f865f[i2] = mo478c(m431s);
            long[] jArr = this.f930d;
            jArr[i2] = jArr[i2 - 1] + mo476u(this.f865f[i]);
            m475v += m431s;
        }
    }

    /* renamed from: z */
    protected abstract Object[] mo471z(int i);
}
