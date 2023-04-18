package p034j$.time.temporal;
/* renamed from: j$.time.temporal.g */
/* loaded from: classes2.dex */
enum EnumC2596g implements InterfaceC2599j {
    DAY_OF_QUARTER { // from class: j$.time.temporal.c
        @Override // p034j$.time.temporal.InterfaceC2599j
        /* renamed from: a */
        public C2602m mo635a() {
            return C2602m.m631d(1L, 90L, 92L);
        }

        @Override // java.lang.Enum
        public String toString() {
            return "DayOfQuarter";
        }
    },
    QUARTER_OF_YEAR { // from class: j$.time.temporal.d
        @Override // p034j$.time.temporal.InterfaceC2599j
        /* renamed from: a */
        public C2602m mo635a() {
            return C2602m.m632c(1L, 4L);
        }

        @Override // java.lang.Enum
        public String toString() {
            return "QuarterOfYear";
        }
    },
    WEEK_OF_WEEK_BASED_YEAR { // from class: j$.time.temporal.e
        @Override // p034j$.time.temporal.InterfaceC2599j
        /* renamed from: a */
        public C2602m mo635a() {
            return C2602m.m631d(1L, 52L, 53L);
        }

        @Override // java.lang.Enum
        public String toString() {
            return "WeekOfWeekBasedYear";
        }
    },
    WEEK_BASED_YEAR { // from class: j$.time.temporal.f
        @Override // p034j$.time.temporal.InterfaceC2599j
        /* renamed from: a */
        public C2602m mo635a() {
            return EnumC2590a.YEAR.mo635a();
        }

        @Override // java.lang.Enum
        public String toString() {
            return "WeekBasedYear";
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    EnumC2596g(AbstractC2591b abstractC2591b) {
    }
}
