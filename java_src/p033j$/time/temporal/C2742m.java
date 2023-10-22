package p033j$.time.temporal;
/* renamed from: j$.time.temporal.m */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2742m implements InterfaceC2741l {

    /* renamed from: a */
    public final /* synthetic */ int f639a;

    public /* synthetic */ C2742m(int i) {
        this.f639a = i;
    }

    @Override // p033j$.time.temporal.InterfaceC2741l
    /* renamed from: h */
    public final InterfaceC2739j mo735h(InterfaceC2739j interfaceC2739j) {
        int i = this.f639a;
        int mo740c = interfaceC2739j.mo740c(EnumC2730a.DAY_OF_WEEK);
        if (mo740c == i) {
            return interfaceC2739j;
        }
        int i2 = mo740c - i;
        return interfaceC2739j.mo741f(i2 >= 0 ? 7 - i2 : -i2, ChronoUnit.DAYS);
    }
}
