package p034j$.util.stream;

import java.util.Comparator;
import java.util.Objects;
import p034j$.util.AbstractC2659a;
import p034j$.util.InterfaceC3039t;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.z4 */
/* loaded from: classes2.dex */
public abstract class AbstractC3038z4 extends AbstractC2759D4 implements InterfaceC3039t {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3038z4(InterfaceC3039t interfaceC3039t, long j, long j2) {
        super(interfaceC3039t, j, j2, 0L, Math.min(interfaceC3039t.estimateSize(), j2));
    }

    /* renamed from: f */
    protected abstract Object mo271f();

    @Override // p034j$.util.InterfaceC3039t
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
        if (j3 >= j && ((InterfaceC3039t) this.f721c).estimateSize() + j3 <= this.f720b) {
            ((InterfaceC3039t) this.f721c).forEachRemaining(obj);
            this.f722d = this.f723e;
            return;
        }
        while (this.f719a > this.f722d) {
            ((InterfaceC3039t) this.f721c).tryAdvance(mo271f());
            this.f722d++;
        }
        while (this.f722d < this.f723e) {
            ((InterfaceC3039t) this.f721c).tryAdvance(obj);
            this.f722d++;
        }
    }

    @Override // p034j$.util.InterfaceC2732s
    public Comparator getComparator() {
        throw new IllegalStateException();
    }

    @Override // p034j$.util.InterfaceC2732s
    public /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2659a.m606e(this);
    }

    @Override // p034j$.util.InterfaceC2732s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2659a.m605f(this, i);
    }

    @Override // p034j$.util.InterfaceC3039t
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
            ((InterfaceC3039t) this.f721c).tryAdvance(mo271f());
            this.f722d++;
        }
        if (j >= this.f723e) {
            return false;
        }
        this.f722d = j + 1;
        return ((InterfaceC3039t) this.f721c).tryAdvance(obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3038z4(InterfaceC3039t interfaceC3039t, long j, long j2, long j3, long j4, AbstractC2969o1 abstractC2969o1) {
        super(interfaceC3039t, j, j2, j3, j4);
    }
}
