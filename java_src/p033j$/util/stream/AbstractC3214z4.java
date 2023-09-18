package p033j$.util.stream;

import java.util.Comparator;
import java.util.Objects;
import p033j$.util.AbstractC2835a;
import p033j$.util.InterfaceC3215t;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.z4 */
/* loaded from: classes2.dex */
public abstract class AbstractC3214z4 extends AbstractC2935D4 implements InterfaceC3215t {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3214z4(InterfaceC3215t interfaceC3215t, long j, long j2) {
        super(interfaceC3215t, j, j2, 0L, Math.min(interfaceC3215t.estimateSize(), j2));
    }

    /* renamed from: f */
    protected abstract Object mo289f();

    @Override // p033j$.util.InterfaceC3215t
    /* renamed from: forEachRemaining */
    public void m290e(Object obj) {
        Objects.requireNonNull(obj);
        long j = this.f805a;
        long j2 = this.f809e;
        if (j >= j2) {
            return;
        }
        long j3 = this.f808d;
        if (j3 >= j2) {
            return;
        }
        if (j3 >= j && ((InterfaceC3215t) this.f807c).estimateSize() + j3 <= this.f806b) {
            ((InterfaceC3215t) this.f807c).forEachRemaining(obj);
            this.f808d = this.f809e;
            return;
        }
        while (this.f805a > this.f808d) {
            ((InterfaceC3215t) this.f807c).tryAdvance(mo289f());
            this.f808d++;
        }
        while (this.f808d < this.f809e) {
            ((InterfaceC3215t) this.f807c).tryAdvance(obj);
            this.f808d++;
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

    @Override // p033j$.util.InterfaceC2908s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2835a.m623f(this, i);
    }

    @Override // p033j$.util.InterfaceC3215t
    /* renamed from: tryAdvance */
    public boolean m286k(Object obj) {
        long j;
        Objects.requireNonNull(obj);
        if (this.f805a >= this.f809e) {
            return false;
        }
        while (true) {
            long j2 = this.f805a;
            j = this.f808d;
            if (j2 <= j) {
                break;
            }
            ((InterfaceC3215t) this.f807c).tryAdvance(mo289f());
            this.f808d++;
        }
        if (j >= this.f809e) {
            return false;
        }
        this.f808d = j + 1;
        return ((InterfaceC3215t) this.f807c).tryAdvance(obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3214z4(InterfaceC3215t interfaceC3215t, long j, long j2, long j3, long j4, AbstractC3145o1 abstractC3145o1) {
        super(interfaceC3215t, j, j2, j3, j4);
    }
}
