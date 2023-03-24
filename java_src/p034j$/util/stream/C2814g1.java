package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2597k;
import p034j$.util.function.InterfaceC2598l;
import p034j$.wrappers.C2973U;
/* renamed from: j$.util.stream.g1 */
/* loaded from: classes2.dex */
class C2814g1 extends AbstractC2832j1 implements InterfaceC2840k3 {

    /* renamed from: c */
    final /* synthetic */ EnumC2838k1 f952c;

    /* renamed from: d */
    final /* synthetic */ C2973U f953d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2814g1(EnumC2838k1 enumC2838k1, C2973U c2973u) {
        super(enumC2838k1);
        this.f952c = enumC2838k1;
        this.f953d = c2973u;
    }

    @Override // p034j$.util.stream.AbstractC2832j1, p034j$.util.stream.InterfaceC2852m3
    public void accept(int i) {
        boolean z;
        boolean z2;
        if (this.f970a) {
            return;
        }
        boolean m174b = this.f953d.m174b(i);
        z = this.f952c.f976a;
        if (m174b == z) {
            this.f970a = true;
            z2 = this.f952c.f977b;
            this.f971b = z2;
        }
    }

    @Override // p034j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Integer num) {
        AbstractC2862o1.m372b(this, num);
    }

    @Override // p034j$.util.function.InterfaceC2598l
    /* renamed from: l */
    public InterfaceC2598l mo179l(InterfaceC2598l interfaceC2598l) {
        Objects.requireNonNull(interfaceC2598l);
        return new C2597k(this, interfaceC2598l);
    }
}
