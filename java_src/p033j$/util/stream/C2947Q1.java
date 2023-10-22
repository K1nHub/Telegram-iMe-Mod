package p033j$.util.stream;

import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
import p033j$.util.function.IntFunction;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.Q1 */
/* loaded from: classes2.dex */
public final class C2947Q1 extends AbstractC2952R1 implements InterfaceC3142y1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2947Q1(InterfaceC3142y1 interfaceC3142y1, InterfaceC3142y1 interfaceC3142y12) {
        super(interfaceC3142y1, interfaceC3142y12);
    }

    @Override // p033j$.util.stream.InterfaceC2851A1
    /* renamed from: a */
    public /* synthetic */ void mo385i(Long[] lArr, int i) {
        AbstractC3082o1.m413j(this, lArr, i);
    }

    @Override // p033j$.util.stream.InterfaceC3148z1
    /* renamed from: f */
    public long[] mo342c(int i) {
        return new long[i];
    }

    @Override // p033j$.util.stream.InterfaceC2851A1
    public /* synthetic */ void forEach(Consumer consumer) {
        AbstractC3082o1.m410m(this, consumer);
    }

    @Override // p033j$.util.stream.InterfaceC2851A1
    /* renamed from: h */
    public /* synthetic */ InterfaceC3142y1 mo381q(long j, long j2, IntFunction intFunction) {
        return AbstractC3082o1.m407p(this, j, j2, intFunction);
    }

    @Override // p033j$.util.stream.InterfaceC2851A1
    public Spliterator.InterfaceC2775d spliterator() {
        return new C3041h2(this);
    }

    @Override // p033j$.util.stream.InterfaceC2851A1
    public Spliterator spliterator() {
        return new C3041h2(this);
    }
}
