package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2704k;
import p034j$.util.function.InterfaceC2705l;
import p034j$.wrappers.C3080U;
/* renamed from: j$.util.stream.g1 */
/* loaded from: classes2.dex */
class C2921g1 extends AbstractC2939j1 implements InterfaceC2947k3 {

    /* renamed from: c */
    final /* synthetic */ EnumC2945k1 f955c;

    /* renamed from: d */
    final /* synthetic */ C3080U f956d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2921g1(EnumC2945k1 enumC2945k1, C3080U c3080u) {
        super(enumC2945k1);
        this.f955c = enumC2945k1;
        this.f956d = c3080u;
    }

    @Override // p034j$.util.stream.AbstractC2939j1, p034j$.util.stream.InterfaceC2959m3
    public void accept(int i) {
        boolean z;
        boolean z2;
        if (this.f973a) {
            return;
        }
        boolean m160b = this.f956d.m160b(i);
        z = this.f955c.f979a;
        if (m160b == z) {
            this.f973a = true;
            z2 = this.f955c.f980b;
            this.f974b = z2;
        }
    }

    @Override // p034j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Integer num) {
        AbstractC2969o1.m358b(this, num);
    }

    @Override // p034j$.util.function.InterfaceC2705l
    /* renamed from: l */
    public InterfaceC2705l mo165l(InterfaceC2705l interfaceC2705l) {
        Objects.requireNonNull(interfaceC2705l);
        return new C2704k(this, interfaceC2705l);
    }
}
