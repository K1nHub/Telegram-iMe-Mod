package p034j$.time.temporal;

import p034j$.time.Duration;
/* renamed from: j$.time.temporal.h */
/* loaded from: classes2.dex */
enum EnumC2534h implements InterfaceC2538l {
    WEEK_BASED_YEARS("WeekBasedYears", Duration.m687c(31556952)),
    QUARTER_YEARS("QuarterYears", Duration.m687c(7889238));
    

    /* renamed from: a */
    private final String f527a;

    EnumC2534h(String str, Duration duration) {
        this.f527a = str;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.f527a;
    }
}
