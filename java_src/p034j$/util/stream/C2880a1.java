package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.InterfaceC2727s;
import p034j$.util.function.InterfaceC2705q;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.a1 */
/* loaded from: classes2.dex */
public class C2880a1 extends AbstractC2898d1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2880a1(InterfaceC2727s interfaceC2727s, int i, boolean z) {
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

    @Override // p034j$.util.stream.AbstractC2898d1, p034j$.util.stream.InterfaceC2904e1
    /* renamed from: Z */
    public void mo181Z(InterfaceC2705q interfaceC2705q) {
        if (!isParallel()) {
            AbstractC2898d1.m427L0(m435J0()).mo119d(interfaceC2705q);
            return;
        }
        Objects.requireNonNull(interfaceC2705q);
        m434x0(new C2951m0(interfaceC2705q, true));
    }

    @Override // p034j$.util.stream.AbstractC2898d1, p034j$.util.stream.InterfaceC2904e1
    /* renamed from: d */
    public void mo180d(InterfaceC2705q interfaceC2705q) {
        if (isParallel()) {
            super.mo180d(interfaceC2705q);
        } else {
            AbstractC2898d1.m427L0(m435J0()).mo119d(interfaceC2705q);
        }
    }

    @Override // p034j$.util.stream.AbstractC2890c, p034j$.util.stream.InterfaceC2914g, p034j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ InterfaceC2904e1 parallel() {
        parallel();
        return this;
    }

    @Override // p034j$.util.stream.AbstractC2890c, p034j$.util.stream.InterfaceC2914g, p034j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ InterfaceC2904e1 sequential() {
        sequential();
        return this;
    }
}
