package p033j$.util.stream;

import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
import p033j$.util.function.IntFunction;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.t2 */
/* loaded from: classes2.dex */
public final class C3112t2 extends C3000a4 implements InterfaceC2850A1, InterfaceC3105s1 {
    @Override // p033j$.util.stream.InterfaceC3105s1
    /* renamed from: a */
    public InterfaceC2850A1 mo390a() {
        return this;
    }

    @Override // p033j$.util.stream.InterfaceC3071m3
    public /* synthetic */ void accept(double d) {
        AbstractC3081o1.m421f(this);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC3071m3
    public /* synthetic */ void accept(int i) {
        AbstractC3081o1.m423d(this);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC3071m3, p033j$.util.stream.InterfaceC3065l3, p033j$.util.function.InterfaceC2825p
    public /* synthetic */ void accept(long j) {
        AbstractC3081o1.m422e(this);
        throw null;
    }

    @Override // p033j$.util.stream.C3000a4, p033j$.util.function.Consumer
    public void accept(Object obj) {
        super.accept(obj);
    }

    @Override // p033j$.util.stream.InterfaceC2850A1
    /* renamed from: b */
    public InterfaceC2850A1 mo347b(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // p033j$.util.stream.C3000a4, p033j$.lang.InterfaceC2669e
    public void forEach(Consumer consumer) {
        super.forEach(consumer);
    }

    @Override // p033j$.util.stream.C3000a4, p033j$.util.stream.InterfaceC2850A1
    /* renamed from: i */
    public void mo389i(Object[] objArr, int i) {
        super.mo389i(objArr, i);
    }

    @Override // p033j$.util.stream.InterfaceC3071m3
    /* renamed from: l */
    public void mo388l() {
    }

    @Override // p033j$.util.stream.InterfaceC3071m3
    /* renamed from: m */
    public void mo364m(long j) {
        clear();
        m510t(j);
    }

    @Override // p033j$.util.stream.InterfaceC2850A1
    /* renamed from: n */
    public /* synthetic */ int mo387n() {
        return 0;
    }

    @Override // p033j$.util.stream.InterfaceC3071m3
    /* renamed from: o */
    public /* synthetic */ boolean mo363o() {
        return false;
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
    public /* synthetic */ InterfaceC2850A1 mo385q(long j, long j2, IntFunction intFunction) {
        return AbstractC3081o1.m410q(this, j, j2, intFunction);
    }

    @Override // p033j$.util.stream.C3000a4, java.lang.Iterable, p033j$.lang.InterfaceC2669e
    public Spliterator spliterator() {
        return super.spliterator();
    }
}
