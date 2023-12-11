package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2816e;
import p033j$.util.function.InterfaceC2817f;
import p033j$.wrappers.C3164C;
/* renamed from: j$.util.stream.i1 */
/* loaded from: classes2.dex */
class C3047i1 extends AbstractC3053j1 implements InterfaceC3055j3 {

    /* renamed from: c */
    final /* synthetic */ EnumC3059k1 f1102c;

    /* renamed from: d */
    final /* synthetic */ C3164C f1103d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3047i1(EnumC3059k1 enumC3059k1, C3164C c3164c) {
        super(enumC3059k1);
        this.f1102c = enumC3059k1;
        this.f1103d = c3164c;
    }

    @Override // p033j$.util.stream.AbstractC3053j1, p033j$.util.stream.InterfaceC3073m3
    public void accept(double d) {
        boolean z;
        boolean z2;
        if (this.f1108a) {
            return;
        }
        boolean m292b = this.f1103d.m292b(d);
        z = this.f1102c.f1114a;
        if (m292b == z) {
            this.f1108a = true;
            z2 = this.f1102c.f1115b;
            this.f1109b = z2;
        }
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Double d) {
        AbstractC3083o1.m423a(this, d);
    }

    @Override // p033j$.util.function.InterfaceC2817f
    /* renamed from: j */
    public InterfaceC2817f mo158j(InterfaceC2817f interfaceC2817f) {
        Objects.requireNonNull(interfaceC2817f);
        return new C2816e(this, interfaceC2817f);
    }
}
