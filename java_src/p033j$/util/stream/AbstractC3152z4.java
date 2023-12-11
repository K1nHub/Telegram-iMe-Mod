package p033j$.util.stream;

import java.util.Comparator;
import java.util.Objects;
import p033j$.util.AbstractC2840k;
import p033j$.util.Spliterator;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.z4 */
/* loaded from: classes2.dex */
public abstract class AbstractC3152z4 extends AbstractC2873D4 implements Spliterator.InterfaceC2776d {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3152z4(Spliterator.InterfaceC2776d interfaceC2776d, long j, long j2) {
        super(interfaceC2776d, j, j2, 0L, Math.min(interfaceC2776d.estimateSize(), j2));
    }

    /* renamed from: f */
    protected abstract Object mo335f();

    @Override // p033j$.util.Spliterator.InterfaceC2776d
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
        if (j3 >= j && ((Spliterator.InterfaceC2776d) this.f856c).estimateSize() + j3 <= this.f855b) {
            ((Spliterator.InterfaceC2776d) this.f856c).forEachRemaining(obj);
            this.f857d = this.f858e;
            return;
        }
        while (this.f854a > this.f857d) {
            ((Spliterator.InterfaceC2776d) this.f856c).tryAdvance(mo335f());
            this.f857d++;
        }
        while (this.f857d < this.f858e) {
            ((Spliterator.InterfaceC2776d) this.f856c).tryAdvance(obj);
            this.f857d++;
        }
    }

    @Override // p033j$.util.Spliterator
    public Comparator getComparator() {
        throw new IllegalStateException();
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2840k.m602d(this);
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2840k.m601e(this, i);
    }

    @Override // p033j$.util.Spliterator.InterfaceC2776d
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
            ((Spliterator.InterfaceC2776d) this.f856c).tryAdvance(mo335f());
            this.f857d++;
        }
        if (j >= this.f858e) {
            return false;
        }
        this.f857d = j + 1;
        return ((Spliterator.InterfaceC2776d) this.f856c).tryAdvance(obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3152z4(Spliterator.InterfaceC2776d interfaceC2776d, long j, long j2, long j3, long j4, AbstractC3083o1 abstractC3083o1) {
        super(interfaceC2776d, j, j2, j3, j4);
    }
}
