package p033j$.util.stream;

import p033j$.util.function.IntFunction;
/* renamed from: j$.util.stream.a2 */
/* loaded from: classes2.dex */
abstract class AbstractC3000a2 implements InterfaceC2852A1 {
    @Override // p033j$.util.stream.InterfaceC2852A1
    /* renamed from: b */
    public InterfaceC2852A1 mo344b(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // p033j$.util.stream.InterfaceC2852A1
    public long count() {
        return 0L;
    }

    /* renamed from: d */
    public void m510d(Object obj, int i) {
    }

    /* renamed from: g */
    public void m509g(Object obj) {
    }

    @Override // p033j$.util.stream.InterfaceC2852A1
    /* renamed from: n */
    public /* synthetic */ int mo384n() {
        return 0;
    }

    @Override // p033j$.util.stream.InterfaceC2852A1
    /* renamed from: p */
    public Object[] mo383p(IntFunction intFunction) {
        return (Object[]) intFunction.apply(0);
    }

    @Override // p033j$.util.stream.InterfaceC2852A1
    /* renamed from: q */
    public /* synthetic */ InterfaceC2852A1 mo382q(long j, long j2, IntFunction intFunction) {
        return AbstractC3083o1.m407q(this, j, j2, intFunction);
    }
}
