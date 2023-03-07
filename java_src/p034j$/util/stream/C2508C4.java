package p034j$.util.stream;

import java.util.Comparator;
import java.util.Objects;
import p034j$.util.AbstractC2414a;
import p034j$.util.InterfaceC2487s;
import p034j$.util.function.Consumer;
/* renamed from: j$.util.stream.C4 */
/* loaded from: classes2.dex */
final class C2508C4 extends AbstractC2514D4 implements InterfaceC2487s {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2508C4(InterfaceC2487s interfaceC2487s, long j, long j2) {
        super(interfaceC2487s, j, j2, 0L, Math.min(interfaceC2487s.estimateSize(), j2));
    }

    private C2508C4(InterfaceC2487s interfaceC2487s, long j, long j2, long j3, long j4) {
        super(interfaceC2487s, j, j2, j3, j4);
    }

    @Override // p034j$.util.stream.AbstractC2514D4
    /* renamed from: a */
    protected InterfaceC2487s mo296a(InterfaceC2487s interfaceC2487s, long j, long j2, long j3, long j4) {
        return new C2508C4(interfaceC2487s, j, j2, j3, j4);
    }

    @Override // p034j$.util.InterfaceC2487s
    /* renamed from: b */
    public boolean mo128b(Consumer consumer) {
        long j;
        Objects.requireNonNull(consumer);
        if (this.f710a >= this.f714e) {
            return false;
        }
        while (true) {
            long j2 = this.f710a;
            j = this.f713d;
            if (j2 <= j) {
                break;
            }
            this.f712c.mo128b(C2502B4.f692a);
            this.f713d++;
        }
        if (j >= this.f714e) {
            return false;
        }
        this.f713d = j + 1;
        return this.f712c.mo128b(consumer);
    }

    @Override // p034j$.util.InterfaceC2487s
    public void forEachRemaining(Consumer consumer) {
        Objects.requireNonNull(consumer);
        long j = this.f710a;
        long j2 = this.f714e;
        if (j >= j2) {
            return;
        }
        long j3 = this.f713d;
        if (j3 >= j2) {
            return;
        }
        if (j3 >= j && this.f712c.estimateSize() + j3 <= this.f711b) {
            this.f712c.forEachRemaining(consumer);
            this.f713d = this.f714e;
            return;
        }
        while (this.f710a > this.f713d) {
            this.f712c.mo128b(C2496A4.f685a);
            this.f713d++;
        }
        while (this.f713d < this.f714e) {
            this.f712c.mo128b(consumer);
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
}
