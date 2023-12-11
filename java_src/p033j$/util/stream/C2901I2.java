package p033j$.util.stream;

import p033j$.util.function.BiConsumer;
import p033j$.util.function.InterfaceC2813b;
import p033j$.util.function.InterfaceC2835x;
import p033j$.wrappers.C3171F0;
/* renamed from: j$.util.stream.I2 */
/* loaded from: classes2.dex */
class C2901I2 extends AbstractC2969U2 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2813b f894b;

    /* renamed from: c */
    final /* synthetic */ BiConsumer f895c;

    /* renamed from: d */
    final /* synthetic */ InterfaceC2835x f896d;

    /* renamed from: e */
    final /* synthetic */ C3171F0 f897e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2901I2(EnumC3026e4 enumC3026e4, InterfaceC2813b interfaceC2813b, BiConsumer biConsumer, InterfaceC2835x interfaceC2835x, C3171F0 c3171f0) {
        super(enumC3026e4);
        this.f894b = interfaceC2813b;
        this.f895c = biConsumer;
        this.f896d = interfaceC2835x;
        this.f897e = c3171f0;
    }

    @Override // p033j$.util.stream.AbstractC2969U2
    /* renamed from: a */
    public InterfaceC2959S2 mo339a() {
        return new C2907J2(this.f896d, this.f895c, this.f894b);
    }

    @Override // p033j$.util.stream.AbstractC2969U2, p033j$.util.stream.InterfaceC2933N4
    /* renamed from: b */
    public int mo426b() {
        if (this.f897e.m284b().contains(EnumC3039h.UNORDERED)) {
            return EnumC3020d4.f1056r;
        }
        return 0;
    }
}
