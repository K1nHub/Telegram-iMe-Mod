package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.InterfaceC2727s;
import p034j$.util.function.InterfaceC2700l;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.I0 */
/* loaded from: classes2.dex */
public class C2780I0 extends AbstractC2798L0 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2780I0(InterfaceC2727s interfaceC2727s, int i, boolean z) {
        super(interfaceC2727s, i, z);
    }

    @Override // p034j$.util.stream.AbstractC2890c
    /* renamed from: G0 */
    final boolean mo424G0() {
        throw new UnsupportedOperationException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC2890c
    /* renamed from: H0 */
    public final InterfaceC2954m3 mo283H0(int i, InterfaceC2954m3 interfaceC2954m3) {
        throw new UnsupportedOperationException();
    }

    @Override // p034j$.util.stream.AbstractC2798L0, p034j$.util.stream.IntStream
    /* renamed from: I */
    public void mo264I(InterfaceC2700l interfaceC2700l) {
        if (!isParallel()) {
            AbstractC2798L0.m497L0(m435J0()).mo125c(interfaceC2700l);
            return;
        }
        Objects.requireNonNull(interfaceC2700l);
        m434x0(new C2945l0(interfaceC2700l, true));
    }

    @Override // p034j$.util.stream.AbstractC2798L0, p034j$.util.stream.IntStream
    /* renamed from: U */
    public void mo260U(InterfaceC2700l interfaceC2700l) {
        if (isParallel()) {
            super.mo260U(interfaceC2700l);
        } else {
            AbstractC2798L0.m497L0(m435J0()).mo125c(interfaceC2700l);
        }
    }

    @Override // p034j$.util.stream.AbstractC2890c, p034j$.util.stream.InterfaceC2914g, p034j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ IntStream parallel() {
        parallel();
        return this;
    }

    @Override // p034j$.util.stream.AbstractC2890c, p034j$.util.stream.InterfaceC2914g, p034j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ IntStream sequential() {
        sequential();
        return this;
    }
}
