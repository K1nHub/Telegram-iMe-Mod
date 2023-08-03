package p033j$.time.temporal;
/* renamed from: j$.time.temporal.g */
/* loaded from: classes2.dex */
enum EnumC2761g implements InterfaceC2764j {
    DAY_OF_QUARTER { // from class: j$.time.temporal.c
        @Override // p033j$.time.temporal.InterfaceC2764j
        /* renamed from: a */
        public C2767m mo658a() {
            return C2767m.m654d(1L, 90L, 92L);
        }

        @Override // java.lang.Enum
        public String toString() {
            return "DayOfQuarter";
        }
    },
    QUARTER_OF_YEAR { // from class: j$.time.temporal.d
        @Override // p033j$.time.temporal.InterfaceC2764j
        /* renamed from: a */
        public C2767m mo658a() {
            return C2767m.m655c(1L, 4L);
        }

        @Override // java.lang.Enum
        public String toString() {
            return "QuarterOfYear";
        }
    },
    WEEK_OF_WEEK_BASED_YEAR { // from class: j$.time.temporal.e
        @Override // p033j$.time.temporal.InterfaceC2764j
        /* renamed from: a */
        public C2767m mo658a() {
            return C2767m.m654d(1L, 52L, 53L);
        }

        @Override // java.lang.Enum
        public String toString() {
            return "WeekOfWeekBasedYear";
        }
    },
    WEEK_BASED_YEAR { // from class: j$.time.temporal.f
        @Override // p033j$.time.temporal.InterfaceC2764j
        /* renamed from: a */
        public C2767m mo658a() {
            return EnumC2755a.YEAR.mo658a();
        }

        @Override // java.lang.Enum
        public String toString() {
            return "WeekBasedYear";
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    EnumC2761g(AbstractC2756b abstractC2756b) {
    }
}
