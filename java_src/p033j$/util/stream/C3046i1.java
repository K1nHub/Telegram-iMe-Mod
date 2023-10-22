package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2815e;
import p033j$.util.function.InterfaceC2816f;
import p033j$.wrappers.C3163C;
/* renamed from: j$.util.stream.i1 */
/* loaded from: classes2.dex */
class C3046i1 extends AbstractC3052j1 implements InterfaceC3054j3 {

    /* renamed from: c */
    final /* synthetic */ EnumC3058k1 f1102c;

    /* renamed from: d */
    final /* synthetic */ C3163C f1103d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3046i1(EnumC3058k1 enumC3058k1, C3163C c3163c) {
        super(enumC3058k1);
        this.f1102c = enumC3058k1;
        this.f1103d = c3163c;
    }

    @Override // p033j$.util.stream.AbstractC3052j1, p033j$.util.stream.InterfaceC3072m3
    public void accept(double d) {
        boolean z;
        boolean z2;
        if (this.f1108a) {
            return;
        }
        boolean m291b = this.f1103d.m291b(d);
        z = this.f1102c.f1114a;
        if (m291b == z) {
            this.f1108a = true;
            z2 = this.f1102c.f1115b;
            this.f1109b = z2;
        }
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Double d) {
        AbstractC3082o1.m422a(this, d);
    }

    @Override // p033j$.util.function.InterfaceC2816f
    /* renamed from: j */
    public InterfaceC2816f mo156j(InterfaceC2816f interfaceC2816f) {
        Objects.requireNonNull(interfaceC2816f);
        return new C2815e(this, interfaceC2816f);
    }
}
