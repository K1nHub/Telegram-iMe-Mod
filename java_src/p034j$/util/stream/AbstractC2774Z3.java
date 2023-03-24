package p034j$.util.stream;

import java.util.Arrays;
import java.util.Comparator;
import java.util.Objects;
import java.util.Spliterator;
import p034j$.lang.InterfaceC2499e;
import p034j$.util.AbstractC2552a;
import p034j$.util.InterfaceC2625s;
import p034j$.util.InterfaceC2932t;
import p034j$.wrappers.C2993h;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.Z3 */
/* loaded from: classes2.dex */
public abstract class AbstractC2774Z3 extends AbstractC2800e implements Iterable, InterfaceC2499e {

    /* renamed from: e */
    Object f865e;

    /* renamed from: f */
    Object[] f866f;

    /* renamed from: j$.util.stream.Z3$a */
    /* loaded from: classes2.dex */
    abstract class AbstractC2775a implements InterfaceC2932t {

        /* renamed from: a */
        int f867a;

        /* renamed from: b */
        final int f868b;

        /* renamed from: c */
        int f869c;

        /* renamed from: d */
        final int f870d;

        /* renamed from: e */
        Object f871e;

        /* JADX INFO: Access modifiers changed from: package-private */
        public AbstractC2775a(int i, int i2, int i3, int i4) {
            this.f867a = i;
            this.f868b = i2;
            this.f869c = i3;
            this.f870d = i4;
            Object[] objArr = AbstractC2774Z3.this.f866f;
            this.f871e = objArr == null ? AbstractC2774Z3.this.f865e : objArr[i];
        }

        /* renamed from: a */
        abstract void mo469a(Object obj, int i, Object obj2);

        @Override // p034j$.util.InterfaceC2625s
        public int characteristics() {
            return 16464;
        }

        @Override // p034j$.util.InterfaceC2625s
        public long estimateSize() {
            int i = this.f867a;
            int i2 = this.f868b;
            if (i == i2) {
                return this.f870d - this.f869c;
            }
            long[] jArr = AbstractC2774Z3.this.f931d;
            return ((jArr[i2] + this.f870d) - jArr[i]) - this.f869c;
        }

        /* renamed from: f */
        abstract InterfaceC2932t mo465f(Object obj, int i, int i2);

        @Override // p034j$.util.InterfaceC2932t
        /* renamed from: forEachRemaining */
        public void m466e(Object obj) {
            int i;
            Objects.requireNonNull(obj);
            int i2 = this.f867a;
            int i3 = this.f868b;
            if (i2 < i3 || (i2 == i3 && this.f869c < this.f870d)) {
                int i4 = this.f869c;
                while (true) {
                    i = this.f868b;
                    if (i2 >= i) {
                        break;
                    }
                    AbstractC2774Z3 abstractC2774Z3 = AbstractC2774Z3.this;
                    Object obj2 = abstractC2774Z3.f866f[i2];
                    abstractC2774Z3.mo476t(obj2, i4, abstractC2774Z3.mo475u(obj2), obj);
                    i4 = 0;
                    i2++;
                }
                AbstractC2774Z3.this.mo476t(this.f867a == i ? this.f871e : AbstractC2774Z3.this.f866f[i], i4, this.f870d, obj);
                this.f867a = this.f868b;
                this.f869c = this.f870d;
            }
        }

        @Override // p034j$.util.InterfaceC2625s
        public Comparator getComparator() {
            throw new IllegalStateException();
        }

        @Override // p034j$.util.InterfaceC2625s
        public /* synthetic */ long getExactSizeIfKnown() {
            return AbstractC2552a.m621e(this);
        }

        /* renamed from: h */
        abstract InterfaceC2932t mo463h(int i, int i2, int i3, int i4);

        @Override // p034j$.util.InterfaceC2625s
        public /* synthetic */ boolean hasCharacteristics(int i) {
            return AbstractC2552a.m620f(this, i);
        }

        @Override // p034j$.util.InterfaceC2932t
        /* renamed from: tryAdvance */
        public boolean m461k(Object obj) {
            Objects.requireNonNull(obj);
            int i = this.f867a;
            int i2 = this.f868b;
            if (i < i2 || (i == i2 && this.f869c < this.f870d)) {
                Object obj2 = this.f871e;
                int i3 = this.f869c;
                this.f869c = i3 + 1;
                mo469a(obj2, i3, obj);
                if (this.f869c == AbstractC2774Z3.this.mo475u(this.f871e)) {
                    this.f869c = 0;
                    int i4 = this.f867a + 1;
                    this.f867a = i4;
                    Object[] objArr = AbstractC2774Z3.this.f866f;
                    if (objArr != null && i4 <= this.f868b) {
                        this.f871e = objArr[i4];
                    }
                }
                return true;
            }
            return false;
        }

        @Override // p034j$.util.InterfaceC2932t, p034j$.util.InterfaceC2625s
        public /* bridge */ /* synthetic */ InterfaceC2625s.InterfaceC2626a trySplit() {
            return (InterfaceC2625s.InterfaceC2626a) trySplit();
        }

        @Override // p034j$.util.InterfaceC2932t, p034j$.util.InterfaceC2625s
        public /* bridge */ /* synthetic */ InterfaceC2625s.InterfaceC2627b trySplit() {
            return (InterfaceC2625s.InterfaceC2627b) trySplit();
        }

        @Override // p034j$.util.InterfaceC2932t, p034j$.util.InterfaceC2625s
        public /* bridge */ /* synthetic */ InterfaceC2625s.InterfaceC2628c trySplit() {
            return (InterfaceC2625s.InterfaceC2628c) trySplit();
        }

