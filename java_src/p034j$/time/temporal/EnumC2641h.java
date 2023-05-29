package p034j$.time.temporal;

import p034j$.time.Duration;
/* renamed from: j$.time.temporal.h */
/* loaded from: classes2.dex */
enum EnumC2641h implements InterfaceC2645l {
    WEEK_BASED_YEARS("WeekBasedYears", Duration.m673c(31556952)),
    QUARTER_YEARS("QuarterYears", Duration.m673c(7889238));
    

    /* renamed from: a */
    private final String f530a;

    EnumC2641h(String str, Duration duration) {
        this.f530a = str;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.f530a;
    }
}
