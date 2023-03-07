package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2453e;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2452d;
import p034j$.util.function.InterfaceC2454f;
/* renamed from: j$.util.stream.C2 */
/* loaded from: classes2.dex */
class C2506C2 implements InterfaceC2600S2, InterfaceC2696j3 {

    /* renamed from: a */
    private double f699a;

    /* renamed from: b */
    final /* synthetic */ double f700b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2452d f701c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2506C2(double d, InterfaceC2452d interfaceC2452d) {
        this.f700b = d;
        this.f701c = interfaceC2452d;
    }

    @Override // p034j$.util.stream.InterfaceC2714m3
    public void accept(double d) {
        this.f699a = this.f701c.applyAsDouble(this.f699a, d);
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

    @Override // p034j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Double d) {
        AbstractC2724o1.m374a(this, d);
    }

    @Override // p034j$.util.function.InterfaceC2473y
    public Object get() {
        return Double.valueOf(this.f699a);
    }

    @Override // p034j$.util.stream.InterfaceC2600S2
    /* renamed from: h */
    public void mo495h(InterfaceC2600S2 interfaceC2600S2) {
        accept(((C2506C2) interfaceC2600S2).f699a);
    }

    @Override // p034j$.util.function.InterfaceC2454f
    /* renamed from: j */
    public InterfaceC2454f mo102j(InterfaceC2454f interfaceC2454f) {
        Objects.requireNonNull(interfaceC2454f);
        return new C2453e(this, interfaceC2454f);
    }

    @Override // p034j$.util.stream.InterfaceC2714m3
    /* renamed from: m */
    public /* synthetic */ void mo336m() {
    }

    @Override // p034j$.util.stream.InterfaceC2714m3
    /* renamed from: n */
    public void mo312n(long j) {
        this.f699a = this.f700b;
    }

    @Override // p034j$.util.stream.InterfaceC2714m3
    /* renamed from: o */
    public /* synthetic */ boolean mo311o() {
        return false;
    }
}
