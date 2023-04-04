package p035j$.util.stream;

import java.util.Objects;
import p035j$.util.function.Consumer;
/* renamed from: j$.util.stream.k4 */
/* loaded from: classes2.dex */
final class C2917k4 extends AbstractC2923l4 implements Consumer {

    /* renamed from: b */
    final Object[] f988b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2917k4(int i) {
        this.f988b = new Object[i];
    }

    @Override // p035j$.util.function.Consumer
    public void accept(Object obj) {
        Object[] objArr = this.f988b;
        int i = this.f995a;
        this.f995a = i + 1;
        objArr[i] = obj;
    }

    @Override // p035j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }
}
