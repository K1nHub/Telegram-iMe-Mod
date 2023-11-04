package p033j$.util.stream;

import java.util.Comparator;
import java.util.Objects;
import p033j$.util.AbstractC2843k;
import p033j$.util.Spliterator;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.z4 */
/* loaded from: classes2.dex */
public abstract class AbstractC3155z4 extends AbstractC2876D4 implements Spliterator.InterfaceC2779d {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3155z4(Spliterator.InterfaceC2779d interfaceC2779d, long j, long j2) {
        super(interfaceC2779d, j, j2, 0L, Math.min(interfaceC2779d.estimateSize(), j2));
    }

    /* renamed from: f */
    protected abstract Object mo335f();

    @Override // p033j$.util.Spliterator.InterfaceC2779d
    /* renamed from: forEachRemaining */
    public void m336e(Object obj) {
        Objects.requireNonNull(obj);
        long j = this.f854a;
        long j2 = this.f858e;
        if (j >= j2) {
            return;
        }
        long j3 = this.f857d;
        if (j3 >= j2) {
            return;
        }
        if (j3 >= j && ((Spliterator.InterfaceC2779d) this.f856c).estimateSize() + j3 <= this.f855b) {
            ((Spliterator.InterfaceC2779d) this.f856c).forEachRemaining(obj);
            this.f857d = this.f858e;
            return;
        }
        while (this.f854a > this.f857d) {
            ((Spliterator.InterfaceC2779d) this.f856c).tryAdvance(mo335f());
            this.f857d++;
        }
        while (this.f857d < this.f858e) {
            ((Spliterator.InterfaceC2779d) this.f856c).tryAdvance(obj);
            this.f857d++;
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

    @Override // p033j$.util.Spliterator
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2843k.m601e(this, i);
    }

    @Override // p033j$.util.Spliterator.InterfaceC2779d
    /* renamed from: tryAdvance */
    public boolean m332n(Object obj) {
        long j;
        Objects.requireNonNull(obj);
        if (this.f854a >= this.f858e) {
            return false;
        }
        while (true) {
            long j2 = this.f854a;
            j = this.f857d;
            if (j2 <= j) {
                break;
            }
            ((Spliterator.InterfaceC2779d) this.f856c).tryAdvance(mo335f());
            this.f857d++;
        }
        if (j >= this.f858e) {
            return false;
        }
        this.f857d = j + 1;
        return ((Spliterator.InterfaceC2779d) this.f856c).tryAdvance(obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3155z4(Spliterator.InterfaceC2779d interfaceC2779d, long j, long j2, long j3, long j4, AbstractC3086o1 abstractC3086o1) {
        super(interfaceC2779d, j, j2, j3, j4);
    }
}
