package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.InterfaceC2908s;
import p033j$.util.function.InterfaceC2881l;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.I0 */
/* loaded from: classes2.dex */
public class C2961I0 extends AbstractC2979L0 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2961I0(InterfaceC2908s interfaceC2908s, int i, boolean z) {
        super(interfaceC2908s, i, z);
    }

    @Override // p033j$.util.stream.AbstractC3071c
    /* renamed from: G0 */
    final boolean mo442G0() {
        throw new UnsupportedOperationException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3071c
    /* renamed from: H0 */
    public final InterfaceC3135m3 mo301H0(int i, InterfaceC3135m3 interfaceC3135m3) {
        throw new UnsupportedOperationException();
    }

    @Override // p033j$.util.stream.AbstractC2979L0, p033j$.util.stream.IntStream
    /* renamed from: I */
    public void mo282I(InterfaceC2881l interfaceC2881l) {
        if (!isParallel()) {
            AbstractC2979L0.m515L0(m453J0()).mo143c(interfaceC2881l);
            return;
        }
        Objects.requireNonNull(interfaceC2881l);
        m452x0(new C3126l0(interfaceC2881l, true));
    }

    @Override // p033j$.util.stream.AbstractC2979L0, p033j$.util.stream.IntStream
    /* renamed from: U */
    public void mo278U(InterfaceC2881l interfaceC2881l) {
        if (isParallel()) {
            super.mo278U(interfaceC2881l);
        } else {
            AbstractC2979L0.m515L0(m453J0()).mo143c(interfaceC2881l);
        }
    }

    @Override // p033j$.util.stream.AbstractC3071c, p033j$.util.stream.InterfaceC3095g, p033j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ IntStream parallel() {
        parallel();
        return this;
    }

    @Override // p033j$.util.stream.AbstractC3071c, p033j$.util.stream.InterfaceC3095g, p033j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ IntStream sequential() {
        sequential();
        return this;
    }
}
