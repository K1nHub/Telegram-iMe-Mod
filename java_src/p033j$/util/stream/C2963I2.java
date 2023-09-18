package p033j$.util.stream;

import p033j$.util.function.BiConsumer;
import p033j$.util.function.InterfaceC2871b;
import p033j$.util.function.InterfaceC2894y;
import p033j$.wrappers.C3239I0;
/* renamed from: j$.util.stream.I2 */
/* loaded from: classes2.dex */
class C2963I2 extends AbstractC3031U2 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2871b f845b;

    /* renamed from: c */
    final /* synthetic */ BiConsumer f846c;

    /* renamed from: d */
    final /* synthetic */ InterfaceC2894y f847d;

    /* renamed from: e */
    final /* synthetic */ C3239I0 f848e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2963I2(EnumC3088e4 enumC3088e4, InterfaceC2871b interfaceC2871b, BiConsumer biConsumer, InterfaceC2894y interfaceC2894y, C3239I0 c3239i0) {
        super(enumC3088e4);
        this.f845b = interfaceC2871b;
        this.f846c = biConsumer;
        this.f847d = interfaceC2894y;
        this.f848e = c3239i0;
    }

    @Override // p033j$.util.stream.AbstractC3031U2
    /* renamed from: a */
    public InterfaceC3021S2 mo293a() {
        return new C2969J2(this.f847d, this.f846c, this.f845b);
    }

    @Override // p033j$.util.stream.AbstractC3031U2, p033j$.util.stream.InterfaceC2995N4
    /* renamed from: b */
    public int mo380b() {
        if (this.f848e.m231b().contains(EnumC3101h.UNORDERED)) {
            return EnumC3082d4.f1007r;
        }
        return 0;
    }
}
