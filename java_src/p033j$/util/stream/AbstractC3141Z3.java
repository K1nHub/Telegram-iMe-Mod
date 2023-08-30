package p033j$.util.stream;

import java.util.Arrays;
import java.util.Comparator;
import java.util.Objects;
import java.util.Spliterator;
import p033j$.lang.InterfaceC2866e;
import p033j$.util.AbstractC2919a;
import p033j$.util.InterfaceC2992s;
import p033j$.util.InterfaceC3299t;
import p033j$.wrappers.C3360h;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.Z3 */
/* loaded from: classes2.dex */
public abstract class AbstractC3141Z3 extends AbstractC3167e implements Iterable, InterfaceC2866e {

    /* renamed from: e */
    Object f963e;

    /* renamed from: f */
    Object[] f964f;

    /* renamed from: j$.util.stream.Z3$a */
    /* loaded from: classes2.dex */
    abstract class AbstractC3142a implements InterfaceC3299t {

        /* renamed from: a */
        int f965a;

        /* renamed from: b */
        final int f966b;

        /* renamed from: c */
        int f967c;

        /* renamed from: d */
        final int f968d;

        /* renamed from: e */
        Object f969e;

        /* JADX INFO: Access modifiers changed from: package-private */
        public AbstractC3142a(int i, int i2, int i3, int i4) {
            this.f965a = i;
            this.f966b = i2;
            this.f967c = i3;
            this.f968d = i4;
            Object[] objArr = AbstractC3141Z3.this.f964f;
            this.f969e = objArr == null ? AbstractC3141Z3.this.f963e : objArr[i];
        }

        /* renamed from: a */
        abstract void mo473a(Object obj, int i, Object obj2);

        @Override // p033j$.util.InterfaceC2992s
        public int characteristics() {
            return 16464;
        }

        @Override // p033j$.util.InterfaceC2992s
        public long estimateSize() {
            int i = this.f965a;
            int i2 = this.f966b;
            if (i == i2) {
                return this.f968d - this.f967c;
            }
            long[] jArr = AbstractC3141Z3.this.f1029d;
            return ((jArr[i2] + this.f968d) - jArr[i]) - this.f967c;
        }

        /* renamed from: f */
        abstract InterfaceC3299t mo469f(Object obj, int i, int i2);

        @Override // p033j$.util.InterfaceC3299t
        /* renamed from: forEachRemaining */
        public void m470e(Object obj) {
            int i;
            Objects.requireNonNull(obj);
            int i2 = this.f965a;
            int i3 = this.f966b;
            if (i2 < i3 || (i2 == i3 && this.f967c < this.f968d)) {
                int i4 = this.f967c;
                while (true) {
                    i = this.f966b;
                    if (i2 >= i) {
                        break;
                    }
                    AbstractC3141Z3 abstractC3141Z3 = AbstractC3141Z3.this;
                    Object obj2 = abstractC3141Z3.f964f[i2];
                    abstractC3141Z3.mo480t(obj2, i4, abstractC3141Z3.mo479u(obj2), obj);
                    i4 = 0;
                    i2++;
                }
                AbstractC3141Z3.this.mo480t(this.f965a == i ? this.f969e : AbstractC3141Z3.this.f964f[i], i4, this.f968d, obj);
                this.f965a = this.f966b;
                this.f967c = this.f968d;
            }
        }

        @Override // p033j$.util.InterfaceC2992s
        public Comparator getComparator() {
            throw new IllegalStateException();
        }

        @Override // p033j$.util.InterfaceC2992s
        public /* synthetic */ long getExactSizeIfKnown() {
            return AbstractC2919a.m624e(this);
        }

        /* renamed from: h */
        abstract InterfaceC3299t mo467h(int i, int i2, int i3, int i4);

        @Override // p033j$.util.InterfaceC2992s
        public /* synthetic */ boolean hasCharacteristics(int i) {
            return AbstractC2919a.m623f(this, i);
        }

        @Override // p033j$.util.InterfaceC3299t
        /* renamed from: tryAdvance */
        public boolean m465k(Object obj) {
            Objects.requireNonNull(obj);
            int i = this.f965a;
            int i2 = this.f966b;
            if (i < i2 || (i == i2 && this.f967c < this.f968d)) {
                Object obj2 = this.f969e;
                int i3 = this.f967c;
                this.f967c = i3 + 1;
                mo473a(obj2, i3, obj);
                if (this.f967c == AbstractC3141Z3.this.mo479u(this.f969e)) {
                    this.f967c = 0;
                    int i4 = this.f965a + 1;
                    this.f965a = i4;
                    Object[] objArr = AbstractC3141Z3.this.f964f;
                    if (objArr != null && i4 <= this.f966b) {
                        this.f969e = objArr[i4];
                    }
                }
                return true;
            }
            return false;
        }

        @Override // p033j$.util.InterfaceC3299t, p033j$.util.InterfaceC2992s
        public /* bridge */ /* synthetic */ InterfaceC2992s.InterfaceC2993a trySplit() {
            return (InterfaceC2992s.InterfaceC2993a) trySplit();
        }

        @Override // p033j$.util.InterfaceC3299t, p033j$.util.InterfaceC2992s
        public /* bridge */ /* synthetic */ InterfaceC2992s.InterfaceC2994b trySplit() {
            return (InterfaceC2992s.InterfaceC2994b) trySplit();
        }

