package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.InterfaceC2487s;
import p034j$.util.InterfaceC2794t;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2454f;
import p034j$.util.function.InterfaceC2461m;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.V1 */
/* loaded from: classes2.dex */
public final class C2614V1 extends C2611U3 implements InterfaceC2760u1, InterfaceC2730p1 {
    @Override // p034j$.util.stream.C2611U3
    /* renamed from: B */
    public InterfaceC2487s.InterfaceC2488a mo489B() {
        return super.spliterator();
    }

    @Override // p034j$.util.function.Consumer
    /* renamed from: C */
    public /* synthetic */ void accept(Double d) {
        AbstractC2724o1.m374a(this, d);
    }

    @Override // p034j$.util.stream.InterfaceC2493A1
    /* renamed from: D */
    public /* synthetic */ void mo337i(Double[] dArr, int i) {
        AbstractC2724o1.m367h(this, dArr, i);
    }

    @Override // p034j$.util.stream.InterfaceC2493A1
    /* renamed from: E */
    public /* synthetic */ InterfaceC2760u1 mo333r(long j, long j2, InterfaceC2461m interfaceC2461m) {
        return AbstractC2724o1.m361n(this, j, j2, interfaceC2461m);
    }

    @Override // p034j$.util.stream.InterfaceC2730p1, p034j$.util.stream.InterfaceC2748s1
    /* renamed from: a */
    public InterfaceC2493A1 mo338a() {
        return this;
    }

    @Override // p034j$.util.stream.InterfaceC2730p1, p034j$.util.stream.InterfaceC2748s1
    /* renamed from: a */
    public InterfaceC2760u1 mo338a() {
        return this;
    }

    @Override // p034j$.util.stream.C2611U3, p034j$.util.function.InterfaceC2454f
    public void accept(double d) {
        super.accept(d);
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

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p034j$.util.stream.InterfaceC2790z1, p034j$.util.stream.InterfaceC2493A1
    /* renamed from: b */
    public InterfaceC2790z1 mo295b(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // p034j$.util.stream.AbstractC2636Z3, p034j$.util.stream.InterfaceC2790z1
    /* renamed from: d */
    public void mo293d(Object obj, int i) {
        super.mo293d((double[]) obj, i);
    }

    @Override // p034j$.util.stream.AbstractC2636Z3, p034j$.util.stream.InterfaceC2790z1
    /* renamed from: e */
    public Object mo292e() {
        return (double[]) super.mo292e();
    }

    @Override // p034j$.util.stream.AbstractC2636Z3, p034j$.util.stream.InterfaceC2790z1
    /* renamed from: g */
    public void mo291g(Object obj) {
        super.mo291g((InterfaceC2454f) obj);
    }

    @Override // p034j$.util.stream.InterfaceC2714m3
    /* renamed from: m */
    public void mo336m() {
    }

    @Override // p034j$.util.stream.InterfaceC2714m3
    /* renamed from: n */
    public void mo312n(long j) {
        clear();
        m473x(j);
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
    public /* synthetic */ Object[] mo334q(InterfaceC2461m interfaceC2461m) {
        return AbstractC2724o1.m368g(this, interfaceC2461m);
    }

    @Override // p034j$.util.stream.C2611U3, p034j$.util.stream.AbstractC2636Z3, java.lang.Iterable, p034j$.lang.InterfaceC2361e
    public InterfaceC2794t spliterator() {
        return super.spliterator();
    }

    @Override // p034j$.util.stream.InterfaceC2790z1, p034j$.util.stream.InterfaceC2493A1
    /* renamed from: b */
    public /* bridge */ /* synthetic */ InterfaceC2493A1 mo295b(int i) {
        mo295b(i);
        throw null;
    }

    @Override // p034j$.util.stream.C2611U3, p034j$.util.stream.AbstractC2636Z3, java.lang.Iterable, p034j$.lang.InterfaceC2361e
    public InterfaceC2487s spliterator() {
        return super.spliterator();
    }
}
