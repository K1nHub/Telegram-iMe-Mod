package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2699k;
import p034j$.util.function.InterfaceC2700l;
import p034j$.wrappers.C3075U;
/* renamed from: j$.util.stream.g1 */
/* loaded from: classes2.dex */
class C2916g1 extends AbstractC2934j1 implements InterfaceC2942k3 {

    /* renamed from: c */
    final /* synthetic */ EnumC2940k1 f955c;

    /* renamed from: d */
    final /* synthetic */ C3075U f956d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2916g1(EnumC2940k1 enumC2940k1, C3075U c3075u) {
        super(enumC2940k1);
        this.f955c = enumC2940k1;
        this.f956d = c3075u;
    }

    @Override // p034j$.util.stream.AbstractC2934j1, p034j$.util.stream.InterfaceC2954m3
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
        AbstractC2964o1.m358b(this, num);
    }

    @Override // p034j$.util.function.InterfaceC2700l
    /* renamed from: l */
    public InterfaceC2700l mo165l(InterfaceC2700l interfaceC2700l) {
        Objects.requireNonNull(interfaceC2700l);
        return new C2699k(this, interfaceC2700l);
    }
}
