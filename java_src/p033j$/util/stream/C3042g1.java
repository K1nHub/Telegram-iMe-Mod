package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2825k;
import p033j$.util.function.InterfaceC2826l;
import p033j$.wrappers.C3201U;
/* renamed from: j$.util.stream.g1 */
/* loaded from: classes2.dex */
class C3042g1 extends AbstractC3060j1 implements InterfaceC3068k3 {

    /* renamed from: c */
    final /* synthetic */ EnumC3066k1 f1037c;

    /* renamed from: d */
    final /* synthetic */ C3201U f1038d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3042g1(EnumC3066k1 enumC3066k1, C3201U c3201u) {
        super(enumC3066k1);
        this.f1037c = enumC3066k1;
        this.f1038d = c3201u;
    }

    @Override // p033j$.util.stream.AbstractC3060j1, p033j$.util.stream.InterfaceC3080m3
    public void accept(int i) {
        boolean z;
        boolean z2;
        if (this.f1055a) {
            return;
        }
        boolean m160b = this.f1038d.m160b(i);
        z = this.f1037c.f1061a;
        if (m160b == z) {
            this.f1055a = true;
            z2 = this.f1037c.f1062b;
            this.f1056b = z2;
        }
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Integer num) {
        AbstractC3090o1.m358b(this, num);
    }

    @Override // p033j$.util.function.InterfaceC2826l
    /* renamed from: l */
    public InterfaceC2826l mo165l(InterfaceC2826l interfaceC2826l) {
        Objects.requireNonNull(interfaceC2826l);
        return new C2825k(this, interfaceC2826l);
    }
}
