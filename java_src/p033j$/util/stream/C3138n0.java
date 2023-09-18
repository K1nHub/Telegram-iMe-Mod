package p033j$.util.stream;

import p033j$.util.function.Consumer;
/* renamed from: j$.util.stream.n0 */
/* loaded from: classes2.dex */
final class C3138n0 extends AbstractC3144o0 {

    /* renamed from: b */
    final Consumer f1088b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3138n0(Consumer consumer, boolean z) {
        super(z);
        this.f1088b = consumer;
    }

    @Override // p033j$.util.function.Consumer
    public void accept(Object obj) {
        this.f1088b.accept(obj);
    }
}
