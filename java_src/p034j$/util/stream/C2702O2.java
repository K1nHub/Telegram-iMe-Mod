package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2583k;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2574b;
import p034j$.util.function.InterfaceC2584l;
import p034j$.util.function.InterfaceC2594v;
import p034j$.util.function.InterfaceC2597y;
/* renamed from: j$.util.stream.O2 */
/* loaded from: classes2.dex */
class C2702O2 extends AbstractC2729T2 implements InterfaceC2724S2, InterfaceC2826k3 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2597y f807b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2594v f808c;

    /* renamed from: d */
    final /* synthetic */ InterfaceC2574b f809d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2702O2(InterfaceC2597y interfaceC2597y, InterfaceC2594v interfaceC2594v, InterfaceC2574b interfaceC2574b) {
        this.f807b = interfaceC2597y;
        this.f808c = interfaceC2594v;
        this.f809d = interfaceC2574b;
    }

    @Override // p034j$.util.stream.InterfaceC2838m3
    public /* synthetic */ void accept(double d) {
        AbstractC2848o1.m369f(this);
        throw null;
    }

    @Override // p034j$.util.stream.InterfaceC2838m3
    public void accept(int i) {
        this.f808c.accept(this.f841a, i);
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

    @Override // p034j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Integer num) {
        AbstractC2848o1.m373b(this, num);
    }

    @Override // p034j$.util.stream.InterfaceC2724S2
    /* renamed from: h */
    public void mo495h(InterfaceC2724S2 interfaceC2724S2) {
        this.f841a = this.f809d.apply(this.f841a, ((C2702O2) interfaceC2724S2).f841a);
    }

    @Override // p034j$.util.function.InterfaceC2584l
    /* renamed from: l */
    public InterfaceC2584l mo180l(InterfaceC2584l interfaceC2584l) {
        Objects.requireNonNull(interfaceC2584l);
        return new C2583k(this, interfaceC2584l);
    }

    @Override // p034j$.util.stream.InterfaceC2838m3
    /* renamed from: m */
    public /* synthetic */ void mo336m() {
    }

    @Override // p034j$.util.stream.InterfaceC2838m3
    /* renamed from: n */
    public void mo312n(long j) {
        this.f841a = this.f807b.get();
    }

    @Override // p034j$.util.stream.InterfaceC2838m3
    /* renamed from: o */
    public /* synthetic */ boolean mo311o() {
        return false;
    }
}
