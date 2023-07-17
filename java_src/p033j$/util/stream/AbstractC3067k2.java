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
    InterfaceC2859A1 f1063a;

    /* renamed from: b */
    int f1064b;

    /* renamed from: c */
    InterfaceC2853s f1065c;

    /* renamed from: d */
    InterfaceC2853s f1066d;

    /* renamed from: e */
    Deque f1067e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3067k2(InterfaceC2859A1 interfaceC2859A1) {
        this.f1063a = interfaceC2859A1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final InterfaceC2859A1 m381a(Deque deque) {
        while (true) {
            InterfaceC2859A1 interfaceC2859A1 = (InterfaceC2859A1) deque.pollFirst();
            if (interfaceC2859A1 == null) {
                return null;
            }
            if (interfaceC2859A1.mo320p() != 0) {
                for (int mo320p = interfaceC2859A1.mo320p() - 1; mo320p >= 0; mo320p--) {
                    deque.addFirst(interfaceC2859A1.mo280b(mo320p));
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
        if (this.f1063a == null) {
            return 0L;
        }
        InterfaceC2853s interfaceC2853s = this.f1065c;
        if (interfaceC2853s != null) {
            return interfaceC2853s.estimateSize();
        }
        for (int i = this.f1064b; i < this.f1063a.mo320p(); i++) {
            j += this.f1063a.mo280b(i).count();
        }
        return j;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: f */
    public final Deque m380f() {
        ArrayDeque arrayDeque = new ArrayDeque(8);
        int mo320p = this.f1063a.mo320p();
        while (true) {
            mo320p--;
            if (mo320p < this.f1064b) {
                return arrayDeque;
            }
            arrayDeque.addFirst(this.f1063a.mo280b(mo320p));
        }
    }

    @Override // p033j$.util.InterfaceC2853s
    public Comparator getComparator() {
        throw new IllegalStateException();
    }

    @Override // p033j$.util.InterfaceC2853s
    public /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2780a.m606e(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: h */
    public final boolean m379h() {
        if (this.f1063a == null) {
            return false;
        }
        if (this.f1066d == null) {
            InterfaceC2853s interfaceC2853s = this.f1065c;
            if (interfaceC2853s == null) {
                Deque m380f = m380f();
                this.f1067e = m380f;
                InterfaceC2859A1 m381a = m381a(m380f);
                if (m381a == null) {
                    this.f1063a = null;
                    return false;
                }
                interfaceC2853s = m381a.spliterator();
            }
            this.f1066d = interfaceC2853s;
            return true;
        }
        return true;
    }

    @Override // p033j$.util.InterfaceC2853s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2780a.m605f(this, i);
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
        InterfaceC2859A1 interfaceC2859A1 = this.f1063a;
        if (interfaceC2859A1 == null || this.f1066d != null) {
            return null;
        }
        InterfaceC2853s interfaceC2853s = this.f1065c;
        if (interfaceC2853s != null) {
            return interfaceC2853s.trySplit();
        }
        if (this.f1064b < interfaceC2859A1.mo320p() - 1) {
            InterfaceC2859A1 interfaceC2859A12 = this.f1063a;
            int i = this.f1064b;
            this.f1064b = i + 1;
            return interfaceC2859A12.mo280b(i).spliterator();
        }
        InterfaceC2859A1 mo280b = this.f1063a.mo280b(this.f1064b);
        this.f1063a = mo280b;
        if (mo280b.mo320p() == 0) {
            InterfaceC2853s spliterator = this.f1063a.spliterator();
            this.f1065c = spliterator;
            return spliterator.trySplit();
        }
        this.f1064b = 0;
        InterfaceC2859A1 interfaceC2859A13 = this.f1063a;
        this.f1064b = 1;
        return interfaceC2859A13.mo280b(0).spliterator();
    }

    @Override // p033j$.util.InterfaceC2853s
    public /* bridge */ /* synthetic */ InterfaceC3160t trySplit() {
        return (InterfaceC3160t) trySplit();
    }
}
