package p033j$.time.temporal;

import p033j$.time.Duration;
/* renamed from: j$.time.temporal.ChronoUnit */
/* loaded from: classes2.dex */
public enum ChronoUnit implements InterfaceC2754y {
    NANOS("Nanos", Duration.m981c(1)),
    MICROS("Micros", Duration.m981c(1000)),
    MILLIS("Millis", Duration.m981c(1000000)),
    SECONDS("Seconds", Duration.m980d(1)),
    MINUTES("Minutes", Duration.m980d(60)),
    HOURS("Hours", Duration.m980d(3600)),
    HALF_DAYS("HalfDays", Duration.m980d(43200)),
    DAYS("Days", Duration.m980d(86400)),
    WEEKS("Weeks", Duration.m980d(604800)),
    MONTHS("Months", Duration.m980d(2629746)),
    YEARS("Years", Duration.m980d(31556952)),
    DECADES("Decades", Duration.m980d(315569520)),
    CENTURIES("Centuries", Duration.m980d(3155695200L)),
    MILLENNIA("Millennia", Duration.m980d(31556952000L)),
    ERAS("Eras", Duration.m980d(31556952000000000L)),
    FOREVER("Forever", Duration.m979e(Long.MAX_VALUE, 999999999));
    

    /* renamed from: a */
    private final String f626a;

    /* renamed from: b */
    private final Duration f627b;

    ChronoUnit(String str, Duration duration) {
        this.f626a = str;
        this.f627b = duration;
    }

    @Override // p033j$.time.temporal.InterfaceC2754y
    /* renamed from: a */
    public InterfaceC2739j mo721a(InterfaceC2739j interfaceC2739j, long j) {
        return interfaceC2739j.mo741f(j, this);
    }

    /* renamed from: b */
    public boolean m754b() {
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
