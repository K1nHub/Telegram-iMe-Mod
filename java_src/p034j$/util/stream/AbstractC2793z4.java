package p034j$.util.stream;

import java.util.Comparator;
import java.util.Objects;
import p034j$.util.AbstractC2414a;
import p034j$.util.InterfaceC2794t;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.z4 */
/* loaded from: classes2.dex */
public abstract class AbstractC2793z4 extends AbstractC2514D4 implements InterfaceC2794t {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2793z4(InterfaceC2794t interfaceC2794t, long j, long j2) {
        super(interfaceC2794t, j, j2, 0L, Math.min(interfaceC2794t.estimateSize(), j2));
    }

    /* renamed from: f */
    protected abstract Object mo286f();

    @Override // p034j$.util.InterfaceC2794t
    /* renamed from: forEachRemaining */
    public void m287e(Object obj) {
        Objects.requireNonNull(obj);
        long j = this.f710a;
        long j2 = this.f714e;
        if (j >= j2) {
            return;
        }
        long j3 = this.f713d;
        if (j3 >= j2) {
            return;
        }
        if (j3 >= j && ((InterfaceC2794t) this.f712c).estimateSize() + j3 <= this.f711b) {
            ((InterfaceC2794t) this.f712c).forEachRemaining(obj);
            this.f713d = this.f714e;
            return;
        }
        while (this.f710a > this.f713d) {
            ((InterfaceC2794t) this.f712c).tryAdvance(mo286f());
            this.f713d++;
        }
        while (this.f713d < this.f714e) {
            ((InterfaceC2794t) this.f712c).tryAdvance(obj);
            this.f713d++;
        }
    }

    @Override // p034j$.util.InterfaceC2487s
    public Comparator getComparator() {
        throw new IllegalStateException();
    }

    @Override // p034j$.util.InterfaceC2487s
    public /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2414a.m622e(this);
    }

    @Override // p034j$.util.InterfaceC2487s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2414a.m621f(this, i);
    }

    @Override // p034j$.util.InterfaceC2794t
    /* renamed from: tryAdvance */
    public boolean m283k(Object obj) {
        long j;
        Objects.requireNonNull(obj);
        if (this.f710a >= this.f714e) {
            return false;
        }
        while (true) {
            long j2 = this.f710a;
            j = this.f713d;
            if (j2 <= j) {
                break;
            }
            ((InterfaceC2794t) this.f712c).tryAdvance(mo286f());
            this.f713d++;
        }
        if (j >= this.f714e) {
            return false;
        }
        this.f713d = j + 1;
        return ((InterfaceC2794t) this.f712c).tryAdvance(obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2793z4(InterfaceC2794t interfaceC2794t, long j, long j2, long j3, long j4, AbstractC2724o1 abstractC2724o1) {
        super(interfaceC2794t, j, j2, j3, j4);
    }
}
