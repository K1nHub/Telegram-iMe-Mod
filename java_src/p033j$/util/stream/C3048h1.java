package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2830p;
import p033j$.util.function.InterfaceC2831q;
import p033j$.wrappers.C3224i0;
/* renamed from: j$.util.stream.h1 */
/* loaded from: classes2.dex */
class C3048h1 extends AbstractC3060j1 implements InterfaceC3074l3 {

    /* renamed from: c */
    final /* synthetic */ EnumC3066k1 f1042c;

    /* renamed from: d */
    final /* synthetic */ C3224i0 f1043d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3048h1(EnumC3066k1 enumC3066k1, C3224i0 c3224i0) {
        super(enumC3066k1);
        this.f1042c = enumC3066k1;
        this.f1043d = c3224i0;
    }

    @Override // p033j$.util.stream.AbstractC3060j1, p033j$.util.stream.InterfaceC3080m3, p033j$.util.stream.InterfaceC3074l3, p033j$.util.function.InterfaceC2831q
    public void accept(long j) {
        boolean z;
        boolean z2;
        if (this.f1055a) {
            return;
        }
        boolean m129b = this.f1043d.m129b(j);
        z = this.f1042c.f1061a;
        if (m129b == z) {
            this.f1055a = true;
            z2 = this.f1042c.f1062b;
            this.f1056b = z2;
        }
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Long l) {
        AbstractC3090o1.m357c(this, l);
    }

    @Override // p033j$.util.function.InterfaceC2831q
    /* renamed from: f */
    public InterfaceC2831q mo140f(InterfaceC2831q interfaceC2831q) {
        Objects.requireNonNull(interfaceC2831q);
        return new C2830p(this, interfaceC2831q);
    }
}