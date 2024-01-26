package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2824o;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2811b;
import p033j$.util.function.InterfaceC2825p;
import p033j$.util.function.InterfaceC2831v;
import p033j$.util.function.InterfaceC2833x;
/* renamed from: j$.util.stream.A2 */
/* loaded from: classes2.dex */
class C2851A2 extends AbstractC2962T2 implements InterfaceC2957S2, InterfaceC3065l3 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2833x f820b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2831v f821c;

    /* renamed from: d */
    final /* synthetic */ InterfaceC2811b f822d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2851A2(InterfaceC2833x interfaceC2833x, InterfaceC2831v interfaceC2831v, InterfaceC2811b interfaceC2811b) {
        this.f820b = interfaceC2833x;
        this.f821c = interfaceC2831v;
        this.f822d = interfaceC2811b;
    }

    @Override // p033j$.util.stream.InterfaceC3071m3
    public /* synthetic */ void accept(double d) {
        AbstractC3081o1.m421f(this);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC3071m3
    public /* synthetic */ void accept(int i) {
        AbstractC3081o1.m423d(this);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC3071m3, p033j$.util.stream.InterfaceC3065l3, p033j$.util.function.InterfaceC2825p
    public void accept(long j) {
        this.f821c.accept(this.f980a, j);
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer.CC.$default$andThen(this, consumer);
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Long l) {
        AbstractC3081o1.m424c(this, l);
    }

    @Override // p033j$.util.function.InterfaceC2825p
    /* renamed from: f */
    public InterfaceC2825p mo216f(InterfaceC2825p interfaceC2825p) {
        Objects.requireNonNull(interfaceC2825p);
        return new C2824o(this, interfaceC2825p);
    }

    @Override // p033j$.util.stream.InterfaceC2957S2
    /* renamed from: h */
    public void mo547h(InterfaceC2957S2 interfaceC2957S2) {
        this.f980a = this.f822d.apply(this.f980a, ((C2851A2) interfaceC2957S2).f980a);
    }

    @Override // p033j$.util.stream.InterfaceC3071m3
    /* renamed from: l */
    public /* synthetic */ void mo388l() {
    }

    @Override // p033j$.util.stream.InterfaceC3071m3
    /* renamed from: m */
    public void mo364m(long j) {
        this.f980a = this.f820b.get();
    }

    @Override // p033j$.util.stream.InterfaceC3071m3
    /* renamed from: o */
    public /* synthetic */ boolean mo363o() {
        return false;
    }
}
