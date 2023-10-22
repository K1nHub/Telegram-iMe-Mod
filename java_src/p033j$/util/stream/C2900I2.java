package p033j$.util.stream;

import p033j$.util.function.BiConsumer;
import p033j$.util.function.InterfaceC2812b;
import p033j$.util.function.InterfaceC2834x;
import p033j$.wrappers.C3170F0;
/* renamed from: j$.util.stream.I2 */
/* loaded from: classes2.dex */
class C2900I2 extends AbstractC2968U2 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2812b f894b;

    /* renamed from: c */
    final /* synthetic */ BiConsumer f895c;

    /* renamed from: d */
    final /* synthetic */ InterfaceC2834x f896d;

    /* renamed from: e */
    final /* synthetic */ C3170F0 f897e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2900I2(EnumC3025e4 enumC3025e4, InterfaceC2812b interfaceC2812b, BiConsumer biConsumer, InterfaceC2834x interfaceC2834x, C3170F0 c3170f0) {
        super(enumC3025e4);
        this.f894b = interfaceC2812b;
        this.f895c = biConsumer;
        this.f896d = interfaceC2834x;
        this.f897e = c3170f0;
    }

    @Override // p033j$.util.stream.AbstractC2968U2
    /* renamed from: a */
    public InterfaceC2958S2 mo338a() {
        return new C2906J2(this.f896d, this.f895c, this.f894b);
    }

    @Override // p033j$.util.stream.AbstractC2968U2, p033j$.util.stream.InterfaceC2932N4
    /* renamed from: b */
    public int mo425b() {
        if (this.f897e.m283b().contains(EnumC3038h.UNORDERED)) {
            return EnumC3019d4.f1056r;
        }
        return 0;
    }
}
