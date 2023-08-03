package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2825k;
import p033j$.util.function.InterfaceC2826l;
import p033j$.wrappers.C3201U;
/* renamed from: j$.util.stream.g1 */
/* loaded from: classes2.dex */
class C3042g1 extends AbstractC3060j1 implements InterfaceC3068k3 {

    /* renamed from: c */
    final /* synthetic */ EnumC3066k1 f1040c;

    /* renamed from: d */
    final /* synthetic */ C3201U f1041d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3042g1(EnumC3066k1 enumC3066k1, C3201U c3201u) {
        super(enumC3066k1);
        this.f1040c = enumC3066k1;
        this.f1041d = c3201u;
    }

    @Override // p033j$.util.stream.AbstractC3060j1, p033j$.util.stream.InterfaceC3080m3
    public void accept(int i) {
        boolean z;
        boolean z2;
        if (this.f1058a) {
            return;
        }
        boolean m178b = this.f1041d.m178b(i);
        z = this.f1040c.f1064a;
        if (m178b == z) {
            this.f1058a = true;
            z2 = this.f1040c.f1065b;
            this.f1059b = z2;
        }
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Integer num) {
        AbstractC3090o1.m376b(this, num);
    }

    @Override // p033j$.util.function.InterfaceC2826l
    /* renamed from: l */
    public InterfaceC2826l mo183l(InterfaceC2826l interfaceC2826l) {
        Objects.requireNonNull(interfaceC2826l);
        return new C2825k(this, interfaceC2826l);
    }
}
