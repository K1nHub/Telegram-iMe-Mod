package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2459k;
import p034j$.util.function.InterfaceC2460l;
import p034j$.wrappers.C2835U;
/* renamed from: j$.util.stream.g1 */
/* loaded from: classes2.dex */
class C2676g1 extends AbstractC2694j1 implements InterfaceC2702k3 {

    /* renamed from: c */
    final /* synthetic */ EnumC2700k1 f946c;

    /* renamed from: d */
    final /* synthetic */ C2835U f947d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2676g1(EnumC2700k1 enumC2700k1, C2835U c2835u) {
        super(enumC2700k1);
        this.f946c = enumC2700k1;
        this.f947d = c2835u;
    }

    @Override // p034j$.util.stream.AbstractC2694j1, p034j$.util.stream.InterfaceC2714m3
    public void accept(int i) {
        boolean z;
        boolean z2;
        if (this.f964a) {
            return;
        }
        boolean m175b = this.f947d.m175b(i);
        z = this.f946c.f970a;
        if (m175b == z) {
            this.f964a = true;
            z2 = this.f946c.f971b;
            this.f965b = z2;
        }
    }

    @Override // p034j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Integer num) {
        AbstractC2724o1.m373b(this, num);
    }

    @Override // p034j$.util.function.InterfaceC2460l
    /* renamed from: l */
    public InterfaceC2460l mo180l(InterfaceC2460l interfaceC2460l) {
        Objects.requireNonNull(interfaceC2460l);
        return new C2459k(this, interfaceC2460l);
    }
}
