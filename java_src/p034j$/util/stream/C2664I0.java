package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.InterfaceC2611s;
import p034j$.util.function.InterfaceC2584l;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.I0 */
/* loaded from: classes2.dex */
public class C2664I0 extends AbstractC2682L0 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2664I0(InterfaceC2611s interfaceC2611s, int i, boolean z) {
        super(interfaceC2611s, i, z);
    }

    @Override // p034j$.util.stream.AbstractC2774c
    /* renamed from: G0 */
    final boolean mo439G0() {
        throw new UnsupportedOperationException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC2774c
    /* renamed from: H0 */
    public final InterfaceC2838m3 mo298H0(int i, InterfaceC2838m3 interfaceC2838m3) {
        throw new UnsupportedOperationException();
    }

    @Override // p034j$.util.stream.AbstractC2682L0, p034j$.util.stream.IntStream
    /* renamed from: I */
    public void mo279I(InterfaceC2584l interfaceC2584l) {
        if (!isParallel()) {
            AbstractC2682L0.m512L0(m450J0()).mo140c(interfaceC2584l);
            return;
        }
        Objects.requireNonNull(interfaceC2584l);
        m449x0(new C2829l0(interfaceC2584l, true));
    }

    @Override // p034j$.util.stream.AbstractC2682L0, p034j$.util.stream.IntStream
    /* renamed from: U */
    public void mo275U(InterfaceC2584l interfaceC2584l) {
        if (isParallel()) {
            super.mo275U(interfaceC2584l);
        } else {
            AbstractC2682L0.m512L0(m450J0()).mo140c(interfaceC2584l);
        }
    }

    @Override // p034j$.util.stream.AbstractC2774c, p034j$.util.stream.InterfaceC2798g, p034j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ IntStream parallel() {
        parallel();
        return this;
    }

    @Override // p034j$.util.stream.AbstractC2774c, p034j$.util.stream.InterfaceC2798g, p034j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ IntStream sequential() {
        sequential();
        return this;
    }
}
