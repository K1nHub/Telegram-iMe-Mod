package p033j$.util.stream;

import java.util.Arrays;
import java.util.Comparator;
import java.util.Objects;
import p033j$.lang.InterfaceC2671e;
import p033j$.util.AbstractC2840k;
import p033j$.util.Spliterator;
import p033j$.wrappers.C3211h;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.Z3 */
/* loaded from: classes2.dex */
public abstract class AbstractC2995Z3 extends AbstractC3021e implements Iterable, InterfaceC2671e {

    /* renamed from: e */
    Object f1003e;

    /* renamed from: f */
    Object[] f1004f;

    /* renamed from: j$.util.stream.Z3$a */
    /* loaded from: classes2.dex */
    abstract class AbstractC2996a implements Spliterator.InterfaceC2776d {

        /* renamed from: a */
        int f1005a;

        /* renamed from: b */
        final int f1006b;

        /* renamed from: c */
        int f1007c;

        /* renamed from: d */
        final int f1008d;

        /* renamed from: e */
        Object f1009e;

        /* JADX INFO: Access modifiers changed from: package-private */
        public AbstractC2996a(int i, int i2, int i3, int i4) {
            this.f1005a = i;
            this.f1006b = i2;
            this.f1007c = i3;
            this.f1008d = i4;
            Object[] objArr = AbstractC2995Z3.this.f1004f;
            this.f1009e = objArr == null ? AbstractC2995Z3.this.f1003e : objArr[i];
        }

        /* renamed from: a */
        abstract void mo519a(Object obj, int i, Object obj2);

        @Override // p033j$.util.Spliterator
        public int characteristics() {
            return 16464;
        }

        @Override // p033j$.util.Spliterator
        public long estimateSize() {
            int i = this.f1005a;
            int i2 = this.f1006b;
            if (i == i2) {
                return this.f1008d - this.f1007c;
            }
            long[] jArr = AbstractC2995Z3.this.f1069d;
            return ((jArr[i2] + this.f1008d) - jArr[i]) - this.f1007c;
        }

        /* renamed from: f */
        abstract Spliterator.InterfaceC2776d mo515f(Object obj, int i, int i2);

        @Override // p033j$.util.Spliterator.InterfaceC2776d
        /* renamed from: forEachRemaining */
        public void m516e(Object obj) {
            int i;
            Objects.requireNonNull(obj);
            int i2 = this.f1005a;
            int i3 = this.f1006b;
            if (i2 < i3 || (i2 == i3 && this.f1007c < this.f1008d)) {
                int i4 = this.f1007c;
                while (true) {
                    i = this.f1006b;
                    if (i2 >= i) {
                        break;
                    }
                    AbstractC2995Z3 abstractC2995Z3 = AbstractC2995Z3.this;
                    Object obj2 = abstractC2995Z3.f1004f[i2];
                    abstractC2995Z3.mo527s(obj2, i4, abstractC2995Z3.mo526t(obj2), obj);
                    i4 = 0;
                    i2++;
                }
                AbstractC2995Z3.this.mo527s(this.f1005a == i ? this.f1009e : AbstractC2995Z3.this.f1004f[i], i4, this.f1008d, obj);
                this.f1005a = this.f1006b;
                this.f1007c = this.f1008d;
            }
        }

        @Override // p033j$.util.Spliterator
        public Comparator getComparator() {
            throw new IllegalStateException();
        }

        @Override // p033j$.util.Spliterator
        public /* synthetic */ long getExactSizeIfKnown() {
            return AbstractC2840k.m602d(this);
        }

        /* renamed from: h */
        abstract Spliterator.InterfaceC2776d mo513h(int i, int i2, int i3, int i4);

        @Override // p033j$.util.Spliterator
        public /* synthetic */ boolean hasCharacteristics(int i) {
            return AbstractC2840k.m601e(this, i);
        }

        @Override // p033j$.util.Spliterator.InterfaceC2776d
        /* renamed from: tryAdvance */
        public boolean m511n(Object obj) {
            Objects.requireNonNull(obj);
            int i = this.f1005a;
            int i2 = this.f1006b;
            if (i < i2 || (i == i2 && this.f1007c < this.f1008d)) {
                Object obj2 = this.f1009e;
                int i3 = this.f1007c;
                this.f1007c = i3 + 1;
                mo519a(obj2, i3, obj);
                if (this.f1007c == AbstractC2995Z3.this.mo526t(this.f1009e)) {
                    this.f1007c = 0;
                    int i4 = this.f1005a + 1;
                    this.f1005a = i4;
                    Object[] objArr = AbstractC2995Z3.this.f1004f;
                    if (objArr != null && i4 <= this.f1006b) {
                        this.f1009e = objArr[i4];
                    }
                }
                return true;
            }
            return false;
        }

        @Override // p033j$.util.Spliterator.InterfaceC2776d, p033j$.util.Spliterator
        public /* bridge */ /* synthetic */ Spliterator.InterfaceC2773a trySplit() {
            return (Spliterator.InterfaceC2773a) trySplit();
        }

        @Override // p033j$.util.Spliterator.InterfaceC2776d, p033j$.util.Spliterator
        public /* bridge */ /* synthetic */ Spliterator.InterfaceC2774b trySplit() {
            return (Spliterator.InterfaceC2774b) trySplit();
        }

        @Override // p033j$.util.Spliterator.InterfaceC2776d, p033j$.util.Spliterator
        public /* bridge */ /* synthetic */ Spliterator.InterfaceC2775c trySplit() {
            return (Spliterator.InterfaceC2775c) trySplit();
        }

