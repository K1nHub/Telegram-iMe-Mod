package p034j$.util.stream;

import java.util.Comparator;
import java.util.Objects;
import p034j$.util.AbstractC2654a;
import p034j$.util.InterfaceC2727s;
import p034j$.util.function.Consumer;
/* renamed from: j$.util.stream.C4 */
/* loaded from: classes2.dex */
final class C2748C4 extends AbstractC2754D4 implements InterfaceC2727s {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2748C4(InterfaceC2727s interfaceC2727s, long j, long j2) {
        super(interfaceC2727s, j, j2, 0L, Math.min(interfaceC2727s.estimateSize(), j2));
    }

    private C2748C4(InterfaceC2727s interfaceC2727s, long j, long j2, long j3, long j4) {
        super(interfaceC2727s, j, j2, j3, j4);
    }

    @Override // p034j$.util.stream.AbstractC2754D4
    /* renamed from: a */
    protected InterfaceC2727s mo281a(InterfaceC2727s interfaceC2727s, long j, long j2, long j3, long j4) {
        return new C2748C4(interfaceC2727s, j, j2, j3, j4);
    }

    @Override // p034j$.util.InterfaceC2727s
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
            this.f721c.mo113b(C2742B4.f701a);
            this.f722d++;
        }
        if (j >= this.f723e) {
            return false;
        }
        this.f722d = j + 1;
        return this.f721c.mo113b(consumer);
    }

    @Override // p034j$.util.InterfaceC2727s
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
            this.f721c.mo113b(C2736A4.f694a);
            this.f722d++;
        }
        while (this.f722d < this.f723e) {
            this.f721c.mo113b(consumer);
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
}
