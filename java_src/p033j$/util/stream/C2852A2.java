package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2825o;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2812b;
import p033j$.util.function.InterfaceC2826p;
import p033j$.util.function.InterfaceC2832v;
import p033j$.util.function.InterfaceC2834x;
/* renamed from: j$.util.stream.A2 */
/* loaded from: classes2.dex */
class C2852A2 extends AbstractC2963T2 implements InterfaceC2958S2, InterfaceC3066l3 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2834x f820b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2832v f821c;

    /* renamed from: d */
    final /* synthetic */ InterfaceC2812b f822d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2852A2(InterfaceC2834x interfaceC2834x, InterfaceC2832v interfaceC2832v, InterfaceC2812b interfaceC2812b) {
        this.f820b = interfaceC2834x;
        this.f821c = interfaceC2832v;
        this.f822d = interfaceC2812b;
    }

    @Override // p033j$.util.stream.InterfaceC3072m3
    public /* synthetic */ void accept(double d) {
        AbstractC3082o1.m417f(this);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC3072m3
    public /* synthetic */ void accept(int i) {
        AbstractC3082o1.m419d(this);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC3072m3, p033j$.util.stream.InterfaceC3066l3, p033j$.util.function.InterfaceC2826p
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
        AbstractC3082o1.m420c(this, l);
    }

    @Override // p033j$.util.function.InterfaceC2826p
    /* renamed from: f */
    public InterfaceC2826p mo212f(InterfaceC2826p interfaceC2826p) {
        Objects.requireNonNull(interfaceC2826p);
        return new C2825o(this, interfaceC2826p);
    }

    @Override // p033j$.util.stream.InterfaceC2958S2
    /* renamed from: h */
    public void mo543h(InterfaceC2958S2 interfaceC2958S2) {
        this.f980a = this.f822d.apply(this.f980a, ((C2852A2) interfaceC2958S2).f980a);
    }

    @Override // p033j$.util.stream.InterfaceC3072m3
    /* renamed from: l */
    public /* synthetic */ void mo384l() {
    }

    @Override // p033j$.util.stream.InterfaceC3072m3
    /* renamed from: m */
    public void mo360m(long j) {
        this.f980a = this.f820b.get();
    }

    @Override // p033j$.util.stream.InterfaceC3072m3
    /* renamed from: o */
    public /* synthetic */ boolean mo359o() {
        return false;
    }
}
