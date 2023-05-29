package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.InterfaceC2732s;
import p034j$.util.function.Consumer;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.b3 */
/* loaded from: classes2.dex */
public class C2893b3 extends AbstractC2911e3 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2893b3(InterfaceC2732s interfaceC2732s, int i, boolean z) {
        super(interfaceC2732s, i, z);
    }

    @Override // p034j$.util.stream.AbstractC2895c
    /* renamed from: G0 */
    final boolean mo424G0() {
        throw new UnsupportedOperationException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC2895c
    /* renamed from: H0 */
    public final InterfaceC2959m3 mo283H0(int i, InterfaceC2959m3 interfaceC2959m3) {
        throw new UnsupportedOperationException();
    }

    @Override // p034j$.util.stream.AbstractC2911e3, p034j$.util.stream.Stream
    /* renamed from: e */
    public void mo242e(Consumer consumer) {
        if (!isParallel()) {
            m435J0().forEachRemaining(consumer);
            return;
        }
        Objects.requireNonNull(consumer);
        m434x0(new C2962n0(consumer, true));
    }

    @Override // p034j$.util.stream.AbstractC2911e3, p034j$.util.stream.Stream
    public void forEach(Consumer consumer) {
        if (isParallel()) {
            super.forEach(consumer);
        } else {
            m435J0().forEachRemaining(consumer);
        }
    }
}
