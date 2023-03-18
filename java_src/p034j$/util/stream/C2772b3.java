package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.InterfaceC2611s;
import p034j$.util.function.Consumer;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.b3 */
/* loaded from: classes2.dex */
public class C2772b3 extends AbstractC2790e3 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2772b3(InterfaceC2611s interfaceC2611s, int i, boolean z) {
        super(interfaceC2611s, i, z);
    }

    @Override // p034j$.util.stream.AbstractC2774c
    /* renamed from: G0 */
    final boolean mo439G0() {
        throw new UnsupportedOperationException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC2774c
    /* renamed from: H0 */
    public final InterfaceC2838m3 mo298H0(int i, InterfaceC2838m3 interfaceC2838m3) {
        throw new UnsupportedOperationException();
    }

    @Override // p034j$.util.stream.AbstractC2790e3, p034j$.util.stream.Stream
    /* renamed from: e */
    public void mo257e(Consumer consumer) {
        if (!isParallel()) {
            m450J0().forEachRemaining(consumer);
            return;
        }
        Objects.requireNonNull(consumer);
        m449x0(new C2841n0(consumer, true));
    }

    @Override // p034j$.util.stream.AbstractC2790e3, p034j$.util.stream.Stream
    public void forEach(Consumer consumer) {
        if (isParallel()) {
            super.forEach(consumer);
        } else {
            m450J0().forEachRemaining(consumer);
        }
    }
}
