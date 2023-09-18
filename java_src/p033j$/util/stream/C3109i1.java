package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2874e;
import p033j$.util.function.InterfaceC2875f;
import p033j$.wrappers.C3228D;
/* renamed from: j$.util.stream.i1 */
/* loaded from: classes2.dex */
class C3109i1 extends AbstractC3115j1 implements InterfaceC3117j3 {

    /* renamed from: c */
    final /* synthetic */ EnumC3121k1 f1053c;

    /* renamed from: d */
    final /* synthetic */ C3228D f1054d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3109i1(EnumC3121k1 enumC3121k1, C3228D c3228d) {
        super(enumC3121k1);
        this.f1053c = enumC3121k1;
        this.f1054d = c3228d;
    }

    @Override // p033j$.util.stream.AbstractC3115j1, p033j$.util.stream.InterfaceC3135m3
    public void accept(double d) {
        boolean z;
        boolean z2;
        if (this.f1059a) {
            return;
        }
        boolean m243b = this.f1054d.m243b(d);
        z = this.f1053c.f1065a;
        if (m243b == z) {
            this.f1059a = true;
            z2 = this.f1053c.f1066b;
            this.f1060b = z2;
        }
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Double d) {
        AbstractC3145o1.m377a(this, d);
    }

    @Override // p033j$.util.function.InterfaceC2875f
    /* renamed from: j */
    public InterfaceC2875f mo105j(InterfaceC2875f interfaceC2875f) {
        Objects.requireNonNull(interfaceC2875f);
        return new C2874e(this, interfaceC2875f);
    }
}
