package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.InterfaceC2732s;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2706m;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.S1 */
/* loaded from: classes2.dex */
public final class C2844S1 extends AbstractC2750C1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2844S1(InterfaceC2738A1 interfaceC2738A1, InterfaceC2738A1 interfaceC2738A12) {
        super(interfaceC2738A1, interfaceC2738A12);
    }

    @Override // p034j$.util.stream.InterfaceC2738A1
    public void forEach(Consumer consumer) {
        this.f705a.forEach(consumer);
        this.f706b.forEach(consumer);
    }

    @Override // p034j$.util.stream.InterfaceC2738A1
    /* renamed from: i */
    public void mo322i(Object[] objArr, int i) {
        Objects.requireNonNull(objArr);
        this.f705a.mo322i(objArr, i);
        this.f706b.mo322i(objArr, i + ((int) this.f705a.count()));
    }

    @Override // p034j$.util.stream.InterfaceC2738A1
    /* renamed from: q */
    public Object[] mo319q(InterfaceC2706m interfaceC2706m) {
        long count = count();
        if (count < 2147483639) {
            Object[] objArr = (Object[]) interfaceC2706m.apply((int) count);
            mo322i(objArr, 0);
            return objArr;
        }
        throw new IllegalArgumentException("Stream size exceeds max array size");
    }

    @Override // p034j$.util.stream.InterfaceC2738A1
    /* renamed from: r */
    public InterfaceC2738A1 mo318r(long j, long j2, InterfaceC2706m interfaceC2706m) {
        if (j == 0 && j2 == count()) {
            return this;
        }
        long count = this.f705a.count();
        return j >= count ? this.f706b.mo318r(j - count, j2 - count, interfaceC2706m) : j2 <= count ? this.f705a.mo318r(j, j2, interfaceC2706m) : AbstractC3024x2.m306i(EnumC2912e4.REFERENCE, this.f705a.mo318r(j, count, interfaceC2706m), this.f706b.mo318r(0L, j2 - count, interfaceC2706m));
    }

    @Override // p034j$.util.stream.InterfaceC2738A1
    public InterfaceC2732s spliterator() {
        return new C2940j2(this);
    }

    public String toString() {
        return count() < 32 ? String.format("ConcNode[%s.%s]", this.f705a, this.f706b) : String.format("ConcNode[size=%d]", Long.valueOf(count()));
    }
}
