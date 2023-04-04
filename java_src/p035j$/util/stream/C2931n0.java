package p035j$.util.stream;

import p035j$.util.function.Consumer;
/* renamed from: j$.util.stream.n0 */
/* loaded from: classes2.dex */
final class C2931n0 extends AbstractC2937o0 {

    /* renamed from: b */
    final Consumer f1004b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2931n0(Consumer consumer, boolean z) {
        super(z);
        this.f1004b = consumer;
    }

    @Override // p035j$.util.function.Consumer
    public void accept(Object obj) {
        this.f1004b.accept(obj);
    }
}
