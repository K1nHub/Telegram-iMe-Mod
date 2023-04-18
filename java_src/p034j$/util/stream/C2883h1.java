package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2665p;
import p034j$.util.function.InterfaceC2666q;
import p034j$.wrappers.C3059i0;
/* renamed from: j$.util.stream.h1 */
/* loaded from: classes2.dex */
class C2883h1 extends AbstractC2895j1 implements InterfaceC2909l3 {

    /* renamed from: c */
    final /* synthetic */ EnumC2901k1 f957c;

    /* renamed from: d */
    final /* synthetic */ C3059i0 f958d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2883h1(EnumC2901k1 enumC2901k1, C3059i0 c3059i0) {
        super(enumC2901k1);
        this.f957c = enumC2901k1;
        this.f958d = c3059i0;
    }

    @Override // p034j$.util.stream.AbstractC2895j1, p034j$.util.stream.InterfaceC2915m3, p034j$.util.stream.InterfaceC2909l3, p034j$.util.function.InterfaceC2666q
    public void accept(long j) {
        boolean z;
        boolean z2;
        if (this.f970a) {
            return;
        }
        boolean m124b = this.f958d.m124b(j);
        z = this.f957c.f976a;
        if (m124b == z) {
            this.f970a = true;
            z2 = this.f957c.f977b;
            this.f971b = z2;
        }
    }

    @Override // p034j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Long l) {
        AbstractC2925o1.m352c(this, l);
    }

    @Override // p034j$.util.function.InterfaceC2666q
    /* renamed from: f */
    public InterfaceC2666q mo135f(InterfaceC2666q interfaceC2666q) {
        Objects.requireNonNull(interfaceC2666q);
        return new C2665p(this, interfaceC2666q);
    }
}
