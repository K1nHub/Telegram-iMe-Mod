package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.InterfaceC2625s;
import p034j$.util.function.InterfaceC2603q;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.a1 */
/* loaded from: classes2.dex */
public class C2778a1 extends AbstractC2796d1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2778a1(InterfaceC2625s interfaceC2625s, int i, boolean z) {
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

    @Override // p034j$.util.stream.AbstractC2796d1, p034j$.util.stream.InterfaceC2802e1
    /* renamed from: Z */
    public void mo195Z(InterfaceC2603q interfaceC2603q) {
        if (!isParallel()) {
            AbstractC2796d1.m441L0(m449J0()).mo133d(interfaceC2603q);
            return;
        }
        Objects.requireNonNull(interfaceC2603q);
        m448x0(new C2849m0(interfaceC2603q, true));
    }

    @Override // p034j$.util.stream.AbstractC2796d1, p034j$.util.stream.InterfaceC2802e1
    /* renamed from: d */
    public void mo194d(InterfaceC2603q interfaceC2603q) {
        if (isParallel()) {
            super.mo194d(interfaceC2603q);
        } else {
            AbstractC2796d1.m441L0(m449J0()).mo133d(interfaceC2603q);
        }
    }

    @Override // p034j$.util.stream.AbstractC2788c, p034j$.util.stream.InterfaceC2812g, p034j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ InterfaceC2802e1 parallel() {
        parallel();
        return this;
    }

    @Override // p034j$.util.stream.AbstractC2788c, p034j$.util.stream.InterfaceC2812g, p034j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ InterfaceC2802e1 sequential() {
        sequential();
        return this;
    }
}
