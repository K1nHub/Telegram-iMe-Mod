package p033j$.util.stream;

import java.util.Arrays;
import java.util.Comparator;
import java.util.Objects;
import java.util.Spliterator;
import p033j$.lang.InterfaceC2782e;
import p033j$.util.AbstractC2835a;
import p033j$.util.InterfaceC2908s;
import p033j$.util.InterfaceC3215t;
import p033j$.wrappers.C3276h;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.Z3 */
/* loaded from: classes2.dex */
public abstract class AbstractC3057Z3 extends AbstractC3083e implements Iterable, InterfaceC2782e {

    /* renamed from: e */
    Object f954e;

    /* renamed from: f */
    Object[] f955f;

    /* renamed from: j$.util.stream.Z3$a */
    /* loaded from: classes2.dex */
    abstract class AbstractC3058a implements InterfaceC3215t {

        /* renamed from: a */
        int f956a;

        /* renamed from: b */
        final int f957b;

        /* renamed from: c */
        int f958c;

        /* renamed from: d */
        final int f959d;

        /* renamed from: e */
        Object f960e;

        /* JADX INFO: Access modifiers changed from: package-private */
        public AbstractC3058a(int i, int i2, int i3, int i4) {
            this.f956a = i;
            this.f957b = i2;
            this.f958c = i3;
            this.f959d = i4;
            Object[] objArr = AbstractC3057Z3.this.f955f;
            this.f960e = objArr == null ? AbstractC3057Z3.this.f954e : objArr[i];
        }

        /* renamed from: a */
        abstract void mo473a(Object obj, int i, Object obj2);

        @Override // p033j$.util.InterfaceC2908s
        public int characteristics() {
            return 16464;
        }

        @Override // p033j$.util.InterfaceC2908s
        public long estimateSize() {
            int i = this.f956a;
            int i2 = this.f957b;
            if (i == i2) {
                return this.f959d - this.f958c;
            }
            long[] jArr = AbstractC3057Z3.this.f1020d;
            return ((jArr[i2] + this.f959d) - jArr[i]) - this.f958c;
        }

        /* renamed from: f */
        abstract InterfaceC3215t mo469f(Object obj, int i, int i2);

        @Override // p033j$.util.InterfaceC3215t
        /* renamed from: forEachRemaining */
        public void m470e(Object obj) {
            int i;
            Objects.requireNonNull(obj);
            int i2 = this.f956a;
            int i3 = this.f957b;
            if (i2 < i3 || (i2 == i3 && this.f958c < this.f959d)) {
                int i4 = this.f958c;
                while (true) {
                    i = this.f957b;
                    if (i2 >= i) {
                        break;
                    }
                    AbstractC3057Z3 abstractC3057Z3 = AbstractC3057Z3.this;
                    Object obj2 = abstractC3057Z3.f955f[i2];
                    abstractC3057Z3.mo480t(obj2, i4, abstractC3057Z3.mo479u(obj2), obj);
                    i4 = 0;
                    i2++;
                }
                AbstractC3057Z3.this.mo480t(this.f956a == i ? this.f960e : AbstractC3057Z3.this.f955f[i], i4, this.f959d, obj);
                this.f956a = this.f957b;
                this.f958c = this.f959d;
            }
        }

        @Override // p033j$.util.InterfaceC2908s
        public Comparator getComparator() {
            throw new IllegalStateException();
        }

        @Override // p033j$.util.InterfaceC2908s
        public /* synthetic */ long getExactSizeIfKnown() {
            return AbstractC2835a.m624e(this);
        }

        /* renamed from: h */
        abstract InterfaceC3215t mo467h(int i, int i2, int i3, int i4);

        @Override // p033j$.util.InterfaceC2908s
        public /* synthetic */ boolean hasCharacteristics(int i) {
            return AbstractC2835a.m623f(this, i);
        }

        @Override // p033j$.util.InterfaceC3215t
        /* renamed from: tryAdvance */
        public boolean m465k(Object obj) {
            Objects.requireNonNull(obj);
            int i = this.f956a;
            int i2 = this.f957b;
            if (i < i2 || (i == i2 && this.f958c < this.f959d)) {
                Object obj2 = this.f960e;
                int i3 = this.f958c;
                this.f958c = i3 + 1;
                mo473a(obj2, i3, obj);
                if (this.f958c == AbstractC3057Z3.this.mo479u(this.f960e)) {
                    this.f958c = 0;
                    int i4 = this.f956a + 1;
                    this.f956a = i4;
                    Object[] objArr = AbstractC3057Z3.this.f955f;
                    if (objArr != null && i4 <= this.f957b) {
                        this.f960e = objArr[i4];
                    }
                }
                return true;
            }
            return false;
        }

        @Override // p033j$.util.InterfaceC3215t, p033j$.util.InterfaceC2908s
        public /* bridge */ /* synthetic */ InterfaceC2908s.InterfaceC2909a trySplit() {
            return (InterfaceC2908s.InterfaceC2909a) trySplit();
        }

        @Override // p033j$.util.InterfaceC3215t, p033j$.util.InterfaceC2908s
        public /* bridge */ /* synthetic */ InterfaceC2908s.InterfaceC2910b trySplit() {
            return (InterfaceC2908s.InterfaceC2910b) trySplit();
        }

