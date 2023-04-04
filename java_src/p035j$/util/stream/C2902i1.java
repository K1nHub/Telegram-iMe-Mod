package p035j$.util.stream;

import java.util.Objects;
import p035j$.util.function.C2667e;
import p035j$.util.function.InterfaceC2668f;
import p035j$.wrappers.C3021D;
/* renamed from: j$.util.stream.i1 */
/* loaded from: classes2.dex */
class C2902i1 extends AbstractC2908j1 implements InterfaceC2910j3 {

    /* renamed from: c */
    final /* synthetic */ EnumC2914k1 f969c;

    /* renamed from: d */
    final /* synthetic */ C3021D f970d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2902i1(EnumC2914k1 enumC2914k1, C3021D c3021d) {
        super(enumC2914k1);
        this.f969c = enumC2914k1;
        this.f970d = c3021d;
    }

    @Override // p035j$.util.stream.AbstractC2908j1, p035j$.util.stream.InterfaceC2928m3
    public void accept(double d) {
        boolean z;
        boolean z2;
        if (this.f975a) {
            return;
        }
        boolean m234b = this.f970d.m234b(d);
        z = this.f969c.f981a;
        if (m234b == z) {
            this.f975a = true;
            z2 = this.f969c.f982b;
            this.f976b = z2;
        }
    }

    @Override // p035j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Double d) {
        AbstractC2938o1.m368a(this, d);
    }

    @Override // p035j$.util.function.InterfaceC2668f
    /* renamed from: j */
    public InterfaceC2668f mo96j(InterfaceC2668f interfaceC2668f) {
        Objects.requireNonNull(interfaceC2668f);
        return new C2667e(this, interfaceC2668f);
    }
}
