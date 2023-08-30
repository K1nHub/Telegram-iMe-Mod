package p033j$.time;
/* renamed from: j$.time.c */
/* loaded from: classes2.dex */
public enum EnumC2869c {
    JANUARY,
    FEBRUARY,
    MARCH,
    APRIL,
    MAY,
    JUNE,
    JULY,
    AUGUST,
    SEPTEMBER,
    OCTOBER,
    NOVEMBER,
    DECEMBER;
    

    /* renamed from: a */
    private static final EnumC2869c[] f582a = values();

    /* renamed from: a */
    public static EnumC2869c m688a(int i) {
        if (i < 1 || i > 12) {
            throw new C2867a("Invalid value for MonthOfYear: " + i);
        }
        return f582a[i - 1];
    }
}
