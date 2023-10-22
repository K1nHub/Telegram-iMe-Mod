package p033j$.util.stream;

import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
import p033j$.util.function.IntFunction;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.t2 */
/* loaded from: classes2.dex */
public final class C3113t2 extends C3001a4 implements InterfaceC2851A1, InterfaceC3106s1 {
    @Override // p033j$.util.stream.InterfaceC3106s1
    /* renamed from: a */
    public InterfaceC2851A1 mo386a() {
        return this;
    }

    @Override // p033j$.util.stream.InterfaceC3072m3
    public /* synthetic */ void accept(double d) {
        AbstractC3082o1.m417f(this);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC3072m3
    public /* synthetic */ void accept(int i) {
        AbstractC3082o1.m419d(this);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC3072m3, p033j$.util.stream.InterfaceC3066l3, p033j$.util.function.InterfaceC2826p
    public /* synthetic */ void accept(long j) {
        AbstractC3082o1.m418e(this);
        throw null;
    }

    @Override // p033j$.util.stream.C3001a4, p033j$.util.function.Consumer
    public void accept(Object obj) {
        super.accept(obj);
    }

    @Override // p033j$.util.stream.InterfaceC2851A1
    /* renamed from: b */
    public InterfaceC2851A1 mo343b(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // p033j$.util.stream.C3001a4, p033j$.lang.InterfaceC2670e
    public void forEach(Consumer consumer) {
        super.forEach(consumer);
    }

    @Override // p033j$.util.stream.C3001a4, p033j$.util.stream.InterfaceC2851A1
    /* renamed from: i */
    public void mo385i(Object[] objArr, int i) {
        super.mo385i(objArr, i);
    }

    @Override // p033j$.util.stream.InterfaceC3072m3
    /* renamed from: l */
    public void mo384l() {
    }

    @Override // p033j$.util.stream.InterfaceC3072m3
    /* renamed from: m */
    public void mo360m(long j) {
        clear();
        m506t(j);
    }

    @Override // p033j$.util.stream.InterfaceC2851A1
    /* renamed from: n */
    public /* synthetic */ int mo383n() {
        return 0;
    }

    @Override // p033j$.util.stream.InterfaceC3072m3
    /* renamed from: o */
    public /* synthetic */ boolean mo359o() {
        return false;
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
    public /* synthetic */ InterfaceC2851A1 mo381q(long j, long j2, IntFunction intFunction) {
        return AbstractC3082o1.m406q(this, j, j2, intFunction);
    }

    @Override // p033j$.util.stream.C3001a4, java.lang.Iterable, p033j$.lang.InterfaceC2670e
    public Spliterator spliterator() {
        return super.spliterator();
    }
}
