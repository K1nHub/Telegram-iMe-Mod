package p033j$.util.stream;

import p033j$.util.function.IntFunction;
/* renamed from: j$.util.stream.a2 */
/* loaded from: classes2.dex */
abstract class AbstractC2998a2 implements InterfaceC2850A1 {
    @Override // p033j$.util.stream.InterfaceC2850A1
    /* renamed from: b */
    public InterfaceC2850A1 mo347b(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // p033j$.util.stream.InterfaceC2850A1
    public long count() {
        return 0L;
    }

    /* renamed from: d */
    public void m513d(Object obj, int i) {
    }

    /* renamed from: g */
    public void m512g(Object obj) {
    }

    @Override // p033j$.util.stream.InterfaceC2850A1
    /* renamed from: n */
    public /* synthetic */ int mo387n() {
        return 0;
    }

    @Override // p033j$.util.stream.InterfaceC2850A1
    /* renamed from: p */
    public Object[] mo386p(IntFunction intFunction) {
        return (Object[]) intFunction.apply(0);
    }

    @Override // p033j$.util.stream.InterfaceC2850A1
    /* renamed from: q */
    public /* synthetic */ InterfaceC2850A1 mo385q(long j, long j2, IntFunction intFunction) {
        return AbstractC3081o1.m410q(this, j, j2, intFunction);
    }
}
