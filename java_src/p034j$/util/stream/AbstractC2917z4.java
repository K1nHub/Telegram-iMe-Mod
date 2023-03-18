package p034j$.util.stream;

import java.util.Comparator;
import java.util.Objects;
import p034j$.util.AbstractC2538a;
import p034j$.util.InterfaceC2918t;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.z4 */
/* loaded from: classes2.dex */
public abstract class AbstractC2917z4 extends AbstractC2638D4 implements InterfaceC2918t {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2917z4(InterfaceC2918t interfaceC2918t, long j, long j2) {
        super(interfaceC2918t, j, j2, 0L, Math.min(interfaceC2918t.estimateSize(), j2));
    }

    /* renamed from: f */
    protected abstract Object mo286f();

    @Override // p034j$.util.InterfaceC2918t
    /* renamed from: forEachRemaining */
    public void m287e(Object obj) {
        Objects.requireNonNull(obj);
        long j = this.f715a;
        long j2 = this.f719e;
        if (j >= j2) {
            return;
        }
        long j3 = this.f718d;
        if (j3 >= j2) {
            return;
        }
        if (j3 >= j && ((InterfaceC2918t) this.f717c).estimateSize() + j3 <= this.f716b) {
            ((InterfaceC2918t) this.f717c).forEachRemaining(obj);
            this.f718d = this.f719e;
            return;
        }
        while (this.f715a > this.f718d) {
            ((InterfaceC2918t) this.f717c).tryAdvance(mo286f());
            this.f718d++;
        }
        while (this.f718d < this.f719e) {
            ((InterfaceC2918t) this.f717c).tryAdvance(obj);
            this.f718d++;
        }
    }

    @Override // p034j$.util.InterfaceC2611s
    public Comparator getComparator() {
        throw new IllegalStateException();
    }

    @Override // p034j$.util.InterfaceC2611s
    public /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2538a.m622e(this);
    }

    @Override // p034j$.util.InterfaceC2611s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2538a.m621f(this, i);
    }

    @Override // p034j$.util.InterfaceC2918t
    /* renamed from: tryAdvance */
    public boolean m283k(Object obj) {
        long j;
        Objects.requireNonNull(obj);
        if (this.f715a >= this.f719e) {
            return false;
        }
        while (true) {
            long j2 = this.f715a;
            j = this.f718d;
            if (j2 <= j) {
                break;
            }
            ((InterfaceC2918t) this.f717c).tryAdvance(mo286f());
            this.f718d++;
        }
        if (j >= this.f719e) {
            return false;
        }
        this.f718d = j + 1;
        return ((InterfaceC2918t) this.f717c).tryAdvance(obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2917z4(InterfaceC2918t interfaceC2918t, long j, long j2, long j3, long j4, AbstractC2848o1 abstractC2848o1) {
        super(interfaceC2918t, j, j2, j3, j4);
    }
}
