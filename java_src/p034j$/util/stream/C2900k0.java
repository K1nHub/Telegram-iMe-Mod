package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2654e;
import p034j$.util.function.InterfaceC2655f;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.k0 */
/* loaded from: classes2.dex */
public final class C2900k0 extends AbstractC2924o0 implements InterfaceC2897j3 {

    /* renamed from: b */
    final InterfaceC2655f f974b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2900k0(InterfaceC2655f interfaceC2655f, boolean z) {
        super(z);
        this.f974b = interfaceC2655f;
    }

    @Override // p034j$.util.stream.AbstractC2924o0, p034j$.util.stream.InterfaceC2915m3
    public void accept(double d) {
        this.f974b.accept(d);
    }

    @Override // p034j$.util.function.Consumer
    /* renamed from: e */
    public /* synthetic */ void accept(Double d) {
        AbstractC2925o1.m354a(this, d);
    }

    @Override // p034j$.util.function.InterfaceC2655f
    /* renamed from: j */
    public InterfaceC2655f mo82j(InterfaceC2655f interfaceC2655f) {
        Objects.requireNonNull(interfaceC2655f);
        return new C2654e(this, interfaceC2655f);
    }
}
