package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
import p033j$.util.function.IntFunction;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.S1 */
/* loaded from: classes2.dex */
public final class C2961S1 extends AbstractC2867C1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2961S1(InterfaceC2855A1 interfaceC2855A1, InterfaceC2855A1 interfaceC2855A12) {
        super(interfaceC2855A1, interfaceC2855A12);
    }

    @Override // p033j$.util.stream.InterfaceC2855A1
    public void forEach(Consumer consumer) {
        this.f840a.forEach(consumer);
        this.f841b.forEach(consumer);
    }

    @Override // p033j$.util.stream.InterfaceC2855A1
    /* renamed from: i */
    public void mo386i(Object[] objArr, int i) {
        Objects.requireNonNull(objArr);
        this.f840a.mo386i(objArr, i);
        this.f841b.mo386i(objArr, i + ((int) this.f840a.count()));
    }

    @Override // p033j$.util.stream.InterfaceC2855A1
    /* renamed from: p */
    public Object[] mo383p(IntFunction intFunction) {
        long count = count();
        if (count < 2147483639) {
            Object[] objArr = (Object[]) intFunction.apply((int) count);
            mo386i(objArr, 0);
            return objArr;
        }
        throw new IllegalArgumentException("Stream size exceeds max array size");
    }

    @Override // p033j$.util.stream.InterfaceC2855A1
    /* renamed from: q */
    public InterfaceC2855A1 mo382q(long j, long j2, IntFunction intFunction) {
        if (j == 0 && j2 == count()) {
            return this;
        }
        long count = this.f840a.count();
        return j >= count ? this.f841b.mo382q(j - count, j2 - count, intFunction) : j2 <= count ? this.f840a.mo382q(j, j2, intFunction) : AbstractC3141x2.m370i(EnumC3029e4.REFERENCE, this.f840a.mo382q(j, count, intFunction), this.f841b.mo382q(0L, j2 - count, intFunction));
    }

    @Override // p033j$.util.stream.InterfaceC2855A1
    public Spliterator spliterator() {
        return new C3057j2(this);
    }

    public String toString() {
        return count() < 32 ? String.format("ConcNode[%s.%s]", this.f840a, this.f841b) : String.format("ConcNode[size=%d]", Long.valueOf(count()));
    }
}
