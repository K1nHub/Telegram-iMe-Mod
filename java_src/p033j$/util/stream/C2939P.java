package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.Spliterator;
import p033j$.util.function.InterfaceC2816f;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.P */
/* loaded from: classes2.dex */
public class C2939P extends AbstractC2960T {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2939P(Spliterator spliterator, int i, boolean z) {
        super(spliterator, i, z);
    }

    @Override // p033j$.util.stream.AbstractC3008c
    /* renamed from: F0 */
    final boolean mo487F0() {
        throw new UnsupportedOperationException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3008c
    /* renamed from: G0 */
    public final InterfaceC3072m3 mo346G0(int i, InterfaceC3072m3 interfaceC3072m3) {
        throw new UnsupportedOperationException();
    }

    @Override // p033j$.util.stream.AbstractC2960T, p033j$.util.stream.InterfaceC2965U
    /* renamed from: j */
    public void mo267j(InterfaceC2816f interfaceC2816f) {
        if (isParallel()) {
            super.mo267j(interfaceC2816f);
        } else {
            AbstractC2960T.m542K0(m498I0()).mo198e(interfaceC2816f);
        }
    }

    @Override // p033j$.util.stream.AbstractC2960T, p033j$.util.stream.InterfaceC2965U
    /* renamed from: k0 */
    public void mo266k0(InterfaceC2816f interfaceC2816f) {
        if (!isParallel()) {
            AbstractC2960T.m542K0(m498I0()).mo198e(interfaceC2816f);
            return;
        }
        Objects.requireNonNull(interfaceC2816f);
        m497w0(new C3057k0(interfaceC2816f, true));
    }

    @Override // p033j$.util.stream.AbstractC3008c, p033j$.util.stream.InterfaceC3032g, p033j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ InterfaceC2965U parallel() {
        parallel();
        return this;
    }

    @Override // p033j$.util.stream.AbstractC3008c, p033j$.util.stream.InterfaceC3032g, p033j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ InterfaceC2965U sequential() {
        sequential();
        return this;
    }
}
