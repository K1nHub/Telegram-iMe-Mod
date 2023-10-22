package p033j$.util.stream;

import p033j$.util.function.BiConsumer;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2834x;
/* renamed from: j$.util.stream.K2 */
/* loaded from: classes2.dex */
class C2912K2 extends AbstractC2963T2 implements InterfaceC2958S2 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2834x f913b;

    /* renamed from: c */
    final /* synthetic */ BiConsumer f914c;

    /* renamed from: d */
    final /* synthetic */ BiConsumer f915d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2912K2(InterfaceC2834x interfaceC2834x, BiConsumer biConsumer, BiConsumer biConsumer2) {
        this.f913b = interfaceC2834x;
        this.f914c = biConsumer;
        this.f915d = biConsumer2;
    }

    @Override // p033j$.util.stream.InterfaceC3072m3
    public /* synthetic */ void accept(double d) {
        AbstractC3082o1.m417f(this);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC3072m3
    public /* synthetic */ void accept(int i) {
        AbstractC3082o1.m419d(this);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC3072m3, p033j$.util.stream.InterfaceC3066l3, p033j$.util.function.InterfaceC2826p
    public /* synthetic */ void accept(long j) {
        AbstractC3082o1.m418e(this);
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

    @Override // p033j$.util.stream.InterfaceC2958S2
    /* renamed from: h */
    public void mo543h(InterfaceC2958S2 interfaceC2958S2) {
        this.f915d.accept(this.f980a, ((C2912K2) interfaceC2958S2).f980a);
    }

    @Override // p033j$.util.stream.InterfaceC3072m3
    /* renamed from: l */
    public /* synthetic */ void mo384l() {
    }

    @Override // p033j$.util.stream.InterfaceC3072m3
    /* renamed from: m */
    public void mo360m(long j) {
        this.f980a = this.f913b.get();
    }

    @Override // p033j$.util.stream.InterfaceC3072m3
    /* renamed from: o */
    public /* synthetic */ boolean mo359o() {
        return false;
    }
}
