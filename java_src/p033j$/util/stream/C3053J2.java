package p033j$.util.stream;

import p033j$.util.function.BiConsumer;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2955b;
import p033j$.util.function.InterfaceC2978y;
/* renamed from: j$.util.stream.J2 */
/* loaded from: classes2.dex */
class C3053J2 extends AbstractC3110T2 implements InterfaceC3105S2 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2978y f863b;

    /* renamed from: c */
    final /* synthetic */ BiConsumer f864c;

    /* renamed from: d */
    final /* synthetic */ InterfaceC2955b f865d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3053J2(InterfaceC2978y interfaceC2978y, BiConsumer biConsumer, InterfaceC2955b interfaceC2955b) {
        this.f863b = interfaceC2978y;
        this.f864c = biConsumer;
        this.f865d = interfaceC2955b;
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
        this.f864c.accept(this.f940a, obj);
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer.CC.$default$andThen(this, consumer);
    }

    @Override // p033j$.util.stream.InterfaceC3105S2
    /* renamed from: h */
    public void mo498h(InterfaceC3105S2 interfaceC3105S2) {
        this.f940a = this.f865d.apply(this.f940a, ((C3053J2) interfaceC3105S2).f940a);
    }

    @Override // p033j$.util.stream.InterfaceC3219m3
    /* renamed from: m */
    public /* synthetic */ void mo339m() {
    }

    @Override // p033j$.util.stream.InterfaceC3219m3
    /* renamed from: n */
    public void mo315n(long j) {
        this.f940a = this.f863b.get();
    }

    @Override // p033j$.util.stream.InterfaceC3219m3
    /* renamed from: o */
    public /* synthetic */ boolean mo314o() {
        return false;
    }
}
