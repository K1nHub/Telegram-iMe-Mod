package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2814e;
import p033j$.util.function.InterfaceC2815f;
import p033j$.wrappers.C3162C;
/* renamed from: j$.util.stream.i1 */
/* loaded from: classes2.dex */
class C3045i1 extends AbstractC3051j1 implements InterfaceC3053j3 {

    /* renamed from: c */
    final /* synthetic */ EnumC3057k1 f1102c;

    /* renamed from: d */
    final /* synthetic */ C3162C f1103d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3045i1(EnumC3057k1 enumC3057k1, C3162C c3162c) {
        super(enumC3057k1);
        this.f1102c = enumC3057k1;
        this.f1103d = c3162c;
    }

    @Override // p033j$.util.stream.AbstractC3051j1, p033j$.util.stream.InterfaceC3071m3
    public void accept(double d) {
        boolean z;
        boolean z2;
        if (this.f1108a) {
            return;
        }
        boolean m295b = this.f1103d.m295b(d);
        z = this.f1102c.f1114a;
        if (m295b == z) {
            this.f1108a = true;
            z2 = this.f1102c.f1115b;
            this.f1109b = z2;
        }
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Double d) {
        AbstractC3081o1.m426a(this, d);
    }

    @Override // p033j$.util.function.InterfaceC2815f
    /* renamed from: j */
    public InterfaceC2815f mo161j(InterfaceC2815f interfaceC2815f) {
        Objects.requireNonNull(interfaceC2815f);
        return new C2814e(this, interfaceC2815f);
    }
}
