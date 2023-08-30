package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.InterfaceC2992s;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2966m;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.S1 */
/* loaded from: classes2.dex */
public final class C3104S1 extends AbstractC3010C1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C3104S1(InterfaceC2998A1 interfaceC2998A1, InterfaceC2998A1 interfaceC2998A12) {
        super(interfaceC2998A1, interfaceC2998A12);
    }

    @Override // p033j$.util.stream.InterfaceC2998A1
    public void forEach(Consumer consumer) {
        this.f800a.forEach(consumer);
        this.f801b.forEach(consumer);
    }

    @Override // p033j$.util.stream.InterfaceC2998A1
    /* renamed from: i */
    public void mo340i(Object[] objArr, int i) {
        Objects.requireNonNull(objArr);
        this.f800a.mo340i(objArr, i);
        this.f801b.mo340i(objArr, i + ((int) this.f800a.count()));
    }

    @Override // p033j$.util.stream.InterfaceC2998A1
    /* renamed from: q */
    public Object[] mo337q(InterfaceC2966m interfaceC2966m) {
        long count = count();
        if (count < 2147483639) {
            Object[] objArr = (Object[]) interfaceC2966m.apply((int) count);
            mo340i(objArr, 0);
            return objArr;
        }
        throw new IllegalArgumentException("Stream size exceeds max array size");
    }

    @Override // p033j$.util.stream.InterfaceC2998A1
    /* renamed from: r */
    public InterfaceC2998A1 mo336r(long j, long j2, InterfaceC2966m interfaceC2966m) {
        if (j == 0 && j2 == count()) {
            return this;
        }
        long count = this.f800a.count();
        return j >= count ? this.f801b.mo336r(j - count, j2 - count, interfaceC2966m) : j2 <= count ? this.f800a.mo336r(j, j2, interfaceC2966m) : AbstractC3284x2.m324i(EnumC3172e4.REFERENCE, this.f800a.mo336r(j, count, interfaceC2966m), this.f801b.mo336r(0L, j2 - count, interfaceC2966m));
    }

    @Override // p033j$.util.stream.InterfaceC2998A1
    public InterfaceC2992s spliterator() {
        return new C3200j2(this);
    }

    public String toString() {
        return count() < 32 ? String.format("ConcNode[%s.%s]", this.f800a, this.f801b) : String.format("ConcNode[size=%d]", Long.valueOf(count()));
    }
}
