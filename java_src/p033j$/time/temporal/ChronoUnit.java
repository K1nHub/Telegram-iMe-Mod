package p033j$.time.temporal;

import p033j$.time.Duration;
/* renamed from: j$.time.temporal.ChronoUnit */
/* loaded from: classes2.dex */
public enum ChronoUnit implements InterfaceC2905l {
    NANOS("Nanos", Duration.m692b(1)),
    MICROS("Micros", Duration.m692b(1000)),
    MILLIS("Millis", Duration.m692b(1000000)),
    SECONDS("Seconds", Duration.m691c(1)),
    MINUTES("Minutes", Duration.m691c(60)),
    HOURS("Hours", Duration.m691c(3600)),
    HALF_DAYS("HalfDays", Duration.m691c(43200)),
    DAYS("Days", Duration.m691c(86400)),
    WEEKS("Weeks", Duration.m691c(604800)),
    MONTHS("Months", Duration.m691c(2629746)),
    YEARS("Years", Duration.m691c(31556952)),
    DECADES("Decades", Duration.m691c(315569520)),
    CENTURIES("Centuries", Duration.m691c(3155695200L)),
    MILLENNIA("Millennia", Duration.m691c(31556952000L)),
    ERAS("Eras", Duration.m691c(31556952000000000L)),
    FOREVER("Forever", Duration.m690d(Long.MAX_VALUE, 999999999));
    

    /* renamed from: a */
    private final String f618a;

    /* renamed from: b */
    private final Duration f619b;

    ChronoUnit(String str, Duration duration) {
        this.f618a = str;
        this.f619b = duration;
    }

    public Duration getDuration() {
        return this.f619b;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.f618a;
    }
}
