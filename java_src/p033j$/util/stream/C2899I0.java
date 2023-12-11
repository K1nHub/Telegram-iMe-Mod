package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.Spliterator;
import p033j$.util.function.InterfaceC2823l;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.I0 */
/* loaded from: classes2.dex */
public class C2899I0 extends AbstractC2917L0 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2899I0(Spliterator spliterator, int i, boolean z) {
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

    @Override // p033j$.util.stream.AbstractC2917L0, p033j$.util.stream.IntStream
    /* renamed from: H */
    public void mo329H(InterfaceC2823l interfaceC2823l) {
        if (!isParallel()) {
            AbstractC2917L0.m561K0(m499I0()).mo193c(interfaceC2823l);
            return;
        }
        Objects.requireNonNull(interfaceC2823l);
        m498w0(new C3064l0(interfaceC2823l, true));
    }

    @Override // p033j$.util.stream.AbstractC2917L0, p033j$.util.stream.IntStream
    /* renamed from: T */
    public void mo325T(InterfaceC2823l interfaceC2823l) {
        if (isParallel()) {
            super.mo325T(interfaceC2823l);
        } else {
            AbstractC2917L0.m561K0(m499I0()).mo193c(interfaceC2823l);
        }
    }

    @Override // p033j$.util.stream.AbstractC3009c, p033j$.util.stream.InterfaceC3033g, p033j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ IntStream parallel() {
        parallel();
        return this;
    }

    @Override // p033j$.util.stream.AbstractC3009c, p033j$.util.stream.InterfaceC3033g, p033j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ IntStream sequential() {
        sequential();
        return this;
    }
}
