package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2602p;
import p034j$.util.function.InterfaceC2603q;
import p034j$.wrappers.C2996i0;
/* renamed from: j$.util.stream.h1 */
/* loaded from: classes2.dex */
class C2820h1 extends AbstractC2832j1 implements InterfaceC2846l3 {

    /* renamed from: c */
    final /* synthetic */ EnumC2838k1 f957c;

    /* renamed from: d */
    final /* synthetic */ C2996i0 f958d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2820h1(EnumC2838k1 enumC2838k1, C2996i0 c2996i0) {
        super(enumC2838k1);
        this.f957c = enumC2838k1;
        this.f958d = c2996i0;
    }

    @Override // p034j$.util.stream.AbstractC2832j1, p034j$.util.stream.InterfaceC2852m3, p034j$.util.stream.InterfaceC2846l3, p034j$.util.function.InterfaceC2603q
    public void accept(long j) {
        boolean z;
        boolean z2;
        if (this.f970a) {
            return;
        }
        boolean m143b = this.f958d.m143b(j);
        z = this.f957c.f976a;
        if (m143b == z) {
            this.f970a = true;
            z2 = this.f957c.f977b;
            this.f971b = z2;
        }
    }

    @Override // p034j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Long l) {
        AbstractC2862o1.m371c(this, l);
    }

    @Override // p034j$.util.function.InterfaceC2603q
    /* renamed from: f */
    public InterfaceC2603q mo154f(InterfaceC2603q interfaceC2603q) {
        Objects.requireNonNull(interfaceC2603q);
        return new C2602p(this, interfaceC2603q);
    }
}
