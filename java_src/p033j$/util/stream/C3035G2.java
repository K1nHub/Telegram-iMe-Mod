package p033j$.util.stream;

import p033j$.util.function.BiFunction;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2955b;
/* renamed from: j$.util.stream.G2 */
/* loaded from: classes2.dex */
class C3035G2 extends AbstractC3110T2 implements InterfaceC3105S2 {

    /* renamed from: b */
    final /* synthetic */ Object f841b;

    /* renamed from: c */
    final /* synthetic */ BiFunction f842c;

    /* renamed from: d */
    final /* synthetic */ InterfaceC2955b f843d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3035G2(Object obj, BiFunction biFunction, InterfaceC2955b interfaceC2955b) {
        this.f841b = obj;
        this.f842c = biFunction;
        this.f843d = interfaceC2955b;
    }

    @Override // p033j$.util.stream.InterfaceC3219m3
    public /* synthetic */ void accept(double d) {
        AbstractC3229o1.m372f(this);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC3219m3
    public /* synthetic */ void accept(int i) {
        AbstractC3229o1.m374d(this);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC3219m3, p033j$.util.stream.InterfaceC3213l3, p033j$.util.function.InterfaceC2970q
    public /* synthetic */ void accept(long j) {
        AbstractC3229o1.m373e(this);
        throw null;
    }

    @Override // p033j$.util.function.Consumer
    public void accept(Object obj) {
        this.f940a = this.f842c.apply(this.f940a, obj);
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer.CC.$default$andThen(this, consumer);
    }

    @Override // p033j$.util.stream.InterfaceC3105S2
    /* renamed from: h */
    public void mo498h(InterfaceC3105S2 interfaceC3105S2) {
        this.f940a = this.f843d.apply(this.f940a, ((C3035G2) interfaceC3105S2).f940a);
    }

    @Override // p033j$.util.stream.InterfaceC3219m3
    /* renamed from: m */
    public /* synthetic */ void mo339m() {
    }

    @Override // p033j$.util.stream.InterfaceC3219m3
    /* renamed from: n */
    public void mo315n(long j) {
        this.f940a = this.f841b;
    }

    @Override // p033j$.util.stream.InterfaceC3219m3
    /* renamed from: o */
    public /* synthetic */ boolean mo314o() {
        return false;
    }
}
