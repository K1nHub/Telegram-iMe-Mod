package p033j$.util.stream;

import p033j$.util.function.BiConsumer;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2978y;
/* renamed from: j$.util.stream.K2 */
/* loaded from: classes2.dex */
class C3059K2 extends AbstractC3110T2 implements InterfaceC3105S2 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2978y f873b;

    /* renamed from: c */
    final /* synthetic */ BiConsumer f874c;

    /* renamed from: d */
    final /* synthetic */ BiConsumer f875d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3059K2(InterfaceC2978y interfaceC2978y, BiConsumer biConsumer, BiConsumer biConsumer2) {
        this.f873b = interfaceC2978y;
        this.f874c = biConsumer;
        this.f875d = biConsumer2;
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
        this.f874c.accept(this.f940a, obj);
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer.CC.$default$andThen(this, consumer);
    }

    @Override // p033j$.util.stream.InterfaceC3105S2
    /* renamed from: h */
    public void mo498h(InterfaceC3105S2 interfaceC3105S2) {
        this.f875d.accept(this.f940a, ((C3059K2) interfaceC3105S2).f940a);
    }

    @Override // p033j$.util.stream.InterfaceC3219m3
    /* renamed from: m */
    public /* synthetic */ void mo339m() {
    }

    @Override // p033j$.util.stream.InterfaceC3219m3
    /* renamed from: n */
    public void mo315n(long j) {
        this.f940a = this.f873b.get();
    }

    @Override // p033j$.util.stream.InterfaceC3219m3
    /* renamed from: o */
    public /* synthetic */ boolean mo314o() {
        return false;
    }
}
