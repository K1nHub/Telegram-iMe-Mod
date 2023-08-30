package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2969p;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2955b;
import p033j$.util.function.InterfaceC2970q;
import p033j$.util.function.InterfaceC2976w;
import p033j$.util.function.InterfaceC2978y;
/* renamed from: j$.util.stream.A2 */
/* loaded from: classes2.dex */
class C2999A2 extends AbstractC3110T2 implements InterfaceC3105S2, InterfaceC3213l3 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2978y f780b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2976w f781c;

    /* renamed from: d */
    final /* synthetic */ InterfaceC2955b f782d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2999A2(InterfaceC2978y interfaceC2978y, InterfaceC2976w interfaceC2976w, InterfaceC2955b interfaceC2955b) {
        this.f780b = interfaceC2978y;
        this.f781c = interfaceC2976w;
        this.f782d = interfaceC2955b;
    }

    @Override // p033j$.util.stream.InterfaceC3219m3
    public /* synthetic */ void accept(double d) {
        AbstractC3229o1.m372f(this);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC3219m3
    public /* synthetic */ void accept(int i) {
        AbstractC3229o1.m374d(this);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC3219m3, p033j$.util.stream.InterfaceC3213l3, p033j$.util.function.InterfaceC2970q
    public void accept(long j) {
        this.f781c.accept(this.f940a, j);
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer.CC.$default$andThen(this, consumer);
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Long l) {
        AbstractC3229o1.m375c(this, l);
    }

    @Override // p033j$.util.function.InterfaceC2970q
    /* renamed from: f */
    public InterfaceC2970q mo158f(InterfaceC2970q interfaceC2970q) {
        Objects.requireNonNull(interfaceC2970q);
        return new C2969p(this, interfaceC2970q);
    }

    @Override // p033j$.util.stream.InterfaceC3105S2
    /* renamed from: h */
    public void mo498h(InterfaceC3105S2 interfaceC3105S2) {
        this.f940a = this.f782d.apply(this.f940a, ((C2999A2) interfaceC3105S2).f940a);
    }

    @Override // p033j$.util.stream.InterfaceC3219m3
    /* renamed from: m */
    public /* synthetic */ void mo339m() {
    }

    @Override // p033j$.util.stream.InterfaceC3219m3
    /* renamed from: n */
    public void mo315n(long j) {
        this.f940a = this.f780b.get();
    }

    @Override // p033j$.util.stream.InterfaceC3219m3
    /* renamed from: o */
    public /* synthetic */ boolean mo314o() {
        return false;
    }
}
