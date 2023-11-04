package p033j$.time.temporal;
/* renamed from: j$.time.temporal.m */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2746m implements InterfaceC2745l {

    /* renamed from: a */
    public final /* synthetic */ int f639a;

    public /* synthetic */ C2746m(int i) {
        this.f639a = i;
    }

    @Override // p033j$.time.temporal.InterfaceC2745l
    /* renamed from: h */
    public final InterfaceC2743j mo736h(InterfaceC2743j interfaceC2743j) {
        int i = this.f639a;
        int mo741c = interfaceC2743j.mo741c(EnumC2734a.DAY_OF_WEEK);
        if (mo741c == i) {
            return interfaceC2743j;
        }
        int i2 = mo741c - i;
        return interfaceC2743j.mo742f(i2 >= 0 ? 7 - i2 : -i2, ChronoUnit.DAYS);
    }
}
