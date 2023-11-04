package p033j$.util.stream;

import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
import p033j$.util.function.IntFunction;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.Q1 */
/* loaded from: classes2.dex */
public final class C2951Q1 extends AbstractC2956R1 implements InterfaceC3146y1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2951Q1(InterfaceC3146y1 interfaceC3146y1, InterfaceC3146y1 interfaceC3146y12) {
        super(interfaceC3146y1, interfaceC3146y12);
    }

    @Override // p033j$.util.stream.InterfaceC2855A1
    /* renamed from: a */
    public /* synthetic */ void mo386i(Long[] lArr, int i) {
        AbstractC3086o1.m414j(this, lArr, i);
    }

    @Override // p033j$.util.stream.InterfaceC3152z1
    /* renamed from: f */
    public long[] mo343c(int i) {
        return new long[i];
    }

    @Override // p033j$.util.stream.InterfaceC2855A1
    public /* synthetic */ void forEach(Consumer consumer) {
        AbstractC3086o1.m411m(this, consumer);
    }

    @Override // p033j$.util.stream.InterfaceC2855A1
    /* renamed from: h */
    public /* synthetic */ InterfaceC3146y1 mo382q(long j, long j2, IntFunction intFunction) {
        return AbstractC3086o1.m408p(this, j, j2, intFunction);
    }

    @Override // p033j$.util.stream.InterfaceC2855A1
    public Spliterator.InterfaceC2779d spliterator() {
        return new C3045h2(this);
    }

    @Override // p033j$.util.stream.InterfaceC2855A1
    public Spliterator spliterator() {
        return new C3045h2(this);
    }
}
