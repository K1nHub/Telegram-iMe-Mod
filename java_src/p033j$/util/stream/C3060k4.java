package p033j$.util.stream;

import p033j$.util.function.Consumer;
/* renamed from: j$.util.stream.k4 */
/* loaded from: classes2.dex */
final class C3060k4 extends AbstractC3066l4 implements Consumer {

    /* renamed from: b */
    final Object[] f1121b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3060k4(int i) {
        this.f1121b = new Object[i];
    }

    @Override // p033j$.util.function.Consumer
    public void accept(Object obj) {
        Object[] objArr = this.f1121b;
        int i = this.f1128a;
        this.f1128a = i + 1;
        objArr[i] = obj;
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer.CC.$default$andThen(this, consumer);
    }
}
