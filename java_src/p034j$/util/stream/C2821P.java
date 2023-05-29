package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.InterfaceC2727s;
import p034j$.util.function.InterfaceC2694f;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.P */
/* loaded from: classes2.dex */
public class C2821P extends AbstractC2842T {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2821P(InterfaceC2727s interfaceC2727s, int i, boolean z) {
        super(interfaceC2727s, i, z);
    }

    @Override // p034j$.util.stream.AbstractC2890c
    /* renamed from: G0 */
    final boolean mo424G0() {
        throw new UnsupportedOperationException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC2890c
    /* renamed from: H0 */
    public final InterfaceC2954m3 mo283H0(int i, InterfaceC2954m3 interfaceC2954m3) {
        throw new UnsupportedOperationException();
    }

    @Override // p034j$.util.stream.AbstractC2842T, p034j$.util.stream.InterfaceC2847U
    /* renamed from: j */
    public void mo196j(InterfaceC2694f interfaceC2694f) {
        if (isParallel()) {
            super.mo196j(interfaceC2694f);
        } else {
            AbstractC2842T.m479L0(m435J0()).mo132e(interfaceC2694f);
        }
    }

    @Override // p034j$.util.stream.AbstractC2842T, p034j$.util.stream.InterfaceC2847U
    /* renamed from: l0 */
    public void mo195l0(InterfaceC2694f interfaceC2694f) {
        if (!isParallel()) {
            AbstractC2842T.m479L0(m435J0()).mo132e(interfaceC2694f);
            return;
        }
        Objects.requireNonNull(interfaceC2694f);
        m434x0(new C2939k0(interfaceC2694f, true));
    }

    @Override // p034j$.util.stream.AbstractC2890c, p034j$.util.stream.InterfaceC2914g, p034j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ InterfaceC2847U parallel() {
        parallel();
        return this;
    }

    @Override // p034j$.util.stream.AbstractC2890c, p034j$.util.stream.InterfaceC2914g, p034j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ InterfaceC2847U sequential() {
        sequential();
        return this;
    }
}
