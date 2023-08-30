package p033j$.util.stream;

import java.util.concurrent.CountedCompleter;
/* renamed from: j$.util.stream.w2 */
/* loaded from: classes2.dex */
abstract class AbstractC3278w2 extends CountedCompleter {

    /* renamed from: a */
    protected final InterfaceC2998A1 f1172a;

    /* renamed from: b */
    protected final int f1173b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3278w2(InterfaceC2998A1 interfaceC2998A1, int i) {
        this.f1172a = interfaceC2998A1;
        this.f1173b = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3278w2(AbstractC3278w2 abstractC3278w2, InterfaceC2998A1 interfaceC2998A1, int i) {
        super(abstractC3278w2);
        this.f1172a = interfaceC2998A1;
        this.f1173b = i;
    }

    /* renamed from: a */
    abstract void mo334a();

    /* renamed from: b */
    abstract AbstractC3278w2 mo333b(int i, int i2);

    @Override // java.util.concurrent.CountedCompleter
    public void compute() {
        AbstractC3278w2 abstractC3278w2 = this;
        while (abstractC3278w2.f1172a.mo338p() != 0) {
            abstractC3278w2.setPendingCount(abstractC3278w2.f1172a.mo338p() - 1);
            int i = 0;
            int i2 = 0;
            while (i < abstractC3278w2.f1172a.mo338p() - 1) {
                AbstractC3278w2 mo333b = abstractC3278w2.mo333b(i, abstractC3278w2.f1173b + i2);
                i2 = (int) (i2 + mo333b.f1172a.count());
                mo333b.fork();
                i++;
            }
            abstractC3278w2 = abstractC3278w2.mo333b(i, abstractC3278w2.f1173b + i2);
        }
        abstractC3278w2.mo334a();
        abstractC3278w2.propagateCompletion();
    }
}
