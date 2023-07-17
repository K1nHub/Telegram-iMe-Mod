package p033j$.util.stream;

import java.util.concurrent.CountedCompleter;
/* renamed from: j$.util.stream.w2 */
/* loaded from: classes2.dex */
abstract class AbstractC3139w2 extends CountedCompleter {

    /* renamed from: a */
    protected final InterfaceC2859A1 f1159a;

    /* renamed from: b */
    protected final int f1160b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3139w2(InterfaceC2859A1 interfaceC2859A1, int i) {
        this.f1159a = interfaceC2859A1;
        this.f1160b = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3139w2(AbstractC3139w2 abstractC3139w2, InterfaceC2859A1 interfaceC2859A1, int i) {
        super(abstractC3139w2);
        this.f1159a = interfaceC2859A1;
        this.f1160b = i;
    }

    /* renamed from: a */
    abstract void mo316a();

    /* renamed from: b */
    abstract AbstractC3139w2 mo315b(int i, int i2);

    @Override // java.util.concurrent.CountedCompleter
    public void compute() {
        AbstractC3139w2 abstractC3139w2 = this;
        while (abstractC3139w2.f1159a.mo320p() != 0) {
            abstractC3139w2.setPendingCount(abstractC3139w2.f1159a.mo320p() - 1);
            int i = 0;
            int i2 = 0;
            while (i < abstractC3139w2.f1159a.mo320p() - 1) {
                AbstractC3139w2 mo315b = abstractC3139w2.mo315b(i, abstractC3139w2.f1160b + i2);
                i2 = (int) (i2 + mo315b.f1159a.count());
                mo315b.fork();
                i++;
            }
            abstractC3139w2 = abstractC3139w2.mo315b(i, abstractC3139w2.f1160b + i2);
        }
        abstractC3139w2.mo316a();
        abstractC3139w2.propagateCompletion();
    }
}
