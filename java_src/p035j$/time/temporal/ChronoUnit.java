package p035j$.time.temporal;

import p035j$.time.Duration;
/* renamed from: j$.time.temporal.ChronoUnit */
/* loaded from: classes2.dex */
public enum ChronoUnit implements InterfaceC2614l {
    NANOS("Nanos", Duration.m683b(1)),
    MICROS("Micros", Duration.m683b(1000)),
    MILLIS("Millis", Duration.m683b(1000000)),
    SECONDS("Seconds", Duration.m682c(1)),
    MINUTES("Minutes", Duration.m682c(60)),
    HOURS("Hours", Duration.m682c(3600)),
    HALF_DAYS("HalfDays", Duration.m682c(43200)),
    DAYS("Days", Duration.m682c(86400)),
    WEEKS("Weeks", Duration.m682c(604800)),
    MONTHS("Months", Duration.m682c(2629746)),
    YEARS("Years", Duration.m682c(31556952)),
    DECADES("Decades", Duration.m682c(315569520)),
    CENTURIES("Centuries", Duration.m682c(3155695200L)),
    MILLENNIA("Millennia", Duration.m682c(31556952000L)),
    ERAS("Eras", Duration.m682c(31556952000000000L)),
    FOREVER("Forever", Duration.m681d(Long.MAX_VALUE, 999999999));
    

    /* renamed from: a */
    private final String f525a;

    /* renamed from: b */
    private final Duration f526b;

    ChronoUnit(String str, Duration duration) {
        this.f525a = str;
        this.f526b = duration;
    }

    public Duration getDuration() {
        return this.f526b;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.f525a;
    }
}
