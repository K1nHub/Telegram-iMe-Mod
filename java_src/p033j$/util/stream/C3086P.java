package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.InterfaceC2992s;
import p033j$.util.function.InterfaceC2959f;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.P */
/* loaded from: classes2.dex */
public class C3086P extends AbstractC3107T {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C3086P(InterfaceC2992s interfaceC2992s, int i, boolean z) {
        super(interfaceC2992s, i, z);
    }

    @Override // p033j$.util.stream.AbstractC3155c
    /* renamed from: G0 */
    final boolean mo442G0() {
        throw new UnsupportedOperationException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3155c
    /* renamed from: H0 */
    public final InterfaceC3219m3 mo301H0(int i, InterfaceC3219m3 interfaceC3219m3) {
        throw new UnsupportedOperationException();
    }

    @Override // p033j$.util.stream.AbstractC3107T, p033j$.util.stream.InterfaceC3112U
    /* renamed from: j */
    public void mo214j(InterfaceC2959f interfaceC2959f) {
        if (isParallel()) {
            super.mo214j(interfaceC2959f);
        } else {
            AbstractC3107T.m497L0(m453J0()).mo150e(interfaceC2959f);
        }
    }

    @Override // p033j$.util.stream.AbstractC3107T, p033j$.util.stream.InterfaceC3112U
    /* renamed from: l0 */
    public void mo213l0(InterfaceC2959f interfaceC2959f) {
        if (!isParallel()) {
            AbstractC3107T.m497L0(m453J0()).mo150e(interfaceC2959f);
            return;
        }
        Objects.requireNonNull(interfaceC2959f);
        m452x0(new C3204k0(interfaceC2959f, true));
    }

    @Override // p033j$.util.stream.AbstractC3155c, p033j$.util.stream.InterfaceC3179g, p033j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ InterfaceC3112U parallel() {
        parallel();
        return this;
    }

    @Override // p033j$.util.stream.AbstractC3155c, p033j$.util.stream.InterfaceC3179g, p033j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ InterfaceC3112U sequential() {
        sequential();
        return this;
    }
}
