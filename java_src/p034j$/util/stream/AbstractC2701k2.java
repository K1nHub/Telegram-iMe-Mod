package p034j$.util.stream;

import java.util.ArrayDeque;
import java.util.Comparator;
import java.util.Deque;
import p034j$.util.AbstractC2414a;
import p034j$.util.InterfaceC2487s;
import p034j$.util.InterfaceC2794t;
/* renamed from: j$.util.stream.k2 */
/* loaded from: classes2.dex */
abstract class AbstractC2701k2 implements InterfaceC2487s {

    /* renamed from: a */
    InterfaceC2493A1 f972a;

    /* renamed from: b */
    int f973b;

    /* renamed from: c */
    InterfaceC2487s f974c;

    /* renamed from: d */
    InterfaceC2487s f975d;

    /* renamed from: e */
    Deque f976e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2701k2(InterfaceC2493A1 interfaceC2493A1) {
        this.f972a = interfaceC2493A1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final InterfaceC2493A1 m396a(Deque deque) {
        while (true) {
            InterfaceC2493A1 interfaceC2493A1 = (InterfaceC2493A1) deque.pollFirst();
            if (interfaceC2493A1 == null) {
                return null;
            }
            if (interfaceC2493A1.mo335p() != 0) {
                for (int mo335p = interfaceC2493A1.mo335p() - 1; mo335p >= 0; mo335p--) {
                    deque.addFirst(interfaceC2493A1.mo295b(mo335p));
                }
            } else if (interfaceC2493A1.count() > 0) {
                return interfaceC2493A1;
            }
        }
    }

    @Override // p034j$.util.InterfaceC2487s
    public final int characteristics() {
        return 64;
    }

    @Override // p034j$.util.InterfaceC2487s
    public final long estimateSize() {
        long j = 0;
        if (this.f972a == null) {
            return 0L;
        }
        InterfaceC2487s interfaceC2487s = this.f974c;
        if (interfaceC2487s != null) {
            return interfaceC2487s.estimateSize();
        }
        for (int i = this.f973b; i < this.f972a.mo335p(); i++) {
            j += this.f972a.mo295b(i).count();
        }
        return j;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: f */
    public final Deque m395f() {
        ArrayDeque arrayDeque = new ArrayDeque(8);
        int mo335p = this.f972a.mo335p();
        while (true) {
            mo335p--;
            if (mo335p < this.f973b) {
                return arrayDeque;
            }
            arrayDeque.addFirst(this.f972a.mo295b(mo335p));
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

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: h */
    public final boolean m394h() {
        if (this.f972a == null) {
            return false;
        }
        if (this.f975d == null) {
            InterfaceC2487s interfaceC2487s = this.f974c;
            if (interfaceC2487s == null) {
                Deque m395f = m395f();
                this.f976e = m395f;
                InterfaceC2493A1 m396a = m396a(m395f);
                if (m396a == null) {
                    this.f972a = null;
                    return false;
                }
                interfaceC2487s = m396a.spliterator();
            }
            this.f975d = interfaceC2487s;
            return true;
        }
        return true;
    }

    @Override // p034j$.util.InterfaceC2487s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2414a.m621f(this, i);
    }

    @Override // p034j$.util.InterfaceC2487s
    public /* bridge */ /* synthetic */ InterfaceC2487s.InterfaceC2488a trySplit() {
        return (InterfaceC2487s.InterfaceC2488a) trySplit();
    }

    @Override // p034j$.util.InterfaceC2487s
    public /* bridge */ /* synthetic */ InterfaceC2487s.InterfaceC2489b trySplit() {
        return (InterfaceC2487s.InterfaceC2489b) trySplit();
    }

    @Override // p034j$.util.InterfaceC2487s
    public /* bridge */ /* synthetic */ InterfaceC2487s.InterfaceC2490c trySplit() {
        return (InterfaceC2487s.InterfaceC2490c) trySplit();
    }

    @Override // p034j$.util.InterfaceC2487s
    public final InterfaceC2487s trySplit() {
        InterfaceC2493A1 interfaceC2493A1 = this.f972a;
        if (interfaceC2493A1 == null || this.f975d != null) {
            return null;
        }
        InterfaceC2487s interfaceC2487s = this.f974c;
        if (interfaceC2487s != null) {
            return interfaceC2487s.trySplit();
        }
        if (this.f973b < interfaceC2493A1.mo335p() - 1) {
            InterfaceC2493A1 interfaceC2493A12 = this.f972a;
            int i = this.f973b;
            this.f973b = i + 1;
            return interfaceC2493A12.mo295b(i).spliterator();
        }
        InterfaceC2493A1 mo295b = this.f972a.mo295b(this.f973b);
        this.f972a = mo295b;
        if (mo295b.mo335p() == 0) {
            InterfaceC2487s spliterator = this.f972a.spliterator();
            this.f974c = spliterator;
            return spliterator.trySplit();
        }
        this.f973b = 0;
        InterfaceC2493A1 interfaceC2493A13 = this.f972a;
        this.f973b = 1;
        return interfaceC2493A13.mo295b(0).spliterator();
    }

    @Override // p034j$.util.InterfaceC2487s
    public /* bridge */ /* synthetic */ InterfaceC2794t trySplit() {
        return (InterfaceC2794t) trySplit();
    }
}
