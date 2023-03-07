package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2464p;
import p034j$.util.function.InterfaceC2465q;
import p034j$.wrappers.C2858i0;
/* renamed from: j$.util.stream.h1 */
/* loaded from: classes2.dex */
class C2682h1 extends AbstractC2694j1 implements InterfaceC2708l3 {

    /* renamed from: c */
    final /* synthetic */ EnumC2700k1 f951c;

    /* renamed from: d */
    final /* synthetic */ C2858i0 f952d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2682h1(EnumC2700k1 enumC2700k1, C2858i0 c2858i0) {
        super(enumC2700k1);
        this.f951c = enumC2700k1;
        this.f952d = c2858i0;
    }

    @Override // p034j$.util.stream.AbstractC2694j1, p034j$.util.stream.InterfaceC2714m3, p034j$.util.stream.InterfaceC2708l3, p034j$.util.function.InterfaceC2465q
    public void accept(long j) {
        boolean z;
        boolean z2;
        if (this.f964a) {
            return;
        }
        boolean m144b = this.f952d.m144b(j);
        z = this.f951c.f970a;
        if (m144b == z) {
            this.f964a = true;
            z2 = this.f951c.f971b;
            this.f965b = z2;
        }
    }

    @Override // p034j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Long l) {
        AbstractC2724o1.m372c(this, l);
    }

    @Override // p034j$.util.function.InterfaceC2465q
    /* renamed from: f */
    public InterfaceC2465q mo155f(InterfaceC2465q interfaceC2465q) {
        Objects.requireNonNull(interfaceC2465q);
        return new C2464p(this, interfaceC2465q);
    }
}
