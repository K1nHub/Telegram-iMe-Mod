package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2825o;
import p033j$.util.function.InterfaceC2826p;
import p033j$.wrappers.C3209g0;
/* renamed from: j$.util.stream.h1 */
/* loaded from: classes2.dex */
class C3040h1 extends AbstractC3052j1 implements InterfaceC3066l3 {

    /* renamed from: c */
    final /* synthetic */ EnumC3058k1 f1095c;

    /* renamed from: d */
    final /* synthetic */ C3209g0 f1096d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3040h1(EnumC3058k1 enumC3058k1, C3209g0 c3209g0) {
        super(enumC3058k1);
        this.f1095c = enumC3058k1;
        this.f1096d = c3209g0;
    }

    @Override // p033j$.util.stream.AbstractC3052j1, p033j$.util.stream.InterfaceC3072m3, p033j$.util.stream.InterfaceC3066l3, p033j$.util.function.InterfaceC2826p
    public void accept(long j) {
        boolean z;
        boolean z2;
        if (this.f1108a) {
            return;
        }
        boolean m202b = this.f1096d.m202b(j);
        z = this.f1095c.f1114a;
        if (m202b == z) {
            this.f1108a = true;
            z2 = this.f1095c.f1115b;
            this.f1109b = z2;
        }
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Long l) {
        AbstractC3082o1.m420c(this, l);
    }

    @Override // p033j$.util.function.InterfaceC2826p
    /* renamed from: f */
    public InterfaceC2826p mo212f(InterfaceC2826p interfaceC2826p) {
        Objects.requireNonNull(interfaceC2826p);
        return new C2825o(this, interfaceC2826p);
    }
}
