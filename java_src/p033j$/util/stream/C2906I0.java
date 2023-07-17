package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.InterfaceC2853s;
import p033j$.util.function.InterfaceC2826l;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.I0 */
/* loaded from: classes2.dex */
public class C2906I0 extends AbstractC2924L0 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2906I0(InterfaceC2853s interfaceC2853s, int i, boolean z) {
        super(interfaceC2853s, i, z);
    }

    @Override // p033j$.util.stream.AbstractC3016c
    /* renamed from: G0 */
    final boolean mo424G0() {
        throw new UnsupportedOperationException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3016c
    /* renamed from: H0 */
    public final InterfaceC3080m3 mo283H0(int i, InterfaceC3080m3 interfaceC3080m3) {
        throw new UnsupportedOperationException();
    }

    @Override // p033j$.util.stream.AbstractC2924L0, p033j$.util.stream.IntStream
    /* renamed from: I */
    public void mo264I(InterfaceC2826l interfaceC2826l) {
        if (!isParallel()) {
            AbstractC2924L0.m497L0(m435J0()).mo125c(interfaceC2826l);
            return;
        }
        Objects.requireNonNull(interfaceC2826l);
        m434x0(new C3071l0(interfaceC2826l, true));
    }

    @Override // p033j$.util.stream.AbstractC2924L0, p033j$.util.stream.IntStream
    /* renamed from: U */
    public void mo260U(InterfaceC2826l interfaceC2826l) {
        if (isParallel()) {
            super.mo260U(interfaceC2826l);
        } else {
            AbstractC2924L0.m497L0(m435J0()).mo125c(interfaceC2826l);
        }
    }

    @Override // p033j$.util.stream.AbstractC3016c, p033j$.util.stream.InterfaceC3040g, p033j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ IntStream parallel() {
        parallel();
        return this;
    }

    @Override // p033j$.util.stream.AbstractC3016c, p033j$.util.stream.InterfaceC3040g, p033j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ IntStream sequential() {
        sequential();
        return this;
    }
}
