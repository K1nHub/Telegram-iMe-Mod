package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.Spliterator;
import p033j$.util.function.InterfaceC2822l;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.I0 */
/* loaded from: classes2.dex */
public class C2898I0 extends AbstractC2916L0 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2898I0(Spliterator spliterator, int i, boolean z) {
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

    @Override // p033j$.util.stream.AbstractC2916L0, p033j$.util.stream.IntStream
    /* renamed from: H */
    public void mo328H(InterfaceC2822l interfaceC2822l) {
        if (!isParallel()) {
            AbstractC2916L0.m560K0(m498I0()).mo192c(interfaceC2822l);
            return;
        }
        Objects.requireNonNull(interfaceC2822l);
        m497w0(new C3063l0(interfaceC2822l, true));
    }

    @Override // p033j$.util.stream.AbstractC2916L0, p033j$.util.stream.IntStream
    /* renamed from: T */
    public void mo324T(InterfaceC2822l interfaceC2822l) {
        if (isParallel()) {
            super.mo324T(interfaceC2822l);
        } else {
            AbstractC2916L0.m560K0(m498I0()).mo192c(interfaceC2822l);
        }
    }

    @Override // p033j$.util.stream.AbstractC3008c, p033j$.util.stream.InterfaceC3032g, p033j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ IntStream parallel() {
        parallel();
        return this;
    }

    @Override // p033j$.util.stream.AbstractC3008c, p033j$.util.stream.InterfaceC3032g, p033j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ IntStream sequential() {
        sequential();
        return this;
    }
}