        @Override // p033j$.util.InterfaceC3215t, p033j$.util.InterfaceC2908s
        public /* bridge */ /* synthetic */ InterfaceC2908s.InterfaceC2911c trySplit() {
            return (InterfaceC2908s.InterfaceC2911c) trySplit();
        }

        @Override // p033j$.util.InterfaceC2908s
        public InterfaceC3215t trySplit() {
            int i = this.f956a;
            int i2 = this.f957b;
            if (i < i2) {
                int i3 = this.f958c;
                AbstractC3057Z3 abstractC3057Z3 = AbstractC3057Z3.this;
                InterfaceC3215t mo467h = mo467h(i, i2 - 1, i3, abstractC3057Z3.mo479u(abstractC3057Z3.f955f[i2 - 1]));
                int i4 = this.f957b;
                this.f956a = i4;
                this.f958c = 0;
                this.f960e = AbstractC3057Z3.this.f955f[i4];
                return mo467h;
            } else if (i == i2) {
                int i5 = this.f959d;
                int i6 = this.f958c;
                int i7 = (i5 - i6) / 2;
                if (i7 == 0) {
                    return null;
                }
                InterfaceC3215t mo469f = mo469f(this.f960e, i6, i7);
                this.f958c += i7;
                return mo469f;
            } else {
                return null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3057Z3() {
        this.f954e = mo481c(16);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3057Z3(int i) {
        super(i);
        this.f954e = mo481c(1 << this.f1017a);
    }

    /* renamed from: y */
    private void m475y() {
        if (this.f955f == null) {
            Object[] mo474z = mo474z(8);
            this.f955f = mo474z;
            this.f1020d = new long[8];
            mo474z[0] = this.f954e;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: A */
    public void m482A() {
        if (this.f1018b == mo479u(this.f954e)) {
            m475y();
            int i = this.f1019c;
            int i2 = i + 1;
            Object[] objArr = this.f955f;
            if (i2 >= objArr.length || objArr[i + 1] == null) {
                m476x(m478v() + 1);
            }
            this.f1018b = 0;
            int i3 = this.f1019c + 1;
            this.f1019c = i3;
            this.f954e = this.f955f[i3];
        }
    }

    /* renamed from: c */
    public abstract Object mo481c(int i);

    @Override // p033j$.util.stream.AbstractC3083e
    public void clear() {
        Object[] objArr = this.f955f;
        if (objArr != null) {
            this.f954e = objArr[0];
            this.f955f = null;
            this.f1020d = null;
        }
        this.f1018b = 0;
        this.f1019c = 0;
    }

    /* renamed from: d */
    public void mo296d(Object obj, int i) {
        long j = i;
        long count = count() + j;
        if (count > mo479u(obj) || count < j) {
            throw new IndexOutOfBoundsException("does not fit");
        }
        if (this.f1019c == 0) {
            System.arraycopy(this.f954e, 0, obj, i, this.f1018b);
            return;
        }
        for (int i2 = 0; i2 < this.f1019c; i2++) {
            Object[] objArr = this.f955f;
            System.arraycopy(objArr[i2], 0, obj, i, mo479u(objArr[i2]));
            i += mo479u(this.f955f[i2]);
        }
        int i3 = this.f1018b;
        if (i3 > 0) {
            System.arraycopy(this.f954e, 0, obj, i, i3);
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
        for (int i = 0; i < this.f1019c; i++) {
            Object[] objArr = this.f955f;
            mo480t(objArr[i], 0, mo479u(objArr[i]), obj);
        }
        mo480t(this.f954e, 0, this.f1018b, obj);
    }

    public abstract InterfaceC2908s spliterator();

    @Override // java.lang.Iterable
    public /* synthetic */ Spliterator spliterator() {
        return C3276h.m153a(spliterator());
    }

    /* renamed from: t */
    protected abstract void mo480t(Object obj, int i, int i2, Object obj2);

    /* renamed from: u */
    protected abstract int mo479u(Object obj);

    /* renamed from: v */
    protected long m478v() {
        int i = this.f1019c;
        if (i == 0) {
            return mo479u(this.f954e);
        }
        return mo479u(this.f955f[i]) + this.f1020d[i];
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: w */
    public int m477w(long j) {
        if (this.f1019c == 0) {
            if (j < this.f1018b) {
                return 0;
            }
            throw new IndexOutOfBoundsException(Long.toString(j));
        } else if (j < count()) {
            for (int i = 0; i <= this.f1019c; i++) {
                if (j < this.f1020d[i] + mo479u(this.f955f[i])) {
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
        int i2 = this.f1019c;
        while (true) {
            i2++;
            if (j <= m478v) {
                return;
            }
            Object[] objArr = this.f955f;
            if (i2 >= objArr.length) {
                int length = objArr.length * 2;
                this.f955f = Arrays.copyOf(objArr, length);
                this.f1020d = Arrays.copyOf(this.f1020d, length);
            }
            int m434s = m434s(i2);
            this.f955f[i2] = mo481c(m434s);
            long[] jArr = this.f1020d;
            jArr[i2] = jArr[i2 - 1] + mo479u(this.f955f[i]);
            m478v += m434s;
        }
    }

    /* renamed from: z */
    protected abstract Object[] mo474z(int i);
}
