package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.InterfaceC2611s;
import p034j$.util.InterfaceC2918t;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2578f;
import p034j$.util.function.InterfaceC2585m;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.V1 */
/* loaded from: classes2.dex */
public final class C2738V1 extends C2735U3 implements InterfaceC2884u1, InterfaceC2854p1 {
    @Override // p034j$.util.stream.C2735U3
    /* renamed from: B */
    public InterfaceC2611s.InterfaceC2612a mo489B() {
        return super.spliterator();
    }

    @Override // p034j$.util.function.Consumer
    /* renamed from: C */
    public /* synthetic */ void accept(Double d) {
        AbstractC2848o1.m374a(this, d);
    }

    @Override // p034j$.util.stream.InterfaceC2617A1
    /* renamed from: D */
    public /* synthetic */ void mo337i(Double[] dArr, int i) {
        AbstractC2848o1.m367h(this, dArr, i);
    }

    @Override // p034j$.util.stream.InterfaceC2617A1
    /* renamed from: E */
    public /* synthetic */ InterfaceC2884u1 mo333r(long j, long j2, InterfaceC2585m interfaceC2585m) {
        return AbstractC2848o1.m361n(this, j, j2, interfaceC2585m);
    }

    @Override // p034j$.util.stream.InterfaceC2872s1
    /* renamed from: a */
    public InterfaceC2617A1 mo338a() {
        return this;
    }

    @Override // p034j$.util.stream.InterfaceC2854p1, p034j$.util.stream.InterfaceC2872s1
    /* renamed from: a */
    public InterfaceC2884u1 mo338a() {
        return this;
    }

    @Override // p034j$.util.stream.C2735U3, p034j$.util.function.InterfaceC2578f
    public void accept(double d) {
        super.accept(d);
    }

    @Override // p034j$.util.stream.InterfaceC2838m3
    public /* synthetic */ void accept(int i) {
        AbstractC2848o1.m371d(this);
        throw null;
    }

    @Override // p034j$.util.stream.InterfaceC2838m3, p034j$.util.stream.InterfaceC2832l3, p034j$.util.function.InterfaceC2589q
    public /* synthetic */ void accept(long j) {
        AbstractC2848o1.m370e(this);
        throw null;
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p034j$.util.stream.InterfaceC2914z1, p034j$.util.stream.InterfaceC2617A1
    /* renamed from: b */
    public InterfaceC2914z1 mo295b(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // p034j$.util.stream.AbstractC2760Z3, p034j$.util.stream.InterfaceC2914z1
    /* renamed from: d */
    public void mo293d(Object obj, int i) {
        super.mo293d((double[]) obj, i);
    }

    @Override // p034j$.util.stream.AbstractC2760Z3, p034j$.util.stream.InterfaceC2914z1
    /* renamed from: e */
    public Object mo292e() {
        return (double[]) super.mo292e();
    }

    @Override // p034j$.util.stream.AbstractC2760Z3, p034j$.util.stream.InterfaceC2914z1
    /* renamed from: g */
    public void mo291g(Object obj) {
        super.mo291g((InterfaceC2578f) obj);
    }

    @Override // p034j$.util.stream.InterfaceC2838m3
    /* renamed from: m */
    public void mo336m() {
    }

    @Override // p034j$.util.stream.InterfaceC2838m3
    /* renamed from: n */
    public void mo312n(long j) {
        clear();
        m473x(j);
    }

    @Override // p034j$.util.stream.InterfaceC2838m3
    /* renamed from: o */
    public /* synthetic */ boolean mo311o() {
        return false;
    }

    @Override // p034j$.util.stream.InterfaceC2617A1
    /* renamed from: p */
    public /* synthetic */ int mo335p() {
        return 0;
    }

    @Override // p034j$.util.stream.InterfaceC2617A1
    /* renamed from: q */
    public /* synthetic */ Object[] mo334q(InterfaceC2585m interfaceC2585m) {
        return AbstractC2848o1.m368g(this, interfaceC2585m);
    }

    @Override // p034j$.util.stream.C2735U3, p034j$.util.stream.AbstractC2760Z3, java.lang.Iterable, p034j$.lang.InterfaceC2485e
    public InterfaceC2918t spliterator() {
        return super.spliterator();
    }

    @Override // p034j$.util.stream.InterfaceC2617A1
    /* renamed from: b */
    public /* bridge */ /* synthetic */ InterfaceC2617A1 mo295b(int i) {
        mo295b(i);
        throw null;
    }

    @Override // p034j$.util.stream.C2735U3, p034j$.util.stream.AbstractC2760Z3, java.lang.Iterable, p034j$.lang.InterfaceC2485e
    public InterfaceC2611s spliterator() {
        return super.spliterator();
    }
}
