package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2453e;
import p034j$.util.function.InterfaceC2454f;
import p034j$.wrappers.C2807D;
/* renamed from: j$.util.stream.i1 */
/* loaded from: classes2.dex */
class C2688i1 extends AbstractC2694j1 implements InterfaceC2696j3 {

    /* renamed from: c */
    final /* synthetic */ EnumC2700k1 f958c;

    /* renamed from: d */
    final /* synthetic */ C2807D f959d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2688i1(EnumC2700k1 enumC2700k1, C2807D c2807d) {
        super(enumC2700k1);
        this.f958c = enumC2700k1;
        this.f959d = c2807d;
    }

    @Override // p034j$.util.stream.AbstractC2694j1, p034j$.util.stream.InterfaceC2714m3
    public void accept(double d) {
        boolean z;
        boolean z2;
        if (this.f964a) {
            return;
        }
        boolean m240b = this.f959d.m240b(d);
        z = this.f958c.f970a;
        if (m240b == z) {
            this.f964a = true;
            z2 = this.f958c.f971b;
            this.f965b = z2;
        }
    }

    @Override // p034j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Double d) {
        AbstractC2724o1.m374a(this, d);
    }

    @Override // p034j$.util.function.InterfaceC2454f
    /* renamed from: j */
    public InterfaceC2454f mo102j(InterfaceC2454f interfaceC2454f) {
        Objects.requireNonNull(interfaceC2454f);
        return new C2453e(this, interfaceC2454f);
    }
}
