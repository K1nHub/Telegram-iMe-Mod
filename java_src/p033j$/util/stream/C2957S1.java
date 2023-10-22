package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
import p033j$.util.function.IntFunction;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.S1 */
/* loaded from: classes2.dex */
public final class C2957S1 extends AbstractC2863C1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2957S1(InterfaceC2851A1 interfaceC2851A1, InterfaceC2851A1 interfaceC2851A12) {
        super(interfaceC2851A1, interfaceC2851A12);
    }

    @Override // p033j$.util.stream.InterfaceC2851A1
    public void forEach(Consumer consumer) {
        this.f840a.forEach(consumer);
        this.f841b.forEach(consumer);
    }

    @Override // p033j$.util.stream.InterfaceC2851A1
    /* renamed from: i */
    public void mo385i(Object[] objArr, int i) {
        Objects.requireNonNull(objArr);
        this.f840a.mo385i(objArr, i);
        this.f841b.mo385i(objArr, i + ((int) this.f840a.count()));
    }

    @Override // p033j$.util.stream.InterfaceC2851A1
    /* renamed from: p */
    public Object[] mo382p(IntFunction intFunction) {
        long count = count();
        if (count < 2147483639) {
            Object[] objArr = (Object[]) intFunction.apply((int) count);
            mo385i(objArr, 0);
            return objArr;
        }
        throw new IllegalArgumentException("Stream size exceeds max array size");
    }

    @Override // p033j$.util.stream.InterfaceC2851A1
    /* renamed from: q */
    public InterfaceC2851A1 mo381q(long j, long j2, IntFunction intFunction) {
        if (j == 0 && j2 == count()) {
            return this;
        }
        long count = this.f840a.count();
        return j >= count ? this.f841b.mo381q(j - count, j2 - count, intFunction) : j2 <= count ? this.f840a.mo381q(j, j2, intFunction) : AbstractC3137x2.m369i(EnumC3025e4.REFERENCE, this.f840a.mo381q(j, count, intFunction), this.f841b.mo381q(0L, j2 - count, intFunction));
    }

    @Override // p033j$.util.stream.InterfaceC2851A1
    public Spliterator spliterator() {
        return new C3053j2(this);
    }

    public String toString() {
        return count() < 32 ? String.format("ConcNode[%s.%s]", this.f840a, this.f841b) : String.format("ConcNode[size=%d]", Long.valueOf(count()));
    }
}
