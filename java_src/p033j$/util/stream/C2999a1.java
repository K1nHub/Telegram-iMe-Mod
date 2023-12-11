package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.Spliterator;
import p033j$.util.function.InterfaceC2827p;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.a1 */
/* loaded from: classes2.dex */
public class C2999a1 extends AbstractC3017d1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2999a1(Spliterator spliterator, int i, boolean z) {
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

    @Override // p033j$.util.stream.AbstractC3017d1, p033j$.util.stream.InterfaceC3023e1
    /* renamed from: Y */
    public void mo252Y(InterfaceC2827p interfaceC2827p) {
        if (!isParallel()) {
            AbstractC3017d1.m491K0(m499I0()).mo187d(interfaceC2827p);
            return;
        }
        Objects.requireNonNull(interfaceC2827p);
        m498w0(new C3070m0(interfaceC2827p, true));
    }

    @Override // p033j$.util.stream.AbstractC3017d1, p033j$.util.stream.InterfaceC3023e1
    /* renamed from: d */
    public void mo251d(InterfaceC2827p interfaceC2827p) {
        if (isParallel()) {
            super.mo251d(interfaceC2827p);
        } else {
            AbstractC3017d1.m491K0(m499I0()).mo187d(interfaceC2827p);
        }
    }

    @Override // p033j$.util.stream.AbstractC3009c, p033j$.util.stream.InterfaceC3033g, p033j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ InterfaceC3023e1 parallel() {
        parallel();
        return this;
    }

    @Override // p033j$.util.stream.AbstractC3009c, p033j$.util.stream.InterfaceC3033g, p033j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ InterfaceC3023e1 sequential() {
        sequential();
        return this;
    }
}
