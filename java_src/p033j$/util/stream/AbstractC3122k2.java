package p033j$.util.stream;

import java.util.ArrayDeque;
import java.util.Comparator;
import java.util.Deque;
import p033j$.util.AbstractC2835a;
import p033j$.util.InterfaceC2908s;
import p033j$.util.InterfaceC3215t;
/* renamed from: j$.util.stream.k2 */
/* loaded from: classes2.dex */
abstract class AbstractC3122k2 implements InterfaceC2908s {

    /* renamed from: a */
    InterfaceC2914A1 f1067a;

    /* renamed from: b */
    int f1068b;

    /* renamed from: c */
    InterfaceC2908s f1069c;

    /* renamed from: d */
    InterfaceC2908s f1070d;

    /* renamed from: e */
    Deque f1071e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3122k2(InterfaceC2914A1 interfaceC2914A1) {
        this.f1067a = interfaceC2914A1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final InterfaceC2914A1 m399a(Deque deque) {
        while (true) {
            InterfaceC2914A1 interfaceC2914A1 = (InterfaceC2914A1) deque.pollFirst();
            if (interfaceC2914A1 == null) {
                return null;
            }
            if (interfaceC2914A1.mo338p() != 0) {
                for (int mo338p = interfaceC2914A1.mo338p() - 1; mo338p >= 0; mo338p--) {
                    deque.addFirst(interfaceC2914A1.mo298b(mo338p));
                }
            } else if (interfaceC2914A1.count() > 0) {
                return interfaceC2914A1;
            }
        }
    }

    @Override // p033j$.util.InterfaceC2908s
    public final int characteristics() {
        return 64;
    }

    @Override // p033j$.util.InterfaceC2908s
    public final long estimateSize() {
        long j = 0;
        if (this.f1067a == null) {
            return 0L;
        }
        InterfaceC2908s interfaceC2908s = this.f1069c;
        if (interfaceC2908s != null) {
            return interfaceC2908s.estimateSize();
        }
        for (int i = this.f1068b; i < this.f1067a.mo338p(); i++) {
            j += this.f1067a.mo298b(i).count();
        }
        return j;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: f */
    public final Deque m398f() {
        ArrayDeque arrayDeque = new ArrayDeque(8);
        int mo338p = this.f1067a.mo338p();
        while (true) {
            mo338p--;
            if (mo338p < this.f1068b) {
                return arrayDeque;
            }
            arrayDeque.addFirst(this.f1067a.mo298b(mo338p));
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

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: h */
    public final boolean m397h() {
        if (this.f1067a == null) {
            return false;
        }
        if (this.f1070d == null) {
            InterfaceC2908s interfaceC2908s = this.f1069c;
            if (interfaceC2908s == null) {
                Deque m398f = m398f();
                this.f1071e = m398f;
                InterfaceC2914A1 m399a = m399a(m398f);
                if (m399a == null) {
                    this.f1067a = null;
                    return false;
                }
                interfaceC2908s = m399a.spliterator();
            }
            this.f1070d = interfaceC2908s;
            return true;
        }
        return true;
    }

    @Override // p033j$.util.InterfaceC2908s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2835a.m623f(this, i);
    }

    @Override // p033j$.util.InterfaceC2908s
    public /* bridge */ /* synthetic */ InterfaceC2908s.InterfaceC2909a trySplit() {
        return (InterfaceC2908s.InterfaceC2909a) trySplit();
    }

    @Override // p033j$.util.InterfaceC2908s
    public /* bridge */ /* synthetic */ InterfaceC2908s.InterfaceC2910b trySplit() {
        return (InterfaceC2908s.InterfaceC2910b) trySplit();
    }

    @Override // p033j$.util.InterfaceC2908s
    public /* bridge */ /* synthetic */ InterfaceC2908s.InterfaceC2911c trySplit() {
        return (InterfaceC2908s.InterfaceC2911c) trySplit();
    }

    @Override // p033j$.util.InterfaceC2908s
    public final InterfaceC2908s trySplit() {
        InterfaceC2914A1 interfaceC2914A1 = this.f1067a;
        if (interfaceC2914A1 == null || this.f1070d != null) {
            return null;
        }
        InterfaceC2908s interfaceC2908s = this.f1069c;
        if (interfaceC2908s != null) {
            return interfaceC2908s.trySplit();
        }
        if (this.f1068b < interfaceC2914A1.mo338p() - 1) {
            InterfaceC2914A1 interfaceC2914A12 = this.f1067a;
            int i = this.f1068b;
            this.f1068b = i + 1;
            return interfaceC2914A12.mo298b(i).spliterator();
        }
        InterfaceC2914A1 mo298b = this.f1067a.mo298b(this.f1068b);
        this.f1067a = mo298b;
        if (mo298b.mo338p() == 0) {
            InterfaceC2908s spliterator = this.f1067a.spliterator();
            this.f1069c = spliterator;
            return spliterator.trySplit();
        }
        this.f1068b = 0;
        InterfaceC2914A1 interfaceC2914A13 = this.f1067a;
        this.f1068b = 1;
        return interfaceC2914A13.mo298b(0).spliterator();
    }

    @Override // p033j$.util.InterfaceC2908s
    public /* bridge */ /* synthetic */ InterfaceC3215t trySplit() {
        return (InterfaceC3215t) trySplit();
    }
}
