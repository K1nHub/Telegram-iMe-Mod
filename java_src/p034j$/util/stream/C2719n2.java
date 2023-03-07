package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.InterfaceC2487s;
import p034j$.util.InterfaceC2794t;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2461m;
import p034j$.util.function.InterfaceC2465q;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.n2 */
/* loaded from: classes2.dex */
public final class C2719n2 extends C2631Y3 implements InterfaceC2784y1, InterfaceC2742r1 {
    @Override // p034j$.util.stream.C2631Y3
    /* renamed from: B */
    public InterfaceC2487s.InterfaceC2490c mo382B() {
        return super.spliterator();
    }

    @Override // p034j$.util.function.Consumer
    /* renamed from: C */
    public /* synthetic */ void accept(Long l) {
        AbstractC2724o1.m372c(this, l);
    }

    @Override // p034j$.util.stream.InterfaceC2493A1
    /* renamed from: D */
    public /* synthetic */ void mo337i(Long[] lArr, int i) {
        AbstractC2724o1.m365j(this, lArr, i);
    }

    @Override // p034j$.util.stream.InterfaceC2493A1
    /* renamed from: E */
    public /* synthetic */ InterfaceC2784y1 mo333r(long j, long j2, InterfaceC2461m interfaceC2461m) {
        return AbstractC2724o1.m359p(this, j, j2, interfaceC2461m);
    }

    @Override // p034j$.util.stream.InterfaceC2742r1, p034j$.util.stream.InterfaceC2748s1
    /* renamed from: a */
    public InterfaceC2493A1 mo338a() {
        return this;
    }

    @Override // p034j$.util.stream.InterfaceC2742r1, p034j$.util.stream.InterfaceC2748s1
    /* renamed from: a */
    public InterfaceC2784y1 mo338a() {
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

    @Override // p034j$.util.stream.C2631Y3, p034j$.util.function.InterfaceC2465q
    public void accept(long j) {
        super.accept(j);
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
        super.mo293d((long[]) obj, i);
    }

    @Override // p034j$.util.stream.AbstractC2636Z3, p034j$.util.stream.InterfaceC2790z1
    /* renamed from: e */
    public Object mo292e() {
        return (long[]) super.mo292e();
    }

    @Override // p034j$.util.stream.AbstractC2636Z3, p034j$.util.stream.InterfaceC2790z1
    /* renamed from: g */
    public void mo291g(Object obj) {
        super.mo291g((InterfaceC2465q) obj);
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

    @Override // p034j$.util.stream.C2631Y3, p034j$.util.stream.AbstractC2636Z3, java.lang.Iterable, p034j$.lang.InterfaceC2361e
    public InterfaceC2794t spliterator() {
        return super.spliterator();
    }

    @Override // p034j$.util.stream.InterfaceC2790z1, p034j$.util.stream.InterfaceC2493A1
    /* renamed from: b */
    public /* bridge */ /* synthetic */ InterfaceC2493A1 mo295b(int i) {
        mo295b(i);
        throw null;
    }

    @Override // p034j$.util.stream.C2631Y3, p034j$.util.stream.AbstractC2636Z3, java.lang.Iterable, p034j$.lang.InterfaceC2361e
    public InterfaceC2487s spliterator() {
        return super.spliterator();
    }
}
