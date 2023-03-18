package p034j$.util.stream;

import java.util.ArrayDeque;
import java.util.Comparator;
import java.util.Deque;
import p034j$.util.AbstractC2538a;
import p034j$.util.InterfaceC2611s;
import p034j$.util.InterfaceC2918t;
/* renamed from: j$.util.stream.k2 */
/* loaded from: classes2.dex */
abstract class AbstractC2825k2 implements InterfaceC2611s {

    /* renamed from: a */
    InterfaceC2617A1 f977a;

    /* renamed from: b */
    int f978b;

    /* renamed from: c */
    InterfaceC2611s f979c;

    /* renamed from: d */
    InterfaceC2611s f980d;

    /* renamed from: e */
    Deque f981e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2825k2(InterfaceC2617A1 interfaceC2617A1) {
        this.f977a = interfaceC2617A1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final InterfaceC2617A1 m396a(Deque deque) {
        while (true) {
            InterfaceC2617A1 interfaceC2617A1 = (InterfaceC2617A1) deque.pollFirst();
            if (interfaceC2617A1 == null) {
                return null;
            }
            if (interfaceC2617A1.mo335p() != 0) {
                for (int mo335p = interfaceC2617A1.mo335p() - 1; mo335p >= 0; mo335p--) {
                    deque.addFirst(interfaceC2617A1.mo295b(mo335p));
                }
            } else if (interfaceC2617A1.count() > 0) {
                return interfaceC2617A1;
            }
        }
    }

    @Override // p034j$.util.InterfaceC2611s
    public final int characteristics() {
        return 64;
    }

    @Override // p034j$.util.InterfaceC2611s
    public final long estimateSize() {
        long j = 0;
        if (this.f977a == null) {
            return 0L;
        }
        InterfaceC2611s interfaceC2611s = this.f979c;
        if (interfaceC2611s != null) {
            return interfaceC2611s.estimateSize();
        }
        for (int i = this.f978b; i < this.f977a.mo335p(); i++) {
            j += this.f977a.mo295b(i).count();
        }
        return j;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: f */
    public final Deque m395f() {
        ArrayDeque arrayDeque = new ArrayDeque(8);
        int mo335p = this.f977a.mo335p();
        while (true) {
            mo335p--;
            if (mo335p < this.f978b) {
                return arrayDeque;
            }
            arrayDeque.addFirst(this.f977a.mo295b(mo335p));
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

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: h */
    public final boolean m394h() {
        if (this.f977a == null) {
            return false;
        }
        if (this.f980d == null) {
            InterfaceC2611s interfaceC2611s = this.f979c;
            if (interfaceC2611s == null) {
                Deque m395f = m395f();
                this.f981e = m395f;
                InterfaceC2617A1 m396a = m396a(m395f);
                if (m396a == null) {
                    this.f977a = null;
                    return false;
                }
                interfaceC2611s = m396a.spliterator();
            }
            this.f980d = interfaceC2611s;
            return true;
        }
        return true;
    }

    @Override // p034j$.util.InterfaceC2611s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2538a.m621f(this, i);
    }

    @Override // p034j$.util.InterfaceC2611s
    public /* bridge */ /* synthetic */ InterfaceC2611s.InterfaceC2612a trySplit() {
        return (InterfaceC2611s.InterfaceC2612a) trySplit();
    }

    @Override // p034j$.util.InterfaceC2611s
    public /* bridge */ /* synthetic */ InterfaceC2611s.InterfaceC2613b trySplit() {
        return (InterfaceC2611s.InterfaceC2613b) trySplit();
    }

    @Override // p034j$.util.InterfaceC2611s
    public /* bridge */ /* synthetic */ InterfaceC2611s.InterfaceC2614c trySplit() {
        return (InterfaceC2611s.InterfaceC2614c) trySplit();
    }

    @Override // p034j$.util.InterfaceC2611s
    public final InterfaceC2611s trySplit() {
        InterfaceC2617A1 interfaceC2617A1 = this.f977a;
        if (interfaceC2617A1 == null || this.f980d != null) {
            return null;
        }
        InterfaceC2611s interfaceC2611s = this.f979c;
        if (interfaceC2611s != null) {
            return interfaceC2611s.trySplit();
        }
        if (this.f978b < interfaceC2617A1.mo335p() - 1) {
            InterfaceC2617A1 interfaceC2617A12 = this.f977a;
            int i = this.f978b;
            this.f978b = i + 1;
            return interfaceC2617A12.mo295b(i).spliterator();
        }
        InterfaceC2617A1 mo295b = this.f977a.mo295b(this.f978b);
        this.f977a = mo295b;
        if (mo295b.mo335p() == 0) {
            InterfaceC2611s spliterator = this.f977a.spliterator();
            this.f979c = spliterator;
            return spliterator.trySplit();
        }
        this.f978b = 0;
        InterfaceC2617A1 interfaceC2617A13 = this.f977a;
        this.f978b = 1;
        return interfaceC2617A13.mo295b(0).spliterator();
    }

    @Override // p034j$.util.InterfaceC2611s
    public /* bridge */ /* synthetic */ InterfaceC2918t trySplit() {
        return (InterfaceC2918t) trySplit();
    }
}
