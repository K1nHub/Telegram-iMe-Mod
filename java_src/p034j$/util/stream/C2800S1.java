package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.InterfaceC2688s;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2662m;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.S1 */
/* loaded from: classes2.dex */
public final class C2800S1 extends AbstractC2706C1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2800S1(InterfaceC2694A1 interfaceC2694A1, InterfaceC2694A1 interfaceC2694A12) {
        super(interfaceC2694A1, interfaceC2694A12);
    }

    @Override // p034j$.util.stream.InterfaceC2694A1
    public void forEach(Consumer consumer) {
        this.f702a.forEach(consumer);
        this.f703b.forEach(consumer);
    }

    @Override // p034j$.util.stream.InterfaceC2694A1
    /* renamed from: i */
    public void mo317i(Object[] objArr, int i) {
        Objects.requireNonNull(objArr);
        this.f702a.mo317i(objArr, i);
        this.f703b.mo317i(objArr, i + ((int) this.f702a.count()));
    }

    @Override // p034j$.util.stream.InterfaceC2694A1
    /* renamed from: q */
    public Object[] mo314q(InterfaceC2662m interfaceC2662m) {
        long count = count();
        if (count < 2147483639) {
            Object[] objArr = (Object[]) interfaceC2662m.apply((int) count);
            mo317i(objArr, 0);
            return objArr;
        }
        throw new IllegalArgumentException("Stream size exceeds max array size");
    }

    @Override // p034j$.util.stream.InterfaceC2694A1
    /* renamed from: r */
    public InterfaceC2694A1 mo313r(long j, long j2, InterfaceC2662m interfaceC2662m) {
        if (j == 0 && j2 == count()) {
            return this;
        }
        long count = this.f702a.count();
        return j >= count ? this.f703b.mo313r(j - count, j2 - count, interfaceC2662m) : j2 <= count ? this.f702a.mo313r(j, j2, interfaceC2662m) : AbstractC2980x2.m301i(EnumC2868e4.REFERENCE, this.f702a.mo313r(j, count, interfaceC2662m), this.f703b.mo313r(0L, j2 - count, interfaceC2662m));
    }

    @Override // p034j$.util.stream.InterfaceC2694A1
    public InterfaceC2688s spliterator() {
        return new C2896j2(this);
    }

    public String toString() {
        return count() < 32 ? String.format("ConcNode[%s.%s]", this.f702a, this.f703b) : String.format("ConcNode[size=%d]", Long.valueOf(count()));
    }
}
