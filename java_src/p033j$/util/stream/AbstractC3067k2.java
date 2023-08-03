package p033j$.util.stream;

import java.util.ArrayDeque;
import java.util.Comparator;
import java.util.Deque;
import p033j$.util.AbstractC2780a;
import p033j$.util.InterfaceC2853s;
import p033j$.util.InterfaceC3160t;
/* renamed from: j$.util.stream.k2 */
/* loaded from: classes2.dex */
abstract class AbstractC3067k2 implements InterfaceC2853s {

    /* renamed from: a */
    InterfaceC2859A1 f1066a;

    /* renamed from: b */
    int f1067b;

    /* renamed from: c */
    InterfaceC2853s f1068c;

    /* renamed from: d */
    InterfaceC2853s f1069d;

    /* renamed from: e */
    Deque f1070e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3067k2(InterfaceC2859A1 interfaceC2859A1) {
        this.f1066a = interfaceC2859A1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final InterfaceC2859A1 m399a(Deque deque) {
        while (true) {
            InterfaceC2859A1 interfaceC2859A1 = (InterfaceC2859A1) deque.pollFirst();
            if (interfaceC2859A1 == null) {
                return null;
            }
            if (interfaceC2859A1.mo338p() != 0) {
                for (int mo338p = interfaceC2859A1.mo338p() - 1; mo338p >= 0; mo338p--) {
                    deque.addFirst(interfaceC2859A1.mo298b(mo338p));
                }
            } else if (interfaceC2859A1.count() > 0) {
                return interfaceC2859A1;
            }
        }
    }

    @Override // p033j$.util.InterfaceC2853s
    public final int characteristics() {
        return 64;
    }

    @Override // p033j$.util.InterfaceC2853s
    public final long estimateSize() {
        long j = 0;
        if (this.f1066a == null) {
            return 0L;
        }
        InterfaceC2853s interfaceC2853s = this.f1068c;
        if (interfaceC2853s != null) {
            return interfaceC2853s.estimateSize();
        }
        for (int i = this.f1067b; i < this.f1066a.mo338p(); i++) {
            j += this.f1066a.mo298b(i).count();
        }
        return j;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: f */
    public final Deque m398f() {
        ArrayDeque arrayDeque = new ArrayDeque(8);
        int mo338p = this.f1066a.mo338p();
        while (true) {
            mo338p--;
            if (mo338p < this.f1067b) {
                return arrayDeque;
            }
            arrayDeque.addFirst(this.f1066a.mo298b(mo338p));
        }
    }

    @Override // p033j$.util.InterfaceC2853s
    public Comparator getComparator() {
        throw new IllegalStateException();
    }

    @Override // p033j$.util.InterfaceC2853s
    public /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2780a.m624e(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: h */
    public final boolean m397h() {
        if (this.f1066a == null) {
            return false;
        }
        if (this.f1069d == null) {
            InterfaceC2853s interfaceC2853s = this.f1068c;
            if (interfaceC2853s == null) {
                Deque m398f = m398f();
                this.f1070e = m398f;
                InterfaceC2859A1 m399a = m399a(m398f);
                if (m399a == null) {
                    this.f1066a = null;
                    return false;
                }
                interfaceC2853s = m399a.spliterator();
            }
            this.f1069d = interfaceC2853s;
            return true;
        }
        return true;
    }

    @Override // p033j$.util.InterfaceC2853s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2780a.m623f(this, i);
    }

    @Override // p033j$.util.InterfaceC2853s
    public /* bridge */ /* synthetic */ InterfaceC2853s.InterfaceC2854a trySplit() {
        return (InterfaceC2853s.InterfaceC2854a) trySplit();
    }

    @Override // p033j$.util.InterfaceC2853s
    public /* bridge */ /* synthetic */ InterfaceC2853s.InterfaceC2855b trySplit() {
        return (InterfaceC2853s.InterfaceC2855b) trySplit();
    }

    @Override // p033j$.util.InterfaceC2853s
    public /* bridge */ /* synthetic */ InterfaceC2853s.InterfaceC2856c trySplit() {
        return (InterfaceC2853s.InterfaceC2856c) trySplit();
    }

    @Override // p033j$.util.InterfaceC2853s
    public final InterfaceC2853s trySplit() {
        InterfaceC2859A1 interfaceC2859A1 = this.f1066a;
        if (interfaceC2859A1 == null || this.f1069d != null) {
            return null;
        }
        InterfaceC2853s interfaceC2853s = this.f1068c;
        if (interfaceC2853s != null) {
            return interfaceC2853s.trySplit();
        }
        if (this.f1067b < interfaceC2859A1.mo338p() - 1) {
            InterfaceC2859A1 interfaceC2859A12 = this.f1066a;
            int i = this.f1067b;
            this.f1067b = i + 1;
            return interfaceC2859A12.mo298b(i).spliterator();
        }
        InterfaceC2859A1 mo298b = this.f1066a.mo298b(this.f1067b);
        this.f1066a = mo298b;
        if (mo298b.mo338p() == 0) {
            InterfaceC2853s spliterator = this.f1066a.spliterator();
            this.f1068c = spliterator;
            return spliterator.trySplit();
        }
        this.f1067b = 0;
        InterfaceC2859A1 interfaceC2859A13 = this.f1066a;
        this.f1067b = 1;
        return interfaceC2859A13.mo298b(0).spliterator();
    }

    @Override // p033j$.util.InterfaceC2853s
    public /* bridge */ /* synthetic */ InterfaceC3160t trySplit() {
        return (InterfaceC3160t) trySplit();
    }
}
