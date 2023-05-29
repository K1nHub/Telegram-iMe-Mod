package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.InterfaceC2732s;
import p034j$.util.function.InterfaceC2705l;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.I0 */
/* loaded from: classes2.dex */
public class C2785I0 extends AbstractC2803L0 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2785I0(InterfaceC2732s interfaceC2732s, int i, boolean z) {
        super(interfaceC2732s, i, z);
    }

    @Override // p034j$.util.stream.AbstractC2895c
    /* renamed from: G0 */
    final boolean mo424G0() {
        throw new UnsupportedOperationException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC2895c
    /* renamed from: H0 */
    public final InterfaceC2959m3 mo283H0(int i, InterfaceC2959m3 interfaceC2959m3) {
        throw new UnsupportedOperationException();
    }

    @Override // p034j$.util.stream.AbstractC2803L0, p034j$.util.stream.IntStream
    /* renamed from: I */
    public void mo264I(InterfaceC2705l interfaceC2705l) {
        if (!isParallel()) {
            AbstractC2803L0.m497L0(m435J0()).mo125c(interfaceC2705l);
            return;
        }
        Objects.requireNonNull(interfaceC2705l);
        m434x0(new C2950l0(interfaceC2705l, true));
    }

    @Override // p034j$.util.stream.AbstractC2803L0, p034j$.util.stream.IntStream
    /* renamed from: U */
    public void mo260U(InterfaceC2705l interfaceC2705l) {
        if (isParallel()) {
            super.mo260U(interfaceC2705l);
        } else {
            AbstractC2803L0.m497L0(m435J0()).mo125c(interfaceC2705l);
        }
    }

    @Override // p034j$.util.stream.AbstractC2895c, p034j$.util.stream.InterfaceC2919g, p034j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ IntStream parallel() {
        parallel();
        return this;
    }

    @Override // p034j$.util.stream.AbstractC2895c, p034j$.util.stream.InterfaceC2919g, p034j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ IntStream sequential() {
        sequential();
        return this;
    }
}
