package p034j$.time.temporal;

import p034j$.time.Duration;
/* renamed from: j$.time.temporal.h */
/* loaded from: classes2.dex */
enum EnumC2396h implements InterfaceC2400l {
    WEEK_BASED_YEARS("WeekBasedYears", Duration.m688c(31556952)),
    QUARTER_YEARS("QuarterYears", Duration.m688c(7889238));
    

    /* renamed from: a */
    private final String f521a;

    EnumC2396h(String str, Duration duration) {
        this.f521a = str;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.f521a;
    }
}
