package p033j$.util.stream;

import java.util.concurrent.CountedCompleter;
/* renamed from: j$.util.stream.w2 */
/* loaded from: classes2.dex */
abstract class AbstractC3194w2 extends CountedCompleter {

    /* renamed from: a */
    protected final InterfaceC2914A1 f1163a;

    /* renamed from: b */
    protected final int f1164b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3194w2(InterfaceC2914A1 interfaceC2914A1, int i) {
        this.f1163a = interfaceC2914A1;
        this.f1164b = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3194w2(AbstractC3194w2 abstractC3194w2, InterfaceC2914A1 interfaceC2914A1, int i) {
        super(abstractC3194w2);
        this.f1163a = interfaceC2914A1;
        this.f1164b = i;
    }

    /* renamed from: a */
    abstract void mo334a();

    /* renamed from: b */
    abstract AbstractC3194w2 mo333b(int i, int i2);

    @Override // java.util.concurrent.CountedCompleter
    public void compute() {
        AbstractC3194w2 abstractC3194w2 = this;
        while (abstractC3194w2.f1163a.mo338p() != 0) {
            abstractC3194w2.setPendingCount(abstractC3194w2.f1163a.mo338p() - 1);
            int i = 0;
            int i2 = 0;
            while (i < abstractC3194w2.f1163a.mo338p() - 1) {
                AbstractC3194w2 mo333b = abstractC3194w2.mo333b(i, abstractC3194w2.f1164b + i2);
                i2 = (int) (i2 + mo333b.f1163a.count());
                mo333b.fork();
                i++;
            }
            abstractC3194w2 = abstractC3194w2.mo333b(i, abstractC3194w2.f1164b + i2);
        }
        abstractC3194w2.mo334a();
        abstractC3194w2.propagateCompletion();
    }
}
