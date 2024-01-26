package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2820k;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2811b;
import p033j$.util.function.InterfaceC2821l;
import p033j$.util.function.InterfaceC2830u;
import p033j$.util.function.InterfaceC2833x;
/* renamed from: j$.util.stream.O2 */
/* loaded from: classes2.dex */
class C2935O2 extends AbstractC2962T2 implements InterfaceC2957S2, InterfaceC3059k3 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2833x f946b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2830u f947c;

    /* renamed from: d */
    final /* synthetic */ InterfaceC2811b f948d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2935O2(InterfaceC2833x interfaceC2833x, InterfaceC2830u interfaceC2830u, InterfaceC2811b interfaceC2811b) {
        this.f946b = interfaceC2833x;
        this.f947c = interfaceC2830u;
        this.f948d = interfaceC2811b;
    }

    @Override // p033j$.util.stream.InterfaceC3071m3
    public /* synthetic */ void accept(double d) {
        AbstractC3081o1.m421f(this);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC3071m3
    public void accept(int i) {
        this.f947c.accept(this.f980a, i);
    }

    @Override // p033j$.util.stream.InterfaceC3071m3, p033j$.util.stream.InterfaceC3065l3, p033j$.util.function.InterfaceC2825p
    public /* synthetic */ void accept(long j) {
        AbstractC3081o1.m422e(this);
        throw null;
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer.CC.$default$andThen(this, consumer);
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Integer num) {
        AbstractC3081o1.m425b(this, num);
    }

    @Override // p033j$.util.stream.InterfaceC2957S2
    /* renamed from: h */
    public void mo547h(InterfaceC2957S2 interfaceC2957S2) {
        this.f980a = this.f948d.apply(this.f980a, ((C2935O2) interfaceC2957S2).f980a);
    }

    @Override // p033j$.util.function.InterfaceC2821l
    /* renamed from: k */
    public InterfaceC2821l mo238k(InterfaceC2821l interfaceC2821l) {
        Objects.requireNonNull(interfaceC2821l);
        return new C2820k(this, interfaceC2821l);
    }

    @Override // p033j$.util.stream.InterfaceC3071m3
    /* renamed from: l */
    public /* synthetic */ void mo388l() {
    }

    @Override // p033j$.util.stream.InterfaceC3071m3
    /* renamed from: m */
    public void mo364m(long j) {
        this.f980a = this.f946b.get();
    }

    @Override // p033j$.util.stream.InterfaceC3071m3
    /* renamed from: o */
    public /* synthetic */ boolean mo363o() {
        return false;
    }
}
