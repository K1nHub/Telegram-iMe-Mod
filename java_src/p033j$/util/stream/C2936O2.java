package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2821k;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2812b;
import p033j$.util.function.InterfaceC2822l;
import p033j$.util.function.InterfaceC2831u;
import p033j$.util.function.InterfaceC2834x;
/* renamed from: j$.util.stream.O2 */
/* loaded from: classes2.dex */
class C2936O2 extends AbstractC2963T2 implements InterfaceC2958S2, InterfaceC3060k3 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2834x f946b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2831u f947c;

    /* renamed from: d */
    final /* synthetic */ InterfaceC2812b f948d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2936O2(InterfaceC2834x interfaceC2834x, InterfaceC2831u interfaceC2831u, InterfaceC2812b interfaceC2812b) {
        this.f946b = interfaceC2834x;
        this.f947c = interfaceC2831u;
        this.f948d = interfaceC2812b;
    }

    @Override // p033j$.util.stream.InterfaceC3072m3
    public /* synthetic */ void accept(double d) {
        AbstractC3082o1.m417f(this);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC3072m3
    public void accept(int i) {
        this.f947c.accept(this.f980a, i);
    }

    @Override // p033j$.util.stream.InterfaceC3072m3, p033j$.util.stream.InterfaceC3066l3, p033j$.util.function.InterfaceC2826p
    public /* synthetic */ void accept(long j) {
        AbstractC3082o1.m418e(this);
        throw null;
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer.CC.$default$andThen(this, consumer);
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Integer num) {
        AbstractC3082o1.m421b(this, num);
    }

    @Override // p033j$.util.stream.InterfaceC2958S2
    /* renamed from: h */
    public void mo543h(InterfaceC2958S2 interfaceC2958S2) {
        this.f980a = this.f948d.apply(this.f980a, ((C2936O2) interfaceC2958S2).f980a);
    }

    @Override // p033j$.util.function.InterfaceC2822l
    /* renamed from: k */
    public InterfaceC2822l mo234k(InterfaceC2822l interfaceC2822l) {
        Objects.requireNonNull(interfaceC2822l);
        return new C2821k(this, interfaceC2822l);
    }

    @Override // p033j$.util.stream.InterfaceC3072m3
    /* renamed from: l */
    public /* synthetic */ void mo384l() {
    }

    @Override // p033j$.util.stream.InterfaceC3072m3
    /* renamed from: m */
    public void mo360m(long j) {
        this.f980a = this.f946b.get();
    }

    @Override // p033j$.util.stream.InterfaceC3072m3
    /* renamed from: o */
    public /* synthetic */ boolean mo359o() {
        return false;
    }
}
