package p034j$.util.stream;

import p034j$.util.function.BiConsumer;
import p034j$.util.function.InterfaceC2690b;
import p034j$.util.function.InterfaceC2713y;
import p034j$.wrappers.C3058I0;
/* renamed from: j$.util.stream.I2 */
/* loaded from: classes2.dex */
class C2782I2 extends AbstractC2850U2 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2690b f759b;

    /* renamed from: c */
    final /* synthetic */ BiConsumer f760c;

    /* renamed from: d */
    final /* synthetic */ InterfaceC2713y f761d;

    /* renamed from: e */
    final /* synthetic */ C3058I0 f762e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2782I2(EnumC2907e4 enumC2907e4, InterfaceC2690b interfaceC2690b, BiConsumer biConsumer, InterfaceC2713y interfaceC2713y, C3058I0 c3058i0) {
        super(enumC2907e4);
        this.f759b = interfaceC2690b;
        this.f760c = biConsumer;
        this.f761d = interfaceC2713y;
        this.f762e = c3058i0;
    }

    @Override // p034j$.util.stream.AbstractC2850U2
    /* renamed from: a */
    public InterfaceC2840S2 mo275a() {
        return new C2788J2(this.f761d, this.f760c, this.f759b);
    }

    @Override // p034j$.util.stream.AbstractC2850U2, p034j$.util.stream.InterfaceC2814N4
    /* renamed from: b */
    public int mo362b() {
        if (this.f762e.m213b().contains(EnumC2920h.UNORDERED)) {
            return EnumC2901d4.f921r;
        }
        return 0;
    }
}
