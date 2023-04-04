package p035j$.util.stream;

import java.util.Objects;
import p035j$.util.function.C2678p;
import p035j$.util.function.InterfaceC2679q;
import p035j$.wrappers.C3072i0;
/* renamed from: j$.util.stream.h1 */
/* loaded from: classes2.dex */
class C2896h1 extends AbstractC2908j1 implements InterfaceC2922l3 {

    /* renamed from: c */
    final /* synthetic */ EnumC2914k1 f962c;

    /* renamed from: d */
    final /* synthetic */ C3072i0 f963d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2896h1(EnumC2914k1 enumC2914k1, C3072i0 c3072i0) {
        super(enumC2914k1);
        this.f962c = enumC2914k1;
        this.f963d = c3072i0;
    }

    @Override // p035j$.util.stream.AbstractC2908j1, p035j$.util.stream.InterfaceC2928m3, p035j$.util.stream.InterfaceC2922l3, p035j$.util.function.InterfaceC2679q
    public void accept(long j) {
        boolean z;
        boolean z2;
        if (this.f975a) {
            return;
        }
        boolean m138b = this.f963d.m138b(j);
        z = this.f962c.f981a;
        if (m138b == z) {
            this.f975a = true;
            z2 = this.f962c.f982b;
            this.f976b = z2;
        }
    }

    @Override // p035j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Long l) {
        AbstractC2938o1.m366c(this, l);
    }

    @Override // p035j$.util.function.InterfaceC2679q
    /* renamed from: f */
    public InterfaceC2679q mo149f(InterfaceC2679q interfaceC2679q) {
        Objects.requireNonNull(interfaceC2679q);
        return new C2678p(this, interfaceC2679q);
    }
}
