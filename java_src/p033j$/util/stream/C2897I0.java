package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.Spliterator;
import p033j$.util.function.InterfaceC2821l;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.I0 */
/* loaded from: classes2.dex */
public class C2897I0 extends AbstractC2915L0 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2897I0(Spliterator spliterator, int i, boolean z) {
        super(spliterator, i, z);
    }

    @Override // p033j$.util.stream.AbstractC3007c
    /* renamed from: F0 */
    final boolean mo491F0() {
        throw new UnsupportedOperationException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3007c
    /* renamed from: G0 */
    public final InterfaceC3071m3 mo350G0(int i, InterfaceC3071m3 interfaceC3071m3) {
        throw new UnsupportedOperationException();
    }

    @Override // p033j$.util.stream.AbstractC2915L0, p033j$.util.stream.IntStream
    /* renamed from: H */
    public void mo332H(InterfaceC2821l interfaceC2821l) {
        if (!isParallel()) {
            AbstractC2915L0.m564K0(m502I0()).mo196c(interfaceC2821l);
            return;
        }
        Objects.requireNonNull(interfaceC2821l);
        m501w0(new C3062l0(interfaceC2821l, true));
    }

    @Override // p033j$.util.stream.AbstractC2915L0, p033j$.util.stream.IntStream
    /* renamed from: T */
    public void mo328T(InterfaceC2821l interfaceC2821l) {
        if (isParallel()) {
            super.mo328T(interfaceC2821l);
        } else {
            AbstractC2915L0.m564K0(m502I0()).mo196c(interfaceC2821l);
        }
    }

    @Override // p033j$.util.stream.AbstractC3007c, p033j$.util.stream.InterfaceC3031g, p033j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ IntStream parallel() {
        parallel();
        return this;
    }

    @Override // p033j$.util.stream.AbstractC3007c, p033j$.util.stream.InterfaceC3031g, p033j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ IntStream sequential() {
        sequential();
        return this;
    }
}
