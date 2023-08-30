package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2964k;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2955b;
import p033j$.util.function.InterfaceC2965l;
import p033j$.util.function.InterfaceC2975v;
import p033j$.util.function.InterfaceC2978y;
/* renamed from: j$.util.stream.O2 */
/* loaded from: classes2.dex */
class C3083O2 extends AbstractC3110T2 implements InterfaceC3105S2, InterfaceC3207k3 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2978y f906b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2975v f907c;

    /* renamed from: d */
    final /* synthetic */ InterfaceC2955b f908d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3083O2(InterfaceC2978y interfaceC2978y, InterfaceC2975v interfaceC2975v, InterfaceC2955b interfaceC2955b) {
        this.f906b = interfaceC2978y;
        this.f907c = interfaceC2975v;
        this.f908d = interfaceC2955b;
    }

    @Override // p033j$.util.stream.InterfaceC3219m3
    public /* synthetic */ void accept(double d) {
        AbstractC3229o1.m372f(this);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC3219m3
    public void accept(int i) {
        this.f907c.accept(this.f940a, i);
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
    public /* synthetic */ void accept(Integer num) {
        AbstractC3229o1.m376b(this, num);
    }

    @Override // p033j$.util.stream.InterfaceC3105S2
    /* renamed from: h */
    public void mo498h(InterfaceC3105S2 interfaceC3105S2) {
        this.f940a = this.f908d.apply(this.f940a, ((C3083O2) interfaceC3105S2).f940a);
    }

    @Override // p033j$.util.function.InterfaceC2965l
    /* renamed from: l */
    public InterfaceC2965l mo183l(InterfaceC2965l interfaceC2965l) {
        Objects.requireNonNull(interfaceC2965l);
        return new C2964k(this, interfaceC2965l);
    }

    @Override // p033j$.util.stream.InterfaceC3219m3
    /* renamed from: m */
    public /* synthetic */ void mo339m() {
    }

    @Override // p033j$.util.stream.InterfaceC3219m3
    /* renamed from: n */
    public void mo315n(long j) {
        this.f940a = this.f906b.get();
    }

    @Override // p033j$.util.stream.InterfaceC3219m3
    /* renamed from: o */
    public /* synthetic */ boolean mo314o() {
        return false;
    }
}
