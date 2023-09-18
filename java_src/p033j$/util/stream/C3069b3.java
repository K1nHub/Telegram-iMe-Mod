package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.InterfaceC2908s;
import p033j$.util.function.Consumer;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.b3 */
/* loaded from: classes2.dex */
public class C3069b3 extends AbstractC3087e3 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C3069b3(InterfaceC2908s interfaceC2908s, int i, boolean z) {
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

    @Override // p033j$.util.stream.AbstractC3087e3, p033j$.util.stream.Stream
    /* renamed from: e */
    public void mo260e(Consumer consumer) {
        if (!isParallel()) {
            m453J0().forEachRemaining(consumer);
            return;
        }
        Objects.requireNonNull(consumer);
        m452x0(new C3138n0(consumer, true));
    }

    @Override // p033j$.util.stream.AbstractC3087e3, p033j$.util.stream.Stream
    public void forEach(Consumer consumer) {
        if (isParallel()) {
            super.forEach(consumer);
        } else {
            m453J0().forEachRemaining(consumer);
        }
    }
}
