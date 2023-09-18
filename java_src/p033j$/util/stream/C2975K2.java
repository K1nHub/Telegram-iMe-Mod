package p033j$.util.stream;

import p033j$.util.function.BiConsumer;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2894y;
/* renamed from: j$.util.stream.K2 */
/* loaded from: classes2.dex */
class C2975K2 extends AbstractC3026T2 implements InterfaceC3021S2 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2894y f864b;

    /* renamed from: c */
    final /* synthetic */ BiConsumer f865c;

    /* renamed from: d */
    final /* synthetic */ BiConsumer f866d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2975K2(InterfaceC2894y interfaceC2894y, BiConsumer biConsumer, BiConsumer biConsumer2) {
        this.f864b = interfaceC2894y;
        this.f865c = biConsumer;
        this.f866d = biConsumer2;
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
        this.f865c.accept(this.f931a, obj);
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer.CC.$default$andThen(this, consumer);
    }

    @Override // p033j$.util.stream.InterfaceC3021S2
    /* renamed from: h */
    public void mo498h(InterfaceC3021S2 interfaceC3021S2) {
        this.f866d.accept(this.f931a, ((C2975K2) interfaceC3021S2).f931a);
    }

    @Override // p033j$.util.stream.InterfaceC3135m3
    /* renamed from: m */
    public /* synthetic */ void mo339m() {
    }

    @Override // p033j$.util.stream.InterfaceC3135m3
    /* renamed from: n */
    public void mo315n(long j) {
        this.f931a = this.f864b.get();
    }

    @Override // p033j$.util.stream.InterfaceC3135m3
    /* renamed from: o */
    public /* synthetic */ boolean mo314o() {
        return false;
    }
}
