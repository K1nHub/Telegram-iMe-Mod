package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2577e;
import p034j$.util.function.InterfaceC2578f;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.k0 */
/* loaded from: classes2.dex */
public final class C2823k0 extends AbstractC2847o0 implements InterfaceC2820j3 {

    /* renamed from: b */
    final InterfaceC2578f f973b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2823k0(InterfaceC2578f interfaceC2578f, boolean z) {
        super(z);
        this.f973b = interfaceC2578f;
    }

    @Override // p034j$.util.stream.AbstractC2847o0, p034j$.util.stream.InterfaceC2838m3
    public void accept(double d) {
        this.f973b.accept(d);
    }

    @Override // p034j$.util.function.Consumer
    /* renamed from: e */
    public /* synthetic */ void accept(Double d) {
        AbstractC2848o1.m374a(this, d);
    }

    @Override // p034j$.util.function.InterfaceC2578f
    /* renamed from: j */
    public InterfaceC2578f mo102j(InterfaceC2578f interfaceC2578f) {
        Objects.requireNonNull(interfaceC2578f);
        return new C2577e(this, interfaceC2578f);
    }
}
