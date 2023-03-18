package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2577e;
import p034j$.util.function.InterfaceC2578f;
import p034j$.wrappers.C2931D;
/* renamed from: j$.util.stream.i1 */
/* loaded from: classes2.dex */
class C2812i1 extends AbstractC2818j1 implements InterfaceC2820j3 {

    /* renamed from: c */
    final /* synthetic */ EnumC2824k1 f963c;

    /* renamed from: d */
    final /* synthetic */ C2931D f964d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2812i1(EnumC2824k1 enumC2824k1, C2931D c2931d) {
        super(enumC2824k1);
        this.f963c = enumC2824k1;
        this.f964d = c2931d;
    }

    @Override // p034j$.util.stream.AbstractC2818j1, p034j$.util.stream.InterfaceC2838m3
    public void accept(double d) {
        boolean z;
        boolean z2;
        if (this.f969a) {
            return;
        }
        boolean m240b = this.f964d.m240b(d);
        z = this.f963c.f975a;
        if (m240b == z) {
            this.f969a = true;
            z2 = this.f963c.f976b;
            this.f970b = z2;
        }
    }

    @Override // p034j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Double d) {
        AbstractC2848o1.m374a(this, d);
    }

    @Override // p034j$.util.function.InterfaceC2578f
    /* renamed from: j */
    public InterfaceC2578f mo102j(InterfaceC2578f interfaceC2578f) {
        Objects.requireNonNull(interfaceC2578f);
        return new C2577e(this, interfaceC2578f);
    }
}
