package p034j$.time.temporal;

import p034j$.time.Duration;
/* renamed from: j$.time.temporal.ChronoUnit */
/* loaded from: classes2.dex */
public enum ChronoUnit implements InterfaceC2601l {
    NANOS("Nanos", Duration.m669b(1)),
    MICROS("Micros", Duration.m669b(1000)),
    MILLIS("Millis", Duration.m669b(1000000)),
    SECONDS("Seconds", Duration.m668c(1)),
    MINUTES("Minutes", Duration.m668c(60)),
    HOURS("Hours", Duration.m668c(3600)),
    HALF_DAYS("HalfDays", Duration.m668c(43200)),
    DAYS("Days", Duration.m668c(86400)),
    WEEKS("Weeks", Duration.m668c(604800)),
    MONTHS("Months", Duration.m668c(2629746)),
    YEARS("Years", Duration.m668c(31556952)),
    DECADES("Decades", Duration.m668c(315569520)),
    CENTURIES("Centuries", Duration.m668c(3155695200L)),
    MILLENNIA("Millennia", Duration.m668c(31556952000L)),
    ERAS("Eras", Duration.m668c(31556952000000000L)),
    FOREVER("Forever", Duration.m667d(Long.MAX_VALUE, 999999999));
    

    /* renamed from: a */
    private final String f520a;

    /* renamed from: b */
    private final Duration f521b;

    ChronoUnit(String str, Duration duration) {
        this.f520a = str;
        this.f521b = duration;
    }

    public Duration getDuration() {
        return this.f521b;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.f520a;
    }
}
