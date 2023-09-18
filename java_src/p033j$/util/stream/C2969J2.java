package p033j$.util.stream;

import p033j$.util.function.BiConsumer;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2871b;
import p033j$.util.function.InterfaceC2894y;
/* renamed from: j$.util.stream.J2 */
/* loaded from: classes2.dex */
class C2969J2 extends AbstractC3026T2 implements InterfaceC3021S2 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2894y f854b;

    /* renamed from: c */
    final /* synthetic */ BiConsumer f855c;

    /* renamed from: d */
    final /* synthetic */ InterfaceC2871b f856d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2969J2(InterfaceC2894y interfaceC2894y, BiConsumer biConsumer, InterfaceC2871b interfaceC2871b) {
        this.f854b = interfaceC2894y;
        this.f855c = biConsumer;
        this.f856d = interfaceC2871b;
    }

    @Override // p033j$.util.stream.InterfaceC3135m3
    public /* synthetic */ void accept(double d) {
        AbstractC3145o1.m372f(this);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC3135m3
    public /* synthetic */ void accept(int i) {
        AbstractC3145o1.m374d(this);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC3135m3, p033j$.util.stream.InterfaceC3129l3, p033j$.util.function.InterfaceC2886q
    public /* synthetic */ void accept(long j) {
        AbstractC3145o1.m373e(this);
        throw null;
    }

    @Override // p033j$.util.function.Consumer
    public void accept(Object obj) {
        this.f855c.accept(this.f931a, obj);
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer.CC.$default$andThen(this, consumer);
    }

    @Override // p033j$.util.stream.InterfaceC3021S2
    /* renamed from: h */
    public void mo498h(InterfaceC3021S2 interfaceC3021S2) {
        this.f931a = this.f856d.apply(this.f931a, ((C2969J2) interfaceC3021S2).f931a);
    }

    @Override // p033j$.util.stream.InterfaceC3135m3
    /* renamed from: m */
    public /* synthetic */ void mo339m() {
    }

    @Override // p033j$.util.stream.InterfaceC3135m3
    /* renamed from: n */
    public void mo315n(long j) {
        this.f931a = this.f854b.get();
    }

    @Override // p033j$.util.stream.InterfaceC3135m3
    /* renamed from: o */
    public /* synthetic */ boolean mo314o() {
        return false;
    }
}
