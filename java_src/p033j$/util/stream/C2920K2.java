package p033j$.util.stream;

import p033j$.util.function.BiConsumer;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2839y;
/* renamed from: j$.util.stream.K2 */
/* loaded from: classes2.dex */
class C2920K2 extends AbstractC2971T2 implements InterfaceC2966S2 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2839y f863b;

    /* renamed from: c */
    final /* synthetic */ BiConsumer f864c;

    /* renamed from: d */
    final /* synthetic */ BiConsumer f865d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2920K2(InterfaceC2839y interfaceC2839y, BiConsumer biConsumer, BiConsumer biConsumer2) {
        this.f863b = interfaceC2839y;
        this.f864c = biConsumer;
        this.f865d = biConsumer2;
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    public /* synthetic */ void accept(double d) {
        AbstractC3090o1.m372f(this);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    public /* synthetic */ void accept(int i) {
        AbstractC3090o1.m374d(this);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC3080m3, p033j$.util.stream.InterfaceC3074l3, p033j$.util.function.InterfaceC2831q
    public /* synthetic */ void accept(long j) {
        AbstractC3090o1.m373e(this);
        throw null;
    }

    @Override // p033j$.util.function.Consumer
    public void accept(Object obj) {
        this.f864c.accept(this.f930a, obj);
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer.CC.$default$andThen(this, consumer);
    }

    @Override // p033j$.util.stream.InterfaceC2966S2
    /* renamed from: h */
    public void mo498h(InterfaceC2966S2 interfaceC2966S2) {
        this.f865d.accept(this.f930a, ((C2920K2) interfaceC2966S2).f930a);
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: m */
    public /* synthetic */ void mo339m() {
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: n */
    public void mo315n(long j) {
        this.f930a = this.f863b.get();
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: o */
    public /* synthetic */ boolean mo314o() {
        return false;
    }
}
