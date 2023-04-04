package p035j$.util.stream;

import java.util.Objects;
import p035j$.util.InterfaceC2701s;
import p035j$.util.function.Consumer;
import p035j$.util.function.InterfaceC2675m;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.S1 */
/* loaded from: classes2.dex */
public final class C2813S1 extends AbstractC2719C1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2813S1(InterfaceC2707A1 interfaceC2707A1, InterfaceC2707A1 interfaceC2707A12) {
        super(interfaceC2707A1, interfaceC2707A12);
    }

    @Override // p035j$.util.stream.InterfaceC2707A1
    public void forEach(Consumer consumer) {
        this.f707a.forEach(consumer);
        this.f708b.forEach(consumer);
    }

    @Override // p035j$.util.stream.InterfaceC2707A1
    /* renamed from: i */
    public void mo331i(Object[] objArr, int i) {
        Objects.requireNonNull(objArr);
        this.f707a.mo331i(objArr, i);
        this.f708b.mo331i(objArr, i + ((int) this.f707a.count()));
    }

    @Override // p035j$.util.stream.InterfaceC2707A1
    /* renamed from: q */
    public Object[] mo328q(InterfaceC2675m interfaceC2675m) {
        long count = count();
        if (count < 2147483639) {
            Object[] objArr = (Object[]) interfaceC2675m.apply((int) count);
            mo331i(objArr, 0);
            return objArr;
        }
        throw new IllegalArgumentException("Stream size exceeds max array size");
    }

    @Override // p035j$.util.stream.InterfaceC2707A1
    /* renamed from: r */
    public InterfaceC2707A1 mo327r(long j, long j2, InterfaceC2675m interfaceC2675m) {
        if (j == 0 && j2 == count()) {
            return this;
        }
        long count = this.f707a.count();
        return j >= count ? this.f708b.mo327r(j - count, j2 - count, interfaceC2675m) : j2 <= count ? this.f707a.mo327r(j, j2, interfaceC2675m) : AbstractC2993x2.m315i(EnumC2881e4.REFERENCE, this.f707a.mo327r(j, count, interfaceC2675m), this.f708b.mo327r(0L, j2 - count, interfaceC2675m));
    }

    @Override // p035j$.util.stream.InterfaceC2707A1
    public InterfaceC2701s spliterator() {
        return new C2909j2(this);
    }

    public String toString() {
        return count() < 32 ? String.format("ConcNode[%s.%s]", this.f707a, this.f708b) : String.format("ConcNode[size=%d]", Long.valueOf(count()));
    }
}
