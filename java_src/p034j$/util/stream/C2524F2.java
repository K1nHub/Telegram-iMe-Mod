package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2453e;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2450b;
import p034j$.util.function.InterfaceC2454f;
import p034j$.util.function.InterfaceC2469u;
import p034j$.util.function.InterfaceC2473y;
/* renamed from: j$.util.stream.F2 */
/* loaded from: classes2.dex */
class C2524F2 extends AbstractC2605T2 implements InterfaceC2600S2, InterfaceC2696j3 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2473y f728b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2469u f729c;

    /* renamed from: d */
    final /* synthetic */ InterfaceC2450b f730d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2524F2(InterfaceC2473y interfaceC2473y, InterfaceC2469u interfaceC2469u, InterfaceC2450b interfaceC2450b) {
        this.f728b = interfaceC2473y;
        this.f729c = interfaceC2469u;
        this.f730d = interfaceC2450b;
    }

    @Override // p034j$.util.stream.InterfaceC2714m3
    public void accept(double d) {
        this.f729c.accept(this.f836a, d);
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

    @Override // p034j$.util.stream.InterfaceC2600S2
    /* renamed from: h */
    public void mo495h(InterfaceC2600S2 interfaceC2600S2) {
        this.f836a = this.f730d.apply(this.f836a, ((C2524F2) interfaceC2600S2).f836a);
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
        this.f836a = this.f728b.get();
    }

    @Override // p034j$.util.stream.InterfaceC2714m3
    /* renamed from: o */
    public /* synthetic */ boolean mo311o() {
        return false;
    }
}
