package p033j$.time.temporal;

import p033j$.lang.AbstractC2668d;
import p033j$.time.Duration;
/* renamed from: j$.time.temporal.h */
/* loaded from: classes2.dex */
enum EnumC2736h implements InterfaceC2753y {
    WEEK_BASED_YEARS("WeekBasedYears", Duration.m984d(31556952)),
    QUARTER_YEARS("QuarterYears", Duration.m984d(7889238));
    

    /* renamed from: a */
    private final String f635a;

    EnumC2736h(String str, Duration duration) {
        this.f635a = str;
    }

    @Override // p033j$.time.temporal.InterfaceC2753y
    /* renamed from: a */
    public InterfaceC2738j mo725a(InterfaceC2738j interfaceC2738j, long j) {
        int i = AbstractC2730b.f631a[ordinal()];
        if (i == 1) {
            InterfaceC2743o interfaceC2743o = AbstractC2737i.f638c;
            return interfaceC2738j.mo746b(interfaceC2743o, AbstractC2668d.m993c(interfaceC2738j.mo744c(interfaceC2743o), j));
        } else if (i == 2) {
            return interfaceC2738j.mo745f(j / 256, ChronoUnit.YEARS).mo745f((j % 256) * 3, ChronoUnit.MONTHS);
        } else {
            throw new IllegalStateException("Unreachable");
        }
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.f635a;
    }
}
