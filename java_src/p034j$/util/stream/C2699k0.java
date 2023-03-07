package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2453e;
import p034j$.util.function.InterfaceC2454f;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.k0 */
/* loaded from: classes2.dex */
public final class C2699k0 extends AbstractC2723o0 implements InterfaceC2696j3 {

    /* renamed from: b */
    final InterfaceC2454f f968b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2699k0(InterfaceC2454f interfaceC2454f, boolean z) {
        super(z);
        this.f968b = interfaceC2454f;
    }

    @Override // p034j$.util.stream.AbstractC2723o0, p034j$.util.stream.InterfaceC2714m3
    public void accept(double d) {
        this.f968b.accept(d);
    }

    @Override // p034j$.util.function.Consumer
    /* renamed from: e */
    public /* synthetic */ void accept(Double d) {
        AbstractC2724o1.m374a(this, d);
    }

    @Override // p034j$.util.function.InterfaceC2454f
    /* renamed from: j */
    public InterfaceC2454f mo102j(InterfaceC2454f interfaceC2454f) {
        Objects.requireNonNull(interfaceC2454f);
        return new C2453e(this, interfaceC2454f);
    }
}
