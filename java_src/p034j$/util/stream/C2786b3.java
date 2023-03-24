package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.InterfaceC2625s;
import p034j$.util.function.Consumer;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.b3 */
/* loaded from: classes2.dex */
public class C2786b3 extends AbstractC2804e3 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2786b3(InterfaceC2625s interfaceC2625s, int i, boolean z) {
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

    @Override // p034j$.util.stream.AbstractC2804e3, p034j$.util.stream.Stream
    /* renamed from: e */
    public void mo256e(Consumer consumer) {
        if (!isParallel()) {
            m449J0().forEachRemaining(consumer);
            return;
        }
        Objects.requireNonNull(consumer);
        m448x0(new C2855n0(consumer, true));
    }

    @Override // p034j$.util.stream.AbstractC2804e3, p034j$.util.stream.Stream
    public void forEach(Consumer consumer) {
        if (isParallel()) {
            super.forEach(consumer);
        } else {
            m449J0().forEachRemaining(consumer);
        }
    }
}
