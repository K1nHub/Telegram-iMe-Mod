package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.InterfaceC2908s;
import p033j$.util.function.InterfaceC2875f;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.P */
/* loaded from: classes2.dex */
public class C3002P extends AbstractC3023T {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C3002P(InterfaceC2908s interfaceC2908s, int i, boolean z) {
        super(interfaceC2908s, i, z);
    }

    @Override // p033j$.util.stream.AbstractC3071c
    /* renamed from: G0 */
    final boolean mo442G0() {
        throw new UnsupportedOperationException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3071c
    /* renamed from: H0 */
    public final InterfaceC3135m3 mo301H0(int i, InterfaceC3135m3 interfaceC3135m3) {
        throw new UnsupportedOperationException();
    }

    @Override // p033j$.util.stream.AbstractC3023T, p033j$.util.stream.InterfaceC3028U
    /* renamed from: j */
    public void mo214j(InterfaceC2875f interfaceC2875f) {
        if (isParallel()) {
            super.mo214j(interfaceC2875f);
        } else {
            AbstractC3023T.m497L0(m453J0()).mo150e(interfaceC2875f);
        }
    }

    @Override // p033j$.util.stream.AbstractC3023T, p033j$.util.stream.InterfaceC3028U
    /* renamed from: l0 */
    public void mo213l0(InterfaceC2875f interfaceC2875f) {
        if (!isParallel()) {
            AbstractC3023T.m497L0(m453J0()).mo150e(interfaceC2875f);
            return;
        }
        Objects.requireNonNull(interfaceC2875f);
        m452x0(new C3120k0(interfaceC2875f, true));
    }

    @Override // p033j$.util.stream.AbstractC3071c, p033j$.util.stream.InterfaceC3095g, p033j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ InterfaceC3028U parallel() {
        parallel();
        return this;
    }

    @Override // p033j$.util.stream.AbstractC3071c, p033j$.util.stream.InterfaceC3095g, p033j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ InterfaceC3028U sequential() {
        sequential();
        return this;
    }
}
