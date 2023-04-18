package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.Consumer;
/* renamed from: j$.util.stream.k4 */
/* loaded from: classes2.dex */
final class C2904k4 extends AbstractC2910l4 implements Consumer {

    /* renamed from: b */
    final Object[] f983b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2904k4(int i) {
        this.f983b = new Object[i];
    }

    @Override // p034j$.util.function.Consumer
    public void accept(Object obj) {
        Object[] objArr = this.f983b;
        int i = this.f990a;
        this.f990a = i + 1;
        objArr[i] = obj;
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }
}
