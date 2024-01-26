package p033j$.util.stream;

import p033j$.util.function.BiConsumer;
import p033j$.util.function.InterfaceC2811b;
import p033j$.util.function.InterfaceC2833x;
import p033j$.wrappers.C3169F0;
/* renamed from: j$.util.stream.I2 */
/* loaded from: classes2.dex */
class C2899I2 extends AbstractC2967U2 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2811b f894b;

    /* renamed from: c */
    final /* synthetic */ BiConsumer f895c;

    /* renamed from: d */
    final /* synthetic */ InterfaceC2833x f896d;

    /* renamed from: e */
    final /* synthetic */ C3169F0 f897e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2899I2(EnumC3024e4 enumC3024e4, InterfaceC2811b interfaceC2811b, BiConsumer biConsumer, InterfaceC2833x interfaceC2833x, C3169F0 c3169f0) {
        super(enumC3024e4);
        this.f894b = interfaceC2811b;
        this.f895c = biConsumer;
        this.f896d = interfaceC2833x;
        this.f897e = c3169f0;
    }

    @Override // p033j$.util.stream.AbstractC2967U2
    /* renamed from: a */
    public InterfaceC2957S2 mo342a() {
        return new C2905J2(this.f896d, this.f895c, this.f894b);
    }

    @Override // p033j$.util.stream.AbstractC2967U2, p033j$.util.stream.InterfaceC2931N4
    /* renamed from: b */
    public int mo429b() {
        if (this.f897e.m287b().contains(EnumC3037h.UNORDERED)) {
            return EnumC3018d4.f1056r;
        }
        return 0;
    }
}
