package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2591e;
import p034j$.util.function.InterfaceC2592f;
import p034j$.wrappers.C2945D;
/* renamed from: j$.util.stream.i1 */
/* loaded from: classes2.dex */
class C2826i1 extends AbstractC2832j1 implements InterfaceC2834j3 {

    /* renamed from: c */
    final /* synthetic */ EnumC2838k1 f964c;

    /* renamed from: d */
    final /* synthetic */ C2945D f965d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2826i1(EnumC2838k1 enumC2838k1, C2945D c2945d) {
        super(enumC2838k1);
        this.f964c = enumC2838k1;
        this.f965d = c2945d;
    }

    @Override // p034j$.util.stream.AbstractC2832j1, p034j$.util.stream.InterfaceC2852m3
    public void accept(double d) {
        boolean z;
        boolean z2;
        if (this.f970a) {
            return;
        }
        boolean m239b = this.f965d.m239b(d);
        z = this.f964c.f976a;
        if (m239b == z) {
            this.f970a = true;
            z2 = this.f964c.f977b;
            this.f971b = z2;
        }
    }

    @Override // p034j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Double d) {
        AbstractC2862o1.m373a(this, d);
    }

    @Override // p034j$.util.function.InterfaceC2592f
    /* renamed from: j */
    public InterfaceC2592f mo101j(InterfaceC2592f interfaceC2592f) {
        Objects.requireNonNull(interfaceC2592f);
        return new C2591e(this, interfaceC2592f);
    }
}
