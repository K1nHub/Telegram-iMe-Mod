package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2693e;
import p034j$.util.function.InterfaceC2694f;
import p034j$.wrappers.C3047D;
/* renamed from: j$.util.stream.i1 */
/* loaded from: classes2.dex */
class C2928i1 extends AbstractC2934j1 implements InterfaceC2936j3 {

    /* renamed from: c */
    final /* synthetic */ EnumC2940k1 f967c;

    /* renamed from: d */
    final /* synthetic */ C3047D f968d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2928i1(EnumC2940k1 enumC2940k1, C3047D c3047d) {
        super(enumC2940k1);
        this.f967c = enumC2940k1;
        this.f968d = c3047d;
    }

    @Override // p034j$.util.stream.AbstractC2934j1, p034j$.util.stream.InterfaceC2954m3
    public void accept(double d) {
        boolean z;
        boolean z2;
        if (this.f973a) {
            return;
        }
        boolean m225b = this.f968d.m225b(d);
        z = this.f967c.f979a;
        if (m225b == z) {
            this.f973a = true;
            z2 = this.f967c.f980b;
            this.f974b = z2;
        }
    }

    @Override // p034j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Double d) {
        AbstractC2964o1.m359a(this, d);
    }

    @Override // p034j$.util.function.InterfaceC2694f
    /* renamed from: j */
    public InterfaceC2694f mo87j(InterfaceC2694f interfaceC2694f) {
        Objects.requireNonNull(interfaceC2694f);
        return new C2693e(this, interfaceC2694f);
    }
}
