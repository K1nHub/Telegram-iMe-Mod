package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.InterfaceC2487s;
import p034j$.util.function.InterfaceC2460l;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.I0 */
/* loaded from: classes2.dex */
public class C2540I0 extends AbstractC2558L0 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2540I0(InterfaceC2487s interfaceC2487s, int i, boolean z) {
        super(interfaceC2487s, i, z);
    }

    @Override // p034j$.util.stream.AbstractC2650c
    /* renamed from: G0 */
    final boolean mo439G0() {
        throw new UnsupportedOperationException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC2650c
    /* renamed from: H0 */
    public final InterfaceC2714m3 mo298H0(int i, InterfaceC2714m3 interfaceC2714m3) {
        throw new UnsupportedOperationException();
    }

    @Override // p034j$.util.stream.AbstractC2558L0, p034j$.util.stream.IntStream
    /* renamed from: I */
    public void mo279I(InterfaceC2460l interfaceC2460l) {
        if (!isParallel()) {
            AbstractC2558L0.m512L0(m450J0()).mo140c(interfaceC2460l);
            return;
        }
        Objects.requireNonNull(interfaceC2460l);
        m449x0(new C2705l0(interfaceC2460l, true));
    }

    @Override // p034j$.util.stream.AbstractC2558L0, p034j$.util.stream.IntStream
    /* renamed from: U */
    public void mo275U(InterfaceC2460l interfaceC2460l) {
        if (isParallel()) {
            super.mo275U(interfaceC2460l);
        } else {
            AbstractC2558L0.m512L0(m450J0()).mo140c(interfaceC2460l);
        }
    }

    @Override // p034j$.util.stream.AbstractC2650c, p034j$.util.stream.InterfaceC2674g, p034j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ IntStream parallel() {
        parallel();
        return this;
    }

    @Override // p034j$.util.stream.AbstractC2650c, p034j$.util.stream.InterfaceC2674g, p034j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ IntStream sequential() {
        sequential();
        return this;
    }
}
