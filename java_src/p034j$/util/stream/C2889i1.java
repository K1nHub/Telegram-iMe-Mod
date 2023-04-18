package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2654e;
import p034j$.util.function.InterfaceC2655f;
import p034j$.wrappers.C3008D;
/* renamed from: j$.util.stream.i1 */
/* loaded from: classes2.dex */
class C2889i1 extends AbstractC2895j1 implements InterfaceC2897j3 {

    /* renamed from: c */
    final /* synthetic */ EnumC2901k1 f964c;

    /* renamed from: d */
    final /* synthetic */ C3008D f965d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2889i1(EnumC2901k1 enumC2901k1, C3008D c3008d) {
        super(enumC2901k1);
        this.f964c = enumC2901k1;
        this.f965d = c3008d;
    }

    @Override // p034j$.util.stream.AbstractC2895j1, p034j$.util.stream.InterfaceC2915m3
    public void accept(double d) {
        boolean z;
        boolean z2;
        if (this.f970a) {
            return;
        }
        boolean m220b = this.f965d.m220b(d);
        z = this.f964c.f976a;
        if (m220b == z) {
            this.f970a = true;
            z2 = this.f964c.f977b;
            this.f971b = z2;
        }
    }

    @Override // p034j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Double d) {
        AbstractC2925o1.m354a(this, d);
    }

    @Override // p034j$.util.function.InterfaceC2655f
    /* renamed from: j */
    public InterfaceC2655f mo82j(InterfaceC2655f interfaceC2655f) {
        Objects.requireNonNull(interfaceC2655f);
        return new C2654e(this, interfaceC2655f);
    }
}
