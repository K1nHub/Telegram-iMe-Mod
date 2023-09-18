package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2880k;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2871b;
import p033j$.util.function.InterfaceC2881l;
import p033j$.util.function.InterfaceC2891v;
import p033j$.util.function.InterfaceC2894y;
/* renamed from: j$.util.stream.O2 */
/* loaded from: classes2.dex */
class C2999O2 extends AbstractC3026T2 implements InterfaceC3021S2, InterfaceC3123k3 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2894y f897b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2891v f898c;

    /* renamed from: d */
    final /* synthetic */ InterfaceC2871b f899d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2999O2(InterfaceC2894y interfaceC2894y, InterfaceC2891v interfaceC2891v, InterfaceC2871b interfaceC2871b) {
        this.f897b = interfaceC2894y;
        this.f898c = interfaceC2891v;
        this.f899d = interfaceC2871b;
    }

    @Override // p033j$.util.stream.InterfaceC3135m3
    public /* synthetic */ void accept(double d) {
        AbstractC3145o1.m372f(this);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC3135m3
    public void accept(int i) {
        this.f898c.accept(this.f931a, i);
    }

    @Override // p033j$.util.stream.InterfaceC3135m3, p033j$.util.stream.InterfaceC3129l3, p033j$.util.function.InterfaceC2886q
    public /* synthetic */ void accept(long j) {
        AbstractC3145o1.m373e(this);
        throw null;
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer.CC.$default$andThen(this, consumer);
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Integer num) {
        AbstractC3145o1.m376b(this, num);
    }

    @Override // p033j$.util.stream.InterfaceC3021S2
    /* renamed from: h */
    public void mo498h(InterfaceC3021S2 interfaceC3021S2) {
        this.f931a = this.f899d.apply(this.f931a, ((C2999O2) interfaceC3021S2).f931a);
    }

    @Override // p033j$.util.function.InterfaceC2881l
    /* renamed from: l */
    public InterfaceC2881l mo183l(InterfaceC2881l interfaceC2881l) {
        Objects.requireNonNull(interfaceC2881l);
        return new C2880k(this, interfaceC2881l);
    }

    @Override // p033j$.util.stream.InterfaceC3135m3
    /* renamed from: m */
    public /* synthetic */ void mo339m() {
    }

    @Override // p033j$.util.stream.InterfaceC3135m3
    /* renamed from: n */
    public void mo315n(long j) {
        this.f931a = this.f897b.get();
    }

    @Override // p033j$.util.stream.InterfaceC3135m3
    /* renamed from: o */
    public /* synthetic */ boolean mo314o() {
        return false;
    }
}
