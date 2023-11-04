package p033j$.util.stream;

import java.util.ArrayDeque;
import java.util.Comparator;
import java.util.Deque;
import p033j$.util.AbstractC2843k;
import p033j$.util.Spliterator;
/* renamed from: j$.util.stream.k2 */
/* loaded from: classes2.dex */
abstract class AbstractC3063k2 implements Spliterator {

    /* renamed from: a */
    InterfaceC2855A1 f1116a;

    /* renamed from: b */
    int f1117b;

    /* renamed from: c */
    Spliterator f1118c;

    /* renamed from: d */
    Spliterator f1119d;

    /* renamed from: e */
    Deque f1120e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3063k2(InterfaceC2855A1 interfaceC2855A1) {
        this.f1116a = interfaceC2855A1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final InterfaceC2855A1 m445a(Deque deque) {
        while (true) {
            InterfaceC2855A1 interfaceC2855A1 = (InterfaceC2855A1) deque.pollFirst();
            if (interfaceC2855A1 == null) {
                return null;
            }
            if (interfaceC2855A1.mo384n() != 0) {
                for (int mo384n = interfaceC2855A1.mo384n() - 1; mo384n >= 0; mo384n--) {
                    deque.addFirst(interfaceC2855A1.mo344b(mo384n));
                }
            } else if (interfaceC2855A1.count() > 0) {
                return interfaceC2855A1;
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
        for (int i = this.f1117b; i < this.f1116a.mo384n(); i++) {
            j += this.f1116a.mo344b(i).count();
        }
        return j;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: f */
    public final Deque m444f() {
        ArrayDeque arrayDeque = new ArrayDeque(8);
        int mo384n = this.f1116a.mo384n();
        while (true) {
            mo384n--;
            if (mo384n < this.f1117b) {
                return arrayDeque;
            }
            arrayDeque.addFirst(this.f1116a.mo344b(mo384n));
        }
    }

    @Override // p033j$.util.Spliterator
    public Comparator getComparator() {
        throw new IllegalStateException();
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2843k.m602d(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: h */
    public final boolean m443h() {
        if (this.f1116a == null) {
            return false;
        }
        if (this.f1119d == null) {
            Spliterator spliterator = this.f1118c;
            if (spliterator == null) {
                Deque m444f = m444f();
                this.f1120e = m444f;
                InterfaceC2855A1 m445a = m445a(m444f);
                if (m445a == null) {
                    this.f1116a = null;
                    return false;
                }
                spliterator = m445a.spliterator();
            }
            this.f1119d = spliterator;
            return true;
        }
        return true;
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2843k.m601e(this, i);
    }

    @Override // p033j$.util.Spliterator
    public /* bridge */ /* synthetic */ Spliterator.InterfaceC2776a trySplit() {
        return (Spliterator.InterfaceC2776a) trySplit();
    }

    @Override // p033j$.util.Spliterator
    public /* bridge */ /* synthetic */ Spliterator.InterfaceC2777b trySplit() {
        return (Spliterator.InterfaceC2777b) trySplit();
    }

    @Override // p033j$.util.Spliterator
    public /* bridge */ /* synthetic */ Spliterator.InterfaceC2778c trySplit() {
        return (Spliterator.InterfaceC2778c) trySplit();
    }

    @Override // p033j$.util.Spliterator
    public /* bridge */ /* synthetic */ Spliterator.InterfaceC2779d trySplit() {
        return (Spliterator.InterfaceC2779d) trySplit();
    }

    @Override // p033j$.util.Spliterator
    public final Spliterator trySplit() {
        InterfaceC2855A1 interfaceC2855A1 = this.f1116a;
        if (interfaceC2855A1 == null || this.f1119d != null) {
            return null;
        }
        Spliterator spliterator = this.f1118c;
        if (spliterator != null) {
            return spliterator.trySplit();
        }
        if (this.f1117b < interfaceC2855A1.mo384n() - 1) {
            InterfaceC2855A1 interfaceC2855A12 = this.f1116a;
            int i = this.f1117b;
            this.f1117b = i + 1;
            return interfaceC2855A12.mo344b(i).spliterator();
        }
        InterfaceC2855A1 mo344b = this.f1116a.mo344b(this.f1117b);
        this.f1116a = mo344b;
        if (mo344b.mo384n() == 0) {
            Spliterator spliterator2 = this.f1116a.spliterator();
            this.f1118c = spliterator2;
            return spliterator2.trySplit();
        }
        this.f1117b = 0;
        InterfaceC2855A1 interfaceC2855A13 = this.f1116a;
        this.f1117b = 1;
        return interfaceC2855A13.mo344b(0).spliterator();
    }
}
