package p033j$.util.stream;

import p033j$.util.function.BiConsumer;
import p033j$.util.function.InterfaceC2816b;
import p033j$.util.function.InterfaceC2838x;
import p033j$.wrappers.C3174F0;
/* renamed from: j$.util.stream.I2 */
/* loaded from: classes2.dex */
class C2904I2 extends AbstractC2972U2 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2816b f894b;

    /* renamed from: c */
    final /* synthetic */ BiConsumer f895c;

    /* renamed from: d */
    final /* synthetic */ InterfaceC2838x f896d;

    /* renamed from: e */
    final /* synthetic */ C3174F0 f897e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2904I2(EnumC3029e4 enumC3029e4, InterfaceC2816b interfaceC2816b, BiConsumer biConsumer, InterfaceC2838x interfaceC2838x, C3174F0 c3174f0) {
        super(enumC3029e4);
        this.f894b = interfaceC2816b;
        this.f895c = biConsumer;
        this.f896d = interfaceC2838x;
        this.f897e = c3174f0;
    }

    @Override // p033j$.util.stream.AbstractC2972U2
    /* renamed from: a */
    public InterfaceC2962S2 mo339a() {
        return new C2910J2(this.f896d, this.f895c, this.f894b);
    }

    @Override // p033j$.util.stream.AbstractC2972U2, p033j$.util.stream.InterfaceC2936N4
    /* renamed from: b */
    public int mo426b() {
        if (this.f897e.m284b().contains(EnumC3042h.UNORDERED)) {
            return EnumC3023d4.f1056r;
        }
        return 0;
    }
}
