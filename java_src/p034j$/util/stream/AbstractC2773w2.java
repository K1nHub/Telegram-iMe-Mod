package p034j$.util.stream;

import java.util.concurrent.CountedCompleter;
/* renamed from: j$.util.stream.w2 */
/* loaded from: classes2.dex */
abstract class AbstractC2773w2 extends CountedCompleter {

    /* renamed from: a */
    protected final InterfaceC2493A1 f1068a;

    /* renamed from: b */
    protected final int f1069b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2773w2(InterfaceC2493A1 interfaceC2493A1, int i) {
        this.f1068a = interfaceC2493A1;
        this.f1069b = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2773w2(AbstractC2773w2 abstractC2773w2, InterfaceC2493A1 interfaceC2493A1, int i) {
        super(abstractC2773w2);
        this.f1068a = interfaceC2493A1;
        this.f1069b = i;
    }

    /* renamed from: a */
    abstract void mo331a();

    /* renamed from: b */
    abstract AbstractC2773w2 mo330b(int i, int i2);

    @Override // java.util.concurrent.CountedCompleter
    public void compute() {
        AbstractC2773w2 abstractC2773w2 = this;
        while (abstractC2773w2.f1068a.mo335p() != 0) {
            abstractC2773w2.setPendingCount(abstractC2773w2.f1068a.mo335p() - 1);
            int i = 0;
            int i2 = 0;
            while (i < abstractC2773w2.f1068a.mo335p() - 1) {
                AbstractC2773w2 mo330b = abstractC2773w2.mo330b(i, abstractC2773w2.f1069b + i2);
                i2 = (int) (i2 + mo330b.f1068a.count());
                mo330b.fork();
                i++;
            }
            abstractC2773w2 = abstractC2773w2.mo330b(i, abstractC2773w2.f1069b + i2);
        }
        abstractC2773w2.mo331a();
        abstractC2773w2.propagateCompletion();
    }
}
