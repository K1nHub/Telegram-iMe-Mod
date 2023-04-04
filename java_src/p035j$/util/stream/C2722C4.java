package p035j$.util.stream;

import java.util.Comparator;
import java.util.Objects;
import p035j$.util.AbstractC2628a;
import p035j$.util.InterfaceC2701s;
import p035j$.util.function.Consumer;
/* renamed from: j$.util.stream.C4 */
/* loaded from: classes2.dex */
final class C2722C4 extends AbstractC2728D4 implements InterfaceC2701s {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2722C4(InterfaceC2701s interfaceC2701s, long j, long j2) {
        super(interfaceC2701s, j, j2, 0L, Math.min(interfaceC2701s.estimateSize(), j2));
    }

    private C2722C4(InterfaceC2701s interfaceC2701s, long j, long j2, long j3, long j4) {
        super(interfaceC2701s, j, j2, j3, j4);
    }

    @Override // p035j$.util.stream.AbstractC2728D4
    /* renamed from: a */
    protected InterfaceC2701s mo290a(InterfaceC2701s interfaceC2701s, long j, long j2, long j3, long j4) {
        return new C2722C4(interfaceC2701s, j, j2, j3, j4);
    }

    @Override // p035j$.util.InterfaceC2701s
    /* renamed from: b */
    public boolean mo122b(Consumer consumer) {
        long j;
        Objects.requireNonNull(consumer);
        if (this.f721a >= this.f725e) {
            return false;
        }
        while (true) {
            long j2 = this.f721a;
            j = this.f724d;
            if (j2 <= j) {
                break;
            }
            this.f723c.mo122b(C2716B4.f703a);
            this.f724d++;
        }
        if (j >= this.f725e) {
            return false;
        }
        this.f724d = j + 1;
        return this.f723c.mo122b(consumer);
    }

    @Override // p035j$.util.InterfaceC2701s
    public void forEachRemaining(Consumer consumer) {
        Objects.requireNonNull(consumer);
        long j = this.f721a;
        long j2 = this.f725e;
        if (j >= j2) {
            return;
        }
        long j3 = this.f724d;
        if (j3 >= j2) {
            return;
        }
        if (j3 >= j && this.f723c.estimateSize() + j3 <= this.f722b) {
            this.f723c.forEachRemaining(consumer);
            this.f724d = this.f725e;
            return;
        }
        while (this.f721a > this.f724d) {
            this.f723c.mo122b(C2710A4.f696a);
            this.f724d++;
        }
        while (this.f724d < this.f725e) {
            this.f723c.mo122b(consumer);
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
}
