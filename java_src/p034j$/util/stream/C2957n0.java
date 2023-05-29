package p034j$.util.stream;

import p034j$.util.function.Consumer;
/* renamed from: j$.util.stream.n0 */
/* loaded from: classes2.dex */
final class C2957n0 extends AbstractC2963o0 {

    /* renamed from: b */
    final Consumer f1002b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2957n0(Consumer consumer, boolean z) {
        super(z);
        this.f1002b = consumer;
    }

    @Override // p034j$.util.function.Consumer
    public void accept(Object obj) {
        this.f1002b.accept(obj);
    }
}
