package p033j$.time.temporal;
/* renamed from: j$.time.temporal.m */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2741m implements InterfaceC2740l {

    /* renamed from: a */
    public final /* synthetic */ int f639a;

    public /* synthetic */ C2741m(int i) {
        this.f639a = i;
    }

    @Override // p033j$.time.temporal.InterfaceC2740l
    /* renamed from: h */
    public final InterfaceC2738j mo739h(InterfaceC2738j interfaceC2738j) {
        int i = this.f639a;
        int mo744c = interfaceC2738j.mo744c(EnumC2729a.DAY_OF_WEEK);
        if (mo744c == i) {
            return interfaceC2738j;
        }
        int i2 = mo744c - i;
        return interfaceC2738j.mo745f(i2 >= 0 ? 7 - i2 : -i2, ChronoUnit.DAYS);
    }
}
