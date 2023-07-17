package p033j$.time.temporal;

import p033j$.time.Duration;
/* renamed from: j$.time.temporal.ChronoUnit */
/* loaded from: classes2.dex */
public enum ChronoUnit implements InterfaceC2766l {
    NANOS("Nanos", Duration.m674b(1)),
    MICROS("Micros", Duration.m674b(1000)),
    MILLIS("Millis", Duration.m674b(1000000)),
    SECONDS("Seconds", Duration.m673c(1)),
    MINUTES("Minutes", Duration.m673c(60)),
    HOURS("Hours", Duration.m673c(3600)),
    HALF_DAYS("HalfDays", Duration.m673c(43200)),
    DAYS("Days", Duration.m673c(86400)),
    WEEKS("Weeks", Duration.m673c(604800)),
    MONTHS("Months", Duration.m673c(2629746)),
    YEARS("Years", Duration.m673c(31556952)),
    DECADES("Decades", Duration.m673c(315569520)),
    CENTURIES("Centuries", Duration.m673c(3155695200L)),
    MILLENNIA("Millennia", Duration.m673c(31556952000L)),
    ERAS("Eras", Duration.m673c(31556952000000000L)),
    FOREVER("Forever", Duration.m672d(Long.MAX_VALUE, 999999999));
    

    /* renamed from: a */
    private final String f605a;

    /* renamed from: b */
    private final Duration f606b;

    ChronoUnit(String str, Duration duration) {
        this.f605a = str;
        this.f606b = duration;
    }

    public Duration getDuration() {
        return this.f606b;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.f605a;
    }
}
