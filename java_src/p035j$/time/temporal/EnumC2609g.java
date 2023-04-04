package p035j$.time.temporal;
/* renamed from: j$.time.temporal.g */
/* loaded from: classes2.dex */
enum EnumC2609g implements InterfaceC2612j {
    DAY_OF_QUARTER { // from class: j$.time.temporal.c
        @Override // p035j$.time.temporal.InterfaceC2612j
        /* renamed from: a */
        public C2615m mo649a() {
            return C2615m.m645d(1L, 90L, 92L);
        }

        @Override // java.lang.Enum
        public String toString() {
            return "DayOfQuarter";
        }
    },
    QUARTER_OF_YEAR { // from class: j$.time.temporal.d
        @Override // p035j$.time.temporal.InterfaceC2612j
        /* renamed from: a */
        public C2615m mo649a() {
            return C2615m.m646c(1L, 4L);
        }

        @Override // java.lang.Enum
        public String toString() {
            return "QuarterOfYear";
        }
    },
    WEEK_OF_WEEK_BASED_YEAR { // from class: j$.time.temporal.e
        @Override // p035j$.time.temporal.InterfaceC2612j
        /* renamed from: a */
        public C2615m mo649a() {
            return C2615m.m645d(1L, 52L, 53L);
        }

        @Override // java.lang.Enum
        public String toString() {
            return "WeekOfWeekBasedYear";
        }
    },
    WEEK_BASED_YEAR { // from class: j$.time.temporal.f
        @Override // p035j$.time.temporal.InterfaceC2612j
        /* renamed from: a */
        public C2615m mo649a() {
            return EnumC2603a.YEAR.mo649a();
        }

        @Override // java.lang.Enum
        public String toString() {
            return "WeekBasedYear";
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    EnumC2609g(AbstractC2604b abstractC2604b) {
    }
}
