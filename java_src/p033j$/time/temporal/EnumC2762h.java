package p033j$.time.temporal;

import p033j$.time.Duration;
/* renamed from: j$.time.temporal.h */
/* loaded from: classes2.dex */
enum EnumC2762h implements InterfaceC2766l {
    WEEK_BASED_YEARS("WeekBasedYears", Duration.m691c(31556952)),
    QUARTER_YEARS("QuarterYears", Duration.m691c(7889238));
    

    /* renamed from: a */
    private final String f615a;

    EnumC2762h(String str, Duration duration) {
        this.f615a = str;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.f615a;
    }
}
