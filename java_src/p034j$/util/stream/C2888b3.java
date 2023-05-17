package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.InterfaceC2727s;
import p034j$.util.function.Consumer;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.b3 */
/* loaded from: classes2.dex */
public class C2888b3 extends AbstractC2906e3 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2888b3(InterfaceC2727s interfaceC2727s, int i, boolean z) {
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

    @Override // p034j$.util.stream.AbstractC2906e3, p034j$.util.stream.Stream
    /* renamed from: e */
    public void mo242e(Consumer consumer) {
        if (!isParallel()) {
            m435J0().forEachRemaining(consumer);
            return;
        }
        Objects.requireNonNull(consumer);
        m434x0(new C2957n0(consumer, true));
    }

    @Override // p034j$.util.stream.AbstractC2906e3, p034j$.util.stream.Stream
    public void forEach(Consumer consumer) {
        if (isParallel()) {
            super.forEach(consumer);
        } else {
            m435J0().forEachRemaining(consumer);
        }
    }
}
