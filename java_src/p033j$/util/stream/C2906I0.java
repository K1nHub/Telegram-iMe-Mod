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
    final boolean mo442G0() {
        throw new UnsupportedOperationException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3016c
    /* renamed from: H0 */
    public final InterfaceC3080m3 mo301H0(int i, InterfaceC3080m3 interfaceC3080m3) {
        throw new UnsupportedOperationException();
    }

    @Override // p033j$.util.stream.AbstractC2924L0, p033j$.util.stream.IntStream
    /* renamed from: I */
    public void mo282I(InterfaceC2826l interfaceC2826l) {
        if (!isParallel()) {
            AbstractC2924L0.m515L0(m453J0()).mo143c(interfaceC2826l);
            return;
        }
        Objects.requireNonNull(interfaceC2826l);
        m452x0(new C3071l0(interfaceC2826l, true));
    }

    @Override // p033j$.util.stream.AbstractC2924L0, p033j$.util.stream.IntStream
    /* renamed from: U */
    public void mo278U(InterfaceC2826l interfaceC2826l) {
        if (isParallel()) {
            super.mo278U(interfaceC2826l);
        } else {
            AbstractC2924L0.m515L0(m453J0()).mo143c(interfaceC2826l);
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
