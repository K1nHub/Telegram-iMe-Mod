package p033j$.util.stream;

import p033j$.util.function.BiFunction;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2816b;
/* renamed from: j$.util.stream.G2 */
/* loaded from: classes2.dex */
class C2892G2 extends AbstractC2967T2 implements InterfaceC2962S2 {

    /* renamed from: b */
    final /* synthetic */ Object f881b;

    /* renamed from: c */
    final /* synthetic */ BiFunction f882c;

    /* renamed from: d */
    final /* synthetic */ InterfaceC2816b f883d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2892G2(Object obj, BiFunction biFunction, InterfaceC2816b interfaceC2816b) {
        this.f881b = obj;
        this.f882c = biFunction;
        this.f883d = interfaceC2816b;
    }

    @Override // p033j$.util.stream.InterfaceC3076m3
    public /* synthetic */ void accept(double d) {
        AbstractC3086o1.m418f(this);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC3076m3
    public /* synthetic */ void accept(int i) {
        AbstractC3086o1.m420d(this);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC3076m3, p033j$.util.stream.InterfaceC3070l3, p033j$.util.function.InterfaceC2830p
    public /* synthetic */ void accept(long j) {
        AbstractC3086o1.m419e(this);
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

    @Override // p033j$.util.stream.InterfaceC2962S2
    /* renamed from: h */
    public void mo544h(InterfaceC2962S2 interfaceC2962S2) {
        this.f980a = this.f883d.apply(this.f980a, ((C2892G2) interfaceC2962S2).f980a);
    }

    @Override // p033j$.util.stream.InterfaceC3076m3
    /* renamed from: l */
    public /* synthetic */ void mo385l() {
    }

    @Override // p033j$.util.stream.InterfaceC3076m3
    /* renamed from: m */
    public void mo361m(long j) {
        this.f980a = this.f881b;
    }

    @Override // p033j$.util.stream.InterfaceC3076m3
    /* renamed from: o */
    public /* synthetic */ boolean mo360o() {
        return false;
    }
}