        @Override // p033j$.util.Spliterator
        public Spliterator.InterfaceC2776d trySplit() {
            int i = this.f1005a;
            int i2 = this.f1006b;
            if (i < i2) {
                int i3 = this.f1007c;
                AbstractC2995Z3 abstractC2995Z3 = AbstractC2995Z3.this;
                Spliterator.InterfaceC2776d mo513h = mo513h(i, i2 - 1, i3, abstractC2995Z3.mo526t(abstractC2995Z3.f1004f[i2 - 1]));
                int i4 = this.f1006b;
                this.f1005a = i4;
                this.f1007c = 0;
                this.f1009e = AbstractC2995Z3.this.f1004f[i4];
                return mo513h;
            } else if (i == i2) {
                int i5 = this.f1008d;
                int i6 = this.f1007c;
                int i7 = (i5 - i6) / 2;
                if (i7 == 0) {
                    return null;
                }
                Spliterator.InterfaceC2776d mo515f = mo515f(this.f1009e, i6, i7);
                this.f1007c += i7;
                return mo515f;
            } else {
                return null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2995Z3() {
        this.f1003e = mo528c(16);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2995Z3(int i) {
        super(i);
        this.f1003e = mo528c(1 << this.f1066a);
    }

    /* renamed from: x */
    private void m522x() {
        if (this.f1004f == null) {
            Object[] mo521y = mo521y(8);
            this.f1004f = mo521y;
            this.f1069d = new long[8];
            mo521y[0] = this.f1003e;
        }
    }

    /* renamed from: c */
    public abstract Object mo528c(int i);

    @Override // p033j$.util.stream.AbstractC3021e
    public void clear() {
        Object[] objArr = this.f1004f;
        if (objArr != null) {
            this.f1003e = objArr[0];
            this.f1004f = null;
            this.f1069d = null;
        }
        this.f1067b = 0;
        this.f1068c = 0;
    }

    /* renamed from: d */
    public void mo342d(Object obj, int i) {
        long j = i;
        long count = count() + j;
        if (count > mo526t(obj) || count < j) {
            throw new IndexOutOfBoundsException("does not fit");
        }
        if (this.f1068c == 0) {
            System.arraycopy(this.f1003e, 0, obj, i, this.f1067b);
            return;
        }
        for (int i2 = 0; i2 < this.f1068c; i2++) {
            Object[] objArr = this.f1004f;
            System.arraycopy(objArr[i2], 0, obj, i, mo526t(objArr[i2]));
            i += mo526t(this.f1004f[i2]);
        }
        int i3 = this.f1067b;
        if (i3 > 0) {
            System.arraycopy(this.f1003e, 0, obj, i, i3);
        }
    }

    /* renamed from: e */
    public Object mo341e() {
        long count = count();
        if (count < 2147483639) {
            Object mo528c = mo528c((int) count);
            mo342d(mo528c, 0);
            return mo528c;
        }
        throw new IllegalArgumentException("Stream size exceeds max array size");
    }

    /* renamed from: g */
    public void mo340g(Object obj) {
        for (int i = 0; i < this.f1068c; i++) {
            Object[] objArr = this.f1004f;
            mo527s(objArr[i], 0, mo526t(objArr[i]), obj);
        }
        mo527s(this.f1003e, 0, this.f1067b, obj);
    }

    /* renamed from: s */
    protected abstract void mo527s(Object obj, int i, int i2, Object obj2);

    public abstract Spliterator spliterator();

    @Override // java.lang.Iterable
    public /* synthetic */ java.util.Spliterator spliterator() {
        return C3211h.m202a(spliterator());
    }

    /* renamed from: t */
    protected abstract int mo526t(Object obj);

    /* renamed from: u */
    protected long m525u() {
        int i = this.f1068c;
        if (i == 0) {
            return mo526t(this.f1003e);
        }
        return mo526t(this.f1004f[i]) + this.f1069d[i];
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: v */
    public int m524v(long j) {
        if (this.f1068c == 0) {
            if (j < this.f1067b) {
                return 0;
            }
            throw new IndexOutOfBoundsException(Long.toString(j));
        } else if (j < count()) {
            for (int i = 0; i <= this.f1068c; i++) {
                if (j < this.f1069d[i] + mo526t(this.f1004f[i])) {
                    return i;
                }
            }
            throw new IndexOutOfBoundsException(Long.toString(j));
        } else {
            throw new IndexOutOfBoundsException(Long.toString(j));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: w */
    public final void m523w(long j) {
        int i;
        long m525u = m525u();
        if (j <= m525u) {
            return;
        }
        m522x();
        int i2 = this.f1068c;
        while (true) {
            i2++;
            if (j <= m525u) {
                return;
            }
            Object[] objArr = this.f1004f;
            if (i2 >= objArr.length) {
                int length = objArr.length * 2;
                this.f1004f = Arrays.copyOf(objArr, length);
                this.f1069d = Arrays.copyOf(this.f1069d, length);
            }
            int m480r = m480r(i2);
            this.f1004f[i2] = mo528c(m480r);
            long[] jArr = this.f1069d;
            jArr[i2] = jArr[i2 - 1] + mo526t(this.f1004f[i]);
            m525u += m480r;
        }
    }

    /* renamed from: y */
    protected abstract Object[] mo521y(int i);

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: z */
    public void m520z() {
        if (this.f1067b == mo526t(this.f1003e)) {
            m522x();
            int i = this.f1068c;
            int i2 = i + 1;
            Object[] objArr = this.f1004f;
            if (i2 >= objArr.length || objArr[i + 1] == null) {
                m523w(m525u() + 1);
            }
            this.f1067b = 0;
            int i3 = this.f1068c + 1;
            this.f1068c = i3;
            this.f1003e = this.f1004f[i3];
        }
    }
}
