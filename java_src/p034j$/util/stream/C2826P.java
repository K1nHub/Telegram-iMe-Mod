package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.InterfaceC2732s;
import p034j$.util.function.InterfaceC2699f;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.P */
/* loaded from: classes2.dex */
public class C2826P extends AbstractC2847T {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2826P(InterfaceC2732s interfaceC2732s, int i, boolean z) {
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

    @Override // p034j$.util.stream.AbstractC2847T, p034j$.util.stream.InterfaceC2852U
    /* renamed from: j */
    public void mo196j(InterfaceC2699f interfaceC2699f) {
        if (isParallel()) {
            super.mo196j(interfaceC2699f);
        } else {
            AbstractC2847T.m479L0(m435J0()).mo132e(interfaceC2699f);
        }
    }

    @Override // p034j$.util.stream.AbstractC2847T, p034j$.util.stream.InterfaceC2852U
    /* renamed from: l0 */
    public void mo195l0(InterfaceC2699f interfaceC2699f) {
        if (!isParallel()) {
            AbstractC2847T.m479L0(m435J0()).mo132e(interfaceC2699f);
            return;
        }
        Objects.requireNonNull(interfaceC2699f);
        m434x0(new C2944k0(interfaceC2699f, true));
    }

    @Override // p034j$.util.stream.AbstractC2895c, p034j$.util.stream.InterfaceC2919g, p034j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ InterfaceC2852U parallel() {
        parallel();
        return this;
    }

    @Override // p034j$.util.stream.AbstractC2895c, p034j$.util.stream.InterfaceC2919g, p034j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ InterfaceC2852U sequential() {
        sequential();
        return this;
    }
}
