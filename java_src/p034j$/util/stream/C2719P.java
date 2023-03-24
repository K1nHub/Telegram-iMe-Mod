package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.InterfaceC2625s;
import p034j$.util.function.InterfaceC2592f;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.P */
/* loaded from: classes2.dex */
public class C2719P extends AbstractC2740T {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2719P(InterfaceC2625s interfaceC2625s, int i, boolean z) {
        super(interfaceC2625s, i, z);
    }

    @Override // p034j$.util.stream.AbstractC2788c
    /* renamed from: G0 */
    final boolean mo438G0() {
        throw new UnsupportedOperationException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC2788c
    /* renamed from: H0 */
    public final InterfaceC2852m3 mo297H0(int i, InterfaceC2852m3 interfaceC2852m3) {
        throw new UnsupportedOperationException();
    }

    @Override // p034j$.util.stream.AbstractC2740T, p034j$.util.stream.InterfaceC2745U
    /* renamed from: j */
    public void mo210j(InterfaceC2592f interfaceC2592f) {
        if (isParallel()) {
            super.mo210j(interfaceC2592f);
        } else {
            AbstractC2740T.m493L0(m449J0()).mo146e(interfaceC2592f);
        }
    }

    @Override // p034j$.util.stream.AbstractC2740T, p034j$.util.stream.InterfaceC2745U
    /* renamed from: l0 */
    public void mo209l0(InterfaceC2592f interfaceC2592f) {
        if (!isParallel()) {
            AbstractC2740T.m493L0(m449J0()).mo146e(interfaceC2592f);
            return;
        }
        Objects.requireNonNull(interfaceC2592f);
        m448x0(new C2837k0(interfaceC2592f, true));
    }

    @Override // p034j$.util.stream.AbstractC2788c, p034j$.util.stream.InterfaceC2812g, p034j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ InterfaceC2745U parallel() {
        parallel();
        return this;
    }

    @Override // p034j$.util.stream.AbstractC2788c, p034j$.util.stream.InterfaceC2812g, p034j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ InterfaceC2745U sequential() {
        sequential();
        return this;
    }
}
