package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2819e;
import p033j$.util.function.InterfaceC2820f;
import p033j$.wrappers.C3173D;
/* renamed from: j$.util.stream.i1 */
/* loaded from: classes2.dex */
class C3054i1 extends AbstractC3060j1 implements InterfaceC3062j3 {

    /* renamed from: c */
    final /* synthetic */ EnumC3066k1 f1049c;

    /* renamed from: d */
    final /* synthetic */ C3173D f1050d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3054i1(EnumC3066k1 enumC3066k1, C3173D c3173d) {
        super(enumC3066k1);
        this.f1049c = enumC3066k1;
        this.f1050d = c3173d;
    }

    @Override // p033j$.util.stream.AbstractC3060j1, p033j$.util.stream.InterfaceC3080m3
    public void accept(double d) {
        boolean z;
        boolean z2;
        if (this.f1055a) {
            return;
        }
        boolean m225b = this.f1050d.m225b(d);
        z = this.f1049c.f1061a;
        if (m225b == z) {
            this.f1055a = true;
            z2 = this.f1049c.f1062b;
            this.f1056b = z2;
        }
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Double d) {
        AbstractC3090o1.m359a(this, d);
    }

    @Override // p033j$.util.function.InterfaceC2820f
    /* renamed from: j */
    public InterfaceC2820f mo87j(InterfaceC2820f interfaceC2820f) {
        Objects.requireNonNull(interfaceC2820f);
        return new C2819e(this, interfaceC2820f);
    }
}
