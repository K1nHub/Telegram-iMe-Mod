package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.Spliterator;
import p033j$.util.function.InterfaceC2815f;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.P */
/* loaded from: classes2.dex */
public class C2938P extends AbstractC2959T {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2938P(Spliterator spliterator, int i, boolean z) {
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

    @Override // p033j$.util.stream.AbstractC2959T, p033j$.util.stream.InterfaceC2964U
    /* renamed from: j */
    public void mo271j(InterfaceC2815f interfaceC2815f) {
        if (isParallel()) {
            super.mo271j(interfaceC2815f);
        } else {
            AbstractC2959T.m546K0(m502I0()).mo202e(interfaceC2815f);
        }
    }

    @Override // p033j$.util.stream.AbstractC2959T, p033j$.util.stream.InterfaceC2964U
    /* renamed from: k0 */
    public void mo270k0(InterfaceC2815f interfaceC2815f) {
        if (!isParallel()) {
            AbstractC2959T.m546K0(m502I0()).mo202e(interfaceC2815f);
            return;
        }
        Objects.requireNonNull(interfaceC2815f);
        m501w0(new C3056k0(interfaceC2815f, true));
    }

    @Override // p033j$.util.stream.AbstractC3007c, p033j$.util.stream.InterfaceC3031g, p033j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ InterfaceC2964U parallel() {
        parallel();
        return this;
    }

    @Override // p033j$.util.stream.AbstractC3007c, p033j$.util.stream.InterfaceC3031g, p033j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ InterfaceC2964U sequential() {
        sequential();
        return this;
    }
}
