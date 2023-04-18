package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.InterfaceC2688s;
import p034j$.util.function.InterfaceC2661l;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.I0 */
/* loaded from: classes2.dex */
public class C2741I0 extends AbstractC2759L0 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2741I0(InterfaceC2688s interfaceC2688s, int i, boolean z) {
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

    @Override // p034j$.util.stream.AbstractC2759L0, p034j$.util.stream.IntStream
    /* renamed from: I */
    public void mo259I(InterfaceC2661l interfaceC2661l) {
        if (!isParallel()) {
            AbstractC2759L0.m492L0(m430J0()).mo120c(interfaceC2661l);
            return;
        }
        Objects.requireNonNull(interfaceC2661l);
        m429x0(new C2906l0(interfaceC2661l, true));
    }

    @Override // p034j$.util.stream.AbstractC2759L0, p034j$.util.stream.IntStream
    /* renamed from: U */
    public void mo255U(InterfaceC2661l interfaceC2661l) {
        if (isParallel()) {
            super.mo255U(interfaceC2661l);
        } else {
            AbstractC2759L0.m492L0(m430J0()).mo120c(interfaceC2661l);
        }
    }

    @Override // p034j$.util.stream.AbstractC2851c, p034j$.util.stream.InterfaceC2875g, p034j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ IntStream parallel() {
        parallel();
        return this;
    }

    @Override // p034j$.util.stream.AbstractC2851c, p034j$.util.stream.InterfaceC2875g, p034j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ IntStream sequential() {
        sequential();
        return this;
    }
}
