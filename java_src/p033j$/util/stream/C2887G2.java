package p033j$.util.stream;

import p033j$.util.function.BiFunction;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2811b;
/* renamed from: j$.util.stream.G2 */
/* loaded from: classes2.dex */
class C2887G2 extends AbstractC2962T2 implements InterfaceC2957S2 {

    /* renamed from: b */
    final /* synthetic */ Object f881b;

    /* renamed from: c */
    final /* synthetic */ BiFunction f882c;

    /* renamed from: d */
    final /* synthetic */ InterfaceC2811b f883d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2887G2(Object obj, BiFunction biFunction, InterfaceC2811b interfaceC2811b) {
        this.f881b = obj;
        this.f882c = biFunction;
        this.f883d = interfaceC2811b;
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
    public /* synthetic */ void accept(long j) {
        AbstractC3081o1.m422e(this);
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

    @Override // p033j$.util.stream.InterfaceC2957S2
    /* renamed from: h */
    public void mo547h(InterfaceC2957S2 interfaceC2957S2) {
        this.f980a = this.f883d.apply(this.f980a, ((C2887G2) interfaceC2957S2).f980a);
    }

    @Override // p033j$.util.stream.InterfaceC3071m3
    /* renamed from: l */
    public /* synthetic */ void mo388l() {
    }

    @Override // p033j$.util.stream.InterfaceC3071m3
    /* renamed from: m */
    public void mo364m(long j) {
        this.f980a = this.f881b;
    }

    @Override // p033j$.util.stream.InterfaceC3071m3
    /* renamed from: o */
    public /* synthetic */ boolean mo363o() {
        return false;
    }
}
