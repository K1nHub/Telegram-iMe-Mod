package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.InterfaceC2611s;
import p034j$.util.function.InterfaceC2589q;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.a1 */
/* loaded from: classes2.dex */
public class C2764a1 extends AbstractC2782d1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2764a1(InterfaceC2611s interfaceC2611s, int i, boolean z) {
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

    @Override // p034j$.util.stream.AbstractC2782d1, p034j$.util.stream.InterfaceC2788e1
    /* renamed from: Z */
    public void mo196Z(InterfaceC2589q interfaceC2589q) {
        if (!isParallel()) {
            AbstractC2782d1.m442L0(m450J0()).mo134d(interfaceC2589q);
            return;
        }
        Objects.requireNonNull(interfaceC2589q);
        m449x0(new C2835m0(interfaceC2589q, true));
    }

    @Override // p034j$.util.stream.AbstractC2782d1, p034j$.util.stream.InterfaceC2788e1
    /* renamed from: d */
    public void mo195d(InterfaceC2589q interfaceC2589q) {
        if (isParallel()) {
            super.mo195d(interfaceC2589q);
        } else {
            AbstractC2782d1.m442L0(m450J0()).mo134d(interfaceC2589q);
        }
    }

    @Override // p034j$.util.stream.AbstractC2774c, p034j$.util.stream.InterfaceC2798g, p034j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ InterfaceC2788e1 parallel() {
        parallel();
        return this;
    }

    @Override // p034j$.util.stream.AbstractC2774c, p034j$.util.stream.InterfaceC2798g, p034j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ InterfaceC2788e1 sequential() {
        sequential();
        return this;
    }
}
