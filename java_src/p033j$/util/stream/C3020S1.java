package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.InterfaceC2908s;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2882m;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.S1 */
/* loaded from: classes2.dex */
public final class C3020S1 extends AbstractC2926C1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C3020S1(InterfaceC2914A1 interfaceC2914A1, InterfaceC2914A1 interfaceC2914A12) {
        super(interfaceC2914A1, interfaceC2914A12);
    }

    @Override // p033j$.util.stream.InterfaceC2914A1
    public void forEach(Consumer consumer) {
        this.f791a.forEach(consumer);
        this.f792b.forEach(consumer);
    }

    @Override // p033j$.util.stream.InterfaceC2914A1
    /* renamed from: i */
    public void mo340i(Object[] objArr, int i) {
        Objects.requireNonNull(objArr);
        this.f791a.mo340i(objArr, i);
        this.f792b.mo340i(objArr, i + ((int) this.f791a.count()));
    }

    @Override // p033j$.util.stream.InterfaceC2914A1
    /* renamed from: q */
    public Object[] mo337q(InterfaceC2882m interfaceC2882m) {
        long count = count();
        if (count < 2147483639) {
            Object[] objArr = (Object[]) interfaceC2882m.apply((int) count);
            mo340i(objArr, 0);
            return objArr;
        }
        throw new IllegalArgumentException("Stream size exceeds max array size");
    }

    @Override // p033j$.util.stream.InterfaceC2914A1
    /* renamed from: r */
    public InterfaceC2914A1 mo336r(long j, long j2, InterfaceC2882m interfaceC2882m) {
        if (j == 0 && j2 == count()) {
            return this;
        }
        long count = this.f791a.count();
        return j >= count ? this.f792b.mo336r(j - count, j2 - count, interfaceC2882m) : j2 <= count ? this.f791a.mo336r(j, j2, interfaceC2882m) : AbstractC3200x2.m324i(EnumC3088e4.REFERENCE, this.f791a.mo336r(j, count, interfaceC2882m), this.f792b.mo336r(0L, j2 - count, interfaceC2882m));
    }

    @Override // p033j$.util.stream.InterfaceC2914A1
    public InterfaceC2908s spliterator() {
        return new C3116j2(this);
    }

    public String toString() {
        return count() < 32 ? String.format("ConcNode[%s.%s]", this.f791a, this.f792b) : String.format("ConcNode[size=%d]", Long.valueOf(count()));
    }
}
