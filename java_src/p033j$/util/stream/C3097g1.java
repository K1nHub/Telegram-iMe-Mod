package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2880k;
import p033j$.util.function.InterfaceC2881l;
import p033j$.wrappers.C3256U;
/* renamed from: j$.util.stream.g1 */
/* loaded from: classes2.dex */
class C3097g1 extends AbstractC3115j1 implements InterfaceC3123k3 {

    /* renamed from: c */
    final /* synthetic */ EnumC3121k1 f1041c;

    /* renamed from: d */
    final /* synthetic */ C3256U f1042d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3097g1(EnumC3121k1 enumC3121k1, C3256U c3256u) {
        super(enumC3121k1);
        this.f1041c = enumC3121k1;
        this.f1042d = c3256u;
    }

    @Override // p033j$.util.stream.AbstractC3115j1, p033j$.util.stream.InterfaceC3135m3
    public void accept(int i) {
        boolean z;
        boolean z2;
        if (this.f1059a) {
            return;
        }
        boolean m178b = this.f1042d.m178b(i);
        z = this.f1041c.f1065a;
        if (m178b == z) {
            this.f1059a = true;
            z2 = this.f1041c.f1066b;
            this.f1060b = z2;
        }
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Integer num) {
        AbstractC3145o1.m376b(this, num);
    }

    @Override // p033j$.util.function.InterfaceC2881l
    /* renamed from: l */
    public InterfaceC2881l mo183l(InterfaceC2881l interfaceC2881l) {
        Objects.requireNonNull(interfaceC2881l);
        return new C2880k(this, interfaceC2881l);
    }
}
