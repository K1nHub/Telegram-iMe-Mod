package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.BiFunction;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2574b;
/* renamed from: j$.util.stream.G2 */
/* loaded from: classes2.dex */
class C2654G2 extends AbstractC2729T2 implements InterfaceC2724S2 {

    /* renamed from: b */
    final /* synthetic */ Object f742b;

    /* renamed from: c */
    final /* synthetic */ BiFunction f743c;

    /* renamed from: d */
    final /* synthetic */ InterfaceC2574b f744d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2654G2(Object obj, BiFunction biFunction, InterfaceC2574b interfaceC2574b) {
        this.f742b = obj;
        this.f743c = biFunction;
        this.f744d = interfaceC2574b;
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

    @Override // p034j$.util.stream.InterfaceC2838m3, p034j$.util.stream.InterfaceC2832l3, p034j$.util.function.InterfaceC2589q
    public /* synthetic */ void accept(long j) {
        AbstractC2848o1.m370e(this);
        throw null;
    }

    @Override // p034j$.util.function.Consumer
    public void accept(Object obj) {
        this.f841a = this.f743c.apply(this.f841a, obj);
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p034j$.util.stream.InterfaceC2724S2
    /* renamed from: h */
    public void mo495h(InterfaceC2724S2 interfaceC2724S2) {
        this.f841a = this.f744d.apply(this.f841a, ((C2654G2) interfaceC2724S2).f841a);
    }

    @Override // p034j$.util.stream.InterfaceC2838m3
    /* renamed from: m */
    public /* synthetic */ void mo336m() {
    }

    @Override // p034j$.util.stream.InterfaceC2838m3
    /* renamed from: n */
    public void mo312n(long j) {
        this.f841a = this.f742b;
    }

    @Override // p034j$.util.stream.InterfaceC2838m3
    /* renamed from: o */
    public /* synthetic */ boolean mo311o() {
        return false;
    }
}
