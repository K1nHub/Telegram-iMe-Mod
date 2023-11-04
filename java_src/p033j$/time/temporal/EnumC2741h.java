package p033j$.time.temporal;

import p033j$.lang.AbstractC2673d;
import p033j$.time.Duration;
/* renamed from: j$.time.temporal.h */
/* loaded from: classes2.dex */
enum EnumC2741h implements InterfaceC2758y {
    WEEK_BASED_YEARS("WeekBasedYears", Duration.m981d(31556952)),
    QUARTER_YEARS("QuarterYears", Duration.m981d(7889238));
    

    /* renamed from: a */
    private final String f635a;

    EnumC2741h(String str, Duration duration) {
        this.f635a = str;
    }

    @Override // p033j$.time.temporal.InterfaceC2758y
    /* renamed from: a */
    public InterfaceC2743j mo722a(InterfaceC2743j interfaceC2743j, long j) {
        int i = AbstractC2735b.f631a[ordinal()];
        if (i == 1) {
            InterfaceC2748o interfaceC2748o = AbstractC2742i.f638c;
            return interfaceC2743j.mo743b(interfaceC2748o, AbstractC2673d.m990c(interfaceC2743j.mo741c(interfaceC2748o), j));
        } else if (i == 2) {
            return interfaceC2743j.mo742f(j / 256, ChronoUnit.YEARS).mo742f((j % 256) * 3, ChronoUnit.MONTHS);
        } else {
            throw new IllegalStateException("Unreachable");
        }
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.f635a;
    }
}
