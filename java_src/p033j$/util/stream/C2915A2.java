package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2885p;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2871b;
import p033j$.util.function.InterfaceC2886q;
import p033j$.util.function.InterfaceC2892w;
import p033j$.util.function.InterfaceC2894y;
/* renamed from: j$.util.stream.A2 */
/* loaded from: classes2.dex */
class C2915A2 extends AbstractC3026T2 implements InterfaceC3021S2, InterfaceC3129l3 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2894y f771b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2892w f772c;

    /* renamed from: d */
    final /* synthetic */ InterfaceC2871b f773d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2915A2(InterfaceC2894y interfaceC2894y, InterfaceC2892w interfaceC2892w, InterfaceC2871b interfaceC2871b) {
        this.f771b = interfaceC2894y;
        this.f772c = interfaceC2892w;
        this.f773d = interfaceC2871b;
    }

    @Override // p033j$.util.stream.InterfaceC3135m3
    public /* synthetic */ void accept(double d) {
        AbstractC3145o1.m372f(this);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC3135m3
    public /* synthetic */ void accept(int i) {
        AbstractC3145o1.m374d(this);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC3135m3, p033j$.util.stream.InterfaceC3129l3, p033j$.util.function.InterfaceC2886q
    public void accept(long j) {
        this.f772c.accept(this.f931a, j);
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer.CC.$default$andThen(this, consumer);
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Long l) {
        AbstractC3145o1.m375c(this, l);
    }

    @Override // p033j$.util.function.InterfaceC2886q
    /* renamed from: f */
    public InterfaceC2886q mo158f(InterfaceC2886q interfaceC2886q) {
        Objects.requireNonNull(interfaceC2886q);
        return new C2885p(this, interfaceC2886q);
    }

    @Override // p033j$.util.stream.InterfaceC3021S2
    /* renamed from: h */
    public void mo498h(InterfaceC3021S2 interfaceC3021S2) {
        this.f931a = this.f773d.apply(this.f931a, ((C2915A2) interfaceC3021S2).f931a);
    }

    @Override // p033j$.util.stream.InterfaceC3135m3
    /* renamed from: m */
    public /* synthetic */ void mo339m() {
    }

    @Override // p033j$.util.stream.InterfaceC3135m3
    /* renamed from: n */
    public void mo315n(long j) {
        this.f931a = this.f771b.get();
    }

    @Override // p033j$.util.stream.InterfaceC3135m3
    /* renamed from: o */
    public /* synthetic */ boolean mo314o() {
        return false;
    }
}
