package p033j$.util.stream;

import java.util.Comparator;
import java.util.Objects;
import p033j$.util.AbstractC2919a;
import p033j$.util.InterfaceC3299t;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.z4 */
/* loaded from: classes2.dex */
public abstract class AbstractC3298z4 extends AbstractC3019D4 implements InterfaceC3299t {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3298z4(InterfaceC3299t interfaceC3299t, long j, long j2) {
        super(interfaceC3299t, j, j2, 0L, Math.min(interfaceC3299t.estimateSize(), j2));
    }

    /* renamed from: f */
    protected abstract Object mo289f();

    @Override // p033j$.util.InterfaceC3299t
    /* renamed from: forEachRemaining */
    public void m290e(Object obj) {
        Objects.requireNonNull(obj);
        long j = this.f814a;
        long j2 = this.f818e;
        if (j >= j2) {
            return;
        }
        long j3 = this.f817d;
        if (j3 >= j2) {
            return;
        }
        if (j3 >= j && ((InterfaceC3299t) this.f816c).estimateSize() + j3 <= this.f815b) {
            ((InterfaceC3299t) this.f816c).forEachRemaining(obj);
            this.f817d = this.f818e;
            return;
        }
        while (this.f814a > this.f817d) {
            ((InterfaceC3299t) this.f816c).tryAdvance(mo289f());
            this.f817d++;
        }
        while (this.f817d < this.f818e) {
            ((InterfaceC3299t) this.f816c).tryAdvance(obj);
            this.f817d++;
        }
    }

    @Override // p033j$.util.InterfaceC2992s
    public Comparator getComparator() {
        throw new IllegalStateException();
    }

    @Override // p033j$.util.InterfaceC2992s
    public /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2919a.m624e(this);
    }

    @Override // p033j$.util.InterfaceC2992s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2919a.m623f(this, i);
    }

    @Override // p033j$.util.InterfaceC3299t
    /* renamed from: tryAdvance */
    public boolean m286k(Object obj) {
        long j;
        Objects.requireNonNull(obj);
        if (this.f814a >= this.f818e) {
            return false;
        }
        while (true) {
            long j2 = this.f814a;
            j = this.f817d;
            if (j2 <= j) {
                break;
            }
            ((InterfaceC3299t) this.f816c).tryAdvance(mo289f());
            this.f817d++;
        }
        if (j >= this.f818e) {
            return false;
        }
        this.f817d = j + 1;
        return ((InterfaceC3299t) this.f816c).tryAdvance(obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3298z4(InterfaceC3299t interfaceC3299t, long j, long j2, long j3, long j4, AbstractC3229o1 abstractC3229o1) {
        super(interfaceC3299t, j, j2, j3, j4);
    }
}
