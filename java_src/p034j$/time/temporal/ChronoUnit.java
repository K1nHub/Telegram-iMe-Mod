package p034j$.time.temporal;

import p034j$.time.Duration;
/* renamed from: j$.time.temporal.ChronoUnit */
/* loaded from: classes2.dex */
public enum ChronoUnit implements InterfaceC2524l {
    NANOS("Nanos", Duration.m689b(1)),
    MICROS("Micros", Duration.m689b(1000)),
    MILLIS("Millis", Duration.m689b(1000000)),
    SECONDS("Seconds", Duration.m688c(1)),
    MINUTES("Minutes", Duration.m688c(60)),
    HOURS("Hours", Duration.m688c(3600)),
    HALF_DAYS("HalfDays", Duration.m688c(43200)),
    DAYS("Days", Duration.m688c(86400)),
    WEEKS("Weeks", Duration.m688c(604800)),
    MONTHS("Months", Duration.m688c(2629746)),
    YEARS("Years", Duration.m688c(31556952)),
    DECADES("Decades", Duration.m688c(315569520)),
    CENTURIES("Centuries", Duration.m688c(3155695200L)),
    MILLENNIA("Millennia", Duration.m688c(31556952000L)),
    ERAS("Eras", Duration.m688c(31556952000000000L)),
    FOREVER("Forever", Duration.m687d(Long.MAX_VALUE, 999999999));
    

    /* renamed from: a */
    private final String f519a;

    /* renamed from: b */
    private final Duration f520b;

    ChronoUnit(String str, Duration duration) {
        this.f519a = str;
        this.f520b = duration;
    }

    public Duration getDuration() {
        return this.f520b;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.f519a;
    }
}
