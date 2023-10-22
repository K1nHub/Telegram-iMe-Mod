package p033j$.util.stream;

import java.util.ArrayDeque;
import java.util.Comparator;
import java.util.Deque;
import p033j$.util.AbstractC2839k;
import p033j$.util.Spliterator;
/* renamed from: j$.util.stream.k2 */
/* loaded from: classes2.dex */
abstract class AbstractC3059k2 implements Spliterator {

    /* renamed from: a */
    InterfaceC2851A1 f1116a;

    /* renamed from: b */
    int f1117b;

    /* renamed from: c */
    Spliterator f1118c;

    /* renamed from: d */
    Spliterator f1119d;

    /* renamed from: e */
    Deque f1120e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3059k2(InterfaceC2851A1 interfaceC2851A1) {
        this.f1116a = interfaceC2851A1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final InterfaceC2851A1 m444a(Deque deque) {
        while (true) {
            InterfaceC2851A1 interfaceC2851A1 = (InterfaceC2851A1) deque.pollFirst();
            if (interfaceC2851A1 == null) {
                return null;
            }
            if (interfaceC2851A1.mo383n() != 0) {
                for (int mo383n = interfaceC2851A1.mo383n() - 1; mo383n >= 0; mo383n--) {
                    deque.addFirst(interfaceC2851A1.mo343b(mo383n));
                }
            } else if (interfaceC2851A1.count() > 0) {
                return interfaceC2851A1;
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
        for (int i = this.f1117b; i < this.f1116a.mo383n(); i++) {
            j += this.f1116a.mo343b(i).count();
        }
        return j;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: f */
    public final Deque m443f() {
        ArrayDeque arrayDeque = new ArrayDeque(8);
        int mo383n = this.f1116a.mo383n();
        while (true) {
            mo383n--;
            if (mo383n < this.f1117b) {
                return arrayDeque;
            }
            arrayDeque.addFirst(this.f1116a.mo343b(mo383n));
        }
    }

    @Override // p033j$.util.Spliterator
    public Comparator getComparator() {
        throw new IllegalStateException();
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2839k.m601d(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: h */
    public final boolean m442h() {
        if (this.f1116a == null) {
            return false;
        }
        if (this.f1119d == null) {
            Spliterator spliterator = this.f1118c;
            if (spliterator == null) {
                Deque m443f = m443f();
                this.f1120e = m443f;
                InterfaceC2851A1 m444a = m444a(m443f);
                if (m444a == null) {
                    this.f1116a = null;
                    return false;
                }
                spliterator = m444a.spliterator();
            }
            this.f1119d = spliterator;
            return true;
        }
        return true;
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2839k.m600e(this, i);
    }

    @Override // p033j$.util.Spliterator
    public /* bridge */ /* synthetic */ Spliterator.InterfaceC2772a trySplit() {
        return (Spliterator.InterfaceC2772a) trySplit();
    }

    @Override // p033j$.util.Spliterator
    public /* bridge */ /* synthetic */ Spliterator.InterfaceC2773b trySplit() {
        return (Spliterator.InterfaceC2773b) trySplit();
    }

    @Override // p033j$.util.Spliterator
    public /* bridge */ /* synthetic */ Spliterator.InterfaceC2774c trySplit() {
        return (Spliterator.InterfaceC2774c) trySplit();
    }

    @Override // p033j$.util.Spliterator
    public /* bridge */ /* synthetic */ Spliterator.InterfaceC2775d trySplit() {
        return (Spliterator.InterfaceC2775d) trySplit();
    }

    @Override // p033j$.util.Spliterator
    public final Spliterator trySplit() {
        InterfaceC2851A1 interfaceC2851A1 = this.f1116a;
        if (interfaceC2851A1 == null || this.f1119d != null) {
            return null;
        }
        Spliterator spliterator = this.f1118c;
        if (spliterator != null) {
            return spliterator.trySplit();
        }
        if (this.f1117b < interfaceC2851A1.mo383n() - 1) {
            InterfaceC2851A1 interfaceC2851A12 = this.f1116a;
            int i = this.f1117b;
            this.f1117b = i + 1;
            return interfaceC2851A12.mo343b(i).spliterator();
        }
        InterfaceC2851A1 mo343b = this.f1116a.mo343b(this.f1117b);
        this.f1116a = mo343b;
        if (mo343b.mo383n() == 0) {
            Spliterator spliterator2 = this.f1116a.spliterator();
            this.f1118c = spliterator2;
            return spliterator2.trySplit();
        }
        this.f1117b = 0;
        InterfaceC2851A1 interfaceC2851A13 = this.f1116a;
        this.f1117b = 1;
        return interfaceC2851A13.mo343b(0).spliterator();
    }
}
