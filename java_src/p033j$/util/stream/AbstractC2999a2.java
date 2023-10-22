package p033j$.util.stream;

import p033j$.util.function.IntFunction;
/* renamed from: j$.util.stream.a2 */
/* loaded from: classes2.dex */
abstract class AbstractC2999a2 implements InterfaceC2851A1 {
    @Override // p033j$.util.stream.InterfaceC2851A1
    /* renamed from: b */
    public InterfaceC2851A1 mo343b(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // p033j$.util.stream.InterfaceC2851A1
    public long count() {
        return 0L;
    }

    /* renamed from: d */
    public void m509d(Object obj, int i) {
    }

    /* renamed from: g */
    public void m508g(Object obj) {
    }

    @Override // p033j$.util.stream.InterfaceC2851A1
    /* renamed from: n */
    public /* synthetic */ int mo383n() {
        return 0;
    }

    @Override // p033j$.util.stream.InterfaceC2851A1
    /* renamed from: p */
    public Object[] mo382p(IntFunction intFunction) {
        return (Object[]) intFunction.apply(0);
    }

    @Override // p033j$.util.stream.InterfaceC2851A1
    /* renamed from: q */
    public /* synthetic */ InterfaceC2851A1 mo381q(long j, long j2, IntFunction intFunction) {
        return AbstractC3082o1.m406q(this, j, j2, intFunction);
    }
}
