package p033j$.util.stream;

import p033j$.util.Optional;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2816b;
/* renamed from: j$.util.stream.H2 */
/* loaded from: classes2.dex */
class C2902H2 implements InterfaceC2966S2 {

    /* renamed from: a */
    private boolean f838a;

    /* renamed from: b */
    private Object f839b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2816b f840c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2902H2(InterfaceC2816b interfaceC2816b) {
        this.f840c = interfaceC2816b;
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
        if (this.f838a) {
            this.f838a = false;
        } else {
            obj = this.f840c.apply(this.f839b, obj);
        }
        this.f839b = obj;
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer.CC.$default$andThen(this, consumer);
    }

    @Override // p033j$.util.function.InterfaceC2839y
    public Object get() {
        return this.f838a ? Optional.empty() : Optional.m629of(this.f839b);
    }

    @Override // p033j$.util.stream.InterfaceC2966S2
    /* renamed from: h */
    public void mo498h(InterfaceC2966S2 interfaceC2966S2) {
        C2902H2 c2902h2 = (C2902H2) interfaceC2966S2;
        if (c2902h2.f838a) {
            return;
        }
        accept(c2902h2.f839b);
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: m */
    public /* synthetic */ void mo339m() {
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: n */
    public void mo315n(long j) {
        this.f838a = true;
        this.f839b = null;
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: o */
    public /* synthetic */ boolean mo314o() {
        return false;
    }
}
