package p034j$.util.stream;

import java.util.ArrayDeque;
import java.util.Comparator;
import java.util.Deque;
import p034j$.util.AbstractC2552a;
import p034j$.util.InterfaceC2625s;
import p034j$.util.InterfaceC2932t;
/* renamed from: j$.util.stream.k2 */
/* loaded from: classes2.dex */
abstract class AbstractC2839k2 implements InterfaceC2625s {

    /* renamed from: a */
    InterfaceC2631A1 f978a;

    /* renamed from: b */
    int f979b;

    /* renamed from: c */
    InterfaceC2625s f980c;

    /* renamed from: d */
    InterfaceC2625s f981d;

    /* renamed from: e */
    Deque f982e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2839k2(InterfaceC2631A1 interfaceC2631A1) {
        this.f978a = interfaceC2631A1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final InterfaceC2631A1 m395a(Deque deque) {
        while (true) {
            InterfaceC2631A1 interfaceC2631A1 = (InterfaceC2631A1) deque.pollFirst();
            if (interfaceC2631A1 == null) {
                return null;
            }
            if (interfaceC2631A1.mo334p() != 0) {
                for (int mo334p = interfaceC2631A1.mo334p() - 1; mo334p >= 0; mo334p--) {
                    deque.addFirst(interfaceC2631A1.mo294b(mo334p));
                }
            } else if (interfaceC2631A1.count() > 0) {
                return interfaceC2631A1;
            }
        }
    }

    @Override // p034j$.util.InterfaceC2625s
    public final int characteristics() {
        return 64;
    }

    @Override // p034j$.util.InterfaceC2625s
    public final long estimateSize() {
        long j = 0;
        if (this.f978a == null) {
            return 0L;
        }
        InterfaceC2625s interfaceC2625s = this.f980c;
        if (interfaceC2625s != null) {
            return interfaceC2625s.estimateSize();
        }
        for (int i = this.f979b; i < this.f978a.mo334p(); i++) {
            j += this.f978a.mo294b(i).count();
        }
        return j;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: f */
    public final Deque m394f() {
        ArrayDeque arrayDeque = new ArrayDeque(8);
        int mo334p = this.f978a.mo334p();
        while (true) {
            mo334p--;
            if (mo334p < this.f979b) {
                return arrayDeque;
            }
            arrayDeque.addFirst(this.f978a.mo294b(mo334p));
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

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: h */
    public final boolean m393h() {
        if (this.f978a == null) {
            return false;
        }
        if (this.f981d == null) {
            InterfaceC2625s interfaceC2625s = this.f980c;
            if (interfaceC2625s == null) {
                Deque m394f = m394f();
                this.f982e = m394f;
                InterfaceC2631A1 m395a = m395a(m394f);
                if (m395a == null) {
                    this.f978a = null;
                    return false;
                }
                interfaceC2625s = m395a.spliterator();
            }
            this.f981d = interfaceC2625s;
            return true;
        }
        return true;
    }

    @Override // p034j$.util.InterfaceC2625s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2552a.m620f(this, i);
    }

    @Override // p034j$.util.InterfaceC2625s
    public /* bridge */ /* synthetic */ InterfaceC2625s.InterfaceC2626a trySplit() {
        return (InterfaceC2625s.InterfaceC2626a) trySplit();
    }

    @Override // p034j$.util.InterfaceC2625s
    public /* bridge */ /* synthetic */ InterfaceC2625s.InterfaceC2627b trySplit() {
        return (InterfaceC2625s.InterfaceC2627b) trySplit();
    }

    @Override // p034j$.util.InterfaceC2625s
    public /* bridge */ /* synthetic */ InterfaceC2625s.InterfaceC2628c trySplit() {
        return (InterfaceC2625s.InterfaceC2628c) trySplit();
    }

    @Override // p034j$.util.InterfaceC2625s
    public final InterfaceC2625s trySplit() {
        InterfaceC2631A1 interfaceC2631A1 = this.f978a;
        if (interfaceC2631A1 == null || this.f981d != null) {
            return null;
        }
        InterfaceC2625s interfaceC2625s = this.f980c;
        if (interfaceC2625s != null) {
            return interfaceC2625s.trySplit();
        }
        if (this.f979b < interfaceC2631A1.mo334p() - 1) {
            InterfaceC2631A1 interfaceC2631A12 = this.f978a;
            int i = this.f979b;
            this.f979b = i + 1;
            return interfaceC2631A12.mo294b(i).spliterator();
        }
        InterfaceC2631A1 mo294b = this.f978a.mo294b(this.f979b);
        this.f978a = mo294b;
        if (mo294b.mo334p() == 0) {
            InterfaceC2625s spliterator = this.f978a.spliterator();
            this.f980c = spliterator;
            return spliterator.trySplit();
        }
        this.f979b = 0;
        InterfaceC2631A1 interfaceC2631A13 = this.f978a;
        this.f979b = 1;
        return interfaceC2631A13.mo294b(0).spliterator();
    }

    @Override // p034j$.util.InterfaceC2625s
    public /* bridge */ /* synthetic */ InterfaceC2932t trySplit() {
        return (InterfaceC2932t) trySplit();
    }
}
