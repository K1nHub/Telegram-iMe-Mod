package p033j$.util.stream;

import p033j$.util.function.BiConsumer;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2833x;
/* renamed from: j$.util.stream.K2 */
/* loaded from: classes2.dex */
class C2911K2 extends AbstractC2962T2 implements InterfaceC2957S2 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2833x f913b;

    /* renamed from: c */
    final /* synthetic */ BiConsumer f914c;

    /* renamed from: d */
    final /* synthetic */ BiConsumer f915d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2911K2(InterfaceC2833x interfaceC2833x, BiConsumer biConsumer, BiConsumer biConsumer2) {
        this.f913b = interfaceC2833x;
        this.f914c = biConsumer;
        this.f915d = biConsumer2;
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
        this.f914c.accept(this.f980a, obj);
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer.CC.$default$andThen(this, consumer);
    }

    @Override // p033j$.util.stream.InterfaceC2957S2
    /* renamed from: h */
    public void mo547h(InterfaceC2957S2 interfaceC2957S2) {
        this.f915d.accept(this.f980a, ((C2911K2) interfaceC2957S2).f980a);
    }

    @Override // p033j$.util.stream.InterfaceC3071m3
    /* renamed from: l */
    public /* synthetic */ void mo388l() {
    }

    @Override // p033j$.util.stream.InterfaceC3071m3
    /* renamed from: m */
    public void mo364m(long j) {
        this.f980a = this.f913b.get();
    }

    @Override // p033j$.util.stream.InterfaceC3071m3
    /* renamed from: o */
    public /* synthetic */ boolean mo363o() {
        return false;
    }
}
