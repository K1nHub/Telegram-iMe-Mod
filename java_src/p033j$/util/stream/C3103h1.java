package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2885p;
import p033j$.util.function.InterfaceC2886q;
import p033j$.wrappers.C3279i0;
/* renamed from: j$.util.stream.h1 */
/* loaded from: classes2.dex */
class C3103h1 extends AbstractC3115j1 implements InterfaceC3129l3 {

    /* renamed from: c */
    final /* synthetic */ EnumC3121k1 f1046c;

    /* renamed from: d */
    final /* synthetic */ C3279i0 f1047d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3103h1(EnumC3121k1 enumC3121k1, C3279i0 c3279i0) {
        super(enumC3121k1);
        this.f1046c = enumC3121k1;
        this.f1047d = c3279i0;
    }

    @Override // p033j$.util.stream.AbstractC3115j1, p033j$.util.stream.InterfaceC3135m3, p033j$.util.stream.InterfaceC3129l3, p033j$.util.function.InterfaceC2886q
    public void accept(long j) {
        boolean z;
        boolean z2;
        if (this.f1059a) {
            return;
        }
        boolean m147b = this.f1047d.m147b(j);
        z = this.f1046c.f1065a;
        if (m147b == z) {
            this.f1059a = true;
            z2 = this.f1046c.f1066b;
            this.f1060b = z2;
        }
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Long l) {
        AbstractC3145o1.m375c(this, l);
    }

    @Override // p033j$.util.function.InterfaceC2886q
    /* renamed from: f */
    public InterfaceC2886q mo158f(InterfaceC2886q interfaceC2886q) {
        Objects.requireNonNull(interfaceC2886q);
        return new C2885p(this, interfaceC2886q);
    }
}
