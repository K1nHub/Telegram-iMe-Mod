package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.InterfaceC2611s;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2585m;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.S1 */
/* loaded from: classes2.dex */
public final class C2723S1 extends AbstractC2629C1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2723S1(InterfaceC2617A1 interfaceC2617A1, InterfaceC2617A1 interfaceC2617A12) {
        super(interfaceC2617A1, interfaceC2617A12);
    }

    @Override // p034j$.util.stream.InterfaceC2617A1
    public void forEach(Consumer consumer) {
        this.f701a.forEach(consumer);
        this.f702b.forEach(consumer);
    }

    @Override // p034j$.util.stream.InterfaceC2617A1
    /* renamed from: i */
    public void mo337i(Object[] objArr, int i) {
        Objects.requireNonNull(objArr);
        this.f701a.mo337i(objArr, i);
        this.f702b.mo337i(objArr, i + ((int) this.f701a.count()));
    }

    @Override // p034j$.util.stream.InterfaceC2617A1
    /* renamed from: q */
    public Object[] mo334q(InterfaceC2585m interfaceC2585m) {
        long count = count();
        if (count < 2147483639) {
            Object[] objArr = (Object[]) interfaceC2585m.apply((int) count);
            mo337i(objArr, 0);
            return objArr;
        }
        throw new IllegalArgumentException("Stream size exceeds max array size");
    }

    @Override // p034j$.util.stream.InterfaceC2617A1
    /* renamed from: r */
    public InterfaceC2617A1 mo333r(long j, long j2, InterfaceC2585m interfaceC2585m) {
        if (j == 0 && j2 == count()) {
            return this;
        }
        long count = this.f701a.count();
        return j >= count ? this.f702b.mo333r(j - count, j2 - count, interfaceC2585m) : j2 <= count ? this.f701a.mo333r(j, j2, interfaceC2585m) : AbstractC2903x2.m321i(EnumC2791e4.REFERENCE, this.f701a.mo333r(j, count, interfaceC2585m), this.f702b.mo333r(0L, j2 - count, interfaceC2585m));
    }

    @Override // p034j$.util.stream.InterfaceC2617A1
    public InterfaceC2611s spliterator() {
        return new C2819j2(this);
    }

    public String toString() {
        return count() < 32 ? String.format("ConcNode[%s.%s]", this.f701a, this.f702b) : String.format("ConcNode[size=%d]", Long.valueOf(count()));
    }
}
