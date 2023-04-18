package p034j$.util.stream;

import java.util.Comparator;
import java.util.Objects;
import p034j$.util.AbstractC2615a;
import p034j$.util.InterfaceC2995t;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.z4 */
/* loaded from: classes2.dex */
public abstract class AbstractC2994z4 extends AbstractC2715D4 implements InterfaceC2995t {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2994z4(InterfaceC2995t interfaceC2995t, long j, long j2) {
        super(interfaceC2995t, j, j2, 0L, Math.min(interfaceC2995t.estimateSize(), j2));
    }

    /* renamed from: f */
    protected abstract Object mo266f();

    @Override // p034j$.util.InterfaceC2995t
    /* renamed from: forEachRemaining */
    public void m267e(Object obj) {
        Objects.requireNonNull(obj);
        long j = this.f716a;
        long j2 = this.f720e;
        if (j >= j2) {
            return;
        }
        long j3 = this.f719d;
        if (j3 >= j2) {
            return;
        }
        if (j3 >= j && ((InterfaceC2995t) this.f718c).estimateSize() + j3 <= this.f717b) {
            ((InterfaceC2995t) this.f718c).forEachRemaining(obj);
            this.f719d = this.f720e;
            return;
        }
        while (this.f716a > this.f719d) {
            ((InterfaceC2995t) this.f718c).tryAdvance(mo266f());
            this.f719d++;
        }
        while (this.f719d < this.f720e) {
            ((InterfaceC2995t) this.f718c).tryAdvance(obj);
            this.f719d++;
        }
    }

    @Override // p034j$.util.InterfaceC2688s
    public Comparator getComparator() {
        throw new IllegalStateException();
    }

    @Override // p034j$.util.InterfaceC2688s
    public /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2615a.m602e(this);
    }

    @Override // p034j$.util.InterfaceC2688s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2615a.m601f(this, i);
    }

    @Override // p034j$.util.InterfaceC2995t
    /* renamed from: tryAdvance */
    public boolean m263k(Object obj) {
        long j;
        Objects.requireNonNull(obj);
        if (this.f716a >= this.f720e) {
            return false;
        }
        while (true) {
            long j2 = this.f716a;
            j = this.f719d;
            if (j2 <= j) {
                break;
            }
            ((InterfaceC2995t) this.f718c).tryAdvance(mo266f());
            this.f719d++;
        }
        if (j >= this.f720e) {
            return false;
        }
        this.f719d = j + 1;
        return ((InterfaceC2995t) this.f718c).tryAdvance(obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2994z4(InterfaceC2995t interfaceC2995t, long j, long j2, long j3, long j4, AbstractC2925o1 abstractC2925o1) {
        super(interfaceC2995t, j, j2, j3, j4);
    }
}
