package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2822k;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2813b;
import p033j$.util.function.InterfaceC2823l;
import p033j$.util.function.InterfaceC2832u;
import p033j$.util.function.InterfaceC2835x;
/* renamed from: j$.util.stream.O2 */
/* loaded from: classes2.dex */
class C2937O2 extends AbstractC2964T2 implements InterfaceC2959S2, InterfaceC3061k3 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2835x f946b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2832u f947c;

    /* renamed from: d */
    final /* synthetic */ InterfaceC2813b f948d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2937O2(InterfaceC2835x interfaceC2835x, InterfaceC2832u interfaceC2832u, InterfaceC2813b interfaceC2813b) {
        this.f946b = interfaceC2835x;
        this.f947c = interfaceC2832u;
        this.f948d = interfaceC2813b;
    }

    @Override // p033j$.util.stream.InterfaceC3073m3
    public /* synthetic */ void accept(double d) {
        AbstractC3083o1.m418f(this);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC3073m3
    public void accept(int i) {
        this.f947c.accept(this.f980a, i);
    }

    @Override // p033j$.util.stream.InterfaceC3073m3, p033j$.util.stream.InterfaceC3067l3, p033j$.util.function.InterfaceC2827p
    public /* synthetic */ void accept(long j) {
        AbstractC3083o1.m419e(this);
        throw null;
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer.CC.$default$andThen(this, consumer);
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Integer num) {
        AbstractC3083o1.m422b(this, num);
    }

    @Override // p033j$.util.stream.InterfaceC2959S2
    /* renamed from: h */
    public void mo544h(InterfaceC2959S2 interfaceC2959S2) {
        this.f980a = this.f948d.apply(this.f980a, ((C2937O2) interfaceC2959S2).f980a);
    }

    @Override // p033j$.util.function.InterfaceC2823l
    /* renamed from: k */
    public InterfaceC2823l mo235k(InterfaceC2823l interfaceC2823l) {
        Objects.requireNonNull(interfaceC2823l);
        return new C2822k(this, interfaceC2823l);
    }

    @Override // p033j$.util.stream.InterfaceC3073m3
    /* renamed from: l */
    public /* synthetic */ void mo385l() {
    }

    @Override // p033j$.util.stream.InterfaceC3073m3
    /* renamed from: m */
    public void mo361m(long j) {
        this.f980a = this.f946b.get();
    }

    @Override // p033j$.util.stream.InterfaceC3073m3
    /* renamed from: o */
    public /* synthetic */ boolean mo360o() {
        return false;
    }
}
