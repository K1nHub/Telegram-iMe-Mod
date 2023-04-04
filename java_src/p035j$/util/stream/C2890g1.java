package p035j$.util.stream;

import java.util.Objects;
import p035j$.util.function.C2673k;
import p035j$.util.function.InterfaceC2674l;
import p035j$.wrappers.C3049U;
/* renamed from: j$.util.stream.g1 */
/* loaded from: classes2.dex */
class C2890g1 extends AbstractC2908j1 implements InterfaceC2916k3 {

    /* renamed from: c */
    final /* synthetic */ EnumC2914k1 f957c;

    /* renamed from: d */
    final /* synthetic */ C3049U f958d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2890g1(EnumC2914k1 enumC2914k1, C3049U c3049u) {
        super(enumC2914k1);
        this.f957c = enumC2914k1;
        this.f958d = c3049u;
    }

    @Override // p035j$.util.stream.AbstractC2908j1, p035j$.util.stream.InterfaceC2928m3
    public void accept(int i) {
        boolean z;
        boolean z2;
        if (this.f975a) {
            return;
        }
        boolean m169b = this.f958d.m169b(i);
        z = this.f957c.f981a;
        if (m169b == z) {
            this.f975a = true;
            z2 = this.f957c.f982b;
            this.f976b = z2;
        }
    }

    @Override // p035j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Integer num) {
        AbstractC2938o1.m367b(this, num);
    }

    @Override // p035j$.util.function.InterfaceC2674l
    /* renamed from: l */
    public InterfaceC2674l mo174l(InterfaceC2674l interfaceC2674l) {
        Objects.requireNonNull(interfaceC2674l);
        return new C2673k(this, interfaceC2674l);
    }
}
