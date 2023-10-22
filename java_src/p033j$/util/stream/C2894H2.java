package p033j$.util.stream;

import p033j$.util.Optional;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2812b;
/* renamed from: j$.util.stream.H2 */
/* loaded from: classes2.dex */
class C2894H2 implements InterfaceC2958S2 {

    /* renamed from: a */
    private boolean f888a;

    /* renamed from: b */
    private Object f889b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2812b f890c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2894H2(InterfaceC2812b interfaceC2812b) {
        this.f890c = interfaceC2812b;
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
        if (this.f888a) {
            this.f888a = false;
        } else {
            obj = this.f890c.apply(this.f889b, obj);
        }
        this.f889b = obj;
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer.CC.$default$andThen(this, consumer);
    }

    @Override // p033j$.util.function.InterfaceC2834x
    public Object get() {
        return this.f888a ? Optional.empty() : Optional.m669of(this.f889b);
    }

    @Override // p033j$.util.stream.InterfaceC2958S2
    /* renamed from: h */
    public void mo543h(InterfaceC2958S2 interfaceC2958S2) {
        C2894H2 c2894h2 = (C2894H2) interfaceC2958S2;
        if (c2894h2.f888a) {
            return;
        }
        accept(c2894h2.f889b);
    }

    @Override // p033j$.util.stream.InterfaceC3072m3
    /* renamed from: l */
    public /* synthetic */ void mo384l() {
    }

    @Override // p033j$.util.stream.InterfaceC3072m3
    /* renamed from: m */
    public void mo360m(long j) {
        this.f888a = true;
        this.f889b = null;
    }

    @Override // p033j$.util.stream.InterfaceC3072m3
    /* renamed from: o */
    public /* synthetic */ boolean mo359o() {
        return false;
    }
}
