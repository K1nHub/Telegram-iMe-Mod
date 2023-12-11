package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2822k;
import p033j$.util.function.InterfaceC2823l;
import p033j$.wrappers.C3189S;
/* renamed from: j$.util.stream.g1 */
/* loaded from: classes2.dex */
class C3035g1 extends AbstractC3053j1 implements InterfaceC3061k3 {

    /* renamed from: c */
    final /* synthetic */ EnumC3059k1 f1090c;

    /* renamed from: d */
    final /* synthetic */ C3189S f1091d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3035g1(EnumC3059k1 enumC3059k1, C3189S c3189s) {
        super(enumC3059k1);
        this.f1090c = enumC3059k1;
        this.f1091d = c3189s;
    }

    @Override // p033j$.util.stream.AbstractC3053j1, p033j$.util.stream.InterfaceC3073m3
    public void accept(int i) {
        boolean z;
        boolean z2;
        if (this.f1108a) {
            return;
        }
        boolean m230b = this.f1091d.m230b(i);
        z = this.f1090c.f1114a;
        if (m230b == z) {
            this.f1108a = true;
            z2 = this.f1090c.f1115b;
            this.f1109b = z2;
        }
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Integer num) {
        AbstractC3083o1.m422b(this, num);
    }

    @Override // p033j$.util.function.InterfaceC2823l
    /* renamed from: k */
    public InterfaceC2823l mo235k(InterfaceC2823l interfaceC2823l) {
        Objects.requireNonNull(interfaceC2823l);
        return new C2822k(this, interfaceC2823l);
    }
}
