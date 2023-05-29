package p034j$.util.stream;

import p034j$.util.function.BiConsumer;
import p034j$.util.function.InterfaceC2695b;
import p034j$.util.function.InterfaceC2718y;
import p034j$.wrappers.C3063I0;
/* renamed from: j$.util.stream.I2 */
/* loaded from: classes2.dex */
class C2787I2 extends AbstractC2855U2 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2695b f759b;

    /* renamed from: c */
    final /* synthetic */ BiConsumer f760c;

    /* renamed from: d */
    final /* synthetic */ InterfaceC2718y f761d;

    /* renamed from: e */
    final /* synthetic */ C3063I0 f762e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2787I2(EnumC2912e4 enumC2912e4, InterfaceC2695b interfaceC2695b, BiConsumer biConsumer, InterfaceC2718y interfaceC2718y, C3063I0 c3063i0) {
        super(enumC2912e4);
        this.f759b = interfaceC2695b;
        this.f760c = biConsumer;
        this.f761d = interfaceC2718y;
        this.f762e = c3063i0;
    }

    @Override // p034j$.util.stream.AbstractC2855U2
    /* renamed from: a */
    public InterfaceC2845S2 mo275a() {
        return new C2793J2(this.f761d, this.f760c, this.f759b);
    }

    @Override // p034j$.util.stream.AbstractC2855U2, p034j$.util.stream.InterfaceC2819N4
    /* renamed from: b */
    public int mo362b() {
        if (this.f762e.m213b().contains(EnumC2925h.UNORDERED)) {
            return EnumC2906d4.f921r;
        }
        return 0;
    }
}
