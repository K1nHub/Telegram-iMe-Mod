package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2709p;
import p034j$.util.function.InterfaceC2710q;
import p034j$.wrappers.C3103i0;
/* renamed from: j$.util.stream.h1 */
/* loaded from: classes2.dex */
class C2927h1 extends AbstractC2939j1 implements InterfaceC2953l3 {

    /* renamed from: c */
    final /* synthetic */ EnumC2945k1 f960c;

    /* renamed from: d */
    final /* synthetic */ C3103i0 f961d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2927h1(EnumC2945k1 enumC2945k1, C3103i0 c3103i0) {
        super(enumC2945k1);
        this.f960c = enumC2945k1;
        this.f961d = c3103i0;
    }

    @Override // p034j$.util.stream.AbstractC2939j1, p034j$.util.stream.InterfaceC2959m3, p034j$.util.stream.InterfaceC2953l3, p034j$.util.function.InterfaceC2710q
    public void accept(long j) {
        boolean z;
        boolean z2;
        if (this.f973a) {
            return;
        }
        boolean m129b = this.f961d.m129b(j);
        z = this.f960c.f979a;
        if (m129b == z) {
            this.f973a = true;
            z2 = this.f960c.f980b;
            this.f974b = z2;
        }
    }

    @Override // p034j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Long l) {
        AbstractC2969o1.m357c(this, l);
    }

    @Override // p034j$.util.function.InterfaceC2710q
    /* renamed from: f */
    public InterfaceC2710q mo140f(InterfaceC2710q interfaceC2710q) {
        Objects.requireNonNull(interfaceC2710q);
        return new C2709p(this, interfaceC2710q);
    }
}
