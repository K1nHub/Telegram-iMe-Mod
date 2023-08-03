package p033j$.util.stream;

import p033j$.util.function.BiFunction;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2816b;
/* renamed from: j$.util.stream.G2 */
/* loaded from: classes2.dex */
class C2896G2 extends AbstractC2971T2 implements InterfaceC2966S2 {

    /* renamed from: b */
    final /* synthetic */ Object f831b;

    /* renamed from: c */
    final /* synthetic */ BiFunction f832c;

    /* renamed from: d */
    final /* synthetic */ InterfaceC2816b f833d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2896G2(Object obj, BiFunction biFunction, InterfaceC2816b interfaceC2816b) {
        this.f831b = obj;
        this.f832c = biFunction;
        this.f833d = interfaceC2816b;
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
        this.f930a = this.f832c.apply(this.f930a, obj);
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer.CC.$default$andThen(this, consumer);
    }

    @Override // p033j$.util.stream.InterfaceC2966S2
    /* renamed from: h */
    public void mo498h(InterfaceC2966S2 interfaceC2966S2) {
        this.f930a = this.f833d.apply(this.f930a, ((C2896G2) interfaceC2966S2).f930a);
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: m */
    public /* synthetic */ void mo339m() {
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: n */
    public void mo315n(long j) {
        this.f930a = this.f831b;
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: o */
    public /* synthetic */ boolean mo314o() {
        return false;
    }
}
