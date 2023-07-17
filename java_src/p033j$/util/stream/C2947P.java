package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.InterfaceC2853s;
import p033j$.util.function.InterfaceC2820f;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.P */
/* loaded from: classes2.dex */
public class C2947P extends AbstractC2968T {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2947P(InterfaceC2853s interfaceC2853s, int i, boolean z) {
        super(interfaceC2853s, i, z);
    }

    @Override // p033j$.util.stream.AbstractC3016c
    /* renamed from: G0 */
    final boolean mo424G0() {
        throw new UnsupportedOperationException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3016c
    /* renamed from: H0 */
    public final InterfaceC3080m3 mo283H0(int i, InterfaceC3080m3 interfaceC3080m3) {
        throw new UnsupportedOperationException();
    }

    @Override // p033j$.util.stream.AbstractC2968T, p033j$.util.stream.InterfaceC2973U
    /* renamed from: j */
    public void mo196j(InterfaceC2820f interfaceC2820f) {
        if (isParallel()) {
            super.mo196j(interfaceC2820f);
        } else {
            AbstractC2968T.m479L0(m435J0()).mo132e(interfaceC2820f);
        }
    }

    @Override // p033j$.util.stream.AbstractC2968T, p033j$.util.stream.InterfaceC2973U
    /* renamed from: l0 */
    public void mo195l0(InterfaceC2820f interfaceC2820f) {
        if (!isParallel()) {
            AbstractC2968T.m479L0(m435J0()).mo132e(interfaceC2820f);
            return;
        }
        Objects.requireNonNull(interfaceC2820f);
        m434x0(new C3065k0(interfaceC2820f, true));
    }

    @Override // p033j$.util.stream.AbstractC3016c, p033j$.util.stream.InterfaceC3040g, p033j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ InterfaceC2973U parallel() {
        parallel();
        return this;
    }

    @Override // p033j$.util.stream.AbstractC3016c, p033j$.util.stream.InterfaceC3040g, p033j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ InterfaceC2973U sequential() {
        sequential();
        return this;
    }
}
