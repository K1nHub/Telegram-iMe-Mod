package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.b3 */
/* loaded from: classes2.dex */
public class C3007b3 extends AbstractC3025e3 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C3007b3(Spliterator spliterator, int i, boolean z) {
        super(spliterator, i, z);
    }

    @Override // p033j$.util.stream.AbstractC3009c
    /* renamed from: F0 */
    final boolean mo488F0() {
        throw new UnsupportedOperationException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3009c
    /* renamed from: G0 */
    public final InterfaceC3073m3 mo347G0(int i, InterfaceC3073m3 interfaceC3073m3) {
        throw new UnsupportedOperationException();
    }

    @Override // p033j$.util.stream.AbstractC3025e3, p033j$.util.stream.Stream
    /* renamed from: e */
    public void mo306e(Consumer consumer) {
        if (!isParallel()) {
            m499I0().forEachRemaining(consumer);
            return;
        }
        Objects.requireNonNull(consumer);
        m498w0(new C3076n0(consumer, true));
    }

    @Override // p033j$.util.stream.AbstractC3025e3, p033j$.util.stream.Stream
    public void forEach(Consumer consumer) {
        if (isParallel()) {
            super.forEach(consumer);
        } else {
            m499I0().forEachRemaining(consumer);
        }
    }
}
