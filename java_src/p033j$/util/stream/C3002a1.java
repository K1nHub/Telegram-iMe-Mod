package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.Spliterator;
import p033j$.util.function.InterfaceC2830p;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.a1 */
/* loaded from: classes2.dex */
public class C3002a1 extends AbstractC3020d1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C3002a1(Spliterator spliterator, int i, boolean z) {
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

    @Override // p033j$.util.stream.AbstractC3020d1, p033j$.util.stream.InterfaceC3026e1
    /* renamed from: Y */
    public void mo252Y(InterfaceC2830p interfaceC2830p) {
        if (!isParallel()) {
            AbstractC3020d1.m491K0(m499I0()).mo187d(interfaceC2830p);
            return;
        }
        Objects.requireNonNull(interfaceC2830p);
        m498w0(new C3073m0(interfaceC2830p, true));
    }

    @Override // p033j$.util.stream.AbstractC3020d1, p033j$.util.stream.InterfaceC3026e1
    /* renamed from: d */
    public void mo251d(InterfaceC2830p interfaceC2830p) {
        if (isParallel()) {
            super.mo251d(interfaceC2830p);
        } else {
            AbstractC3020d1.m491K0(m499I0()).mo187d(interfaceC2830p);
        }
    }

    @Override // p033j$.util.stream.AbstractC3012c, p033j$.util.stream.InterfaceC3036g, p033j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ InterfaceC3026e1 parallel() {
        parallel();
        return this;
    }

    @Override // p033j$.util.stream.AbstractC3012c, p033j$.util.stream.InterfaceC3036g, p033j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ InterfaceC3026e1 sequential() {
        sequential();
        return this;
    }
}
