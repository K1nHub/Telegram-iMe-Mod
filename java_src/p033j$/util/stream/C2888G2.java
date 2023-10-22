package p033j$.util.stream;

import p033j$.util.function.BiFunction;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2812b;
/* renamed from: j$.util.stream.G2 */
/* loaded from: classes2.dex */
class C2888G2 extends AbstractC2963T2 implements InterfaceC2958S2 {

    /* renamed from: b */
    final /* synthetic */ Object f881b;

    /* renamed from: c */
    final /* synthetic */ BiFunction f882c;

    /* renamed from: d */
    final /* synthetic */ InterfaceC2812b f883d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2888G2(Object obj, BiFunction biFunction, InterfaceC2812b interfaceC2812b) {
        this.f881b = obj;
        this.f882c = biFunction;
        this.f883d = interfaceC2812b;
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
    public /* synthetic */ void accept(long j) {
        AbstractC3082o1.m418e(this);
        throw null;
    }

    @Override // p033j$.util.function.Consumer
    public void accept(Object obj) {
        this.f980a = this.f882c.apply(this.f980a, obj);
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer.CC.$default$andThen(this, consumer);
    }

    @Override // p033j$.util.stream.InterfaceC2958S2
    /* renamed from: h */
    public void mo543h(InterfaceC2958S2 interfaceC2958S2) {
        this.f980a = this.f883d.apply(this.f980a, ((C2888G2) interfaceC2958S2).f980a);
    }

    @Override // p033j$.util.stream.InterfaceC3072m3
    /* renamed from: l */
    public /* synthetic */ void mo384l() {
    }

    @Override // p033j$.util.stream.InterfaceC3072m3
    /* renamed from: m */
    public void mo360m(long j) {
        this.f980a = this.f881b;
    }

    @Override // p033j$.util.stream.InterfaceC3072m3
    /* renamed from: o */
    public /* synthetic */ boolean mo359o() {
        return false;
    }
}
