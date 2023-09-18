package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2874e;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2871b;
import p033j$.util.function.InterfaceC2875f;
import p033j$.util.function.InterfaceC2890u;
import p033j$.util.function.InterfaceC2894y;
/* renamed from: j$.util.stream.F2 */
/* loaded from: classes2.dex */
class C2945F2 extends AbstractC3026T2 implements InterfaceC3021S2, InterfaceC3117j3 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2894y f823b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2890u f824c;

    /* renamed from: d */
    final /* synthetic */ InterfaceC2871b f825d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2945F2(InterfaceC2894y interfaceC2894y, InterfaceC2890u interfaceC2890u, InterfaceC2871b interfaceC2871b) {
        this.f823b = interfaceC2894y;
        this.f824c = interfaceC2890u;
        this.f825d = interfaceC2871b;
    }

    @Override // p033j$.util.stream.InterfaceC3135m3
    public void accept(double d) {
        this.f824c.accept(this.f931a, d);
    }

    @Override // p033j$.util.stream.InterfaceC3135m3
    public /* synthetic */ void accept(int i) {
        AbstractC3145o1.m374d(this);
        throw null;
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
    public /* synthetic */ void accept(Double d) {
        AbstractC3145o1.m377a(this, d);
    }

    @Override // p033j$.util.stream.InterfaceC3021S2
    /* renamed from: h */
    public void mo498h(InterfaceC3021S2 interfaceC3021S2) {
        this.f931a = this.f825d.apply(this.f931a, ((C2945F2) interfaceC3021S2).f931a);
    }

    @Override // p033j$.util.function.InterfaceC2875f
    /* renamed from: j */
    public InterfaceC2875f mo105j(InterfaceC2875f interfaceC2875f) {
        Objects.requireNonNull(interfaceC2875f);
        return new C2874e(this, interfaceC2875f);
    }

    @Override // p033j$.util.stream.InterfaceC3135m3
    /* renamed from: m */
    public /* synthetic */ void mo339m() {
    }

    @Override // p033j$.util.stream.InterfaceC3135m3
    /* renamed from: n */
    public void mo315n(long j) {
        this.f931a = this.f823b.get();
    }

    @Override // p033j$.util.stream.InterfaceC3135m3
    /* renamed from: o */
    public /* synthetic */ boolean mo314o() {
        return false;
    }
}
