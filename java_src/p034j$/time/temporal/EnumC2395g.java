package p034j$.time.temporal;
/* renamed from: j$.time.temporal.g */
/* loaded from: classes2.dex */
enum EnumC2395g implements InterfaceC2398j {
    DAY_OF_QUARTER { // from class: j$.time.temporal.c
        @Override // p034j$.time.temporal.InterfaceC2398j
        /* renamed from: a */
        public C2401m mo655a() {
            return C2401m.m651d(1L, 90L, 92L);
        }

        @Override // java.lang.Enum
        public String toString() {
            return "DayOfQuarter";
        }
    },
    QUARTER_OF_YEAR { // from class: j$.time.temporal.d
        @Override // p034j$.time.temporal.InterfaceC2398j
        /* renamed from: a */
        public C2401m mo655a() {
            return C2401m.m652c(1L, 4L);
        }

        @Override // java.lang.Enum
        public String toString() {
            return "QuarterOfYear";
        }
    },
    WEEK_OF_WEEK_BASED_YEAR { // from class: j$.time.temporal.e
        @Override // p034j$.time.temporal.InterfaceC2398j
        /* renamed from: a */
        public C2401m mo655a() {
            return C2401m.m651d(1L, 52L, 53L);
        }

        @Override // java.lang.Enum
        public String toString() {
            return "WeekOfWeekBasedYear";
        }
    },
    WEEK_BASED_YEAR { // from class: j$.time.temporal.f
        @Override // p034j$.time.temporal.InterfaceC2398j
        /* renamed from: a */
        public C2401m mo655a() {
            return EnumC2389a.YEAR.mo655a();
        }

        @Override // java.lang.Enum
        public String toString() {
            return "WeekBasedYear";
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    EnumC2395g(AbstractC2390b abstractC2390b) {
    }
}
