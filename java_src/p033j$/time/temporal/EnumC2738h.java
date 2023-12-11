package p033j$.time.temporal;

import p033j$.lang.AbstractC2670d;
import p033j$.time.Duration;
/* renamed from: j$.time.temporal.h */
/* loaded from: classes2.dex */
enum EnumC2738h implements InterfaceC2755y {
    WEEK_BASED_YEARS("WeekBasedYears", Duration.m981d(31556952)),
    QUARTER_YEARS("QuarterYears", Duration.m981d(7889238));
    

    /* renamed from: a */
    private final String f635a;

    EnumC2738h(String str, Duration duration) {
        this.f635a = str;
    }

    @Override // p033j$.time.temporal.InterfaceC2755y
    /* renamed from: a */
    public InterfaceC2740j mo722a(InterfaceC2740j interfaceC2740j, long j) {
        int i = AbstractC2732b.f631a[ordinal()];
        if (i == 1) {
            InterfaceC2745o interfaceC2745o = AbstractC2739i.f638c;
            return interfaceC2740j.mo743b(interfaceC2745o, AbstractC2670d.m990c(interfaceC2740j.mo741c(interfaceC2745o), j));
        } else if (i == 2) {
            return interfaceC2740j.mo742f(j / 256, ChronoUnit.YEARS).mo742f((j % 256) * 3, ChronoUnit.MONTHS);
        } else {
            throw new IllegalStateException("Unreachable");
        }
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.f635a;
    }
}