        @Override // p033j$.util.InterfaceC3299t, p033j$.util.InterfaceC2992s
        public /* bridge */ /* synthetic */ InterfaceC2992s.InterfaceC2995c trySplit() {
            return (InterfaceC2992s.InterfaceC2995c) trySplit();
        }

        @Override // p033j$.util.InterfaceC2992s
        public InterfaceC3299t trySplit() {
            int i = this.f965a;
            int i2 = this.f966b;
            if (i < i2) {
                int i3 = this.f967c;
                AbstractC3141Z3 abstractC3141Z3 = AbstractC3141Z3.this;
                InterfaceC3299t mo467h = mo467h(i, i2 - 1, i3, abstractC3141Z3.mo479u(abstractC3141Z3.f964f[i2 - 1]));
                int i4 = this.f966b;
                this.f965a = i4;
                this.f967c = 0;
                this.f969e = AbstractC3141Z3.this.f964f[i4];
                return mo467h;
            } else if (i == i2) {
                int i5 = this.f968d;
                int i6 = this.f967c;
                int i7 = (i5 - i6) / 2;
                if (i7 == 0) {
                    return null;
                }
                InterfaceC3299t mo469f = mo469f(this.f969e, i6, i7);
                this.f967c += i7;
                return mo469f;
            } else {
                return null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3141Z3() {
        this.f963e = mo481c(16);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3141Z3(int i) {
        super(i);
        this.f963e = mo481c(1 << this.f1026a);
    }

    /* renamed from: y */
    private void m475y() {
        if (this.f964f == null) {
            Object[] mo474z = mo474z(8);
            this.f964f = mo474z;
            this.f1029d = new long[8];
            mo474z[0] = this.f963e;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: A */
    public void m482A() {
        if (this.f1027b == mo479u(this.f963e)) {
            m475y();
            int i = this.f1028c;
            int i2 = i + 1;
            Object[] objArr = this.f964f;
            if (i2 >= objArr.length || objArr[i + 1] == null) {
                m476x(m478v() + 1);
            }
            this.f1027b = 0;
            int i3 = this.f1028c + 1;
            this.f1028c = i3;
            this.f963e = this.f964f[i3];
        }
    }

    /* renamed from: c */
    public abstract Object mo481c(int i);

    @Override // p033j$.util.stream.AbstractC3167e
    public void clear() {
        Object[] objArr = this.f964f;
        if (objArr != null) {
            this.f963e = objArr[0];
            this.f964f = null;
            this.f1029d = null;
        }
        this.f1027b = 0;
        this.f1028c = 0;
    }

    /* renamed from: d */
    public void mo296d(Object obj, int i) {
        long j = i;
        long count = count() + j;
        if (count > mo479u(obj) || count < j) {
            throw new IndexOutOfBoundsException("does not fit");
        }
        if (this.f1028c == 0) {
            System.arraycopy(this.f963e, 0, obj, i, this.f1027b);
            return;
        }
        for (int i2 = 0; i2 < this.f1028c; i2++) {
            Object[] objArr = this.f964f;
            System.arraycopy(objArr[i2], 0, obj, i, mo479u(objArr[i2]));
            i += mo479u(this.f964f[i2]);
        }
        int i3 = this.f1027b;
        if (i3 > 0) {
            System.arraycopy(this.f963e, 0, obj, i, i3);
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
        for (int i = 0; i < this.f1028c; i++) {
            Object[] objArr = this.f964f;
            mo480t(objArr[i], 0, mo479u(objArr[i]), obj);
        }
        mo480t(this.f963e, 0, this.f1027b, obj);
    }

    public abstract InterfaceC2992s spliterator();

    @Override // java.lang.Iterable
    public /* synthetic */ Spliterator spliterator() {
        return C3360h.m153a(spliterator());
    }

    /* renamed from: t */
    protected abstract void mo480t(Object obj, int i, int i2, Object obj2);

    /* renamed from: u */
    protected abstract int mo479u(Object obj);

    /* renamed from: v */
    protected long m478v() {
        int i = this.f1028c;
        if (i == 0) {
            return mo479u(this.f963e);
        }
        return mo479u(this.f964f[i]) + this.f1029d[i];
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: w */
    public int m477w(long j) {
        if (this.f1028c == 0) {
            if (j < this.f1027b) {
                return 0;
            }
            throw new IndexOutOfBoundsException(Long.toString(j));
        } else if (j < count()) {
            for (int i = 0; i <= this.f1028c; i++) {
                if (j < this.f1029d[i] + mo479u(this.f964f[i])) {
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
        int i2 = this.f1028c;
        while (true) {
            i2++;
            if (j <= m478v) {
                return;
            }
            Object[] objArr = this.f964f;
            if (i2 >= objArr.length) {
                int length = objArr.length * 2;
                this.f964f = Arrays.copyOf(objArr, length);
                this.f1029d = Arrays.copyOf(this.f1029d, length);
            }
            int m434s = m434s(i2);
            this.f964f[i2] = mo481c(m434s);
            long[] jArr = this.f1029d;
            jArr[i2] = jArr[i2 - 1] + mo479u(this.f964f[i]);
            m478v += m434s;
        }
    }

    /* renamed from: z */
    protected abstract Object[] mo474z(int i);
}
