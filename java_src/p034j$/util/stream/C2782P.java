package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.InterfaceC2688s;
import p034j$.util.function.InterfaceC2655f;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.P */
/* loaded from: classes2.dex */
public class C2782P extends AbstractC2803T {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2782P(InterfaceC2688s interfaceC2688s, int i, boolean z) {
        super(interfaceC2688s, i, z);
    }

    @Override // p034j$.util.stream.AbstractC2851c
    /* renamed from: G0 */
    final boolean mo419G0() {
        throw new UnsupportedOperationException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC2851c
    /* renamed from: H0 */
    public final InterfaceC2915m3 mo278H0(int i, InterfaceC2915m3 interfaceC2915m3) {
        throw new UnsupportedOperationException();
    }

    @Override // p034j$.util.stream.AbstractC2803T, p034j$.util.stream.InterfaceC2808U
    /* renamed from: j */
    public void mo191j(InterfaceC2655f interfaceC2655f) {
        if (isParallel()) {
            super.mo191j(interfaceC2655f);
        } else {
            AbstractC2803T.m474L0(m430J0()).mo127e(interfaceC2655f);
        }
    }

    @Override // p034j$.util.stream.AbstractC2803T, p034j$.util.stream.InterfaceC2808U
    /* renamed from: l0 */
    public void mo190l0(InterfaceC2655f interfaceC2655f) {
        if (!isParallel()) {
            AbstractC2803T.m474L0(m430J0()).mo127e(interfaceC2655f);
            return;
        }
        Objects.requireNonNull(interfaceC2655f);
        m429x0(new C2900k0(interfaceC2655f, true));
    }

    @Override // p034j$.util.stream.AbstractC2851c, p034j$.util.stream.InterfaceC2875g, p034j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ InterfaceC2808U parallel() {
        parallel();
        return this;
    }

    @Override // p034j$.util.stream.AbstractC2851c, p034j$.util.stream.InterfaceC2875g, p034j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ InterfaceC2808U sequential() {
        sequential();
        return this;
    }
}
