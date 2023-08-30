package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2958e;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2955b;
import p033j$.util.function.InterfaceC2959f;
import p033j$.util.function.InterfaceC2974u;
import p033j$.util.function.InterfaceC2978y;
/* renamed from: j$.util.stream.F2 */
/* loaded from: classes2.dex */
class C3029F2 extends AbstractC3110T2 implements InterfaceC3105S2, InterfaceC3201j3 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2978y f832b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2974u f833c;

    /* renamed from: d */
    final /* synthetic */ InterfaceC2955b f834d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3029F2(InterfaceC2978y interfaceC2978y, InterfaceC2974u interfaceC2974u, InterfaceC2955b interfaceC2955b) {
        this.f832b = interfaceC2978y;
        this.f833c = interfaceC2974u;
        this.f834d = interfaceC2955b;
    }

    @Override // p033j$.util.stream.InterfaceC3219m3
    public void accept(double d) {
        this.f833c.accept(this.f940a, d);
    }

    @Override // p033j$.util.stream.InterfaceC3219m3
    public /* synthetic */ void accept(int i) {
        AbstractC3229o1.m374d(this);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC3219m3, p033j$.util.stream.InterfaceC3213l3, p033j$.util.function.InterfaceC2970q
    public /* synthetic */ void accept(long j) {
        AbstractC3229o1.m373e(this);
        throw null;
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer.CC.$default$andThen(this, consumer);
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Double d) {
        AbstractC3229o1.m377a(this, d);
    }

    @Override // p033j$.util.stream.InterfaceC3105S2
    /* renamed from: h */
    public void mo498h(InterfaceC3105S2 interfaceC3105S2) {
        this.f940a = this.f834d.apply(this.f940a, ((C3029F2) interfaceC3105S2).f940a);
    }

    @Override // p033j$.util.function.InterfaceC2959f
    /* renamed from: j */
    public InterfaceC2959f mo105j(InterfaceC2959f interfaceC2959f) {
        Objects.requireNonNull(interfaceC2959f);
        return new C2958e(this, interfaceC2959f);
    }

    @Override // p033j$.util.stream.InterfaceC3219m3
    /* renamed from: m */
    public /* synthetic */ void mo339m() {
    }

    @Override // p033j$.util.stream.InterfaceC3219m3
    /* renamed from: n */
    public void mo315n(long j) {
        this.f940a = this.f832b.get();
    }

    @Override // p033j$.util.stream.InterfaceC3219m3
    /* renamed from: o */
    public /* synthetic */ boolean mo314o() {
        return false;
    }
}
