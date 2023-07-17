package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.InterfaceC2853s;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2827m;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.S1 */
/* loaded from: classes2.dex */
public final class C2965S1 extends AbstractC2871C1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2965S1(InterfaceC2859A1 interfaceC2859A1, InterfaceC2859A1 interfaceC2859A12) {
        super(interfaceC2859A1, interfaceC2859A12);
    }

    @Override // p033j$.util.stream.InterfaceC2859A1
    public void forEach(Consumer consumer) {
        this.f787a.forEach(consumer);
        this.f788b.forEach(consumer);
    }

    @Override // p033j$.util.stream.InterfaceC2859A1
    /* renamed from: i */
    public void mo322i(Object[] objArr, int i) {
        Objects.requireNonNull(objArr);
        this.f787a.mo322i(objArr, i);
        this.f788b.mo322i(objArr, i + ((int) this.f787a.count()));
    }

    @Override // p033j$.util.stream.InterfaceC2859A1
    /* renamed from: q */
    public Object[] mo319q(InterfaceC2827m interfaceC2827m) {
        long count = count();
        if (count < 2147483639) {
            Object[] objArr = (Object[]) interfaceC2827m.apply((int) count);
            mo322i(objArr, 0);
            return objArr;
        }
        throw new IllegalArgumentException("Stream size exceeds max array size");
    }

    @Override // p033j$.util.stream.InterfaceC2859A1
    /* renamed from: r */
    public InterfaceC2859A1 mo318r(long j, long j2, InterfaceC2827m interfaceC2827m) {
        if (j == 0 && j2 == count()) {
            return this;
        }
        long count = this.f787a.count();
        return j >= count ? this.f788b.mo318r(j - count, j2 - count, interfaceC2827m) : j2 <= count ? this.f787a.mo318r(j, j2, interfaceC2827m) : AbstractC3145x2.m306i(EnumC3033e4.REFERENCE, this.f787a.mo318r(j, count, interfaceC2827m), this.f788b.mo318r(0L, j2 - count, interfaceC2827m));
    }

    @Override // p033j$.util.stream.InterfaceC2859A1
    public InterfaceC2853s spliterator() {
        return new C3061j2(this);
    }

    public String toString() {
        return count() < 32 ? String.format("ConcNode[%s.%s]", this.f787a, this.f788b) : String.format("ConcNode[size=%d]", Long.valueOf(count()));
    }
}
