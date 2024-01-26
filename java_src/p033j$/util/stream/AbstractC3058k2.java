package p033j$.util.stream;

import java.util.ArrayDeque;
import java.util.Comparator;
import java.util.Deque;
import p033j$.util.AbstractC2838k;
import p033j$.util.Spliterator;
/* renamed from: j$.util.stream.k2 */
/* loaded from: classes2.dex */
abstract class AbstractC3058k2 implements Spliterator {

    /* renamed from: a */
    InterfaceC2850A1 f1116a;

    /* renamed from: b */
    int f1117b;

    /* renamed from: c */
    Spliterator f1118c;

    /* renamed from: d */
    Spliterator f1119d;

    /* renamed from: e */
    Deque f1120e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3058k2(InterfaceC2850A1 interfaceC2850A1) {
        this.f1116a = interfaceC2850A1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final InterfaceC2850A1 m448a(Deque deque) {
        while (true) {
            InterfaceC2850A1 interfaceC2850A1 = (InterfaceC2850A1) deque.pollFirst();
            if (interfaceC2850A1 == null) {
                return null;
            }
            if (interfaceC2850A1.mo387n() != 0) {
                for (int mo387n = interfaceC2850A1.mo387n() - 1; mo387n >= 0; mo387n--) {
                    deque.addFirst(interfaceC2850A1.mo347b(mo387n));
                }
            } else if (interfaceC2850A1.count() > 0) {
                return interfaceC2850A1;
            }
        }
    }

    @Override // p033j$.util.Spliterator
    public final int characteristics() {
        return 64;
    }

    @Override // p033j$.util.Spliterator
    public final long estimateSize() {
        long j = 0;
        if (this.f1116a == null) {
            return 0L;
        }
        Spliterator spliterator = this.f1118c;
        if (spliterator != null) {
            return spliterator.estimateSize();
        }
        for (int i = this.f1117b; i < this.f1116a.mo387n(); i++) {
            j += this.f1116a.mo347b(i).count();
        }
        return j;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: f */
    public final Deque m447f() {
        ArrayDeque arrayDeque = new ArrayDeque(8);
        int mo387n = this.f1116a.mo387n();
        while (true) {
            mo387n--;
            if (mo387n < this.f1117b) {
                return arrayDeque;
            }
            arrayDeque.addFirst(this.f1116a.mo347b(mo387n));
        }
    }

    @Override // p033j$.util.Spliterator
    public Comparator getComparator() {
        throw new IllegalStateException();
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2838k.m605d(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: h */
    public final boolean m446h() {
        if (this.f1116a == null) {
            return false;
        }
        if (this.f1119d == null) {
            Spliterator spliterator = this.f1118c;
            if (spliterator == null) {
                Deque m447f = m447f();
                this.f1120e = m447f;
                InterfaceC2850A1 m448a = m448a(m447f);
                if (m448a == null) {
                    this.f1116a = null;
                    return false;
                }
                spliterator = m448a.spliterator();
            }
            this.f1119d = spliterator;
            return true;
        }
        return true;
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2838k.m604e(this, i);
    }

    @Override // p033j$.util.Spliterator
    public /* bridge */ /* synthetic */ Spliterator.InterfaceC2771a trySplit() {
        return (Spliterator.InterfaceC2771a) trySplit();
    }

    @Override // p033j$.util.Spliterator
    public /* bridge */ /* synthetic */ Spliterator.InterfaceC2772b trySplit() {
        return (Spliterator.InterfaceC2772b) trySplit();
    }

    @Override // p033j$.util.Spliterator
    public /* bridge */ /* synthetic */ Spliterator.InterfaceC2773c trySplit() {
        return (Spliterator.InterfaceC2773c) trySplit();
    }

    @Override // p033j$.util.Spliterator
    public /* bridge */ /* synthetic */ Spliterator.InterfaceC2774d trySplit() {
        return (Spliterator.InterfaceC2774d) trySplit();
    }

    @Override // p033j$.util.Spliterator
    public final Spliterator trySplit() {
        InterfaceC2850A1 interfaceC2850A1 = this.f1116a;
        if (interfaceC2850A1 == null || this.f1119d != null) {
            return null;
        }
        Spliterator spliterator = this.f1118c;
        if (spliterator != null) {
            return spliterator.trySplit();
        }
        if (this.f1117b < interfaceC2850A1.mo387n() - 1) {
            InterfaceC2850A1 interfaceC2850A12 = this.f1116a;
            int i = this.f1117b;
            this.f1117b = i + 1;
            return interfaceC2850A12.mo347b(i).spliterator();
        }
        InterfaceC2850A1 mo347b = this.f1116a.mo347b(this.f1117b);
        this.f1116a = mo347b;
        if (mo347b.mo387n() == 0) {
            Spliterator spliterator2 = this.f1116a.spliterator();
            this.f1118c = spliterator2;
            return spliterator2.trySplit();
        }
        this.f1117b = 0;
        InterfaceC2850A1 interfaceC2850A13 = this.f1116a;
        this.f1117b = 1;
        return interfaceC2850A13.mo347b(0).spliterator();
    }
}
