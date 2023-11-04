package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.Spliterator;
import p033j$.util.function.InterfaceC2820f;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.P */
/* loaded from: classes2.dex */
public class C2943P extends AbstractC2964T {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2943P(Spliterator spliterator, int i, boolean z) {
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

    @Override // p033j$.util.stream.AbstractC2964T, p033j$.util.stream.InterfaceC2969U
    /* renamed from: j */
    public void mo268j(InterfaceC2820f interfaceC2820f) {
        if (isParallel()) {
            super.mo268j(interfaceC2820f);
        } else {
            AbstractC2964T.m543K0(m499I0()).mo199e(interfaceC2820f);
        }
    }

    @Override // p033j$.util.stream.AbstractC2964T, p033j$.util.stream.InterfaceC2969U
    /* renamed from: k0 */
    public void mo267k0(InterfaceC2820f interfaceC2820f) {
        if (!isParallel()) {
            AbstractC2964T.m543K0(m499I0()).mo199e(interfaceC2820f);
            return;
        }
        Objects.requireNonNull(interfaceC2820f);
        m498w0(new C3061k0(interfaceC2820f, true));
    }

    @Override // p033j$.util.stream.AbstractC3012c, p033j$.util.stream.InterfaceC3036g, p033j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ InterfaceC2969U parallel() {
        parallel();
        return this;
    }

    @Override // p033j$.util.stream.AbstractC3012c, p033j$.util.stream.InterfaceC3036g, p033j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ InterfaceC2969U sequential() {
        sequential();
        return this;
    }
}
