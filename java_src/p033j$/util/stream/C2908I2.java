package p033j$.util.stream;

import p033j$.util.function.BiConsumer;
import p033j$.util.function.InterfaceC2816b;
import p033j$.util.function.InterfaceC2839y;
import p033j$.wrappers.C3184I0;
/* renamed from: j$.util.stream.I2 */
/* loaded from: classes2.dex */
class C2908I2 extends AbstractC2976U2 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2816b f844b;

    /* renamed from: c */
    final /* synthetic */ BiConsumer f845c;

    /* renamed from: d */
    final /* synthetic */ InterfaceC2839y f846d;

    /* renamed from: e */
    final /* synthetic */ C3184I0 f847e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2908I2(EnumC3033e4 enumC3033e4, InterfaceC2816b interfaceC2816b, BiConsumer biConsumer, InterfaceC2839y interfaceC2839y, C3184I0 c3184i0) {
        super(enumC3033e4);
        this.f844b = interfaceC2816b;
        this.f845c = biConsumer;
        this.f846d = interfaceC2839y;
        this.f847e = c3184i0;
    }

    @Override // p033j$.util.stream.AbstractC2976U2
    /* renamed from: a */
    public InterfaceC2966S2 mo293a() {
        return new C2914J2(this.f846d, this.f845c, this.f844b);
    }

    @Override // p033j$.util.stream.AbstractC2976U2, p033j$.util.stream.InterfaceC2940N4
    /* renamed from: b */
    public int mo380b() {
        if (this.f847e.m231b().contains(EnumC3046h.UNORDERED)) {
            return EnumC3027d4.f1006r;
        }
        return 0;
    }
}
