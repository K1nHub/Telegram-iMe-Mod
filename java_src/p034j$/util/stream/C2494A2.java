package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2464p;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2450b;
import p034j$.util.function.InterfaceC2465q;
import p034j$.util.function.InterfaceC2471w;
import p034j$.util.function.InterfaceC2473y;
/* renamed from: j$.util.stream.A2 */
/* loaded from: classes2.dex */
class C2494A2 extends AbstractC2605T2 implements InterfaceC2600S2, InterfaceC2708l3 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2473y f676b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2471w f677c;

    /* renamed from: d */
    final /* synthetic */ InterfaceC2450b f678d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2494A2(InterfaceC2473y interfaceC2473y, InterfaceC2471w interfaceC2471w, InterfaceC2450b interfaceC2450b) {
        this.f676b = interfaceC2473y;
        this.f677c = interfaceC2471w;
        this.f678d = interfaceC2450b;
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
    public void accept(long j) {
        this.f677c.accept(this.f836a, j);
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p034j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Long l) {
        AbstractC2724o1.m372c(this, l);
    }

    @Override // p034j$.util.function.InterfaceC2465q
    /* renamed from: f */
    public InterfaceC2465q mo155f(InterfaceC2465q interfaceC2465q) {
        Objects.requireNonNull(interfaceC2465q);
        return new C2464p(this, interfaceC2465q);
    }

    @Override // p034j$.util.stream.InterfaceC2600S2
    /* renamed from: h */
    public void mo495h(InterfaceC2600S2 interfaceC2600S2) {
        this.f836a = this.f678d.apply(this.f836a, ((C2494A2) interfaceC2600S2).f836a);
    }

    @Override // p034j$.util.stream.InterfaceC2714m3
    /* renamed from: m */
    public /* synthetic */ void mo336m() {
    }

    @Override // p034j$.util.stream.InterfaceC2714m3
    /* renamed from: n */
    public void mo312n(long j) {
        this.f836a = this.f676b.get();
    }

    @Override // p034j$.util.stream.InterfaceC2714m3
    /* renamed from: o */
    public /* synthetic */ boolean mo311o() {
        return false;
    }
}
