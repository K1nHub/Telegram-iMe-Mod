package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
import p033j$.util.function.IntFunction;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.S1 */
/* loaded from: classes2.dex */
public final class C2956S1 extends AbstractC2862C1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2956S1(InterfaceC2850A1 interfaceC2850A1, InterfaceC2850A1 interfaceC2850A12) {
        super(interfaceC2850A1, interfaceC2850A12);
    }

    @Override // p033j$.util.stream.InterfaceC2850A1
    public void forEach(Consumer consumer) {
        this.f840a.forEach(consumer);
        this.f841b.forEach(consumer);
    }

    @Override // p033j$.util.stream.InterfaceC2850A1
    /* renamed from: i */
    public void mo389i(Object[] objArr, int i) {
        Objects.requireNonNull(objArr);
        this.f840a.mo389i(objArr, i);
        this.f841b.mo389i(objArr, i + ((int) this.f840a.count()));
    }

    @Override // p033j$.util.stream.InterfaceC2850A1
    /* renamed from: p */
    public Object[] mo386p(IntFunction intFunction) {
        long count = count();
        if (count < 2147483639) {
            Object[] objArr = (Object[]) intFunction.apply((int) count);
            mo389i(objArr, 0);
            return objArr;
        }
        throw new IllegalArgumentException("Stream size exceeds max array size");
    }

    @Override // p033j$.util.stream.InterfaceC2850A1
    /* renamed from: q */
    public InterfaceC2850A1 mo385q(long j, long j2, IntFunction intFunction) {
        if (j == 0 && j2 == count()) {
            return this;
        }
        long count = this.f840a.count();
        return j >= count ? this.f841b.mo385q(j - count, j2 - count, intFunction) : j2 <= count ? this.f840a.mo385q(j, j2, intFunction) : AbstractC3136x2.m373i(EnumC3024e4.REFERENCE, this.f840a.mo385q(j, count, intFunction), this.f841b.mo385q(0L, j2 - count, intFunction));
    }

    @Override // p033j$.util.stream.InterfaceC2850A1
    public Spliterator spliterator() {
        return new C3052j2(this);
    }

    public String toString() {
        return count() < 32 ? String.format("ConcNode[%s.%s]", this.f840a, this.f841b) : String.format("ConcNode[size=%d]", Long.valueOf(count()));
    }
}
