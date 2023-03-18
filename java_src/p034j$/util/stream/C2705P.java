package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.InterfaceC2611s;
import p034j$.util.function.InterfaceC2578f;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.P */
/* loaded from: classes2.dex */
public class C2705P extends AbstractC2726T {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2705P(InterfaceC2611s interfaceC2611s, int i, boolean z) {
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

    @Override // p034j$.util.stream.AbstractC2726T, p034j$.util.stream.InterfaceC2731U
    /* renamed from: j */
    public void mo211j(InterfaceC2578f interfaceC2578f) {
        if (isParallel()) {
            super.mo211j(interfaceC2578f);
        } else {
            AbstractC2726T.m494L0(m450J0()).mo147e(interfaceC2578f);
        }
    }

    @Override // p034j$.util.stream.AbstractC2726T, p034j$.util.stream.InterfaceC2731U
    /* renamed from: l0 */
    public void mo210l0(InterfaceC2578f interfaceC2578f) {
        if (!isParallel()) {
            AbstractC2726T.m494L0(m450J0()).mo147e(interfaceC2578f);
            return;
        }
        Objects.requireNonNull(interfaceC2578f);
        m449x0(new C2823k0(interfaceC2578f, true));
    }

    @Override // p034j$.util.stream.AbstractC2774c, p034j$.util.stream.InterfaceC2798g, p034j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ InterfaceC2731U parallel() {
        parallel();
        return this;
    }

    @Override // p034j$.util.stream.AbstractC2774c, p034j$.util.stream.InterfaceC2798g, p034j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ InterfaceC2731U sequential() {
        sequential();
        return this;
    }
}
