package p034j$.util.stream;

import java.util.concurrent.CountedCompleter;
/* renamed from: j$.util.stream.w2 */
/* loaded from: classes2.dex */
abstract class AbstractC2897w2 extends CountedCompleter {

    /* renamed from: a */
    protected final InterfaceC2617A1 f1073a;

    /* renamed from: b */
    protected final int f1074b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2897w2(InterfaceC2617A1 interfaceC2617A1, int i) {
        this.f1073a = interfaceC2617A1;
        this.f1074b = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2897w2(AbstractC2897w2 abstractC2897w2, InterfaceC2617A1 interfaceC2617A1, int i) {
        super(abstractC2897w2);
        this.f1073a = interfaceC2617A1;
        this.f1074b = i;
    }

    /* renamed from: a */
    abstract void mo331a();

    /* renamed from: b */
    abstract AbstractC2897w2 mo330b(int i, int i2);

    @Override // java.util.concurrent.CountedCompleter
    public void compute() {
        AbstractC2897w2 abstractC2897w2 = this;
        while (abstractC2897w2.f1073a.mo335p() != 0) {
            abstractC2897w2.setPendingCount(abstractC2897w2.f1073a.mo335p() - 1);
            int i = 0;
            int i2 = 0;
            while (i < abstractC2897w2.f1073a.mo335p() - 1) {
                AbstractC2897w2 mo330b = abstractC2897w2.mo330b(i, abstractC2897w2.f1074b + i2);
                i2 = (int) (i2 + mo330b.f1073a.count());
                mo330b.fork();
                i++;
            }
            abstractC2897w2 = abstractC2897w2.mo330b(i, abstractC2897w2.f1074b + i2);
        }
        abstractC2897w2.mo331a();
        abstractC2897w2.propagateCompletion();
    }
}
