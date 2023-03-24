package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.InterfaceC2625s;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2599m;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.S1 */
/* loaded from: classes2.dex */
public final class C2737S1 extends AbstractC2643C1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2737S1(InterfaceC2631A1 interfaceC2631A1, InterfaceC2631A1 interfaceC2631A12) {
        super(interfaceC2631A1, interfaceC2631A12);
    }

    @Override // p034j$.util.stream.InterfaceC2631A1
    public void forEach(Consumer consumer) {
        this.f702a.forEach(consumer);
        this.f703b.forEach(consumer);
    }

    @Override // p034j$.util.stream.InterfaceC2631A1
    /* renamed from: i */
    public void mo336i(Object[] objArr, int i) {
        Objects.requireNonNull(objArr);
        this.f702a.mo336i(objArr, i);
        this.f703b.mo336i(objArr, i + ((int) this.f702a.count()));
    }

    @Override // p034j$.util.stream.InterfaceC2631A1
    /* renamed from: q */
    public Object[] mo333q(InterfaceC2599m interfaceC2599m) {
        long count = count();
        if (count < 2147483639) {
            Object[] objArr = (Object[]) interfaceC2599m.apply((int) count);
            mo336i(objArr, 0);
            return objArr;
        }
        throw new IllegalArgumentException("Stream size exceeds max array size");
    }

    @Override // p034j$.util.stream.InterfaceC2631A1
    /* renamed from: r */
    public InterfaceC2631A1 mo332r(long j, long j2, InterfaceC2599m interfaceC2599m) {
        if (j == 0 && j2 == count()) {
            return this;
        }
        long count = this.f702a.count();
        return j >= count ? this.f703b.mo332r(j - count, j2 - count, interfaceC2599m) : j2 <= count ? this.f702a.mo332r(j, j2, interfaceC2599m) : AbstractC2917x2.m320i(EnumC2805e4.REFERENCE, this.f702a.mo332r(j, count, interfaceC2599m), this.f703b.mo332r(0L, j2 - count, interfaceC2599m));
    }

    @Override // p034j$.util.stream.InterfaceC2631A1
    public InterfaceC2625s spliterator() {
        return new C2833j2(this);
    }

    public String toString() {
        return count() < 32 ? String.format("ConcNode[%s.%s]", this.f702a, this.f703b) : String.format("ConcNode[size=%d]", Long.valueOf(count()));
    }
}
