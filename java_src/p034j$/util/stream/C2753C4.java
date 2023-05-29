package p034j$.util.stream;

import java.util.Comparator;
import java.util.Objects;
import p034j$.util.AbstractC2659a;
import p034j$.util.InterfaceC2732s;
import p034j$.util.function.Consumer;
/* renamed from: j$.util.stream.C4 */
/* loaded from: classes2.dex */
final class C2753C4 extends AbstractC2759D4 implements InterfaceC2732s {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2753C4(InterfaceC2732s interfaceC2732s, long j, long j2) {
        super(interfaceC2732s, j, j2, 0L, Math.min(interfaceC2732s.estimateSize(), j2));
    }

    private C2753C4(InterfaceC2732s interfaceC2732s, long j, long j2, long j3, long j4) {
        super(interfaceC2732s, j, j2, j3, j4);
    }

    @Override // p034j$.util.stream.AbstractC2759D4
    /* renamed from: a */
    protected InterfaceC2732s mo281a(InterfaceC2732s interfaceC2732s, long j, long j2, long j3, long j4) {
        return new C2753C4(interfaceC2732s, j, j2, j3, j4);
    }

    @Override // p034j$.util.InterfaceC2732s
    /* renamed from: b */
    public boolean mo113b(Consumer consumer) {
        long j;
        Objects.requireNonNull(consumer);
        if (this.f719a >= this.f723e) {
            return false;
        }
        while (true) {
            long j2 = this.f719a;
            j = this.f722d;
            if (j2 <= j) {
                break;
            }
            this.f721c.mo113b(C2747B4.f701a);
            this.f722d++;
        }
        if (j >= this.f723e) {
            return false;
        }
        this.f722d = j + 1;
        return this.f721c.mo113b(consumer);
    }

    @Override // p034j$.util.InterfaceC2732s
    public void forEachRemaining(Consumer consumer) {
        Objects.requireNonNull(consumer);
        long j = this.f719a;
        long j2 = this.f723e;
        if (j >= j2) {
            return;
        }
        long j3 = this.f722d;
        if (j3 >= j2) {
            return;
        }
        if (j3 >= j && this.f721c.estimateSize() + j3 <= this.f720b) {
            this.f721c.forEachRemaining(consumer);
            this.f722d = this.f723e;
            return;
        }
        while (this.f719a > this.f722d) {
            this.f721c.mo113b(C2741A4.f694a);
            this.f722d++;
        }
        while (this.f722d < this.f723e) {
            this.f721c.mo113b(consumer);
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
}
