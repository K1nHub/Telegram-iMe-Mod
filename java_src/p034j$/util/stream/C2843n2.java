package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.InterfaceC2611s;
import p034j$.util.InterfaceC2918t;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2585m;
import p034j$.util.function.InterfaceC2589q;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.n2 */
/* loaded from: classes2.dex */
public final class C2843n2 extends C2755Y3 implements InterfaceC2908y1, InterfaceC2866r1 {
    @Override // p034j$.util.stream.C2755Y3
    /* renamed from: B */
    public InterfaceC2611s.InterfaceC2614c mo382B() {
        return super.spliterator();
    }

    @Override // p034j$.util.function.Consumer
    /* renamed from: C */
    public /* synthetic */ void accept(Long l) {
        AbstractC2848o1.m372c(this, l);
    }

    @Override // p034j$.util.stream.InterfaceC2617A1
    /* renamed from: D */
    public /* synthetic */ void mo337i(Long[] lArr, int i) {
        AbstractC2848o1.m365j(this, lArr, i);
    }

    @Override // p034j$.util.stream.InterfaceC2617A1
    /* renamed from: E */
    public /* synthetic */ InterfaceC2908y1 mo333r(long j, long j2, InterfaceC2585m interfaceC2585m) {
        return AbstractC2848o1.m359p(this, j, j2, interfaceC2585m);
    }

    @Override // p034j$.util.stream.InterfaceC2872s1
    /* renamed from: a */
    public InterfaceC2617A1 mo338a() {
        return this;
    }

    @Override // p034j$.util.stream.InterfaceC2866r1, p034j$.util.stream.InterfaceC2872s1
    /* renamed from: a */
    public InterfaceC2908y1 mo338a() {
        return this;
    }

    @Override // p034j$.util.stream.InterfaceC2838m3
    public /* synthetic */ void accept(double d) {
        AbstractC2848o1.m369f(this);
        throw null;
    }

    @Override // p034j$.util.stream.InterfaceC2838m3
    public /* synthetic */ void accept(int i) {
        AbstractC2848o1.m371d(this);
        throw null;
    }

    @Override // p034j$.util.stream.C2755Y3, p034j$.util.function.InterfaceC2589q
    public void accept(long j) {
        super.accept(j);
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
        super.mo293d((long[]) obj, i);
    }

    @Override // p034j$.util.stream.AbstractC2760Z3, p034j$.util.stream.InterfaceC2914z1
    /* renamed from: e */
    public Object mo292e() {
        return (long[]) super.mo292e();
    }

    @Override // p034j$.util.stream.AbstractC2760Z3, p034j$.util.stream.InterfaceC2914z1
    /* renamed from: g */
    public void mo291g(Object obj) {
        super.mo291g((InterfaceC2589q) obj);
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

    @Override // p034j$.util.stream.C2755Y3, p034j$.util.stream.AbstractC2760Z3, java.lang.Iterable, p034j$.lang.InterfaceC2485e
    public InterfaceC2918t spliterator() {
        return super.spliterator();
    }

    @Override // p034j$.util.stream.InterfaceC2617A1
    /* renamed from: b */
    public /* bridge */ /* synthetic */ InterfaceC2617A1 mo295b(int i) {
        mo295b(i);
        throw null;
    }

    @Override // p034j$.util.stream.C2755Y3, p034j$.util.stream.AbstractC2760Z3, java.lang.Iterable, p034j$.lang.InterfaceC2485e
    public InterfaceC2611s spliterator() {
        return super.spliterator();
    }
}
