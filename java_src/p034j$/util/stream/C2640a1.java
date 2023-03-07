package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.InterfaceC2487s;
import p034j$.util.function.InterfaceC2465q;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.a1 */
/* loaded from: classes2.dex */
public class C2640a1 extends AbstractC2658d1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2640a1(InterfaceC2487s interfaceC2487s, int i, boolean z) {
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

    @Override // p034j$.util.stream.AbstractC2658d1, p034j$.util.stream.InterfaceC2664e1
    /* renamed from: Z */
    public void mo196Z(InterfaceC2465q interfaceC2465q) {
        if (!isParallel()) {
            AbstractC2658d1.m442L0(m450J0()).mo134d(interfaceC2465q);
            return;
        }
        Objects.requireNonNull(interfaceC2465q);
        m449x0(new C2711m0(interfaceC2465q, true));
    }

    @Override // p034j$.util.stream.AbstractC2658d1, p034j$.util.stream.InterfaceC2664e1
    /* renamed from: d */
    public void mo195d(InterfaceC2465q interfaceC2465q) {
        if (isParallel()) {
            super.mo195d(interfaceC2465q);
        } else {
            AbstractC2658d1.m442L0(m450J0()).mo134d(interfaceC2465q);
        }
    }

    @Override // p034j$.util.stream.AbstractC2650c, p034j$.util.stream.InterfaceC2674g, p034j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ InterfaceC2664e1 parallel() {
        parallel();
        return this;
    }

    @Override // p034j$.util.stream.AbstractC2650c, p034j$.util.stream.InterfaceC2674g, p034j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ InterfaceC2664e1 sequential() {
        sequential();
        return this;
    }
}
