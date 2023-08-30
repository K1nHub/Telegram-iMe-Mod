package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.InterfaceC2992s;
import p033j$.util.function.InterfaceC2978y;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.l1 */
/* loaded from: classes2.dex */
public final class C3211l1 implements InterfaceC3079N4 {

    /* renamed from: a */
    private final EnumC3172e4 f1083a;

    /* renamed from: b */
    final EnumC3205k1 f1084b;

    /* renamed from: c */
    final InterfaceC2978y f1085c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3211l1(EnumC3172e4 enumC3172e4, EnumC3205k1 enumC3205k1, InterfaceC2978y interfaceC2978y) {
        this.f1083a = enumC3172e4;
        this.f1084b = enumC3205k1;
        this.f1085c = interfaceC2978y;
    }

    @Override // p033j$.util.stream.InterfaceC3079N4
    /* renamed from: b */
    public int mo380b() {
        return EnumC3166d4.f1019u | EnumC3166d4.f1016r;
    }

    @Override // p033j$.util.stream.InterfaceC3079N4
    /* renamed from: c */
    public Object mo379c(AbstractC3290y2 abstractC3290y2, InterfaceC2992s interfaceC2992s) {
        return (Boolean) new C3217m1(this, abstractC3290y2, interfaceC2992s).invoke();
    }

    @Override // p033j$.util.stream.InterfaceC3079N4
    /* renamed from: d */
    public Object mo378d(AbstractC3290y2 abstractC3290y2, InterfaceC2992s interfaceC2992s) {
        AbstractC3199j1 abstractC3199j1 = (AbstractC3199j1) this.f1085c.get();
        AbstractC3155c abstractC3155c = (AbstractC3155c) abstractC3290y2;
        Objects.requireNonNull(abstractC3199j1);
        abstractC3155c.mo313n0(abstractC3155c.mo305v0(abstractC3199j1), interfaceC2992s);
        return Boolean.valueOf(abstractC3199j1.f1069b);
    }
}
