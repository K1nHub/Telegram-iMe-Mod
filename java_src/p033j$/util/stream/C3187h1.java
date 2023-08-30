package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2969p;
import p033j$.util.function.InterfaceC2970q;
import p033j$.wrappers.C3363i0;
/* renamed from: j$.util.stream.h1 */
/* loaded from: classes2.dex */
class C3187h1 extends AbstractC3199j1 implements InterfaceC3213l3 {

    /* renamed from: c */
    final /* synthetic */ EnumC3205k1 f1055c;

    /* renamed from: d */
    final /* synthetic */ C3363i0 f1056d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3187h1(EnumC3205k1 enumC3205k1, C3363i0 c3363i0) {
        super(enumC3205k1);
        this.f1055c = enumC3205k1;
        this.f1056d = c3363i0;
    }

    @Override // p033j$.util.stream.AbstractC3199j1, p033j$.util.stream.InterfaceC3219m3, p033j$.util.stream.InterfaceC3213l3, p033j$.util.function.InterfaceC2970q
    public void accept(long j) {
        boolean z;
        boolean z2;
        if (this.f1068a) {
            return;
        }
        boolean m147b = this.f1056d.m147b(j);
        z = this.f1055c.f1074a;
        if (m147b == z) {
            this.f1068a = true;
            z2 = this.f1055c.f1075b;
            this.f1069b = z2;
        }
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Long l) {
        AbstractC3229o1.m375c(this, l);
    }

    @Override // p033j$.util.function.InterfaceC2970q
    /* renamed from: f */
    public InterfaceC2970q mo158f(InterfaceC2970q interfaceC2970q) {
        Objects.requireNonNull(interfaceC2970q);
        return new C2969p(this, interfaceC2970q);
    }
}
