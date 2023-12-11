package p033j$.time.temporal;
/* renamed from: j$.time.temporal.m */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2743m implements InterfaceC2742l {

    /* renamed from: a */
    public final /* synthetic */ int f639a;

    public /* synthetic */ C2743m(int i) {
        this.f639a = i;
    }

    @Override // p033j$.time.temporal.InterfaceC2742l
    /* renamed from: h */
    public final InterfaceC2740j mo736h(InterfaceC2740j interfaceC2740j) {
        int i = this.f639a;
        int mo741c = interfaceC2740j.mo741c(EnumC2731a.DAY_OF_WEEK);
        if (mo741c == i) {
            return interfaceC2740j;
        }
        int i2 = mo741c - i;
        return interfaceC2740j.mo742f(i2 >= 0 ? 7 - i2 : -i2, ChronoUnit.DAYS);
    }
}
