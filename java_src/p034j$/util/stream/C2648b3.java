package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.InterfaceC2487s;
import p034j$.util.function.Consumer;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.b3 */
/* loaded from: classes2.dex */
public class C2648b3 extends AbstractC2666e3 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2648b3(InterfaceC2487s interfaceC2487s, int i, boolean z) {
        super(interfaceC2487s, i, z);
    }

    @Override // p034j$.util.stream.AbstractC2650c
    /* renamed from: G0 */
    final boolean mo439G0() {
        throw new UnsupportedOperationException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC2650c
    /* renamed from: H0 */
    public final InterfaceC2714m3 mo298H0(int i, InterfaceC2714m3 interfaceC2714m3) {
        throw new UnsupportedOperationException();
    }

    @Override // p034j$.util.stream.AbstractC2666e3, p034j$.util.stream.Stream
    /* renamed from: e */
    public void mo257e(Consumer consumer) {
        if (!isParallel()) {
            m450J0().forEachRemaining(consumer);
            return;
        }
        Objects.requireNonNull(consumer);
        m449x0(new C2717n0(consumer, true));
    }

    @Override // p034j$.util.stream.AbstractC2666e3, p034j$.util.stream.Stream
    public void forEach(Consumer consumer) {
        if (isParallel()) {
            super.forEach(consumer);
        } else {
            m450J0().forEachRemaining(consumer);
        }
    }
}
