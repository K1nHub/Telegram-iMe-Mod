package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2825k;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2816b;
import p033j$.util.function.InterfaceC2826l;
import p033j$.util.function.InterfaceC2835u;
import p033j$.util.function.InterfaceC2838x;
/* renamed from: j$.util.stream.O2 */
/* loaded from: classes2.dex */
class C2940O2 extends AbstractC2967T2 implements InterfaceC2962S2, InterfaceC3064k3 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2838x f946b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2835u f947c;

    /* renamed from: d */
    final /* synthetic */ InterfaceC2816b f948d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2940O2(InterfaceC2838x interfaceC2838x, InterfaceC2835u interfaceC2835u, InterfaceC2816b interfaceC2816b) {
        this.f946b = interfaceC2838x;
        this.f947c = interfaceC2835u;
        this.f948d = interfaceC2816b;
    }

    @Override // p033j$.util.stream.InterfaceC3076m3
    public /* synthetic */ void accept(double d) {
        AbstractC3086o1.m418f(this);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC3076m3
    public void accept(int i) {
        this.f947c.accept(this.f980a, i);
    }

    @Override // p033j$.util.stream.InterfaceC3076m3, p033j$.util.stream.InterfaceC3070l3, p033j$.util.function.InterfaceC2830p
    public /* synthetic */ void accept(long j) {
        AbstractC3086o1.m419e(this);
        throw null;
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer.CC.$default$andThen(this, consumer);
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Integer num) {
        AbstractC3086o1.m422b(this, num);
    }

    @Override // p033j$.util.stream.InterfaceC2962S2
    /* renamed from: h */
    public void mo544h(InterfaceC2962S2 interfaceC2962S2) {
        this.f980a = this.f948d.apply(this.f980a, ((C2940O2) interfaceC2962S2).f980a);
    }

    @Override // p033j$.util.function.InterfaceC2826l
    /* renamed from: k */
    public InterfaceC2826l mo235k(InterfaceC2826l interfaceC2826l) {
        Objects.requireNonNull(interfaceC2826l);
        return new C2825k(this, interfaceC2826l);
    }

    @Override // p033j$.util.stream.InterfaceC3076m3
    /* renamed from: l */
    public /* synthetic */ void mo385l() {
    }

    @Override // p033j$.util.stream.InterfaceC3076m3
    /* renamed from: m */
    public void mo361m(long j) {
        this.f980a = this.f946b.get();
    }

    @Override // p033j$.util.stream.InterfaceC3076m3
    /* renamed from: o */
    public /* synthetic */ boolean mo360o() {
        return false;
    }
}
