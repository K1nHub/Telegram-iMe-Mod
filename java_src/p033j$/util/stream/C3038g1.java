package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2825k;
import p033j$.util.function.InterfaceC2826l;
import p033j$.wrappers.C3192S;
/* renamed from: j$.util.stream.g1 */
/* loaded from: classes2.dex */
class C3038g1 extends AbstractC3056j1 implements InterfaceC3064k3 {

    /* renamed from: c */
    final /* synthetic */ EnumC3062k1 f1090c;

    /* renamed from: d */
    final /* synthetic */ C3192S f1091d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3038g1(EnumC3062k1 enumC3062k1, C3192S c3192s) {
        super(enumC3062k1);
        this.f1090c = enumC3062k1;
        this.f1091d = c3192s;
    }

    @Override // p033j$.util.stream.AbstractC3056j1, p033j$.util.stream.InterfaceC3076m3
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
        AbstractC3086o1.m422b(this, num);
    }

    @Override // p033j$.util.function.InterfaceC2826l
    /* renamed from: k */
    public InterfaceC2826l mo235k(InterfaceC2826l interfaceC2826l) {
        Objects.requireNonNull(interfaceC2826l);
        return new C2825k(this, interfaceC2826l);
    }
}
