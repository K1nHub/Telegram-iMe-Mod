package p035j$.util.stream;

import java.util.ArrayDeque;
import java.util.Comparator;
import java.util.Deque;
import p035j$.util.AbstractC2628a;
import p035j$.util.InterfaceC2701s;
import p035j$.util.InterfaceC3008t;
/* renamed from: j$.util.stream.k2 */
/* loaded from: classes2.dex */
abstract class AbstractC2915k2 implements InterfaceC2701s {

    /* renamed from: a */
    InterfaceC2707A1 f983a;

    /* renamed from: b */
    int f984b;

    /* renamed from: c */
    InterfaceC2701s f985c;

    /* renamed from: d */
    InterfaceC2701s f986d;

    /* renamed from: e */
    Deque f987e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2915k2(InterfaceC2707A1 interfaceC2707A1) {
        this.f983a = interfaceC2707A1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final InterfaceC2707A1 m390a(Deque deque) {
        while (true) {
            InterfaceC2707A1 interfaceC2707A1 = (InterfaceC2707A1) deque.pollFirst();
            if (interfaceC2707A1 == null) {
                return null;
            }
            if (interfaceC2707A1.mo329p() != 0) {
                for (int mo329p = interfaceC2707A1.mo329p() - 1; mo329p >= 0; mo329p--) {
                    deque.addFirst(interfaceC2707A1.mo289b(mo329p));
                }
            } else if (interfaceC2707A1.count() > 0) {
                return interfaceC2707A1;
            }
        }
    }

    @Override // p035j$.util.InterfaceC2701s
    public final int characteristics() {
        return 64;
    }

    @Override // p035j$.util.InterfaceC2701s
    public final long estimateSize() {
        long j = 0;
        if (this.f983a == null) {
            return 0L;
        }
        InterfaceC2701s interfaceC2701s = this.f985c;
        if (interfaceC2701s != null) {
            return interfaceC2701s.estimateSize();
        }
        for (int i = this.f984b; i < this.f983a.mo329p(); i++) {
            j += this.f983a.mo289b(i).count();
        }
        return j;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: f */
    public final Deque m389f() {
        ArrayDeque arrayDeque = new ArrayDeque(8);
        int mo329p = this.f983a.mo329p();
        while (true) {
            mo329p--;
            if (mo329p < this.f984b) {
                return arrayDeque;
            }
            arrayDeque.addFirst(this.f983a.mo289b(mo329p));
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

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: h */
    public final boolean m388h() {
        if (this.f983a == null) {
            return false;
        }
        if (this.f986d == null) {
            InterfaceC2701s interfaceC2701s = this.f985c;
            if (interfaceC2701s == null) {
                Deque m389f = m389f();
                this.f987e = m389f;
                InterfaceC2707A1 m390a = m390a(m389f);
                if (m390a == null) {
                    this.f983a = null;
                    return false;
                }
                interfaceC2701s = m390a.spliterator();
            }
            this.f986d = interfaceC2701s;
            return true;
        }
        return true;
    }

    @Override // p035j$.util.InterfaceC2701s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2628a.m615f(this, i);
    }

    @Override // p035j$.util.InterfaceC2701s
    public /* bridge */ /* synthetic */ InterfaceC2701s.InterfaceC2702a trySplit() {
        return (InterfaceC2701s.InterfaceC2702a) trySplit();
    }

    @Override // p035j$.util.InterfaceC2701s
    public /* bridge */ /* synthetic */ InterfaceC2701s.InterfaceC2703b trySplit() {
        return (InterfaceC2701s.InterfaceC2703b) trySplit();
    }

    @Override // p035j$.util.InterfaceC2701s
    public /* bridge */ /* synthetic */ InterfaceC2701s.InterfaceC2704c trySplit() {
        return (InterfaceC2701s.InterfaceC2704c) trySplit();
    }

    @Override // p035j$.util.InterfaceC2701s
    public final InterfaceC2701s trySplit() {
        InterfaceC2707A1 interfaceC2707A1 = this.f983a;
        if (interfaceC2707A1 == null || this.f986d != null) {
            return null;
        }
        InterfaceC2701s interfaceC2701s = this.f985c;
        if (interfaceC2701s != null) {
            return interfaceC2701s.trySplit();
        }
        if (this.f984b < interfaceC2707A1.mo329p() - 1) {
            InterfaceC2707A1 interfaceC2707A12 = this.f983a;
            int i = this.f984b;
            this.f984b = i + 1;
            return interfaceC2707A12.mo289b(i).spliterator();
        }
        InterfaceC2707A1 mo289b = this.f983a.mo289b(this.f984b);
        this.f983a = mo289b;
        if (mo289b.mo329p() == 0) {
            InterfaceC2701s spliterator = this.f983a.spliterator();
            this.f985c = spliterator;
            return spliterator.trySplit();
        }
        this.f984b = 0;
        InterfaceC2707A1 interfaceC2707A13 = this.f983a;
        this.f984b = 1;
        return interfaceC2707A13.mo289b(0).spliterator();
    }

    @Override // p035j$.util.InterfaceC2701s
    public /* bridge */ /* synthetic */ InterfaceC3008t trySplit() {
        return (InterfaceC3008t) trySplit();
    }
}
