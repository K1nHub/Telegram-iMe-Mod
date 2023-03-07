package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.InterfaceC2487s;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2461m;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.S1 */
/* loaded from: classes2.dex */
public final class C2599S1 extends AbstractC2505C1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2599S1(InterfaceC2493A1 interfaceC2493A1, InterfaceC2493A1 interfaceC2493A12) {
        super(interfaceC2493A1, interfaceC2493A12);
    }

    @Override // p034j$.util.stream.InterfaceC2493A1
    public void forEach(Consumer consumer) {
        this.f696a.forEach(consumer);
        this.f697b.forEach(consumer);
    }

    @Override // p034j$.util.stream.InterfaceC2493A1
    /* renamed from: i */
    public void mo337i(Object[] objArr, int i) {
        Objects.requireNonNull(objArr);
        this.f696a.mo337i(objArr, i);
        this.f697b.mo337i(objArr, i + ((int) this.f696a.count()));
    }

    @Override // p034j$.util.stream.InterfaceC2493A1
    /* renamed from: q */
    public Object[] mo334q(InterfaceC2461m interfaceC2461m) {
        long count = count();
        if (count < 2147483639) {
            Object[] objArr = (Object[]) interfaceC2461m.apply((int) count);
            mo337i(objArr, 0);
            return objArr;
        }
        throw new IllegalArgumentException("Stream size exceeds max array size");
    }

    @Override // p034j$.util.stream.InterfaceC2493A1
    /* renamed from: r */
    public InterfaceC2493A1 mo333r(long j, long j2, InterfaceC2461m interfaceC2461m) {
        if (j == 0 && j2 == count()) {
            return this;
        }
        long count = this.f696a.count();
        return j >= count ? this.f697b.mo333r(j - count, j2 - count, interfaceC2461m) : j2 <= count ? this.f696a.mo333r(j, j2, interfaceC2461m) : AbstractC2779x2.m321i(EnumC2667e4.REFERENCE, this.f696a.mo333r(j, count, interfaceC2461m), this.f697b.mo333r(0L, j2 - count, interfaceC2461m));
    }

    @Override // p034j$.util.stream.InterfaceC2493A1
    public InterfaceC2487s spliterator() {
        return new C2695j2(this);
    }

    public String toString() {
        return count() < 32 ? String.format("ConcNode[%s.%s]", this.f696a, this.f697b) : String.format("ConcNode[size=%d]", Long.valueOf(count()));
    }
}
