package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.InterfaceC2853s;
import p033j$.util.function.Consumer;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.b3 */
/* loaded from: classes2.dex */
public class C3014b3 extends AbstractC3032e3 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C3014b3(InterfaceC2853s interfaceC2853s, int i, boolean z) {
        super(interfaceC2853s, i, z);
    }

    @Override // p033j$.util.stream.AbstractC3016c
    /* renamed from: G0 */
    final boolean mo442G0() {
        throw new UnsupportedOperationException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3016c
    /* renamed from: H0 */
    public final InterfaceC3080m3 mo301H0(int i, InterfaceC3080m3 interfaceC3080m3) {
        throw new UnsupportedOperationException();
    }

    @Override // p033j$.util.stream.AbstractC3032e3, p033j$.util.stream.Stream
    /* renamed from: e */
    public void mo260e(Consumer consumer) {
        if (!isParallel()) {
            m453J0().forEachRemaining(consumer);
            return;
        }
        Objects.requireNonNull(consumer);
        m452x0(new C3083n0(consumer, true));
    }

    @Override // p033j$.util.stream.AbstractC3032e3, p033j$.util.stream.Stream
    public void forEach(Consumer consumer) {
        if (isParallel()) {
            super.forEach(consumer);
        } else {
            m453J0().forEachRemaining(consumer);
        }
    }
}
