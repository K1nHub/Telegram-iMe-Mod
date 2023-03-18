package p034j$.util.stream;

import java.util.Comparator;
import java.util.Objects;
import p034j$.util.AbstractC2538a;
import p034j$.util.InterfaceC2611s;
import p034j$.util.function.Consumer;
/* renamed from: j$.util.stream.C4 */
/* loaded from: classes2.dex */
final class C2632C4 extends AbstractC2638D4 implements InterfaceC2611s {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2632C4(InterfaceC2611s interfaceC2611s, long j, long j2) {
        super(interfaceC2611s, j, j2, 0L, Math.min(interfaceC2611s.estimateSize(), j2));
    }

    private C2632C4(InterfaceC2611s interfaceC2611s, long j, long j2, long j3, long j4) {
        super(interfaceC2611s, j, j2, j3, j4);
    }

    @Override // p034j$.util.stream.AbstractC2638D4
    /* renamed from: a */
    protected InterfaceC2611s mo296a(InterfaceC2611s interfaceC2611s, long j, long j2, long j3, long j4) {
        return new C2632C4(interfaceC2611s, j, j2, j3, j4);
    }

    @Override // p034j$.util.InterfaceC2611s
    /* renamed from: b */
    public boolean mo128b(Consumer consumer) {
        long j;
        Objects.requireNonNull(consumer);
        if (this.f715a >= this.f719e) {
            return false;
        }
        while (true) {
            long j2 = this.f715a;
            j = this.f718d;
            if (j2 <= j) {
                break;
            }
            this.f717c.mo128b(C2626B4.f697a);
            this.f718d++;
        }
        if (j >= this.f719e) {
            return false;
        }
        this.f718d = j + 1;
        return this.f717c.mo128b(consumer);
    }

    @Override // p034j$.util.InterfaceC2611s
    public void forEachRemaining(Consumer consumer) {
        Objects.requireNonNull(consumer);
        long j = this.f715a;
        long j2 = this.f719e;
        if (j >= j2) {
            return;
        }
        long j3 = this.f718d;
        if (j3 >= j2) {
            return;
        }
        if (j3 >= j && this.f717c.estimateSize() + j3 <= this.f716b) {
            this.f717c.forEachRemaining(consumer);
            this.f718d = this.f719e;
            return;
        }
        while (this.f715a > this.f718d) {
            this.f717c.mo128b(C2620A4.f690a);
            this.f718d++;
        }
        while (this.f718d < this.f719e) {
            this.f717c.mo128b(consumer);
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
}
