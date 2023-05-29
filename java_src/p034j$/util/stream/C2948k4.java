package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.Consumer;
/* renamed from: j$.util.stream.k4 */
/* loaded from: classes2.dex */
final class C2948k4 extends AbstractC2954l4 implements Consumer {

    /* renamed from: b */
    final Object[] f986b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2948k4(int i) {
        this.f986b = new Object[i];
    }

    @Override // p034j$.util.function.Consumer
    public void accept(Object obj) {
        Object[] objArr = this.f986b;
        int i = this.f993a;
        this.f993a = i + 1;
        objArr[i] = obj;
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }
}
