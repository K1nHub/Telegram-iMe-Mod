package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2826o;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2813b;
import p033j$.util.function.InterfaceC2827p;
import p033j$.util.function.InterfaceC2833v;
import p033j$.util.function.InterfaceC2835x;
/* renamed from: j$.util.stream.A2 */
/* loaded from: classes2.dex */
class C2853A2 extends AbstractC2964T2 implements InterfaceC2959S2, InterfaceC3067l3 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2835x f820b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2833v f821c;

    /* renamed from: d */
    final /* synthetic */ InterfaceC2813b f822d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2853A2(InterfaceC2835x interfaceC2835x, InterfaceC2833v interfaceC2833v, InterfaceC2813b interfaceC2813b) {
        this.f820b = interfaceC2835x;
        this.f821c = interfaceC2833v;
        this.f822d = interfaceC2813b;
    }

    @Override // p033j$.util.stream.InterfaceC3073m3
    public /* synthetic */ void accept(double d) {
        AbstractC3083o1.m418f(this);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC3073m3
    public /* synthetic */ void accept(int i) {
        AbstractC3083o1.m420d(this);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC3073m3, p033j$.util.stream.InterfaceC3067l3, p033j$.util.function.InterfaceC2827p
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
        AbstractC3083o1.m421c(this, l);
    }

    @Override // p033j$.util.function.InterfaceC2827p
    /* renamed from: f */
    public InterfaceC2827p mo213f(InterfaceC2827p interfaceC2827p) {
        Objects.requireNonNull(interfaceC2827p);
        return new C2826o(this, interfaceC2827p);
    }

    @Override // p033j$.util.stream.InterfaceC2959S2
    /* renamed from: h */
    public void mo544h(InterfaceC2959S2 interfaceC2959S2) {
        this.f980a = this.f822d.apply(this.f980a, ((C2853A2) interfaceC2959S2).f980a);
    }

    @Override // p033j$.util.stream.InterfaceC3073m3
    /* renamed from: l */
    public /* synthetic */ void mo385l() {
    }

    @Override // p033j$.util.stream.InterfaceC3073m3
    /* renamed from: m */
    public void mo361m(long j) {
        this.f980a = this.f820b.get();
    }

    @Override // p033j$.util.stream.InterfaceC3073m3
    /* renamed from: o */
    public /* synthetic */ boolean mo360o() {
        return false;
    }
}
