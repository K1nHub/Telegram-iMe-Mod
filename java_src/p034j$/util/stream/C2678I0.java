package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.InterfaceC2625s;
import p034j$.util.function.InterfaceC2598l;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.I0 */
/* loaded from: classes2.dex */
public class C2678I0 extends AbstractC2696L0 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2678I0(InterfaceC2625s interfaceC2625s, int i, boolean z) {
        super(interfaceC2625s, i, z);
    }

    @Override // p034j$.util.stream.AbstractC2788c
    /* renamed from: G0 */
    final boolean mo438G0() {
        throw new UnsupportedOperationException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC2788c
    /* renamed from: H0 */
    public final InterfaceC2852m3 mo297H0(int i, InterfaceC2852m3 interfaceC2852m3) {
        throw new UnsupportedOperationException();
    }

    @Override // p034j$.util.stream.AbstractC2696L0, p034j$.util.stream.IntStream
    /* renamed from: I */
    public void mo278I(InterfaceC2598l interfaceC2598l) {
        if (!isParallel()) {
            AbstractC2696L0.m511L0(m449J0()).mo139c(interfaceC2598l);
            return;
        }
        Objects.requireNonNull(interfaceC2598l);
        m448x0(new C2843l0(interfaceC2598l, true));
    }

    @Override // p034j$.util.stream.AbstractC2696L0, p034j$.util.stream.IntStream
    /* renamed from: U */
    public void mo274U(InterfaceC2598l interfaceC2598l) {
        if (isParallel()) {
            super.mo274U(interfaceC2598l);
        } else {
            AbstractC2696L0.m511L0(m449J0()).mo139c(interfaceC2598l);
        }
    }

    @Override // p034j$.util.stream.AbstractC2788c, p034j$.util.stream.InterfaceC2812g, p034j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ IntStream parallel() {
        parallel();
        return this;
    }

    @Override // p034j$.util.stream.AbstractC2788c, p034j$.util.stream.InterfaceC2812g, p034j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ IntStream sequential() {
        sequential();
        return this;
    }
}
