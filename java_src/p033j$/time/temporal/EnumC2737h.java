package p033j$.time.temporal;

import p033j$.lang.AbstractC2669d;
import p033j$.time.Duration;
/* renamed from: j$.time.temporal.h */
/* loaded from: classes2.dex */
enum EnumC2737h implements InterfaceC2754y {
    WEEK_BASED_YEARS("WeekBasedYears", Duration.m980d(31556952)),
    QUARTER_YEARS("QuarterYears", Duration.m980d(7889238));
    

    /* renamed from: a */
    private final String f635a;

    EnumC2737h(String str, Duration duration) {
        this.f635a = str;
    }

    @Override // p033j$.time.temporal.InterfaceC2754y
    /* renamed from: a */
    public InterfaceC2739j mo721a(InterfaceC2739j interfaceC2739j, long j) {
        int i = AbstractC2731b.f631a[ordinal()];
        if (i == 1) {
            InterfaceC2744o interfaceC2744o = AbstractC2738i.f638c;
            return interfaceC2739j.mo742b(interfaceC2744o, AbstractC2669d.m989c(interfaceC2739j.mo740c(interfaceC2744o), j));
        } else if (i == 2) {
            return interfaceC2739j.mo741f(j / 256, ChronoUnit.YEARS).mo741f((j % 256) * 3, ChronoUnit.MONTHS);
        } else {
            throw new IllegalStateException("Unreachable");
        }
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.f635a;
    }
}
