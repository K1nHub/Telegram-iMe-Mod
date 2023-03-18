package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2583k;
import p034j$.util.function.InterfaceC2584l;
import p034j$.wrappers.C2959U;
/* renamed from: j$.util.stream.g1 */
/* loaded from: classes2.dex */
class C2800g1 extends AbstractC2818j1 implements InterfaceC2826k3 {

    /* renamed from: c */
    final /* synthetic */ EnumC2824k1 f951c;

    /* renamed from: d */
    final /* synthetic */ C2959U f952d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2800g1(EnumC2824k1 enumC2824k1, C2959U c2959u) {
        super(enumC2824k1);
        this.f951c = enumC2824k1;
        this.f952d = c2959u;
    }

    @Override // p034j$.util.stream.AbstractC2818j1, p034j$.util.stream.InterfaceC2838m3
    public void accept(int i) {
        boolean z;
        boolean z2;
        if (this.f969a) {
            return;
        }
        boolean m175b = this.f952d.m175b(i);
        z = this.f951c.f975a;
        if (m175b == z) {
            this.f969a = true;
            z2 = this.f951c.f976b;
            this.f970b = z2;
        }
    }

    @Override // p034j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Integer num) {
        AbstractC2848o1.m373b(this, num);
    }

    @Override // p034j$.util.function.InterfaceC2584l
    /* renamed from: l */
    public InterfaceC2584l mo180l(InterfaceC2584l interfaceC2584l) {
        Objects.requireNonNull(interfaceC2584l);
        return new C2583k(this, interfaceC2584l);
    }
}
