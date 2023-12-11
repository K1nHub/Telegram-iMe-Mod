package p033j$.util.stream;

import p033j$.util.function.BiConsumer;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2835x;
/* renamed from: j$.util.stream.K2 */
/* loaded from: classes2.dex */
class C2913K2 extends AbstractC2964T2 implements InterfaceC2959S2 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2835x f913b;

    /* renamed from: c */
    final /* synthetic */ BiConsumer f914c;

    /* renamed from: d */
    final /* synthetic */ BiConsumer f915d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2913K2(InterfaceC2835x interfaceC2835x, BiConsumer biConsumer, BiConsumer biConsumer2) {
        this.f913b = interfaceC2835x;
        this.f914c = biConsumer;
        this.f915d = biConsumer2;
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
        this.f914c.accept(this.f980a, obj);
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer.CC.$default$andThen(this, consumer);
    }

    @Override // p033j$.util.stream.InterfaceC2959S2
    /* renamed from: h */
    public void mo544h(InterfaceC2959S2 interfaceC2959S2) {
        this.f915d.accept(this.f980a, ((C2913K2) interfaceC2959S2).f980a);
    }

    @Override // p033j$.util.stream.InterfaceC3073m3
    /* renamed from: l */
    public /* synthetic */ void mo385l() {
    }

    @Override // p033j$.util.stream.InterfaceC3073m3
    /* renamed from: m */
    public void mo361m(long j) {
        this.f980a = this.f913b.get();
    }

    @Override // p033j$.util.stream.InterfaceC3073m3
    /* renamed from: o */
    public /* synthetic */ boolean mo360o() {
        return false;
    }
}
