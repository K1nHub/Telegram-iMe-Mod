package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.Spliterator;
import p033j$.util.function.InterfaceC2826l;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.I0 */
/* loaded from: classes2.dex */
public class C2902I0 extends AbstractC2920L0 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2902I0(Spliterator spliterator, int i, boolean z) {
        super(spliterator, i, z);
    }

    @Override // p033j$.util.stream.AbstractC3012c
    /* renamed from: F0 */
    final boolean mo488F0() {
        throw new UnsupportedOperationException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3012c
    /* renamed from: G0 */
    public final InterfaceC3076m3 mo347G0(int i, InterfaceC3076m3 interfaceC3076m3) {
        throw new UnsupportedOperationException();
    }

    @Override // p033j$.util.stream.AbstractC2920L0, p033j$.util.stream.IntStream
    /* renamed from: H */
    public void mo329H(InterfaceC2826l interfaceC2826l) {
        if (!isParallel()) {
            AbstractC2920L0.m561K0(m499I0()).mo193c(interfaceC2826l);
            return;
        }
        Objects.requireNonNull(interfaceC2826l);
        m498w0(new C3067l0(interfaceC2826l, true));
    }

    @Override // p033j$.util.stream.AbstractC2920L0, p033j$.util.stream.IntStream
    /* renamed from: T */
    public void mo325T(InterfaceC2826l interfaceC2826l) {
        if (isParallel()) {
            super.mo325T(interfaceC2826l);
        } else {
            AbstractC2920L0.m561K0(m499I0()).mo193c(interfaceC2826l);
        }
    }

    @Override // p033j$.util.stream.AbstractC3012c, p033j$.util.stream.InterfaceC3036g, p033j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ IntStream parallel() {
        parallel();
        return this;
    }

    @Override // p033j$.util.stream.AbstractC3012c, p033j$.util.stream.InterfaceC3036g, p033j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ IntStream sequential() {
        sequential();
        return this;
    }
}
