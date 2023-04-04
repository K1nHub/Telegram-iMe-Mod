package p035j$.time.temporal;

import p035j$.time.Duration;
/* renamed from: j$.time.temporal.h */
/* loaded from: classes2.dex */
enum EnumC2610h implements InterfaceC2614l {
    WEEK_BASED_YEARS("WeekBasedYears", Duration.m682c(31556952)),
    QUARTER_YEARS("QuarterYears", Duration.m682c(7889238));
    

    /* renamed from: a */
    private final String f532a;

    EnumC2610h(String str, Duration duration) {
        this.f532a = str;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.f532a;
    }
}
