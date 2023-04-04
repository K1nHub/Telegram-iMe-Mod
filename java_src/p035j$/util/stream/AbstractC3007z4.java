package p035j$.util.stream;

import java.util.Comparator;
import java.util.Objects;
import p035j$.util.AbstractC2628a;
import p035j$.util.InterfaceC3008t;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.z4 */
/* loaded from: classes2.dex */
public abstract class AbstractC3007z4 extends AbstractC2728D4 implements InterfaceC3008t {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3007z4(InterfaceC3008t interfaceC3008t, long j, long j2) {
        super(interfaceC3008t, j, j2, 0L, Math.min(interfaceC3008t.estimateSize(), j2));
    }

    /* renamed from: f */
    protected abstract Object mo280f();

    @Override // p035j$.util.InterfaceC3008t
    /* renamed from: forEachRemaining */
    public void m281e(Object obj) {
        Objects.requireNonNull(obj);
        long j = this.f721a;
        long j2 = this.f725e;
        if (j >= j2) {
            return;
        }
        long j3 = this.f724d;
        if (j3 >= j2) {
            return;
        }
        if (j3 >= j && ((InterfaceC3008t) this.f723c).estimateSize() + j3 <= this.f722b) {
            ((InterfaceC3008t) this.f723c).forEachRemaining(obj);
            this.f724d = this.f725e;
            return;
        }
        while (this.f721a > this.f724d) {
            ((InterfaceC3008t) this.f723c).tryAdvance(mo280f());
            this.f724d++;
        }
        while (this.f724d < this.f725e) {
            ((InterfaceC3008t) this.f723c).tryAdvance(obj);
            this.f724d++;
        }
    }

    @Override // p035j$.util.InterfaceC2701s
    public Comparator getComparator() {
        throw new IllegalStateException();
    }

    @Override // p035j$.util.InterfaceC2701s
    public /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2628a.m616e(this);
    }

    @Override // p035j$.util.InterfaceC2701s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2628a.m615f(this, i);
    }

    @Override // p035j$.util.InterfaceC3008t
    /* renamed from: tryAdvance */
    public boolean m277k(Object obj) {
        long j;
        Objects.requireNonNull(obj);
        if (this.f721a >= this.f725e) {
            return false;
        }
        while (true) {
            long j2 = this.f721a;
            j = this.f724d;
            if (j2 <= j) {
                break;
            }
            ((InterfaceC3008t) this.f723c).tryAdvance(mo280f());
            this.f724d++;
        }
        if (j >= this.f725e) {
            return false;
        }
        this.f724d = j + 1;
        return ((InterfaceC3008t) this.f723c).tryAdvance(obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3007z4(InterfaceC3008t interfaceC3008t, long j, long j2, long j3, long j4, AbstractC2938o1 abstractC2938o1) {
        super(interfaceC3008t, j, j2, j3, j4);
    }
}
