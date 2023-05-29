package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2704p;
import p034j$.util.function.InterfaceC2705q;
import p034j$.wrappers.C3098i0;
/* renamed from: j$.util.stream.h1 */
/* loaded from: classes2.dex */
class C2922h1 extends AbstractC2934j1 implements InterfaceC2948l3 {

    /* renamed from: c */
    final /* synthetic */ EnumC2940k1 f960c;

    /* renamed from: d */
    final /* synthetic */ C3098i0 f961d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2922h1(EnumC2940k1 enumC2940k1, C3098i0 c3098i0) {
        super(enumC2940k1);
        this.f960c = enumC2940k1;
        this.f961d = c3098i0;
    }

    @Override // p034j$.util.stream.AbstractC2934j1, p034j$.util.stream.InterfaceC2954m3, p034j$.util.stream.InterfaceC2948l3, p034j$.util.function.InterfaceC2705q
    public void accept(long j) {
        boolean z;
        boolean z2;
        if (this.f973a) {
            return;
        }
        boolean m129b = this.f961d.m129b(j);
        z = this.f960c.f979a;
        if (m129b == z) {
            this.f973a = true;
            z2 = this.f960c.f980b;
            this.f974b = z2;
        }
    }

    @Override // p034j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Long l) {
        AbstractC2964o1.m357c(this, l);
    }

    @Override // p034j$.util.function.InterfaceC2705q
    /* renamed from: f */
    public InterfaceC2705q mo140f(InterfaceC2705q interfaceC2705q) {
        Objects.requireNonNull(interfaceC2705q);
        return new C2704p(this, interfaceC2705q);
    }
}
