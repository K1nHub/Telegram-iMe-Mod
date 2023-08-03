package p033j$.util.stream;

import java.util.concurrent.CountedCompleter;
/* renamed from: j$.util.stream.w2 */
/* loaded from: classes2.dex */
abstract class AbstractC3139w2 extends CountedCompleter {

    /* renamed from: a */
    protected final InterfaceC2859A1 f1162a;

    /* renamed from: b */
    protected final int f1163b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3139w2(InterfaceC2859A1 interfaceC2859A1, int i) {
        this.f1162a = interfaceC2859A1;
        this.f1163b = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3139w2(AbstractC3139w2 abstractC3139w2, InterfaceC2859A1 interfaceC2859A1, int i) {
        super(abstractC3139w2);
        this.f1162a = interfaceC2859A1;
        this.f1163b = i;
    }

    /* renamed from: a */
    abstract void mo334a();

    /* renamed from: b */
    abstract AbstractC3139w2 mo333b(int i, int i2);

    @Override // java.util.concurrent.CountedCompleter
    public void compute() {
        AbstractC3139w2 abstractC3139w2 = this;
        while (abstractC3139w2.f1162a.mo338p() != 0) {
            abstractC3139w2.setPendingCount(abstractC3139w2.f1162a.mo338p() - 1);
            int i = 0;
            int i2 = 0;
            while (i < abstractC3139w2.f1162a.mo338p() - 1) {
                AbstractC3139w2 mo333b = abstractC3139w2.mo333b(i, abstractC3139w2.f1163b + i2);
                i2 = (int) (i2 + mo333b.f1162a.count());
                mo333b.fork();
                i++;
            }
            abstractC3139w2 = abstractC3139w2.mo333b(i, abstractC3139w2.f1163b + i2);
        }
        abstractC3139w2.mo334a();
        abstractC3139w2.propagateCompletion();
    }
}
