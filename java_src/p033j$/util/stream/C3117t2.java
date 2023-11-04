package p033j$.util.stream;

import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
import p033j$.util.function.IntFunction;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.t2 */
/* loaded from: classes2.dex */
public final class C3117t2 extends C3005a4 implements InterfaceC2855A1, InterfaceC3110s1 {
    @Override // p033j$.util.stream.InterfaceC3110s1
    /* renamed from: a */
    public InterfaceC2855A1 mo387a() {
        return this;
    }

    @Override // p033j$.util.stream.InterfaceC3076m3
    public /* synthetic */ void accept(double d) {
        AbstractC3086o1.m418f(this);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC3076m3
    public /* synthetic */ void accept(int i) {
        AbstractC3086o1.m420d(this);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC3076m3, p033j$.util.stream.InterfaceC3070l3, p033j$.util.function.InterfaceC2830p
    public /* synthetic */ void accept(long j) {
        AbstractC3086o1.m419e(this);
        throw null;
    }

    @Override // p033j$.util.stream.C3005a4, p033j$.util.function.Consumer
    public void accept(Object obj) {
        super.accept(obj);
    }

    @Override // p033j$.util.stream.InterfaceC2855A1
    /* renamed from: b */
    public InterfaceC2855A1 mo344b(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // p033j$.util.stream.C3005a4, p033j$.lang.InterfaceC2674e
    public void forEach(Consumer consumer) {
        super.forEach(consumer);
    }

    @Override // p033j$.util.stream.C3005a4, p033j$.util.stream.InterfaceC2855A1
    /* renamed from: i */
    public void mo386i(Object[] objArr, int i) {
        super.mo386i(objArr, i);
    }

    @Override // p033j$.util.stream.InterfaceC3076m3
    /* renamed from: l */
    public void mo385l() {
    }

    @Override // p033j$.util.stream.InterfaceC3076m3
    /* renamed from: m */
    public void mo361m(long j) {
        clear();
        m507t(j);
    }

    @Override // p033j$.util.stream.InterfaceC2855A1
    /* renamed from: n */
    public /* synthetic */ int mo384n() {
        return 0;
    }

    @Override // p033j$.util.stream.InterfaceC3076m3
    /* renamed from: o */
    public /* synthetic */ boolean mo360o() {
        return false;
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
    public /* synthetic */ InterfaceC2855A1 mo382q(long j, long j2, IntFunction intFunction) {
        return AbstractC3086o1.m407q(this, j, j2, intFunction);
    }

    @Override // p033j$.util.stream.C3005a4, java.lang.Iterable, p033j$.lang.InterfaceC2674e
    public Spliterator spliterator() {
        return super.spliterator();
    }
}
