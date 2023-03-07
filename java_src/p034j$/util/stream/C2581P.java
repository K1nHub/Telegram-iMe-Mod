package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.InterfaceC2487s;
import p034j$.util.function.InterfaceC2454f;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.P */
/* loaded from: classes2.dex */
public class C2581P extends AbstractC2602T {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2581P(InterfaceC2487s interfaceC2487s, int i, boolean z) {
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

    @Override // p034j$.util.stream.AbstractC2602T, p034j$.util.stream.InterfaceC2607U
    /* renamed from: j */
    public void mo211j(InterfaceC2454f interfaceC2454f) {
        if (isParallel()) {
            super.mo211j(interfaceC2454f);
        } else {
            AbstractC2602T.m494L0(m450J0()).mo147e(interfaceC2454f);
        }
    }

    @Override // p034j$.util.stream.AbstractC2602T, p034j$.util.stream.InterfaceC2607U
    /* renamed from: l0 */
    public void mo210l0(InterfaceC2454f interfaceC2454f) {
        if (!isParallel()) {
            AbstractC2602T.m494L0(m450J0()).mo147e(interfaceC2454f);
            return;
        }
        Objects.requireNonNull(interfaceC2454f);
        m449x0(new C2699k0(interfaceC2454f, true));
    }

    @Override // p034j$.util.stream.AbstractC2650c, p034j$.util.stream.InterfaceC2674g, p034j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ InterfaceC2607U parallel() {
        parallel();
        return this;
    }

    @Override // p034j$.util.stream.AbstractC2650c, p034j$.util.stream.InterfaceC2674g, p034j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ InterfaceC2607U sequential() {
        sequential();
        return this;
    }
}
