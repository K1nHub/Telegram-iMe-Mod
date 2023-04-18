package p034j$.util.stream;

import java.util.ArrayDeque;
import java.util.Comparator;
import java.util.Deque;
import p034j$.util.AbstractC2615a;
import p034j$.util.InterfaceC2688s;
import p034j$.util.InterfaceC2995t;
/* renamed from: j$.util.stream.k2 */
/* loaded from: classes2.dex */
abstract class AbstractC2902k2 implements InterfaceC2688s {

    /* renamed from: a */
    InterfaceC2694A1 f978a;

    /* renamed from: b */
    int f979b;

    /* renamed from: c */
    InterfaceC2688s f980c;

    /* renamed from: d */
    InterfaceC2688s f981d;

    /* renamed from: e */
    Deque f982e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2902k2(InterfaceC2694A1 interfaceC2694A1) {
        this.f978a = interfaceC2694A1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final InterfaceC2694A1 m376a(Deque deque) {
        while (true) {
            InterfaceC2694A1 interfaceC2694A1 = (InterfaceC2694A1) deque.pollFirst();
            if (interfaceC2694A1 == null) {
                return null;
            }
            if (interfaceC2694A1.mo315p() != 0) {
                for (int mo315p = interfaceC2694A1.mo315p() - 1; mo315p >= 0; mo315p--) {
                    deque.addFirst(interfaceC2694A1.mo275b(mo315p));
                }
            } else if (interfaceC2694A1.count() > 0) {
                return interfaceC2694A1;
            }
        }
    }

    @Override // p034j$.util.InterfaceC2688s
    public final int characteristics() {
        return 64;
    }

    @Override // p034j$.util.InterfaceC2688s
    public final long estimateSize() {
        long j = 0;
        if (this.f978a == null) {
            return 0L;
        }
        InterfaceC2688s interfaceC2688s = this.f980c;
        if (interfaceC2688s != null) {
            return interfaceC2688s.estimateSize();
        }
        for (int i = this.f979b; i < this.f978a.mo315p(); i++) {
            j += this.f978a.mo275b(i).count();
        }
        return j;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: f */
    public final Deque m375f() {
        ArrayDeque arrayDeque = new ArrayDeque(8);
        int mo315p = this.f978a.mo315p();
        while (true) {
            mo315p--;
            if (mo315p < this.f979b) {
                return arrayDeque;
            }
            arrayDeque.addFirst(this.f978a.mo275b(mo315p));
        }
    }

    @Override // p034j$.util.InterfaceC2688s
    public Comparator getComparator() {
        throw new IllegalStateException();
    }

    @Override // p034j$.util.InterfaceC2688s
    public /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2615a.m602e(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: h */
    public final boolean m374h() {
        if (this.f978a == null) {
            return false;
        }
        if (this.f981d == null) {
            InterfaceC2688s interfaceC2688s = this.f980c;
            if (interfaceC2688s == null) {
                Deque m375f = m375f();
                this.f982e = m375f;
                InterfaceC2694A1 m376a = m376a(m375f);
                if (m376a == null) {
                    this.f978a = null;
                    return false;
                }
                interfaceC2688s = m376a.spliterator();
            }
            this.f981d = interfaceC2688s;
            return true;
        }
        return true;
    }

    @Override // p034j$.util.InterfaceC2688s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2615a.m601f(this, i);
    }

    @Override // p034j$.util.InterfaceC2688s
    public /* bridge */ /* synthetic */ InterfaceC2688s.InterfaceC2689a trySplit() {
        return (InterfaceC2688s.InterfaceC2689a) trySplit();
    }

    @Override // p034j$.util.InterfaceC2688s
    public /* bridge */ /* synthetic */ InterfaceC2688s.InterfaceC2690b trySplit() {
        return (InterfaceC2688s.InterfaceC2690b) trySplit();
    }

    @Override // p034j$.util.InterfaceC2688s
    public /* bridge */ /* synthetic */ InterfaceC2688s.InterfaceC2691c trySplit() {
        return (InterfaceC2688s.InterfaceC2691c) trySplit();
    }

    @Override // p034j$.util.InterfaceC2688s
    public final InterfaceC2688s trySplit() {
        InterfaceC2694A1 interfaceC2694A1 = this.f978a;
        if (interfaceC2694A1 == null || this.f981d != null) {
            return null;
        }
        InterfaceC2688s interfaceC2688s = this.f980c;
        if (interfaceC2688s != null) {
            return interfaceC2688s.trySplit();
        }
        if (this.f979b < interfaceC2694A1.mo315p() - 1) {
            InterfaceC2694A1 interfaceC2694A12 = this.f978a;
            int i = this.f979b;
            this.f979b = i + 1;
            return interfaceC2694A12.mo275b(i).spliterator();
        }
        InterfaceC2694A1 mo275b = this.f978a.mo275b(this.f979b);
        this.f978a = mo275b;
        if (mo275b.mo315p() == 0) {
            InterfaceC2688s spliterator = this.f978a.spliterator();
            this.f980c = spliterator;
            return spliterator.trySplit();
        }
        this.f979b = 0;
        InterfaceC2694A1 interfaceC2694A13 = this.f978a;
        this.f979b = 1;
        return interfaceC2694A13.mo275b(0).spliterator();
    }

    @Override // p034j$.util.InterfaceC2688s
    public /* bridge */ /* synthetic */ InterfaceC2995t trySplit() {
        return (InterfaceC2995t) trySplit();
    }
}
