package p033j$.time.temporal;

import p033j$.time.Duration;
/* renamed from: j$.time.temporal.ChronoUnit */
/* loaded from: classes2.dex */
public enum ChronoUnit implements InterfaceC2758y {
    NANOS("Nanos", Duration.m982c(1)),
    MICROS("Micros", Duration.m982c(1000)),
    MILLIS("Millis", Duration.m982c(1000000)),
    SECONDS("Seconds", Duration.m981d(1)),
    MINUTES("Minutes", Duration.m981d(60)),
    HOURS("Hours", Duration.m981d(3600)),
    HALF_DAYS("HalfDays", Duration.m981d(43200)),
    DAYS("Days", Duration.m981d(86400)),
    WEEKS("Weeks", Duration.m981d(604800)),
    MONTHS("Months", Duration.m981d(2629746)),
    YEARS("Years", Duration.m981d(31556952)),
    DECADES("Decades", Duration.m981d(315569520)),
    CENTURIES("Centuries", Duration.m981d(3155695200L)),
    MILLENNIA("Millennia", Duration.m981d(31556952000L)),
    ERAS("Eras", Duration.m981d(31556952000000000L)),
    FOREVER("Forever", Duration.m980e(Long.MAX_VALUE, 999999999));
    

    /* renamed from: a */
    private final String f626a;

    /* renamed from: b */
    private final Duration f627b;

    ChronoUnit(String str, Duration duration) {
        this.f626a = str;
        this.f627b = duration;
    }

    @Override // p033j$.time.temporal.InterfaceC2758y
    /* renamed from: a */
    public InterfaceC2743j mo722a(InterfaceC2743j interfaceC2743j, long j) {
        return interfaceC2743j.mo742f(j, this);
    }

    /* renamed from: b */
    public boolean m755b() {
        return compareTo(DAYS) >= 0 && this != FOREVER;
    }

    public Duration getDuration() {
        return this.f627b;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.f626a;
    }
}
