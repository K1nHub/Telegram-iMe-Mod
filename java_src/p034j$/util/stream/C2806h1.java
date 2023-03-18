package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2588p;
import p034j$.util.function.InterfaceC2589q;
import p034j$.wrappers.C2982i0;
/* renamed from: j$.util.stream.h1 */
/* loaded from: classes2.dex */
class C2806h1 extends AbstractC2818j1 implements InterfaceC2832l3 {

    /* renamed from: c */
    final /* synthetic */ EnumC2824k1 f956c;

    /* renamed from: d */
    final /* synthetic */ C2982i0 f957d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2806h1(EnumC2824k1 enumC2824k1, C2982i0 c2982i0) {
        super(enumC2824k1);
        this.f956c = enumC2824k1;
        this.f957d = c2982i0;
    }

    @Override // p034j$.util.stream.AbstractC2818j1, p034j$.util.stream.InterfaceC2838m3, p034j$.util.stream.InterfaceC2832l3, p034j$.util.function.InterfaceC2589q
    public void accept(long j) {
        boolean z;
        boolean z2;
        if (this.f969a) {
            return;
        }
        boolean m144b = this.f957d.m144b(j);
        z = this.f956c.f975a;
        if (m144b == z) {
            this.f969a = true;
            z2 = this.f956c.f976b;
            this.f970b = z2;
        }
    }

    @Override // p034j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Long l) {
        AbstractC2848o1.m372c(this, l);
    }

    @Override // p034j$.util.function.InterfaceC2589q
    /* renamed from: f */
    public InterfaceC2589q mo155f(InterfaceC2589q interfaceC2589q) {
        Objects.requireNonNull(interfaceC2589q);
        return new C2588p(this, interfaceC2589q);
    }
}
