package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2826o;
import p033j$.util.function.InterfaceC2827p;
import p033j$.wrappers.C3210g0;
/* renamed from: j$.util.stream.h1 */
/* loaded from: classes2.dex */
class C3041h1 extends AbstractC3053j1 implements InterfaceC3067l3 {

    /* renamed from: c */
    final /* synthetic */ EnumC3059k1 f1095c;

    /* renamed from: d */
    final /* synthetic */ C3210g0 f1096d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3041h1(EnumC3059k1 enumC3059k1, C3210g0 c3210g0) {
        super(enumC3059k1);
        this.f1095c = enumC3059k1;
        this.f1096d = c3210g0;
    }

    @Override // p033j$.util.stream.AbstractC3053j1, p033j$.util.stream.InterfaceC3073m3, p033j$.util.stream.InterfaceC3067l3, p033j$.util.function.InterfaceC2827p
    public void accept(long j) {
        boolean z;
        boolean z2;
        if (this.f1108a) {
            return;
        }
        boolean m203b = this.f1096d.m203b(j);
        z = this.f1095c.f1114a;
        if (m203b == z) {
            this.f1108a = true;
            z2 = this.f1095c.f1115b;
            this.f1109b = z2;
        }
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Long l) {
        AbstractC3083o1.m421c(this, l);
    }

    @Override // p033j$.util.function.InterfaceC2827p
    /* renamed from: f */
    public InterfaceC2827p mo213f(InterfaceC2827p interfaceC2827p) {
        Objects.requireNonNull(interfaceC2827p);
        return new C2826o(this, interfaceC2827p);
    }
}
