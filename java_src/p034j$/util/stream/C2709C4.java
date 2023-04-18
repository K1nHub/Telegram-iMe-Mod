package p034j$.util.stream;

import java.util.Comparator;
import java.util.Objects;
import p034j$.util.AbstractC2615a;
import p034j$.util.InterfaceC2688s;
import p034j$.util.function.Consumer;
/* renamed from: j$.util.stream.C4 */
/* loaded from: classes2.dex */
final class C2709C4 extends AbstractC2715D4 implements InterfaceC2688s {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2709C4(InterfaceC2688s interfaceC2688s, long j, long j2) {
        super(interfaceC2688s, j, j2, 0L, Math.min(interfaceC2688s.estimateSize(), j2));
    }

    private C2709C4(InterfaceC2688s interfaceC2688s, long j, long j2, long j3, long j4) {
        super(interfaceC2688s, j, j2, j3, j4);
    }

    @Override // p034j$.util.stream.AbstractC2715D4
    /* renamed from: a */
    protected InterfaceC2688s mo276a(InterfaceC2688s interfaceC2688s, long j, long j2, long j3, long j4) {
        return new C2709C4(interfaceC2688s, j, j2, j3, j4);
    }

    @Override // p034j$.util.InterfaceC2688s
    /* renamed from: b */
    public boolean mo108b(Consumer consumer) {
        long j;
        Objects.requireNonNull(consumer);
        if (this.f716a >= this.f720e) {
            return false;
        }
        while (true) {
            long j2 = this.f716a;
            j = this.f719d;
            if (j2 <= j) {
                break;
            }
            this.f718c.mo108b(C2703B4.f698a);
            this.f719d++;
        }
        if (j >= this.f720e) {
            return false;
        }
        this.f719d = j + 1;
        return this.f718c.mo108b(consumer);
    }

    @Override // p034j$.util.InterfaceC2688s
    public void forEachRemaining(Consumer consumer) {
        Objects.requireNonNull(consumer);
        long j = this.f716a;
        long j2 = this.f720e;
        if (j >= j2) {
            return;
        }
        long j3 = this.f719d;
        if (j3 >= j2) {
            return;
        }
        if (j3 >= j && this.f718c.estimateSize() + j3 <= this.f717b) {
            this.f718c.forEachRemaining(consumer);
            this.f719d = this.f720e;
            return;
        }
        while (this.f716a > this.f719d) {
            this.f718c.mo108b(C2697A4.f691a);
            this.f719d++;
        }
        while (this.f719d < this.f720e) {
            this.f718c.mo108b(consumer);
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
}
