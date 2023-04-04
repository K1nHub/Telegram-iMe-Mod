package p035j$.util.stream;

import p035j$.util.function.BiConsumer;
import p035j$.util.function.InterfaceC2664b;
import p035j$.util.function.InterfaceC2687y;
import p035j$.wrappers.C3032I0;
/* renamed from: j$.util.stream.I2 */
/* loaded from: classes2.dex */
class C2756I2 extends AbstractC2824U2 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2664b f761b;

    /* renamed from: c */
    final /* synthetic */ BiConsumer f762c;

    /* renamed from: d */
    final /* synthetic */ InterfaceC2687y f763d;

    /* renamed from: e */
    final /* synthetic */ C3032I0 f764e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2756I2(EnumC2881e4 enumC2881e4, InterfaceC2664b interfaceC2664b, BiConsumer biConsumer, InterfaceC2687y interfaceC2687y, C3032I0 c3032i0) {
        super(enumC2881e4);
        this.f761b = interfaceC2664b;
        this.f762c = biConsumer;
        this.f763d = interfaceC2687y;
        this.f764e = c3032i0;
    }

    @Override // p035j$.util.stream.AbstractC2824U2
    /* renamed from: a */
    public InterfaceC2814S2 mo284a() {
        return new C2762J2(this.f763d, this.f762c, this.f761b);
    }

    @Override // p035j$.util.stream.AbstractC2824U2, p035j$.util.stream.InterfaceC2788N4
    /* renamed from: b */
    public int mo371b() {
        if (this.f764e.m222b().contains(EnumC2894h.UNORDERED)) {
            return EnumC2875d4.f923r;
        }
        return 0;
    }
}
