package p034j$.util.stream;

import java.util.Comparator;
import java.util.Objects;
import p034j$.util.AbstractC2654a;
import p034j$.util.InterfaceC3034t;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.z4 */
/* loaded from: classes2.dex */
public abstract class AbstractC3033z4 extends AbstractC2754D4 implements InterfaceC3034t {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3033z4(InterfaceC3034t interfaceC3034t, long j, long j2) {
        super(interfaceC3034t, j, j2, 0L, Math.min(interfaceC3034t.estimateSize(), j2));
    }

    /* renamed from: f */
    protected abstract Object mo271f();

    @Override // p034j$.util.InterfaceC3034t
    /* renamed from: forEachRemaining */
    public void m272e(Object obj) {
        Objects.requireNonNull(obj);
        long j = this.f719a;
        long j2 = this.f723e;
        if (j >= j2) {
            return;
        }
        long j3 = this.f722d;
        if (j3 >= j2) {
            return;
        }
        if (j3 >= j && ((InterfaceC3034t) this.f721c).estimateSize() + j3 <= this.f720b) {
            ((InterfaceC3034t) this.f721c).forEachRemaining(obj);
            this.f722d = this.f723e;
            return;
        }
        while (this.f719a > this.f722d) {
            ((InterfaceC3034t) this.f721c).tryAdvance(mo271f());
            this.f722d++;
        }
        while (this.f722d < this.f723e) {
            ((InterfaceC3034t) this.f721c).tryAdvance(obj);
            this.f722d++;
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

    @Override // p034j$.util.InterfaceC2727s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2654a.m605f(this, i);
    }

    @Override // p034j$.util.InterfaceC3034t
    /* renamed from: tryAdvance */
    public boolean m268k(Object obj) {
        long j;
        Objects.requireNonNull(obj);
        if (this.f719a >= this.f723e) {
            return false;
        }
        while (true) {
            long j2 = this.f719a;
            j = this.f722d;
            if (j2 <= j) {
                break;
            }
            ((InterfaceC3034t) this.f721c).tryAdvance(mo271f());
            this.f722d++;
        }
        if (j >= this.f723e) {
            return false;
        }
        this.f722d = j + 1;
        return ((InterfaceC3034t) this.f721c).tryAdvance(obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3033z4(InterfaceC3034t interfaceC3034t, long j, long j2, long j3, long j4, AbstractC2964o1 abstractC2964o1) {
        super(interfaceC3034t, j, j2, j3, j4);
    }
}
