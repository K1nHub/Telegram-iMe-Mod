package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2459k;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2450b;
import p034j$.util.function.InterfaceC2460l;
import p034j$.util.function.InterfaceC2470v;
import p034j$.util.function.InterfaceC2473y;
/* renamed from: j$.util.stream.O2 */
/* loaded from: classes2.dex */
class C2578O2 extends AbstractC2605T2 implements InterfaceC2600S2, InterfaceC2702k3 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2473y f802b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2470v f803c;

    /* renamed from: d */
    final /* synthetic */ InterfaceC2450b f804d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2578O2(InterfaceC2473y interfaceC2473y, InterfaceC2470v interfaceC2470v, InterfaceC2450b interfaceC2450b) {
        this.f802b = interfaceC2473y;
        this.f803c = interfaceC2470v;
        this.f804d = interfaceC2450b;
    }

    @Override // p034j$.util.stream.InterfaceC2714m3
    public /* synthetic */ void accept(double d) {
        AbstractC2724o1.m369f(this);
        throw null;
    }

    @Override // p034j$.util.stream.InterfaceC2714m3
    public void accept(int i) {
        this.f803c.accept(this.f836a, i);
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
    public /* synthetic */ void accept(Integer num) {
        AbstractC2724o1.m373b(this, num);
    }

    @Override // p034j$.util.stream.InterfaceC2600S2
    /* renamed from: h */
    public void mo495h(InterfaceC2600S2 interfaceC2600S2) {
        this.f836a = this.f804d.apply(this.f836a, ((C2578O2) interfaceC2600S2).f836a);
    }

    @Override // p034j$.util.function.InterfaceC2460l
    /* renamed from: l */
    public InterfaceC2460l mo180l(InterfaceC2460l interfaceC2460l) {
        Objects.requireNonNull(interfaceC2460l);
        return new C2459k(this, interfaceC2460l);
    }

    @Override // p034j$.util.stream.InterfaceC2714m3
    /* renamed from: m */
    public /* synthetic */ void mo336m() {
    }

    @Override // p034j$.util.stream.InterfaceC2714m3
    /* renamed from: n */
    public void mo312n(long j) {
        this.f836a = this.f802b.get();
    }

    @Override // p034j$.util.stream.InterfaceC2714m3
    /* renamed from: o */
    public /* synthetic */ boolean mo311o() {
        return false;
    }
}
