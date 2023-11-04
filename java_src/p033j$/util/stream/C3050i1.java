package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2819e;
import p033j$.util.function.InterfaceC2820f;
import p033j$.wrappers.C3167C;
/* renamed from: j$.util.stream.i1 */
/* loaded from: classes2.dex */
class C3050i1 extends AbstractC3056j1 implements InterfaceC3058j3 {

    /* renamed from: c */
    final /* synthetic */ EnumC3062k1 f1102c;

    /* renamed from: d */
    final /* synthetic */ C3167C f1103d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3050i1(EnumC3062k1 enumC3062k1, C3167C c3167c) {
        super(enumC3062k1);
        this.f1102c = enumC3062k1;
        this.f1103d = c3167c;
    }

    @Override // p033j$.util.stream.AbstractC3056j1, p033j$.util.stream.InterfaceC3076m3
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
        AbstractC3086o1.m423a(this, d);
    }

    @Override // p033j$.util.function.InterfaceC2820f
    /* renamed from: j */
    public InterfaceC2820f mo158j(InterfaceC2820f interfaceC2820f) {
        Objects.requireNonNull(interfaceC2820f);
        return new C2819e(this, interfaceC2820f);
    }
}
