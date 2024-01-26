package p033j$.time.temporal;

import p033j$.time.Duration;
/* renamed from: j$.time.temporal.ChronoUnit */
/* loaded from: classes2.dex */
public enum ChronoUnit implements InterfaceC2753y {
    NANOS("Nanos", Duration.m985c(1)),
    MICROS("Micros", Duration.m985c(1000)),
    MILLIS("Millis", Duration.m985c(1000000)),
    SECONDS("Seconds", Duration.m984d(1)),
    MINUTES("Minutes", Duration.m984d(60)),
    HOURS("Hours", Duration.m984d(3600)),
    HALF_DAYS("HalfDays", Duration.m984d(43200)),
    DAYS("Days", Duration.m984d(86400)),
    WEEKS("Weeks", Duration.m984d(604800)),
    MONTHS("Months", Duration.m984d(2629746)),
    YEARS("Years", Duration.m984d(31556952)),
    DECADES("Decades", Duration.m984d(315569520)),
    CENTURIES("Centuries", Duration.m984d(3155695200L)),
    MILLENNIA("Millennia", Duration.m984d(31556952000L)),
    ERAS("Eras", Duration.m984d(31556952000000000L)),
    FOREVER("Forever", Duration.m983e(Long.MAX_VALUE, 999999999));
    

    /* renamed from: a */
    private final String f626a;

    /* renamed from: b */
    private final Duration f627b;

    ChronoUnit(String str, Duration duration) {
        this.f626a = str;
        this.f627b = duration;
    }

    @Override // p033j$.time.temporal.InterfaceC2753y
    /* renamed from: a */
    public InterfaceC2738j mo725a(InterfaceC2738j interfaceC2738j, long j) {
        return interfaceC2738j.mo745f(j, this);
    }

    /* renamed from: b */
    public boolean m758b() {
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
