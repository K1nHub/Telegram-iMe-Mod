package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.Spliterator;
import p033j$.util.function.InterfaceC2817f;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.P */
/* loaded from: classes2.dex */
public class C2940P extends AbstractC2961T {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2940P(Spliterator spliterator, int i, boolean z) {
        super(spliterator, i, z);
    }

    @Override // p033j$.util.stream.AbstractC3009c
    /* renamed from: F0 */
    final boolean mo488F0() {
        throw new UnsupportedOperationException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3009c
    /* renamed from: G0 */
    public final InterfaceC3073m3 mo347G0(int i, InterfaceC3073m3 interfaceC3073m3) {
        throw new UnsupportedOperationException();
    }

    @Override // p033j$.util.stream.AbstractC2961T, p033j$.util.stream.InterfaceC2966U
    /* renamed from: j */
    public void mo268j(InterfaceC2817f interfaceC2817f) {
        if (isParallel()) {
            super.mo268j(interfaceC2817f);
        } else {
            AbstractC2961T.m543K0(m499I0()).mo199e(interfaceC2817f);
        }
    }

    @Override // p033j$.util.stream.AbstractC2961T, p033j$.util.stream.InterfaceC2966U
    /* renamed from: k0 */
    public void mo267k0(InterfaceC2817f interfaceC2817f) {
        if (!isParallel()) {
            AbstractC2961T.m543K0(m499I0()).mo199e(interfaceC2817f);
            return;
        }
        Objects.requireNonNull(interfaceC2817f);
        m498w0(new C3058k0(interfaceC2817f, true));
    }

    @Override // p033j$.util.stream.AbstractC3009c, p033j$.util.stream.InterfaceC3033g, p033j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ InterfaceC2966U parallel() {
        parallel();
        return this;
    }

    @Override // p033j$.util.stream.AbstractC3009c, p033j$.util.stream.InterfaceC3033g, p033j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ InterfaceC2966U sequential() {
        sequential();
        return this;
    }
}
