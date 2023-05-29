package p034j$.util.stream;

import java.util.ArrayDeque;
import java.util.Comparator;
import java.util.Deque;
import p034j$.util.AbstractC2654a;
import p034j$.util.InterfaceC2727s;
import p034j$.util.InterfaceC3034t;
/* renamed from: j$.util.stream.k2 */
/* loaded from: classes2.dex */
abstract class AbstractC2941k2 implements InterfaceC2727s {

    /* renamed from: a */
    InterfaceC2733A1 f981a;

    /* renamed from: b */
    int f982b;

    /* renamed from: c */
    InterfaceC2727s f983c;

    /* renamed from: d */
    InterfaceC2727s f984d;

    /* renamed from: e */
    Deque f985e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2941k2(InterfaceC2733A1 interfaceC2733A1) {
        this.f981a = interfaceC2733A1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final InterfaceC2733A1 m381a(Deque deque) {
        while (true) {
            InterfaceC2733A1 interfaceC2733A1 = (InterfaceC2733A1) deque.pollFirst();
            if (interfaceC2733A1 == null) {
                return null;
            }
            if (interfaceC2733A1.mo320p() != 0) {
                for (int mo320p = interfaceC2733A1.mo320p() - 1; mo320p >= 0; mo320p--) {
                    deque.addFirst(interfaceC2733A1.mo280b(mo320p));
                }
            } else if (interfaceC2733A1.count() > 0) {
                return interfaceC2733A1;
            }
        }
    }

    @Override // p034j$.util.InterfaceC2727s
    public final int characteristics() {
        return 64;
    }

    @Override // p034j$.util.InterfaceC2727s
    public final long estimateSize() {
        long j = 0;
        if (this.f981a == null) {
            return 0L;
        }
        InterfaceC2727s interfaceC2727s = this.f983c;
        if (interfaceC2727s != null) {
            return interfaceC2727s.estimateSize();
        }
        for (int i = this.f982b; i < this.f981a.mo320p(); i++) {
            j += this.f981a.mo280b(i).count();
        }
        return j;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: f */
    public final Deque m380f() {
        ArrayDeque arrayDeque = new ArrayDeque(8);
        int mo320p = this.f981a.mo320p();
        while (true) {
            mo320p--;
            if (mo320p < this.f982b) {
                return arrayDeque;
            }
            arrayDeque.addFirst(this.f981a.mo280b(mo320p));
        }
    }

    @Override // p034j$.util.InterfaceC2727s
    public Comparator getComparator() {
        throw new IllegalStateException();
    }

    @Override // p034j$.util.InterfaceC2727s
    public /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2654a.m606e(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: h */
    public final boolean m379h() {
        if (this.f981a == null) {
            return false;
        }
        if (this.f984d == null) {
            InterfaceC2727s interfaceC2727s = this.f983c;
            if (interfaceC2727s == null) {
                Deque m380f = m380f();
                this.f985e = m380f;
                InterfaceC2733A1 m381a = m381a(m380f);
                if (m381a == null) {
                    this.f981a = null;
                    return false;
                }
                interfaceC2727s = m381a.spliterator();
            }
            this.f984d = interfaceC2727s;
            return true;
        }
        return true;
    }

    @Override // p034j$.util.InterfaceC2727s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2654a.m605f(this, i);
    }

    @Override // p034j$.util.InterfaceC2727s
    public /* bridge */ /* synthetic */ InterfaceC2727s.InterfaceC2728a trySplit() {
        return (InterfaceC2727s.InterfaceC2728a) trySplit();
    }

    @Override // p034j$.util.InterfaceC2727s
    public /* bridge */ /* synthetic */ InterfaceC2727s.InterfaceC2729b trySplit() {
        return (InterfaceC2727s.InterfaceC2729b) trySplit();
    }

    @Override // p034j$.util.InterfaceC2727s
    public /* bridge */ /* synthetic */ InterfaceC2727s.InterfaceC2730c trySplit() {
        return (InterfaceC2727s.InterfaceC2730c) trySplit();
    }

    @Override // p034j$.util.InterfaceC2727s
    public final InterfaceC2727s trySplit() {
        InterfaceC2733A1 interfaceC2733A1 = this.f981a;
        if (interfaceC2733A1 == null || this.f984d != null) {
            return null;
        }
        InterfaceC2727s interfaceC2727s = this.f983c;
        if (interfaceC2727s != null) {
            return interfaceC2727s.trySplit();
        }
        if (this.f982b < interfaceC2733A1.mo320p() - 1) {
            InterfaceC2733A1 interfaceC2733A12 = this.f981a;
            int i = this.f982b;
            this.f982b = i + 1;
            return interfaceC2733A12.mo280b(i).spliterator();
        }
        InterfaceC2733A1 mo280b = this.f981a.mo280b(this.f982b);
        this.f981a = mo280b;
        if (mo280b.mo320p() == 0) {
            InterfaceC2727s spliterator = this.f981a.spliterator();
            this.f983c = spliterator;
            return spliterator.trySplit();
        }
        this.f982b = 0;
        InterfaceC2733A1 interfaceC2733A13 = this.f981a;
        this.f982b = 1;
        return interfaceC2733A13.mo280b(0).spliterator();
    }

    @Override // p034j$.util.InterfaceC2727s
    public /* bridge */ /* synthetic */ InterfaceC3034t trySplit() {
        return (InterfaceC3034t) trySplit();
    }
}
