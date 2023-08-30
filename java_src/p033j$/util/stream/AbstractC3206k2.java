package p033j$.util.stream;

import java.util.ArrayDeque;
import java.util.Comparator;
import java.util.Deque;
import p033j$.util.AbstractC2919a;
import p033j$.util.InterfaceC2992s;
import p033j$.util.InterfaceC3299t;
/* renamed from: j$.util.stream.k2 */
/* loaded from: classes2.dex */
abstract class AbstractC3206k2 implements InterfaceC2992s {

    /* renamed from: a */
    InterfaceC2998A1 f1076a;

    /* renamed from: b */
    int f1077b;

    /* renamed from: c */
    InterfaceC2992s f1078c;

    /* renamed from: d */
    InterfaceC2992s f1079d;

    /* renamed from: e */
    Deque f1080e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3206k2(InterfaceC2998A1 interfaceC2998A1) {
        this.f1076a = interfaceC2998A1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final InterfaceC2998A1 m399a(Deque deque) {
        while (true) {
            InterfaceC2998A1 interfaceC2998A1 = (InterfaceC2998A1) deque.pollFirst();
            if (interfaceC2998A1 == null) {
                return null;
            }
            if (interfaceC2998A1.mo338p() != 0) {
                for (int mo338p = interfaceC2998A1.mo338p() - 1; mo338p >= 0; mo338p--) {
                    deque.addFirst(interfaceC2998A1.mo298b(mo338p));
                }
            } else if (interfaceC2998A1.count() > 0) {
                return interfaceC2998A1;
            }
        }
    }

    @Override // p033j$.util.InterfaceC2992s
    public final int characteristics() {
        return 64;
    }

    @Override // p033j$.util.InterfaceC2992s
    public final long estimateSize() {
        long j = 0;
        if (this.f1076a == null) {
            return 0L;
        }
        InterfaceC2992s interfaceC2992s = this.f1078c;
        if (interfaceC2992s != null) {
            return interfaceC2992s.estimateSize();
        }
        for (int i = this.f1077b; i < this.f1076a.mo338p(); i++) {
            j += this.f1076a.mo298b(i).count();
        }
        return j;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: f */
    public final Deque m398f() {
        ArrayDeque arrayDeque = new ArrayDeque(8);
        int mo338p = this.f1076a.mo338p();
        while (true) {
            mo338p--;
            if (mo338p < this.f1077b) {
                return arrayDeque;
            }
            arrayDeque.addFirst(this.f1076a.mo298b(mo338p));
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

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: h */
    public final boolean m397h() {
        if (this.f1076a == null) {
            return false;
        }
        if (this.f1079d == null) {
            InterfaceC2992s interfaceC2992s = this.f1078c;
            if (interfaceC2992s == null) {
                Deque m398f = m398f();
                this.f1080e = m398f;
                InterfaceC2998A1 m399a = m399a(m398f);
                if (m399a == null) {
                    this.f1076a = null;
                    return false;
                }
                interfaceC2992s = m399a.spliterator();
            }
            this.f1079d = interfaceC2992s;
            return true;
        }
        return true;
    }

    @Override // p033j$.util.InterfaceC2992s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2919a.m623f(this, i);
    }

    @Override // p033j$.util.InterfaceC2992s
    public /* bridge */ /* synthetic */ InterfaceC2992s.InterfaceC2993a trySplit() {
        return (InterfaceC2992s.InterfaceC2993a) trySplit();
    }

    @Override // p033j$.util.InterfaceC2992s
    public /* bridge */ /* synthetic */ InterfaceC2992s.InterfaceC2994b trySplit() {
        return (InterfaceC2992s.InterfaceC2994b) trySplit();
    }

    @Override // p033j$.util.InterfaceC2992s
    public /* bridge */ /* synthetic */ InterfaceC2992s.InterfaceC2995c trySplit() {
        return (InterfaceC2992s.InterfaceC2995c) trySplit();
    }

    @Override // p033j$.util.InterfaceC2992s
    public final InterfaceC2992s trySplit() {
        InterfaceC2998A1 interfaceC2998A1 = this.f1076a;
        if (interfaceC2998A1 == null || this.f1079d != null) {
            return null;
        }
        InterfaceC2992s interfaceC2992s = this.f1078c;
        if (interfaceC2992s != null) {
            return interfaceC2992s.trySplit();
        }
        if (this.f1077b < interfaceC2998A1.mo338p() - 1) {
            InterfaceC2998A1 interfaceC2998A12 = this.f1076a;
            int i = this.f1077b;
            this.f1077b = i + 1;
            return interfaceC2998A12.mo298b(i).spliterator();
        }
        InterfaceC2998A1 mo298b = this.f1076a.mo298b(this.f1077b);
        this.f1076a = mo298b;
        if (mo298b.mo338p() == 0) {
            InterfaceC2992s spliterator = this.f1076a.spliterator();
            this.f1078c = spliterator;
            return spliterator.trySplit();
        }
        this.f1077b = 0;
        InterfaceC2998A1 interfaceC2998A13 = this.f1076a;
        this.f1077b = 1;
        return interfaceC2998A13.mo298b(0).spliterator();
    }

    @Override // p033j$.util.InterfaceC2992s
    public /* bridge */ /* synthetic */ InterfaceC3299t trySplit() {
        return (InterfaceC3299t) trySplit();
    }
}
