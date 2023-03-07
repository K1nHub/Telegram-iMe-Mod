package p034j$.util.stream;

import p034j$.util.InterfaceC2487s;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2461m;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.t2 */
/* loaded from: classes2.dex */
public final class C2755t2 extends C2643a4 implements InterfaceC2493A1, InterfaceC2748s1 {
    @Override // p034j$.util.stream.InterfaceC2748s1
    /* renamed from: a */
    public InterfaceC2493A1 mo338a() {
        return this;
    }

    @Override // p034j$.util.stream.InterfaceC2714m3
    public /* synthetic */ void accept(double d) {
        AbstractC2724o1.m369f(this);
        throw null;
    }

    @Override // p034j$.util.stream.InterfaceC2714m3
    public /* synthetic */ void accept(int i) {
        AbstractC2724o1.m371d(this);
        throw null;
    }

    @Override // p034j$.util.stream.InterfaceC2714m3, p034j$.util.stream.InterfaceC2708l3, p034j$.util.function.InterfaceC2465q
    public /* synthetic */ void accept(long j) {
        AbstractC2724o1.m370e(this);
        throw null;
    }

    @Override // p034j$.util.stream.C2643a4, p034j$.util.function.Consumer
    public void accept(Object obj) {
        super.accept(obj);
    }

    @Override // p034j$.util.stream.InterfaceC2493A1
    /* renamed from: b */
    public InterfaceC2493A1 mo295b(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // p034j$.util.stream.C2643a4, p034j$.lang.InterfaceC2361e
    public void forEach(Consumer consumer) {
        super.forEach(consumer);
    }

    @Override // p034j$.util.stream.C2643a4, p034j$.util.stream.InterfaceC2493A1
    /* renamed from: i */
    public void mo337i(Object[] objArr, int i) {
        super.mo337i(objArr, i);
    }

    @Override // p034j$.util.stream.InterfaceC2714m3
    /* renamed from: m */
    public void mo336m() {
    }

    @Override // p034j$.util.stream.InterfaceC2714m3
    /* renamed from: n */
    public void mo312n(long j) {
        clear();
        m458u(j);
    }

    @Override // p034j$.util.stream.InterfaceC2714m3
    /* renamed from: o */
    public /* synthetic */ boolean mo311o() {
        return false;
    }

    @Override // p034j$.util.stream.InterfaceC2493A1
    /* renamed from: p */
    public /* synthetic */ int mo335p() {
        return 0;
    }

    @Override // p034j$.util.stream.InterfaceC2493A1
    /* renamed from: q */
    public Object[] mo334q(InterfaceC2461m interfaceC2461m) {
        long count = count();
        if (count < 2147483639) {
            Object[] objArr = (Object[]) interfaceC2461m.apply((int) count);
            mo337i(objArr, 0);
            return objArr;
        }
        throw new IllegalArgumentException("Stream size exceeds max array size");
    }

    @Override // p034j$.util.stream.InterfaceC2493A1
    /* renamed from: r */
    public /* synthetic */ InterfaceC2493A1 mo333r(long j, long j2, InterfaceC2461m interfaceC2461m) {
        return AbstractC2724o1.m358q(this, j, j2, interfaceC2461m);
    }

    @Override // p034j$.util.stream.C2643a4, java.lang.Iterable, p034j$.lang.InterfaceC2361e
    public InterfaceC2487s spliterator() {
        return super.spliterator();
    }
}
