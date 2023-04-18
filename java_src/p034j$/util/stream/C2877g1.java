package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2660k;
import p034j$.util.function.InterfaceC2661l;
import p034j$.wrappers.C3036U;
/* renamed from: j$.util.stream.g1 */
/* loaded from: classes2.dex */
class C2877g1 extends AbstractC2895j1 implements InterfaceC2903k3 {

    /* renamed from: c */
    final /* synthetic */ EnumC2901k1 f952c;

    /* renamed from: d */
    final /* synthetic */ C3036U f953d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2877g1(EnumC2901k1 enumC2901k1, C3036U c3036u) {
        super(enumC2901k1);
        this.f952c = enumC2901k1;
        this.f953d = c3036u;
    }

    @Override // p034j$.util.stream.AbstractC2895j1, p034j$.util.stream.InterfaceC2915m3
    public void accept(int i) {
        boolean z;
        boolean z2;
        if (this.f970a) {
            return;
        }
        boolean m155b = this.f953d.m155b(i);
        z = this.f952c.f976a;
        if (m155b == z) {
            this.f970a = true;
            z2 = this.f952c.f977b;
            this.f971b = z2;
        }
    }

    @Override // p034j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Integer num) {
        AbstractC2925o1.m353b(this, num);
    }

    @Override // p034j$.util.function.InterfaceC2661l
    /* renamed from: l */
    public InterfaceC2661l mo160l(InterfaceC2661l interfaceC2661l) {
        Objects.requireNonNull(interfaceC2661l);
        return new C2660k(this, interfaceC2661l);
    }
}