        @Override // p034j$.util.InterfaceC2625s
        public InterfaceC2932t trySplit() {
            int i = this.f867a;
            int i2 = this.f868b;
            if (i < i2) {
                int i3 = this.f869c;
                AbstractC2774Z3 abstractC2774Z3 = AbstractC2774Z3.this;
                InterfaceC2932t mo463h = mo463h(i, i2 - 1, i3, abstractC2774Z3.mo475u(abstractC2774Z3.f866f[i2 - 1]));
                int i4 = this.f868b;
                this.f867a = i4;
                this.f869c = 0;
                this.f871e = AbstractC2774Z3.this.f866f[i4];
                return mo463h;
            } else if (i == i2) {
                int i5 = this.f870d;
                int i6 = this.f869c;
                int i7 = (i5 - i6) / 2;
                if (i7 == 0) {
                    return null;
                }
                InterfaceC2932t mo465f = mo465f(this.f871e, i6, i7);
                this.f869c += i7;
                return mo465f;
            } else {
                return null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2774Z3() {
        this.f865e = mo477c(16);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2774Z3(int i) {
        super(i);
        this.f865e = mo477c(1 << this.f928a);
    }

    /* renamed from: y */
    private void m471y() {
        if (this.f866f == null) {
            Object[] mo470z = mo470z(8);
            this.f866f = mo470z;
            this.f931d = new long[8];
            mo470z[0] = this.f865e;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: A */
    public void m478A() {
        if (this.f929b == mo475u(this.f865e)) {
            m471y();
            int i = this.f930c;
            int i2 = i + 1;
            Object[] objArr = this.f866f;
            if (i2 >= objArr.length || objArr[i + 1] == null) {
                m472x(m474v() + 1);
            }
            this.f929b = 0;
            int i3 = this.f930c + 1;
            this.f930c = i3;
            this.f865e = this.f866f[i3];
        }
    }

    /* renamed from: c */
    public abstract Object mo477c(int i);

    @Override // p034j$.util.stream.AbstractC2800e
    public void clear() {
        Object[] objArr = this.f866f;
        if (objArr != null) {
            this.f865e = objArr[0];
            this.f866f = null;
            this.f931d = null;
        }
        this.f929b = 0;
        this.f930c = 0;
    }

    /* renamed from: d */
    public void mo292d(Object obj, int i) {
        long j = i;
        long count = count() + j;
        if (count > mo475u(obj) || count < j) {
            throw new IndexOutOfBoundsException("does not fit");
        }
        if (this.f930c == 0) {
            System.arraycopy(this.f865e, 0, obj, i, this.f929b);
            return;
        }
        for (int i2 = 0; i2 < this.f930c; i2++) {
            Object[] objArr = this.f866f;
            System.arraycopy(objArr[i2], 0, obj, i, mo475u(objArr[i2]));
            i += mo475u(this.f866f[i2]);
        }
        int i3 = this.f929b;
        if (i3 > 0) {
            System.arraycopy(this.f865e, 0, obj, i, i3);
        }
    }

    /* renamed from: e */
    public Object mo291e() {
        long count = count();
        if (count < 2147483639) {
            Object mo477c = mo477c((int) count);
            mo292d(mo477c, 0);
            return mo477c;
        }
        throw new IllegalArgumentException("Stream size exceeds max array size");
    }

    /* renamed from: g */
    public void mo290g(Object obj) {
        for (int i = 0; i < this.f930c; i++) {
            Object[] objArr = this.f866f;
            mo476t(objArr[i], 0, mo475u(objArr[i]), obj);
        }
        mo476t(this.f865e, 0, this.f929b, obj);
    }

    public abstract InterfaceC2625s spliterator();

    @Override // java.lang.Iterable
    public /* synthetic */ Spliterator spliterator() {
        return C2993h.m149a(spliterator());
    }

    /* renamed from: t */
    protected abstract void mo476t(Object obj, int i, int i2, Object obj2);

    /* renamed from: u */
    protected abstract int mo475u(Object obj);

    /* renamed from: v */
    protected long m474v() {
        int i = this.f930c;
        if (i == 0) {
            return mo475u(this.f865e);
        }
        return mo475u(this.f866f[i]) + this.f931d[i];
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: w */
    public int m473w(long j) {
        if (this.f930c == 0) {
            if (j < this.f929b) {
                return 0;
            }
            throw new IndexOutOfBoundsException(Long.toString(j));
        } else if (j < count()) {
            for (int i = 0; i <= this.f930c; i++) {
                if (j < this.f931d[i] + mo475u(this.f866f[i])) {
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
    public final void m472x(long j) {
        int i;
        long m474v = m474v();
        if (j <= m474v) {
            return;
        }
        m471y();
        int i2 = this.f930c;
        while (true) {
            i2++;
            if (j <= m474v) {
                return;
            }
            Object[] objArr = this.f866f;
            if (i2 >= objArr.length) {
                int length = objArr.length * 2;
                this.f866f = Arrays.copyOf(objArr, length);
                this.f931d = Arrays.copyOf(this.f931d, length);
            }
            int m430s = m430s(i2);
            this.f866f[i2] = mo477c(m430s);
            long[] jArr = this.f931d;
            jArr[i2] = jArr[i2 - 1] + mo475u(this.f866f[i]);
            m474v += m430s;
        }
    }

    /* renamed from: z */
    protected abstract Object[] mo470z(int i);
}
