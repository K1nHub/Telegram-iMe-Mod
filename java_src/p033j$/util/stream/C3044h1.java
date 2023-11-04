package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2829o;
import p033j$.util.function.InterfaceC2830p;
import p033j$.wrappers.C3213g0;
/* renamed from: j$.util.stream.h1 */
/* loaded from: classes2.dex */
class C3044h1 extends AbstractC3056j1 implements InterfaceC3070l3 {

    /* renamed from: c */
    final /* synthetic */ EnumC3062k1 f1095c;

    /* renamed from: d */
    final /* synthetic */ C3213g0 f1096d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3044h1(EnumC3062k1 enumC3062k1, C3213g0 c3213g0) {
        super(enumC3062k1);
        this.f1095c = enumC3062k1;
        this.f1096d = c3213g0;
    }

    @Override // p033j$.util.stream.AbstractC3056j1, p033j$.util.stream.InterfaceC3076m3, p033j$.util.stream.InterfaceC3070l3, p033j$.util.function.InterfaceC2830p
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
        AbstractC3086o1.m421c(this, l);
    }

    @Override // p033j$.util.function.InterfaceC2830p
    /* renamed from: f */
    public InterfaceC2830p mo213f(InterfaceC2830p interfaceC2830p) {
        Objects.requireNonNull(interfaceC2830p);
        return new C2829o(this, interfaceC2830p);
    }
}
