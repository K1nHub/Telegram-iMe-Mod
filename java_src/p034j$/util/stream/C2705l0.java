package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2459k;
import p034j$.util.function.InterfaceC2460l;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.l0 */
/* loaded from: classes2.dex */
public final class C2705l0 extends AbstractC2723o0 implements InterfaceC2702k3 {

    /* renamed from: b */
    final InterfaceC2460l f978b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2705l0(InterfaceC2460l interfaceC2460l, boolean z) {
        super(z);
        this.f978b = interfaceC2460l;
    }

    @Override // p034j$.util.stream.AbstractC2723o0, p034j$.util.stream.InterfaceC2714m3
    public void accept(int i) {
        this.f978b.accept(i);
    }

    @Override // p034j$.util.function.Consumer
    /* renamed from: e */
    public /* synthetic */ void accept(Integer num) {
        AbstractC2724o1.m373b(this, num);
    }

    @Override // p034j$.util.function.InterfaceC2460l
    /* renamed from: l */
    public InterfaceC2460l mo180l(InterfaceC2460l interfaceC2460l) {
        Objects.requireNonNull(interfaceC2460l);
        return new C2459k(this, interfaceC2460l);
    }
}
