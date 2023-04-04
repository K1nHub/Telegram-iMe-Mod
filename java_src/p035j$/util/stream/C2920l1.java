package p035j$.util.stream;

import java.util.Objects;
import p035j$.util.InterfaceC2701s;
import p035j$.util.function.InterfaceC2687y;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.l1 */
/* loaded from: classes2.dex */
public final class C2920l1 implements InterfaceC2788N4 {

    /* renamed from: a */
    private final EnumC2881e4 f990a;

    /* renamed from: b */
    final EnumC2914k1 f991b;

    /* renamed from: c */
    final InterfaceC2687y f992c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2920l1(EnumC2881e4 enumC2881e4, EnumC2914k1 enumC2914k1, InterfaceC2687y interfaceC2687y) {
        this.f990a = enumC2881e4;
        this.f991b = enumC2914k1;
        this.f992c = interfaceC2687y;
    }

    @Override // p035j$.util.stream.InterfaceC2788N4
    /* renamed from: b */
    public int mo371b() {
        return EnumC2875d4.f926u | EnumC2875d4.f923r;
    }

    @Override // p035j$.util.stream.InterfaceC2788N4
    /* renamed from: c */
    public Object mo370c(AbstractC2999y2 abstractC2999y2, InterfaceC2701s interfaceC2701s) {
        return (Boolean) new C2926m1(this, abstractC2999y2, interfaceC2701s).invoke();
    }

    @Override // p035j$.util.stream.InterfaceC2788N4
    /* renamed from: d */
    public Object mo369d(AbstractC2999y2 abstractC2999y2, InterfaceC2701s interfaceC2701s) {
        AbstractC2908j1 abstractC2908j1 = (AbstractC2908j1) this.f992c.get();
        AbstractC2864c abstractC2864c = (AbstractC2864c) abstractC2999y2;
        Objects.requireNonNull(abstractC2908j1);
        abstractC2864c.mo304n0(abstractC2864c.mo296v0(abstractC2908j1), interfaceC2701s);
        return Boolean.valueOf(abstractC2908j1.f976b);
    }
}
