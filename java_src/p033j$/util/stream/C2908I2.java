package p033j$.util.stream;

import p033j$.util.function.BiConsumer;
import p033j$.util.function.InterfaceC2816b;
import p033j$.util.function.InterfaceC2839y;
import p033j$.wrappers.C3184I0;
/* renamed from: j$.util.stream.I2 */
/* loaded from: classes2.dex */
class C2908I2 extends AbstractC2976U2 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2816b f841b;

    /* renamed from: c */
    final /* synthetic */ BiConsumer f842c;

    /* renamed from: d */
    final /* synthetic */ InterfaceC2839y f843d;

    /* renamed from: e */
    final /* synthetic */ C3184I0 f844e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2908I2(EnumC3033e4 enumC3033e4, InterfaceC2816b interfaceC2816b, BiConsumer biConsumer, InterfaceC2839y interfaceC2839y, C3184I0 c3184i0) {
        super(enumC3033e4);
        this.f841b = interfaceC2816b;
        this.f842c = biConsumer;
        this.f843d = interfaceC2839y;
        this.f844e = c3184i0;
    }

    @Override // p033j$.util.stream.AbstractC2976U2
    /* renamed from: a */
    public InterfaceC2966S2 mo275a() {
        return new C2914J2(this.f843d, this.f842c, this.f841b);
    }

    @Override // p033j$.util.stream.AbstractC2976U2, p033j$.util.stream.InterfaceC2940N4
    /* renamed from: b */
    public int mo362b() {
        if (this.f844e.m213b().contains(EnumC3046h.UNORDERED)) {
            return EnumC3027d4.f1003r;
        }
        return 0;
    }
}
