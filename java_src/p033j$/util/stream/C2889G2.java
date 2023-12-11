package p033j$.util.stream;

import p033j$.util.function.BiFunction;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2813b;
/* renamed from: j$.util.stream.G2 */
/* loaded from: classes2.dex */
class C2889G2 extends AbstractC2964T2 implements InterfaceC2959S2 {

    /* renamed from: b */
    final /* synthetic */ Object f881b;

    /* renamed from: c */
    final /* synthetic */ BiFunction f882c;

    /* renamed from: d */
    final /* synthetic */ InterfaceC2813b f883d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2889G2(Object obj, BiFunction biFunction, InterfaceC2813b interfaceC2813b) {
        this.f881b = obj;
        this.f882c = biFunction;
        this.f883d = interfaceC2813b;
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
    public /* synthetic */ void accept(long j) {
        AbstractC3083o1.m419e(this);
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

    @Override // p033j$.util.stream.InterfaceC2959S2
    /* renamed from: h */
    public void mo544h(InterfaceC2959S2 interfaceC2959S2) {
        this.f980a = this.f883d.apply(this.f980a, ((C2889G2) interfaceC2959S2).f980a);
    }

    @Override // p033j$.util.stream.InterfaceC3073m3
    /* renamed from: l */
    public /* synthetic */ void mo385l() {
    }

    @Override // p033j$.util.stream.InterfaceC3073m3
    /* renamed from: m */
    public void mo361m(long j) {
        this.f980a = this.f881b;
    }

    @Override // p033j$.util.stream.InterfaceC3073m3
    /* renamed from: o */
    public /* synthetic */ boolean mo360o() {
        return false;
    }
}
